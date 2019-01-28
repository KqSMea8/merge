.class public Lc8/aZf;
.super Lc8/sZf;
.source "AddEventAction.java"

# interfaces
.implements Lc8/fYf;
.implements Lc8/rYf;


# instance fields
.field private final mEvent:Ljava/lang/Object;

.field private final mRef:Ljava/lang/String;

.field private mUpdatedDom:Lc8/HYf;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-direct {p0}, Lc8/sZf;-><init>()V

    .line 47
    iput-object p1, p0, Lc8/aZf;->mRef:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lc8/aZf;->mEvent:Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method public executeDom(Lc8/gYf;)V
    .locals 12
    .param p1, "context"    # Lc8/gYf;

    .prologue
    const/4 v11, 0x1

    .line 53
    invoke-interface {p1}, Lc8/gYf;->isDestory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {}, Lc8/jag;->tick()V

    .line 58
    invoke-interface {p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v10

    .line 59
    .local v10, "instance":Lc8/nVf;
    iget-object v0, p0, Lc8/aZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v0}, Lc8/gYf;->getDomByRef(Ljava/lang/String;)Lc8/HYf;

    move-result-object v9

    .line 60
    .local v9, "domObject":Lc8/HYf;
    if-nez v9, :cond_2

    .line 61
    if-eqz v10, :cond_0

    .line 62
    const-string/jumbo v0, "domModule"

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_ADDEVENT:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v10, v0, v1}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v9}, Lc8/HYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    iget-object v1, p0, Lc8/aZf;->mEvent:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->addEvent(Ljava/lang/Object;)V

    .line 68
    iput-object v9, p0, Lc8/aZf;->mUpdatedDom:Lc8/HYf;

    .line 69
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/aZf;->mBeginEvent:Lc8/kag;

    if-eqz v0, :cond_3

    .line 70
    const-string/jumbo v1, "addEventToDom"

    const-string/jumbo v2, "X"

    invoke-virtual {v10}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lc8/jag;->tack()D

    move-result-wide v4

    invoke-static {}, Lc8/jag;->lastTickStamp()J

    move-result-wide v6

    new-array v8, v11, [Z

    const/4 v0, 0x0

    aput-boolean v11, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lc8/aZf;->submitPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DJ[Z)Lc8/kag;

    .line 73
    :cond_3
    invoke-interface {p1, p0}, Lc8/gYf;->postRenderTask(Lc8/rYf;)V

    .line 75
    if-eqz v10, :cond_0

    .line 76
    const-string/jumbo v0, "domModule"

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v10, v0, v1}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto :goto_0
.end method

.method public executeRender(Lc8/sYf;)V
    .locals 14
    .param p1, "context"    # Lc8/sYf;

    .prologue
    const/4 v13, 0x1

    .line 82
    iget-object v0, p0, Lc8/aZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v0}, Lc8/sYf;->getComponent(Ljava/lang/String;)Lc8/tbg;

    move-result-object v9

    .line 83
    .local v9, "comp":Lc8/tbg;
    if-eqz v9, :cond_0

    .line 85
    invoke-static {}, Lc8/jag;->tick()V

    .line 86
    iget-object v0, p0, Lc8/aZf;->mUpdatedDom:Lc8/HYf;

    invoke-virtual {v9, v0}, Lc8/tbg;->updateDom(Lc8/HYf;)V

    .line 87
    const-string/jumbo v0, "updateDom"

    invoke-static {v0}, Lc8/jag;->split(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lc8/aZf;->mEvent:Ljava/lang/Object;

    invoke-virtual {v9, v0}, Lc8/tbg;->addEvent(Ljava/lang/Object;)V

    .line 89
    const-string/jumbo v0, "addEventToComponent"

    invoke-static {v0}, Lc8/jag;->split(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/aZf;->mBeginEvent:Lc8/kag;

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lc8/jag;->getProcessEvents()Ljava/util/List;

    move-result-object v11

    .line 93
    .local v11, "events":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc8/iag;

    .line 94
    .local v10, "event":Lc8/iag;
    iget-object v1, v10, Lc8/iag;->fname:Ljava/lang/String;

    const-string/jumbo v2, "X"

    invoke-virtual {v9}, Lc8/tbg;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v10, Lc8/iag;->duration:D

    iget-wide v6, v10, Lc8/iag;->startMillis:J

    new-array v8, v13, [Z

    const/4 v0, 0x0

    aput-boolean v13, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lc8/aZf;->submitPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DJ[Z)Lc8/kag;

    goto :goto_0

    .line 98
    .end local v10    # "event":Lc8/iag;
    .end local v11    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
