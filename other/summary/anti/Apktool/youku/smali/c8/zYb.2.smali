.class public Lc8/zYb;
.super Lc8/gYb;
.source "PageTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/yYb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/gYb",
        "<",
        "Lcom/alibaba/poplayer/trigger/Event;",
        "Lc8/wYb;",
        "Lc8/xYb;",
        ">;"
    }
.end annotation


# static fields
.field public static final PAGE_SCHEME:Ljava/lang/String; = "poplayer://"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lc8/zYb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/zYb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lc8/gYb;-><init>()V

    .line 36
    return-void
.end method

.method private createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/poplayer/trigger/Event;
    .locals 12
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "attachActivityKeyCode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x2

    .line 100
    new-instance v0, Lcom/alibaba/poplayer/trigger/Event;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/poplayer/trigger/Event;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    .local v0, "event":Lcom/alibaba/poplayer/trigger/Event;
    iget-object v2, v0, Lcom/alibaba/poplayer/trigger/Event;->uri:Ljava/lang/String;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 103
    .local v9, "queryIndex":I
    const/4 v2, -0x1

    if-ne v2, v9, :cond_1

    move v11, v6

    .line 104
    .local v11, "useOriginUri":Z
    :goto_0
    if-eqz v11, :cond_2

    iget-object v8, v0, Lcom/alibaba/poplayer/trigger/Event;->uri:Ljava/lang/String;

    .line 107
    .local v8, "newUri":Ljava/lang/String;
    :goto_1
    iget-object v2, v0, Lcom/alibaba/poplayer/trigger/Event;->uri:Ljava/lang/String;

    const-string/jumbo v3, "poplayer://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v7, v6

    .line 108
    .local v7, "source":I
    :goto_2
    iget v2, v0, Lcom/alibaba/poplayer/trigger/Event;->source:I

    if-ne v7, v2, :cond_0

    move v10, v6

    .line 110
    .local v10, "useOriginSource":Z
    :cond_0
    if-eqz v11, :cond_4

    if-eqz v10, :cond_4

    .line 111
    :goto_3
    iput-object p1, v0, Lcom/alibaba/poplayer/trigger/Event;->originUri:Ljava/lang/String;

    .line 112
    return-object v0

    .end local v7    # "source":I
    .end local v8    # "newUri":Ljava/lang/String;
    .end local v10    # "useOriginSource":Z
    .end local v11    # "useOriginUri":Z
    :cond_1
    move v11, v10

    .line 103
    goto :goto_0

    .line 104
    .restart local v11    # "useOriginUri":Z
    :cond_2
    iget-object v2, v0, Lcom/alibaba/poplayer/trigger/Event;->uri:Ljava/lang/String;

    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .restart local v8    # "newUri":Ljava/lang/String;
    :cond_3
    move v7, v1

    .line 107
    goto :goto_2

    .line 110
    .restart local v7    # "source":I
    .restart local v10    # "useOriginSource":Z
    :cond_4
    new-instance v2, Lcom/alibaba/poplayer/trigger/Event;

    if-eqz v10, :cond_5

    iget-object v4, v0, Lcom/alibaba/poplayer/trigger/Event;->uri:Ljava/lang/String;

    :goto_4
    iget-object v5, v0, Lcom/alibaba/poplayer/trigger/Event;->param:Ljava/lang/String;

    move v3, v1

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/poplayer/trigger/Event;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v2

    goto :goto_3

    :cond_5
    move-object v4, v8

    goto :goto_4
.end method

.method public static instance()Lc8/zYb;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lc8/yYb;->access$000()Lc8/zYb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected accept(Lcom/alibaba/poplayer/trigger/Event;)V
    .locals 10
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x2

    .line 70
    iget-object v0, p1, Lcom/alibaba/poplayer/trigger/Event;->attachActivityKeyCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/poplayer/trigger/Event;->attachActivityKeyCode:Ljava/lang/String;

    iget-object v2, p0, Lc8/zYb;->mCurrentKeyCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    :cond_0
    const-string/jumbo v0, "%s activeAccept Useless event,eventKeyCode:%s,curKeyCode:%s."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lc8/zYb;->TAG:Ljava/lang/String;

    aput-object v4, v2, v5

    iget-object v4, p1, Lcom/alibaba/poplayer/trigger/Event;->attachActivityKeyCode:Ljava/lang/String;

    aput-object v4, v2, v9

    iget-object v4, p0, Lc8/zYb;->mCurrentKeyCode:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    iget-object v0, p0, Lc8/zYb;->mConfigMgr:Lc8/eYb;

    check-cast v0, Lc8/xYb;

    invoke-virtual {v0, p1}, Lc8/xYb;->findConfigs(Lcom/alibaba/poplayer/trigger/Event;)Lc8/qYb;

    move-result-object v6

    .line 78
    .local v6, "configs":Lc8/qYb;, "Lcom/alibaba/poplayer/trigger/ValidConfigs<Lcom/alibaba/poplayer/trigger/page/PageConfigItem;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/zYb;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "findValidConfigs:started Count:{%s},unstarted Count:{%s}."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v4, v6, Lc8/qYb;->startedconfigs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    iget-object v4, v6, Lc8/qYb;->unStartedConfigs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v9

    invoke-static {v0, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, v6, Lc8/qYb;->startedconfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 86
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v8, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/page/PageConfigItem;>;>;"
    iget-object v0, v6, Lc8/qYb;->startedconfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/wYb;

    .line 88
    .local v3, "configItem":Lc8/wYb;
    new-instance v0, Lc8/lYb;

    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/poplayer/PopLayer;->internalGetCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lc8/lYb;-><init>(ILcom/alibaba/poplayer/trigger/Event;Lcom/alibaba/poplayer/trigger/BaseConfigItem;Landroid/app/Activity;Lc8/xXb;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    .end local v3    # "configItem":Lc8/wYb;
    :cond_3
    iget-object v0, p0, Lc8/zYb;->mCurrentKeyCode:Ljava/lang/String;

    invoke-virtual {p0, v0, v8}, Lc8/zYb;->tryOpenRequest(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 94
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/page/PageConfigItem;>;>;"
    :cond_4
    iget v0, p1, Lcom/alibaba/poplayer/trigger/Event;->source:I

    if-ne v1, v0, :cond_1

    iget-object v0, v6, Lc8/qYb;->unStartedConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lc8/zYb;->mTimerMgr:Lc8/pYb;

    iget-object v1, v6, Lc8/qYb;->unStartedConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lc8/pYb;->installTimerForConfigs(Lcom/alibaba/poplayer/trigger/Event;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public activeAccept(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 53
    iget-object v1, p0, Lc8/zYb;->mCurrentKeyCode:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lc8/zYb;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/poplayer/trigger/Event;

    move-result-object v0

    .line 54
    .local v0, "event":Lcom/alibaba/poplayer/trigger/Event;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/zYb;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " create Event:{%s}."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/alibaba/poplayer/trigger/Event;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget v1, v0, Lcom/alibaba/poplayer/trigger/Event;->source:I

    if-ne v1, v5, :cond_0

    .line 56
    iget-object v1, p0, Lc8/zYb;->mCurrentEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :goto_0
    invoke-virtual {p0, v0}, Lc8/zYb;->accept(Lcom/alibaba/poplayer/trigger/Event;)V

    .line 62
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lc8/zYb;->mCurrentEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 59
    iget-object v1, p0, Lc8/zYb;->mCurrentEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public cleanMap(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyCode"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lc8/zYb;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method protected initService()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lc8/xYb;

    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/alibaba/poplayer/PopLayer;->getConfigAdapter(I)Lcom/alibaba/poplayer/norm/IConfigAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/xYb;-><init>(Lcom/alibaba/poplayer/norm/IConfigAdapter;)V

    iput-object v0, p0, Lc8/zYb;->mConfigMgr:Lc8/eYb;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/zYb;->mCurrentEvents:Ljava/util/List;

    .line 33
    new-instance v0, Lc8/pYb;

    invoke-direct {v0, p0}, Lc8/pYb;-><init>(Lc8/gYb;)V

    iput-object v0, p0, Lc8/zYb;->mTimerMgr:Lc8/pYb;

    .line 34
    return-void
.end method

.method public pageClean(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "keyCode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lc8/zYb;->mTimerMgr:Lc8/pYb;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lc8/pYb;->removeNotStartedEventsByType(I)V

    .line 119
    invoke-virtual {p0, v2, p2, v2}, Lc8/zYb;->clean(ZLjava/lang/String;Z)V

    .line 121
    return-void
.end method

.method public passiveAccept()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lc8/zYb;->mCurrentActivityName:Ljava/lang/String;

    iget-object v1, p0, Lc8/zYb;->mCurrentActivityInfo:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/zYb;->activeAccept(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method
