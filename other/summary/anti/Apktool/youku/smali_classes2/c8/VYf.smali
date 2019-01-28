.class public abstract Lc8/VYf;
.super Lc8/sZf;
.source "AbstractAddElementAction.java"

# interfaces
.implements Lc8/fYf;
.implements Lc8/rYf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lc8/sZf;-><init>()V

    return-void
.end method


# virtual methods
.method public addAnimationForDomTree(Lc8/gYf;Lc8/HYf;)V
    .locals 3
    .param p1, "context"    # Lc8/gYf;
    .param p2, "domObject"    # Lc8/HYf;

    .prologue
    .line 136
    invoke-virtual {p2}, Lc8/HYf;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lc8/HYf;->getStyles()Lc8/PYf;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lc8/gYf;->addAnimationForElement(Ljava/lang/String;Ljava/util/Map;)V

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lc8/HYf;->childCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 138
    invoke-virtual {p2, v0}, Lc8/HYf;->getChild(I)Lc8/HYf;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lc8/VYf;->addAnimationForDomTree(Lc8/gYf;Lc8/HYf;)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method protected addDomInternal(Lc8/gYf;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 19
    .param p1, "context"    # Lc8/gYf;
    .param p2, "dom"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 80
    invoke-interface/range {p1 .. p1}, Lc8/gYf;->isDestory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-interface/range {p1 .. p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v17

    .line 85
    .local v17, "instance":Lc8/nVf;
    if-eqz v17, :cond_0

    .line 88
    invoke-virtual/range {p0 .. p0}, Lc8/VYf;->getErrorCode()Lcom/taobao/weex/common/WXErrorCode;

    move-result-object v13

    .line 89
    .local v13, "errCode":Lcom/taobao/weex/common/WXErrorCode;
    if-nez p2, :cond_2

    .line 90
    const-string/jumbo v2, "domModule"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    .line 94
    :cond_2
    invoke-static {}, Lc8/jag;->tick()V

    .line 95
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2}, Lc8/HYf;->parse(Lcom/alibaba/fastjson/JSONObject;Lc8/nVf;Lc8/HYf;)Lc8/HYf;

    move-result-object v12

    .line 96
    .local v12, "domObject":Lc8/HYf;
    const-string/jumbo v2, "parseDomObject"

    invoke-static {v2}, Lc8/jag;->split(Ljava/lang/String;)V

    .line 98
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lc8/HYf;->getRef()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lc8/gYf;->getDomByRef(Ljava/lang/String;)Lc8/HYf;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 99
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[DOMActionContextImpl] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lc8/VYf;->getStatementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " error,DOM object is null or already registered!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v2, "domModule"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto :goto_0

    .line 103
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lc8/VYf;->appendDomToTree(Lc8/gYf;Lc8/HYf;)V

    .line 104
    const-string/jumbo v2, "appendDomToTree"

    invoke-static {v2}, Lc8/jag;->split(Ljava/lang/String;)V

    .line 106
    const/4 v2, 0x2

    new-array v2, v2, [Lc8/GYf;

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Lc8/gYf;->getAddDOMConsumer()Lc8/GYf;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface/range {p1 .. p1}, Lc8/gYf;->getApplyStyleConsumer()Lc8/GYf;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v12, v2}, Lc8/HYf;->traverseTree([Lc8/GYf;)V

    .line 110
    const-string/jumbo v2, "traverseTree"

    invoke-static {v2}, Lc8/jag;->split(Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lc8/VYf;->createComponent(Lc8/gYf;Lc8/HYf;)Lc8/tbg;

    move-result-object v11

    .line 115
    .local v11, "component":Lc8/tbg;
    if-nez v11, :cond_5

    .line 116
    const-string/jumbo v2, "domModule"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto/16 :goto_0

    .line 120
    :cond_5
    const-string/jumbo v2, "createComponent"

    invoke-static {v2}, Lc8/jag;->split(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v12}, Lc8/HYf;->getRef()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v11}, Lc8/gYf;->addDomInfo(Ljava/lang/String;Lc8/tbg;)V

    .line 123
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lc8/gYf;->postRenderTask(Lc8/rYf;)V

    .line 124
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lc8/VYf;->addAnimationForDomTree(Lc8/gYf;Lc8/HYf;)V

    .line 126
    const-string/jumbo v2, "domModule"

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    .line 127
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-static {}, Lc8/jag;->getProcessEvents()Ljava/util/List;

    move-result-object v15

    .line 129
    .local v15, "events":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc8/iag;

    .line 130
    .local v14, "event":Lc8/iag;
    iget-object v3, v14, Lc8/iag;->fname:Ljava/lang/String;

    const-string/jumbo v4, "X"

    invoke-interface/range {p1 .. p1}, Lc8/gYf;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v14, Lc8/iag;->duration:D

    iget-wide v8, v14, Lc8/iag;->startMillis:J

    const/4 v2, 0x1

    new-array v10, v2, [Z

    const/4 v2, 0x0

    const/16 v18, 0x1

    aput-boolean v18, v10, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lc8/VYf;->submitPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DJ[Z)Lc8/kag;

    goto :goto_1
.end method

.method protected abstract appendDomToTree(Lc8/gYf;Lc8/HYf;)V
.end method

.method protected abstract createComponent(Lc8/gYf;Lc8/HYf;)Lc8/tbg;
.end method

.method protected generateComponentTree(Lc8/gYf;Lc8/HYf;Lc8/scg;)Lc8/tbg;
    .locals 10
    .param p1, "context"    # Lc8/gYf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 47
    if-nez p2, :cond_1

    .line 48
    const/4 v1, 0x0

    .line 73
    :cond_0
    :goto_0
    return-object v1

    .line 50
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 51
    .local v6, "startNanos":J
    invoke-interface {p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v5

    invoke-static {v5, p2, p3}, Lc8/ubg;->newInstance(Lc8/nVf;Lc8/HYf;Lc8/scg;)Lc8/tbg;

    move-result-object v1

    .line 52
    .local v1, "component":Lc8/tbg;
    if-eqz v1, :cond_2

    .line 53
    iget-object v5, v1, Lc8/tbg;->mTraceInfo:Lc8/lag;

    iget-wide v8, p2, Lc8/HYf;->mDomThreadTimestamp:J

    iput-wide v8, v5, Lc8/lag;->domThreadStart:J

    .line 54
    iget-object v5, v1, Lc8/tbg;->mTraceInfo:Lc8/lag;

    iget v8, p0, Lc8/VYf;->mTracingEventId:I

    iput v8, v5, Lc8/lag;->rootEventId:I

    .line 55
    iget-object v5, v1, Lc8/tbg;->mTraceInfo:Lc8/lag;

    iget-wide v8, p0, Lc8/VYf;->mDomQueueTime:J

    iput-wide v8, v5, Lc8/lag;->domQueueTime:J

    .line 58
    :cond_2
    invoke-virtual {p2}, Lc8/HYf;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v1}, Lc8/gYf;->registerComponent(Ljava/lang/String;Lc8/tbg;)V

    .line 59
    instance-of v5, v1, Lc8/scg;

    if-eqz v5, :cond_4

    move-object v4, v1

    .line 60
    check-cast v4, Lc8/scg;

    .line 61
    .local v4, "parentC":Lc8/scg;
    invoke-virtual {p2}, Lc8/HYf;->childCount()I

    move-result v2

    .line 63
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 64
    invoke-virtual {p2, v3}, Lc8/HYf;->getChild(I)Lc8/HYf;

    move-result-object v0

    .line 65
    .local v0, "child":Lc8/HYf;
    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {p0, p1, v0, v4}, Lc8/VYf;->generateComponentTree(Lc8/gYf;Lc8/HYf;Lc8/scg;)Lc8/tbg;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/scg;->addChild(Lc8/tbg;)V

    .line 63
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 70
    .end local v0    # "child":Lc8/HYf;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "parentC":Lc8/scg;
    :cond_4
    if-eqz v1, :cond_0

    .line 71
    iget-object v5, v1, Lc8/tbg;->mTraceInfo:Lc8/lag;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    iput-wide v8, v5, Lc8/lag;->domThreadNanos:J

    goto :goto_0
.end method

.method protected abstract getErrorCode()Lcom/taobao/weex/common/WXErrorCode;
.end method

.method protected abstract getStatementName()Ljava/lang/String;
.end method
