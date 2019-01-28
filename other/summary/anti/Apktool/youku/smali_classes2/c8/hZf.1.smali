.class public final Lc8/hZf;
.super Lc8/WYf;
.source "CreateFinishAction.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lc8/WYf;-><init>()V

    return-void
.end method


# virtual methods
.method public executeDom(Lc8/gYf;)V
    .locals 6
    .param p1, "context"    # Lc8/gYf;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lc8/WYf;->executeDom(Lc8/gYf;)V

    .line 40
    invoke-interface {p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v0

    .line 42
    .local v0, "instance":Lc8/nVf;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/nVf;->getLayoutFinishListener()Lc8/SUf;

    move-result-object v1

    .local v1, "listener":Lc8/SUf;
    if-eqz v1, :cond_0

    .line 43
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/pVf;->getWXRenderManager()Lc8/Cag;

    move-result-object v2

    new-instance v3, Lc8/gZf;

    invoke-direct {v3, p0, v1, v0}, Lc8/gZf;-><init>(Lc8/hZf;Lc8/SUf;Lc8/nVf;)V

    invoke-static {v3}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lc8/Cag;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 50
    .end local v1    # "listener":Lc8/SUf;
    :cond_0
    return-void
.end method

.method public executeRender(Lc8/sYf;)V
    .locals 10
    .param p1, "context"    # Lc8/sYf;

    .prologue
    .line 54
    invoke-interface {p1}, Lc8/sYf;->getInstance()Lc8/nVf;

    move-result-object v9

    .line 55
    .local v9, "instance":Lc8/nVf;
    invoke-virtual {v9}, Lc8/nVf;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ONCE:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {v9}, Lc8/nVf;->onCreateFinish()V

    .line 58
    :cond_0
    iget v0, p0, Lc8/hZf;->mLayoutWidth:I

    iget v1, p0, Lc8/hZf;->mLayoutHeight:I

    invoke-virtual {v9, v0, v1}, Lc8/nVf;->onRenderSuccess(II)V

    .line 59
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-interface {p1}, Lc8/sYf;->getInstance()Lc8/nVf;

    move-result-object v0

    iget-wide v0, v0, Lc8/nVf;->mRenderStartNanos:J

    invoke-static {v0, v1}, Lc8/jag;->millisUntilNow(J)D

    move-result-wide v4

    .line 61
    .local v4, "renderTime":D
    const-string/jumbo v1, "renderFinish"

    const-string/jumbo v2, "X"

    invoke-virtual {v9}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v0, 0x0

    new-array v8, v0, [Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lc8/hZf;->submitPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DJ[Z)Lc8/kag;

    .line 63
    .end local v4    # "renderTime":D
    :cond_1
    return-void
.end method
