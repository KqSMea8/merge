.class public Lc8/pdg;
.super Lc8/sZf;
.source "DomTreeBuilder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lc8/sZf;-><init>()V

    return-void
.end method

.method public static final buildTree(Lc8/HYf;Lc8/scg;)Lc8/tbg;
    .locals 5
    .param p0, "domObject"    # Lc8/HYf;
    .param p1, "parent"    # Lc8/scg;

    .prologue
    .line 87
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/pVf;->getWXDomManager()Lc8/EYf;

    move-result-object v2

    invoke-virtual {p1}, Lc8/scg;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/EYf;->getDomContext(Ljava/lang/String;)Lc8/gYf;

    move-result-object v1

    .line 88
    .local v1, "domActionContext":Lc8/gYf;
    if-nez v1, :cond_0

    .line 89
    const/4 v2, 0x0

    .line 96
    :goto_0
    return-object v2

    .line 91
    :cond_0
    new-instance v0, Lc8/pdg;

    invoke-direct {v0}, Lc8/pdg;-><init>()V

    .line 92
    .local v0, "builder":Lc8/pdg;
    const/4 v2, 0x2

    new-array v2, v2, [Lc8/GYf;

    const/4 v3, 0x0

    invoke-interface {v1}, Lc8/gYf;->getAddDOMConsumer()Lc8/GYf;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v1}, Lc8/gYf;->getApplyStyleConsumer()Lc8/GYf;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lc8/HYf;->traverseTree([Lc8/GYf;)V

    .line 96
    invoke-virtual {v0, v1, p0, p1}, Lc8/pdg;->generateComponentTree(Lc8/gYf;Lc8/HYf;Lc8/scg;)Lc8/tbg;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public generateComponentTree(Lc8/gYf;Lc8/HYf;Lc8/scg;)Lc8/tbg;
    .locals 16
    .param p1, "context"    # Lc8/gYf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 41
    if-nez p2, :cond_1

    .line 42
    const/4 v5, 0x0

    .line 83
    :cond_0
    :goto_0
    return-object v5

    .line 44
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 45
    .local v12, "startNanos":J
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lc8/HYf;->setCloneThis(Z)V

    .line 46
    invoke-interface/range {p1 .. p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v11

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v11, v0, v1}, Lc8/ubg;->newInstance(Lc8/nVf;Lc8/HYf;Lc8/scg;)Lc8/tbg;

    move-result-object v5

    .line 47
    .local v5, "component":Lc8/tbg;
    if-eqz v5, :cond_2

    .line 48
    iget-object v11, v5, Lc8/tbg;->mTraceInfo:Lc8/lag;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lc8/HYf;->mDomThreadTimestamp:J

    iput-wide v14, v11, Lc8/lag;->domThreadStart:J

    .line 49
    iget-object v11, v5, Lc8/tbg;->mTraceInfo:Lc8/lag;

    move-object/from16 v0, p0

    iget v14, v0, Lc8/pdg;->mTracingEventId:I

    iput v14, v11, Lc8/lag;->rootEventId:I

    .line 50
    iget-object v11, v5, Lc8/tbg;->mTraceInfo:Lc8/lag;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/pdg;->mDomQueueTime:J

    iput-wide v14, v11, Lc8/lag;->domQueueTime:J

    .line 52
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lc8/HYf;->getRef()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v5}, Lc8/gYf;->registerComponent(Ljava/lang/String;Lc8/tbg;)V

    .line 53
    instance-of v11, v5, Lc8/scg;

    if-eqz v11, :cond_5

    move-object v6, v5

    .line 54
    check-cast v6, Lc8/scg;

    .line 55
    .local v6, "container":Lc8/scg;
    invoke-virtual {v6}, Lc8/scg;->getDomObject()Lc8/qYf;

    move-result-object v10

    check-cast v10, Lc8/HYf;

    .line 56
    .local v10, "parentDom":Lc8/HYf;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lc8/HYf;->childCount()I

    move-result v11

    if-ge v8, v11, :cond_5

    .line 57
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lc8/HYf;->getChild(I)Lc8/HYf;

    move-result-object v2

    .line 58
    .local v2, "child":Lc8/HYf;
    if-eqz v2, :cond_4

    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v6}, Lc8/pdg;->generateComponentTree(Lc8/gYf;Lc8/HYf;Lc8/scg;)Lc8/tbg;

    move-result-object v3

    .line 60
    .local v3, "childComponent":Lc8/tbg;
    invoke-virtual {v6, v3}, Lc8/scg;->addChild(Lc8/tbg;)V

    .line 61
    invoke-virtual {v3}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v4

    check-cast v4, Lc8/HYf;

    .line 62
    .local v4, "childDomObject":Lc8/HYf;
    if-eq v4, v2, :cond_4

    .line 63
    invoke-virtual {v10, v2}, Lc8/HYf;->index(Lc8/HYf;)I

    move-result v9

    .line 64
    .local v9, "index":I
    invoke-virtual {v10, v4, v9}, Lc8/HYf;->add(Lc8/HYf;I)V

    .line 65
    if-ltz v9, :cond_3

    .line 66
    invoke-virtual {v10, v2}, Lc8/HYf;->remove(Lc8/HYf;)V

    .line 67
    add-int/lit8 v8, v8, -0x1

    .line 69
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v14, " not support clone this"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .local v7, "exception":Ljava/lang/RuntimeException;
    const-string/jumbo v11, "weex"

    invoke-static {v11, v7}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 73
    throw v7

    .line 56
    .end local v3    # "childComponent":Lc8/tbg;
    .end local v4    # "childDomObject":Lc8/HYf;
    .end local v7    # "exception":Ljava/lang/RuntimeException;
    .end local v9    # "index":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 79
    .end local v2    # "child":Lc8/HYf;
    .end local v6    # "container":Lc8/scg;
    .end local v8    # "i":I
    .end local v10    # "parentDom":Lc8/HYf;
    :cond_5
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lc8/HYf;->setCloneThis(Z)V

    .line 80
    if-eqz v5, :cond_0

    .line 81
    iget-object v11, v5, Lc8/tbg;->mTraceInfo:Lc8/lag;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v12

    iput-wide v14, v11, Lc8/lag;->domThreadNanos:J

    goto/16 :goto_0
.end method
