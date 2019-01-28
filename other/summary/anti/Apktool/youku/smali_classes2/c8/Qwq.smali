.class public final Lc8/Qwq;
.super Lc8/Zlq;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Swq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventLoopWorker"
.end annotation


# instance fields
.field private final innerSubscription:Lc8/SBq;

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pool:Lc8/Owq;

.field private final threadWorker:Lc8/Rwq;


# direct methods
.method constructor <init>(Lc8/Owq;)V
    .locals 1
    .param p1, "pool"    # Lc8/Owq;

    .prologue
    .line 183
    invoke-direct {p0}, Lc8/Zlq;-><init>()V

    .line 178
    new-instance v0, Lc8/SBq;

    invoke-direct {v0}, Lc8/SBq;-><init>()V

    iput-object v0, p0, Lc8/Qwq;->innerSubscription:Lc8/SBq;

    .line 184
    iput-object p1, p0, Lc8/Qwq;->pool:Lc8/Owq;

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lc8/Qwq;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 186
    invoke-virtual {p1}, Lc8/Owq;->get()Lc8/Rwq;

    move-result-object v0

    iput-object v0, p0, Lc8/Qwq;->threadWorker:Lc8/Rwq;

    .line 187
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lc8/Qwq;->innerSubscription:Lc8/SBq;

    invoke-virtual {v0}, Lc8/SBq;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lc8/hnq;)Lc8/Pmq;
    .locals 3
    .param p1, "action"    # Lc8/hnq;

    .prologue
    .line 205
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lc8/Qwq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;
    .locals 4
    .param p1, "action"    # Lc8/hnq;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 210
    iget-object v1, p0, Lc8/Qwq;->innerSubscription:Lc8/SBq;

    invoke-virtual {v1}, Lc8/SBq;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 215
    :cond_0
    iget-object v1, p0, Lc8/Qwq;->threadWorker:Lc8/Rwq;

    new-instance v2, Lc8/Pwq;

    invoke-direct {v2, p0, p1}, Lc8/Pwq;-><init>(Lc8/Qwq;Lc8/hnq;)V

    invoke-virtual {v1, v2, p2, p3, p4}, Lc8/Rwq;->scheduleActual(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    .line 224
    .local v0, "s":Lrx/internal/schedulers/ScheduledAction;
    iget-object v1, p0, Lc8/Qwq;->innerSubscription:Lc8/SBq;

    invoke-virtual {v1, v0}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 225
    iget-object v1, p0, Lc8/Qwq;->innerSubscription:Lc8/SBq;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->addParent(Lc8/SBq;)V

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lc8/Qwq;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lc8/Qwq;->pool:Lc8/Owq;

    iget-object v1, p0, Lc8/Qwq;->threadWorker:Lc8/Rwq;

    invoke-virtual {v0, v1}, Lc8/Owq;->release(Lc8/Rwq;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lc8/Qwq;->innerSubscription:Lc8/SBq;

    invoke-virtual {v0}, Lc8/SBq;->unsubscribe()V

    .line 196
    return-void
.end method
