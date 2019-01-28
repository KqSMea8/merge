.class public final Lc8/ZYf;
.super Lc8/VYf;
.source "AddElementAction.java"


# instance fields
.field private final mAddIndex:I

.field private final mData:Lcom/alibaba/fastjson/JSONObject;

.field private final mParentRef:Ljava/lang/String;

.field private mRef:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "parentRef"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Lc8/VYf;-><init>()V

    .line 49
    iput-object p2, p0, Lc8/ZYf;->mParentRef:Ljava/lang/String;

    .line 50
    iput p3, p0, Lc8/ZYf;->mAddIndex:I

    .line 51
    iput-object p1, p0, Lc8/ZYf;->mData:Lcom/alibaba/fastjson/JSONObject;

    .line 52
    return-void
.end method


# virtual methods
.method protected appendDomToTree(Lc8/gYf;Lc8/HYf;)V
    .locals 8
    .param p1, "context"    # Lc8/gYf;
    .param p2, "domObject"    # Lc8/HYf;

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 67
    .local v2, "startNanos":J
    invoke-virtual {p2}, Lc8/HYf;->getRef()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/ZYf;->mRef:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lc8/ZYf;->mParentRef:Ljava/lang/String;

    invoke-interface {p1, v1}, Lc8/gYf;->getDomByRef(Ljava/lang/String;)Lc8/HYf;

    move-result-object v0

    .local v0, "parent":Lc8/HYf;
    if-nez v0, :cond_0

    .line 69
    invoke-interface {p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v1

    const-string/jumbo v4, "domModule"

    invoke-virtual {p0}, Lc8/ZYf;->getErrorCode()Lcom/taobao/weex/common/WXErrorCode;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    iget v1, p0, Lc8/ZYf;->mAddIndex:I

    invoke-virtual {v0, p2, v1}, Lc8/HYf;->add(Lc8/HYf;I)V

    .line 75
    iget-wide v4, p2, Lc8/HYf;->mDomThreadNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p2, Lc8/HYf;->mDomThreadNanos:J

    goto :goto_0
.end method

.method protected createComponent(Lc8/gYf;Lc8/HYf;)Lc8/tbg;
    .locals 2
    .param p1, "context"    # Lc8/gYf;
    .param p2, "domObject"    # Lc8/HYf;

    .prologue
    .line 56
    iget-object v1, p0, Lc8/ZYf;->mParentRef:Ljava/lang/String;

    invoke-interface {p1, v1}, Lc8/gYf;->getCompByRef(Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    .line 57
    .local v0, "comp":Lc8/tbg;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lc8/scg;

    if-nez v1, :cond_1

    .line 58
    :cond_0
    const/4 v1, 0x0

    .line 60
    .end local v0    # "comp":Lc8/tbg;
    :goto_0
    return-object v1

    .restart local v0    # "comp":Lc8/tbg;
    :cond_1
    check-cast v0, Lc8/scg;

    .end local v0    # "comp":Lc8/tbg;
    invoke-virtual {p0, p1, p2, v0}, Lc8/ZYf;->generateComponentTree(Lc8/gYf;Lc8/HYf;Lc8/scg;)Lc8/tbg;

    move-result-object v1

    goto :goto_0
.end method

.method public executeDom(Lc8/gYf;)V
    .locals 1
    .param p1, "context"    # Lc8/gYf;

    .prologue
    .line 90
    iget-object v0, p0, Lc8/ZYf;->mData:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1, v0}, Lc8/ZYf;->addDomInternal(Lc8/gYf;Lcom/alibaba/fastjson/JSONObject;)V

    .line 91
    return-void
.end method

.method public executeRender(Lc8/sYf;)V
    .locals 19
    .param p1, "context"    # Lc8/sYf;

    .prologue
    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/ZYf;->mRef:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lc8/sYf;->getComponent(Ljava/lang/String;)Lc8/tbg;

    move-result-object v11

    .line 96
    .local v11, "component":Lc8/tbg;
    invoke-interface/range {p1 .. p1}, Lc8/sYf;->getInstance()Lc8/nVf;

    move-result-object v15

    .line 97
    .local v15, "instance":Lc8/nVf;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    .line 98
    :cond_0
    const-string/jumbo v2, "instance is null or instance is destroy!"

    invoke-static {v2}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/ZYf;->mParentRef:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lc8/sYf;->getComponent(Ljava/lang/String;)Lc8/tbg;

    move-result-object v16

    check-cast v16, Lc8/scg;

    .line 103
    .local v16, "parent":Lc8/scg;
    if-eqz v16, :cond_1

    if-eqz v11, :cond_1

    .line 107
    invoke-static {}, Lc8/jag;->tick()V

    .line 108
    move-object/from16 v0, p0

    iget v2, v0, Lc8/ZYf;->mAddIndex:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v2}, Lc8/scg;->addChild(Lc8/tbg;I)V

    .line 109
    move-object/from16 v0, p0

    iget v2, v0, Lc8/ZYf;->mAddIndex:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lc8/scg;->createChildViewAt(I)V

    .line 110
    const-string/jumbo v2, "createViewTree"

    invoke-static {v2}, Lc8/jag;->split(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v11, v11}, Lc8/tbg;->applyLayoutAndEvent(Lc8/tbg;)V

    .line 113
    const-string/jumbo v2, "applyLayoutAndEvent"

    invoke-static {v2}, Lc8/jag;->split(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v11, v11}, Lc8/tbg;->bindData(Lc8/tbg;)V

    .line 116
    const-string/jumbo v2, "bindData"

    invoke-static {v2}, Lc8/jag;->split(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    invoke-interface/range {p1 .. p1}, Lc8/sYf;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "instanceId":Ljava/lang/String;
    invoke-static {}, Lc8/jag;->getProcessEvents()Ljava/util/List;

    move-result-object v17

    .line 121
    .local v17, "splits":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc8/iag;

    .line 122
    .local v13, "event":Lc8/iag;
    iget-object v3, v13, Lc8/iag;->fname:Ljava/lang/String;

    const-string/jumbo v4, "X"

    iget-wide v6, v13, Lc8/iag;->duration:D

    iget-wide v8, v13, Lc8/iag;->startMillis:J

    const/4 v2, 0x1

    new-array v10, v2, [Z

    const/4 v2, 0x0

    const/16 v18, 0x1

    aput-boolean v18, v10, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lc8/ZYf;->submitPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DJ[Z)Lc8/kag;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 131
    .end local v5    # "instanceId":Ljava/lang/String;
    .end local v13    # "event":Lc8/iag;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "parent":Lc8/scg;
    .end local v17    # "splits":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;>;"
    :catch_0
    move-exception v12

    .line 132
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "add component failed."

    invoke-static {v2, v12}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 125
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v16    # "parent":Lc8/scg;
    :cond_3
    :try_start_1
    iget-object v2, v11, Lc8/tbg;->mTraceInfo:Lc8/lag;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lc8/ZYf;->mUIQueueTime:J

    iput-wide v6, v2, Lc8/lag;->uiQueueTime:J

    .line 126
    invoke-virtual {v11}, Lc8/tbg;->isLazy()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lc8/tbg;->onRenderFinish(I)V

    goto/16 :goto_0

    .line 129
    :cond_4
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lc8/tbg;->onRenderFinish(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected getErrorCode()Lcom/taobao/weex/common/WXErrorCode;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_ADDELEMENT:Lcom/taobao/weex/common/WXErrorCode;

    return-object v0
.end method

.method protected getStatementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string/jumbo v0, "addDom"

    return-object v0
.end method
