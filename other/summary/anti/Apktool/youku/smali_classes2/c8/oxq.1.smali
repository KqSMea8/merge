.class public Lc8/oxq;
.super Lc8/Zlq;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qxq;->createWorker()Lc8/Zlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qxq;

.field private final unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$actionObserver:Lc8/Wlq;

.field final synthetic val$actualWorker:Lc8/Zlq;


# direct methods
.method constructor <init>(Lc8/qxq;Lc8/Zlq;Lc8/Wlq;)V
    .locals 1

    .prologue
    .line 158
    iput-object p1, p0, Lc8/oxq;->this$0:Lc8/qxq;

    iput-object p2, p0, Lc8/oxq;->val$actualWorker:Lc8/Zlq;

    iput-object p3, p0, Lc8/oxq;->val$actionObserver:Lc8/Wlq;

    invoke-direct {p0}, Lc8/Zlq;-><init>()V

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lc8/oxq;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lc8/oxq;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public schedule(Lc8/hnq;)Lc8/Pmq;
    .locals 2
    .param p1, "action"    # Lc8/hnq;

    .prologue
    .line 187
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;

    invoke-direct {v0, p1}, Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;-><init>(Lc8/hnq;)V

    .line 188
    .local v0, "immediateAction":Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;
    iget-object v1, p0, Lc8/oxq;->val$actionObserver:Lc8/Wlq;

    invoke-interface {v1, v0}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V

    .line 189
    return-object v0
.end method

.method public schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;
    .locals 2
    .param p1, "action"    # Lc8/hnq;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 179
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;-><init>(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)V

    .line 180
    .local v0, "delayedAction":Lrx/internal/schedulers/SchedulerWhen$DelayedAction;
    iget-object v1, p0, Lc8/oxq;->val$actionObserver:Lc8/Wlq;

    invoke-interface {v1, v0}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V

    .line 181
    return-object v0
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lc8/oxq;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lc8/oxq;->val$actualWorker:Lc8/Zlq;

    invoke-virtual {v0}, Lc8/Zlq;->unsubscribe()V

    .line 167
    iget-object v0, p0, Lc8/oxq;->val$actionObserver:Lc8/Wlq;

    invoke-interface {v0}, Lc8/Wlq;->onCompleted()V

    .line 169
    :cond_0
    return-void
.end method
