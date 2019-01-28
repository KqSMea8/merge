.class public Lc8/fZf;
.super Lc8/VYf;
.source "CreateBodyAction.java"


# instance fields
.field private final mData:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 47
    invoke-direct {p0}, Lc8/VYf;-><init>()V

    .line 48
    iput-object p1, p0, Lc8/fZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    .line 49
    return-void
.end method


# virtual methods
.method protected appendDomToTree(Lc8/gYf;Lc8/HYf;)V
    .locals 8
    .param p1, "context"    # Lc8/gYf;
    .param p2, "domObject"    # Lc8/HYf;

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 72
    .local v2, "startNanos":J
    invoke-interface {p1}, Lc8/gYf;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "instanceId":Ljava/lang/String;
    invoke-static {v0}, Lc8/Jgg;->getWeexHeight(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lc8/pVf;->getInstanceViewPortWidth(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v1

    invoke-static {v0}, Lc8/Jgg;->getWeexWidth(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0}, Lc8/pVf;->getInstanceViewPortWidth(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v4

    invoke-static {p2, v1, v4}, Lc8/HYf;->prepareRoot(Lc8/HYf;FF)V

    .line 76
    iget-wide v4, p2, Lc8/HYf;->mDomThreadNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p2, Lc8/HYf;->mDomThreadNanos:J

    .line 77
    return-void
.end method

.method protected createComponent(Lc8/gYf;Lc8/HYf;)Lc8/tbg;
    .locals 1
    .param p1, "context"    # Lc8/gYf;
    .param p2, "domObject"    # Lc8/HYf;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/fZf;->generateComponentTree(Lc8/gYf;Lc8/HYf;Lc8/scg;)Lc8/tbg;

    move-result-object v0

    return-object v0
.end method

.method public executeDom(Lc8/gYf;)V
    .locals 4
    .param p1, "context"    # Lc8/gYf;

    .prologue
    .line 53
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    const-string/jumbo v1, "executeBundleJS"

    invoke-interface {p1}, Lc8/gYf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lc8/mag;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lc8/kag;

    move-result-object v0

    .line 56
    .local v0, "execJsEndEvent":Lc8/kag;
    invoke-interface {p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v1

    iget v1, v1, Lc8/nVf;->mExecJSTraceId:I

    iput v1, v0, Lc8/kag;->traceId:I

    .line 57
    const-string/jumbo v1, "E"

    iput-object v1, v0, Lc8/kag;->ph:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Lc8/kag;->submit()V

    .line 61
    .end local v0    # "execJsEndEvent":Lc8/kag;
    :cond_0
    iget-object v1, p0, Lc8/fZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1, v1}, Lc8/fZf;->addDomInternal(Lc8/gYf;Lcom/alibaba/fastjson/JSONObject;)V

    .line 62
    return-void
.end method

.method public executeRender(Lc8/sYf;)V
    .locals 16
    .param p1, "context"    # Lc8/sYf;

    .prologue
    .line 92
    const-string/jumbo v2, "_root"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lc8/sYf;->getComponent(Ljava/lang/String;)Lc8/tbg;

    move-result-object v11

    .line 93
    .local v11, "component":Lc8/tbg;
    invoke-interface/range {p1 .. p1}, Lc8/sYf;->getInstance()Lc8/nVf;

    move-result-object v13

    .line 94
    .local v13, "instance":Lc8/nVf;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    .line 95
    :cond_0
    const-string/jumbo v2, "instance is null or instance is destroy!"

    invoke-static {v2}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 99
    :cond_1
    :try_start_0
    invoke-static {}, Lc8/jag;->tick()V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 101
    .local v8, "start":J
    invoke-virtual {v11}, Lc8/tbg;->createView()V

    .line 102
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    const-string/jumbo v2, "createView"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-static {v2, v4, v5}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 104
    const-string/jumbo v3, "createView"

    const-string/jumbo v4, "X"

    invoke-virtual {v13}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lc8/jag;->tackAndTick()D

    move-result-wide v6

    const/4 v2, 0x1

    new-array v10, v2, [Z

    const/4 v2, 0x0

    const/4 v15, 0x1

    aput-boolean v15, v10, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lc8/fZf;->submitPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DJ[Z)Lc8/kag;

    .line 106
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 107
    invoke-virtual {v11, v11}, Lc8/tbg;->applyLayoutAndEvent(Lc8/tbg;)V

    .line 108
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    const-string/jumbo v3, "applyLayoutAndEvent"

    const-string/jumbo v4, "X"

    invoke-virtual {v13}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lc8/jag;->tackAndTick()D

    move-result-wide v6

    const/4 v2, 0x1

    new-array v10, v2, [Z

    const/4 v2, 0x0

    const/4 v15, 0x1

    aput-boolean v15, v10, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lc8/fZf;->submitPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DJ[Z)Lc8/kag;

    .line 111
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 112
    invoke-virtual {v11, v11}, Lc8/tbg;->bindData(Lc8/tbg;)V

    .line 114
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 115
    const-string/jumbo v2, "bind"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-static {v2, v4, v5}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 116
    const-string/jumbo v3, "bindData"

    const-string/jumbo v4, "X"

    invoke-virtual {v13}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lc8/jag;->tack()D

    move-result-wide v6

    const/4 v2, 0x1

    new-array v10, v2, [Z

    const/4 v2, 0x0

    const/4 v15, 0x1

    aput-boolean v15, v10, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lc8/fZf;->submitPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DJ[Z)Lc8/kag;

    .line 119
    :cond_4
    instance-of v2, v11, Lc8/acg;

    if-eqz v2, :cond_5

    .line 120
    move-object v0, v11

    check-cast v0, Lc8/acg;

    move-object v14, v0

    .line 121
    .local v14, "scroller":Lc8/acg;
    invoke-virtual {v14}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ScrollView;

    if-eqz v2, :cond_5

    .line 122
    invoke-virtual {v14}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    invoke-virtual {v13, v2}, Lc8/nVf;->setRootScrollView(Landroid/widget/ScrollView;)V

    .line 125
    .end local v14    # "scroller":Lc8/acg;
    :cond_5
    invoke-virtual {v13, v11}, Lc8/nVf;->onRootCreated(Lc8/tbg;)V

    .line 126
    invoke-virtual {v13}, Lc8/nVf;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v2

    sget-object v3, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ONCE:Lcom/taobao/weex/common/WXRenderStrategy;

    if-eq v2, v3, :cond_6

    .line 127
    invoke-virtual {v13}, Lc8/nVf;->onCreateFinish()V

    .line 129
    :cond_6
    const-string/jumbo v2, "domModule"

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v13, v2, v3}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    .line 130
    iget-object v2, v11, Lc8/tbg;->mTraceInfo:Lc8/lag;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/fZf;->mUIQueueTime:J

    iput-wide v4, v2, Lc8/lag;->uiQueueTime:J

    .line 131
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lc8/tbg;->onRenderFinish(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 132
    .end local v8    # "start":J
    :catch_0
    move-exception v12

    .line 133
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "create body failed."

    invoke-static {v2, v12}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method protected getErrorCode()Lcom/taobao/weex/common/WXErrorCode;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_CREATEBODY:Lcom/taobao/weex/common/WXErrorCode;

    return-object v0
.end method

.method protected getStatementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "createBody"

    return-object v0
.end method
