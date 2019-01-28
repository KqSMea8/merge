.class public Lc8/tYf;
.super Ljava/lang/Object;
.source "RenderActionTask.java"

# interfaces
.implements Lc8/sag;


# instance fields
.field private final mContext:Lc8/sYf;

.field private final mRenderTask:Lc8/rYf;

.field private final mStartMillis:J


# direct methods
.method public constructor <init>(Lc8/rYf;Lc8/sYf;)V
    .locals 2
    .param p1, "action"    # Lc8/rYf;
    .param p2, "context"    # Lc8/sYf;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/tYf;->mStartMillis:J

    .line 39
    iput-object p1, p0, Lc8/tYf;->mRenderTask:Lc8/rYf;

    .line 40
    iput-object p2, p0, Lc8/tYf;->mContext:Lc8/sYf;

    .line 41
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 10

    .prologue
    .line 45
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/tYf;->mRenderTask:Lc8/rYf;

    instance-of v3, v3, Lc8/sZf;

    if-eqz v3, :cond_0

    .line 46
    iget-object v3, p0, Lc8/tYf;->mRenderTask:Lc8/rYf;

    check-cast v3, Lc8/sZf;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lc8/tYf;->mStartMillis:J

    sub-long/2addr v6, v8

    iput-wide v6, v3, Lc8/sZf;->mUIQueueTime:J

    .line 48
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    .local v0, "start":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 50
    .local v4, "uiNanos":J
    iget-object v3, p0, Lc8/tYf;->mRenderTask:Lc8/rYf;

    iget-object v6, p0, Lc8/tYf;->mContext:Lc8/sYf;

    invoke-interface {v3, v6}, Lc8/rYf;->executeRender(Lc8/sYf;)V

    .line 52
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v4, v6, v4

    .line 54
    iget-object v3, p0, Lc8/tYf;->mRenderTask:Lc8/rYf;

    instance-of v3, v3, Lc8/sZf;

    if-eqz v3, :cond_2

    .line 55
    iget-object v3, p0, Lc8/tYf;->mRenderTask:Lc8/rYf;

    instance-of v3, v3, Lc8/VYf;

    if-nez v3, :cond_1

    .line 56
    const-string/jumbo v6, "UIExecute"

    iget-object v3, p0, Lc8/tYf;->mContext:Lc8/sYf;

    invoke-interface {v3}, Lc8/sYf;->getInstance()Lc8/nVf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lc8/tYf;->mRenderTask:Lc8/rYf;

    check-cast v3, Lc8/sZf;

    iget v3, v3, Lc8/sZf;->mTracingEventId:I

    invoke-static {v6, v7, v3}, Lc8/mag;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lc8/kag;

    move-result-object v2

    .line 57
    .local v2, "uiExecuteEvent":Lc8/kag;
    invoke-static {v4, v5}, Lc8/jag;->nanosToMillis(J)D

    move-result-wide v6

    iput-wide v6, v2, Lc8/kag;->duration:D

    .line 58
    iput-wide v0, v2, Lc8/kag;->ts:J

    .line 59
    invoke-virtual {v2}, Lc8/kag;->submit()V

    .line 61
    .end local v2    # "uiExecuteEvent":Lc8/kag;
    :cond_1
    iget-object v3, p0, Lc8/tYf;->mRenderTask:Lc8/rYf;

    check-cast v3, Lc8/sZf;

    invoke-virtual {v3}, Lc8/sZf;->onFinishUIExecute()V

    .line 64
    :cond_2
    return-void
.end method
