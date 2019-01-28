.class public final Lc8/Vwq;
.super Lc8/Zlq;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ywq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventLoopWorker"
.end annotation


# instance fields
.field private final both:Lc8/wyq;

.field private final poolWorker:Lc8/Xwq;

.field private final serial:Lc8/wyq;

.field private final timed:Lc8/SBq;


# direct methods
.method constructor <init>(Lc8/Xwq;)V
    .locals 4
    .param p1, "poolWorker"    # Lc8/Xwq;

    .prologue
    .line 145
    invoke-direct {p0}, Lc8/Zlq;-><init>()V

    .line 140
    new-instance v0, Lc8/wyq;

    invoke-direct {v0}, Lc8/wyq;-><init>()V

    iput-object v0, p0, Lc8/Vwq;->serial:Lc8/wyq;

    .line 141
    new-instance v0, Lc8/SBq;

    invoke-direct {v0}, Lc8/SBq;-><init>()V

    iput-object v0, p0, Lc8/Vwq;->timed:Lc8/SBq;

    .line 142
    new-instance v0, Lc8/wyq;

    const/4 v1, 0x2

    new-array v1, v1, [Lc8/Pmq;

    const/4 v2, 0x0

    iget-object v3, p0, Lc8/Vwq;->serial:Lc8/wyq;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lc8/Vwq;->timed:Lc8/SBq;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lc8/wyq;-><init>([Lc8/Pmq;)V

    iput-object v0, p0, Lc8/Vwq;->both:Lc8/wyq;

    .line 146
    iput-object p1, p0, Lc8/Vwq;->poolWorker:Lc8/Xwq;

    .line 148
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lc8/Vwq;->both:Lc8/wyq;

    invoke-virtual {v0}, Lc8/wyq;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lc8/hnq;)Lc8/Pmq;
    .locals 6
    .param p1, "action"    # Lc8/hnq;

    .prologue
    .line 162
    invoke-virtual {p0}, Lc8/Vwq;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/Vwq;->poolWorker:Lc8/Xwq;

    new-instance v1, Lc8/Twq;

    invoke-direct {v1, p0, p1}, Lc8/Twq;-><init>(Lc8/Vwq;Lc8/hnq;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lc8/Vwq;->serial:Lc8/wyq;

    invoke-virtual/range {v0 .. v5}, Lc8/Xwq;->scheduleActual(Lc8/hnq;JLjava/util/concurrent/TimeUnit;Lc8/wyq;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_0
.end method

.method public schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;
    .locals 6
    .param p1, "action"    # Lc8/hnq;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 179
    invoke-virtual {p0}, Lc8/Vwq;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/Vwq;->poolWorker:Lc8/Xwq;

    new-instance v1, Lc8/Uwq;

    invoke-direct {v1, p0, p1}, Lc8/Uwq;-><init>(Lc8/Vwq;Lc8/hnq;)V

    iget-object v5, p0, Lc8/Vwq;->timed:Lc8/SBq;

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/Xwq;->scheduleActual(Lc8/hnq;JLjava/util/concurrent/TimeUnit;Lc8/SBq;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lc8/Vwq;->both:Lc8/wyq;

    invoke-virtual {v0}, Lc8/wyq;->unsubscribe()V

    .line 153
    return-void
.end method
