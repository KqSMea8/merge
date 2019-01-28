.class public Lc8/uYb;
.super Lc8/gYb;
.source "AppTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tYb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/gYb",
        "<",
        "Lcom/alibaba/poplayer/trigger/Event;",
        "Lc8/rYb;",
        "Lc8/sYb;",
        ">;"
    }
.end annotation


# static fields
.field public static final APP_SCHEME:Ljava/lang/String; = "poplayerapp://"


# instance fields
.field private mAutoCloseMgr:Lc8/vYb;

.field private mContextWrapper:Landroid/content/MutableContextWrapper;

.field private mHuDongPopRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lYb",
            "<",
            "Lc8/rYb;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lc8/gYb;-><init>()V

    .line 32
    new-instance v0, Landroid/content/MutableContextWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/uYb;->mContextWrapper:Landroid/content/MutableContextWrapper;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/uYb;->mHuDongPopRequests:Ljava/util/ArrayList;

    .line 38
    return-void
.end method

.method private createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/poplayer/trigger/Event;
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "attachActivityKeyCode"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Lcom/alibaba/poplayer/trigger/Event;

    const/4 v1, 0x1

    const/4 v5, 0x2

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/poplayer/trigger/Event;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    .local v0, "event":Lcom/alibaba/poplayer/trigger/Event;
    iget-object v1, v0, Lcom/alibaba/poplayer/trigger/Event;->uri:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 126
    .local v8, "queryIndex":I
    const/4 v1, -0x1

    if-ne v1, v8, :cond_0

    const/4 v10, 0x1

    .line 127
    .local v10, "useOriginUri":Z
    :goto_0
    if-eqz v10, :cond_1

    iget-object v7, v0, Lcom/alibaba/poplayer/trigger/Event;->uri:Ljava/lang/String;

    .line 130
    .local v7, "newUri":Ljava/lang/String;
    :goto_1
    iget-object v1, v0, Lcom/alibaba/poplayer/trigger/Event;->uri:Ljava/lang/String;

    const-string/jumbo v2, "poplayerapp://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v6, 0x1

    .line 131
    .local v6, "source":I
    :goto_2
    iget v1, v0, Lcom/alibaba/poplayer/trigger/Event;->source:I

    if-ne v6, v1, :cond_3

    const/4 v9, 0x1

    .line 133
    .local v9, "useOriginSource":Z
    :goto_3
    if-eqz v10, :cond_4

    if-eqz v9, :cond_4

    .line 134
    :goto_4
    iput-object p1, v0, Lcom/alibaba/poplayer/trigger/Event;->originUri:Ljava/lang/String;

    .line 135
    return-object v0

    .line 126
    .end local v6    # "source":I
    .end local v7    # "newUri":Ljava/lang/String;
    .end local v9    # "useOriginSource":Z
    .end local v10    # "useOriginUri":Z
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 127
    .restart local v10    # "useOriginUri":Z
    :cond_1
    iget-object v1, v0, Lcom/alibaba/poplayer/trigger/Event;->uri:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 130
    .restart local v7    # "newUri":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x2

    goto :goto_2

    .line 131
    .restart local v6    # "source":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 133
    .restart local v9    # "useOriginSource":Z
    :cond_4
    new-instance v1, Lcom/alibaba/poplayer/trigger/Event;

    const/4 v2, 0x2

    if-eqz v9, :cond_5

    iget-object v3, v0, Lcom/alibaba/poplayer/trigger/Event;->uri:Ljava/lang/String;

    :goto_5
    iget-object v4, v0, Lcom/alibaba/poplayer/trigger/Event;->param:Ljava/lang/String;

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/poplayer/trigger/Event;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_4

    :cond_5
    move-object v3, v7

    goto :goto_5
.end method

.method private createRequest(Lcom/alibaba/poplayer/trigger/Event;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "activityInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/poplayer/trigger/Event;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lYb",
            "<",
            "Lc8/rYb;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x1

    .line 102
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 103
    iget-object v0, p0, Lc8/uYb;->mConfigMgr:Lc8/eYb;

    check-cast v0, Lc8/sYb;

    new-array v2, v9, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v2, v4

    aput-object p3, v2, v1

    invoke-virtual {v0, p1, v2}, Lc8/sYb;->findValidConfigs(Lcom/alibaba/poplayer/trigger/Event;[Ljava/lang/String;)Lc8/qYb;

    move-result-object v6

    .line 109
    .local v6, "configs":Lc8/qYb;, "Lcom/alibaba/poplayer/trigger/ValidConfigs<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;"
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v8, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;>;"
    iget-object v0, v6, Lc8/qYb;->startedconfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, v6, Lc8/qYb;->startedconfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/rYb;

    .line 112
    .local v3, "configItem":Lc8/rYb;
    new-instance v0, Lc8/lYb;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lc8/lYb;-><init>(ILcom/alibaba/poplayer/trigger/Event;Lcom/alibaba/poplayer/trigger/BaseConfigItem;Landroid/app/Activity;Lc8/xXb;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    .end local v3    # "configItem":Lc8/rYb;
    .end local v6    # "configs":Lc8/qYb;, "Lcom/alibaba/poplayer/trigger/ValidConfigs<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;>;"
    :cond_0
    iget-object v0, p0, Lc8/uYb;->mConfigMgr:Lc8/eYb;

    check-cast v0, Lc8/sYb;

    invoke-virtual {v0, p1}, Lc8/sYb;->findValidConfigs(Lcom/alibaba/poplayer/trigger/Event;)Lc8/qYb;

    move-result-object v6

    .restart local v6    # "configs":Lc8/qYb;, "Lcom/alibaba/poplayer/trigger/ValidConfigs<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;"
    goto :goto_0

    .line 116
    .restart local v8    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;>;"
    :cond_1
    iget v0, p1, Lcom/alibaba/poplayer/trigger/Event;->source:I

    if-ne v9, v0, :cond_2

    iget-object v0, v6, Lc8/qYb;->unStartedConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lc8/uYb;->mTimerMgr:Lc8/pYb;

    iget-object v1, v6, Lc8/qYb;->unStartedConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lc8/pYb;->installTimerForConfigs(Lcom/alibaba/poplayer/trigger/Event;Ljava/util/List;)V

    .line 119
    :cond_2
    return-object v8
.end method

.method public static instance()Lc8/uYb;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lc8/tYb;->access$000()Lc8/uYb;

    move-result-object v0

    return-object v0
.end method

.method private intoNewPage(Lcom/alibaba/poplayer/trigger/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;

    .prologue
    .line 140
    iget-object v1, p0, Lc8/uYb;->mContextWrapper:Landroid/content/MutableContextWrapper;

    iget-object v0, p0, Lc8/uYb;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 142
    iget-object v0, p0, Lc8/uYb;->mTimerMgr:Lc8/pYb;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lc8/pYb;->removeNotStartedEventsByType(I)V

    .line 144
    iget-object v0, p0, Lc8/uYb;->mCurrentEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    iget-object v0, p0, Lc8/uYb;->mCurrentEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-direct {p0, p1}, Lc8/uYb;->requestsSurvivalSupervise(Lcom/alibaba/poplayer/trigger/Event;)V

    .line 149
    invoke-direct {p0, p1}, Lc8/uYb;->notifyPageInfo(Lcom/alibaba/poplayer/trigger/Event;)V

    .line 150
    return-void
.end method

.method private notifyPageInfo(Lcom/alibaba/poplayer/trigger/Event;)V
    .locals 7
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;

    .prologue
    .line 262
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 263
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "uri"

    iget-object v5, p1, Lcom/alibaba/poplayer/trigger/Event;->uri:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string/jumbo v4, "param"

    iget-object v5, p1, Lcom/alibaba/poplayer/trigger/Event;->param:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    iget-object v4, p0, Lc8/uYb;->mHuDongPopRequests:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/lYb;

    .line 266
    .local v3, "request":Lc8/lYb;
    invoke-virtual {v3}, Lc8/lYb;->getLayer()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lc8/lYb;->getLayer()Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lc8/jXb;

    if-eqz v4, :cond_0

    .line 267
    invoke-virtual {v3}, Lc8/lYb;->getLayer()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lc8/jXb;

    const-string/jumbo v5, "PopLayer.AttachPageInfo"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lc8/jXb;->onReceiveEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "request":Lc8/lYb;
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "notifyPageInfo.error"

    invoke-static {v4, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method private requestsSurvivalSupervise(Lcom/alibaba/poplayer/trigger/Event;)V
    .locals 7
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;

    .prologue
    .line 244
    iget-object v3, p0, Lc8/uYb;->mHuDongPopRequests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    :cond_0
    return-void

    .line 246
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v0, "dirty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest;>;"
    iget-object v3, p0, Lc8/uYb;->mHuDongPopRequests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/lYb;

    .line 248
    .local v2, "request":Lc8/lYb;
    invoke-virtual {p0}, Lc8/uYb;->getConfigMgr()Lc8/eYb;

    move-result-object v3

    check-cast v3, Lc8/sYb;

    invoke-virtual {v2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v4

    check-cast v4, Lc8/rYb;

    invoke-virtual {v3, v4, p1}, Lc8/sYb;->isConfigSurvival(Lc8/rYb;Lcom/alibaba/poplayer/trigger/Event;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 249
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    .end local v2    # "request":Lc8/lYb;
    :cond_3
    const-string/jumbo v3, "requestsSurvivalSupervise.find dirty request size : %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/lYb;

    .line 254
    .restart local v2    # "request":Lc8/lYb;
    invoke-virtual {p0, v2}, Lc8/uYb;->removeRequest(Lc8/yXb;)V

    goto :goto_1
.end method


# virtual methods
.method public accept(Lcom/alibaba/poplayer/trigger/Event;)V
    .locals 7
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;

    .prologue
    .line 64
    if-eqz p1, :cond_2

    .line 66
    iget-object v3, p0, Lc8/uYb;->mCurrentActivityName:Ljava/lang/String;

    iget-object v4, p0, Lc8/uYb;->mCurrentActivityInfo:Ljava/lang/String;

    invoke-direct {p0, p1, v3, v4}, Lc8/uYb;->createRequest(Lcom/alibaba/poplayer/trigger/Event;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 67
    .local v2, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 68
    iget-object v3, p0, Lc8/uYb;->mCurrentKeyCode:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lc8/uYb;->tryOpenRequest(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/lYb;

    .line 70
    .local v1, "request":Lc8/lYb;, "Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;"
    iget-object v3, p0, Lc8/uYb;->mHuDongPopRequests:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v1}, Lc8/uYb;->isPopRequestContains(Ljava/util/ArrayList;Lc8/lYb;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    iget-object v3, p0, Lc8/uYb;->mHuDongPopRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {v1}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v3

    check-cast v3, Lc8/rYb;

    iget-boolean v3, v3, Lc8/rYb;->autoClose:Z

    if-eqz v3, :cond_0

    .line 74
    iget-object v4, p0, Lc8/uYb;->mAutoCloseMgr:Lc8/vYb;

    invoke-virtual {v1}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v3

    check-cast v3, Lc8/rYb;

    invoke-virtual {v4, v3}, Lc8/vYb;->installCloseTimer(Lc8/rYb;)V

    goto :goto_0

    .line 77
    :cond_1
    const-string/jumbo v4, "AppTrigger.drop exist request.{%s}"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v3

    check-cast v3, Lc8/rYb;

    invoke-virtual {v3}, Lc8/rYb;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "request":Lc8/lYb;, "Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;"
    .end local v2    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;>;"
    :cond_2
    return-void
.end method

.method public activeAccept(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v1, p0, Lc8/uYb;->mCurrentKeyCode:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lc8/uYb;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/poplayer/trigger/Event;

    move-result-object v0

    .line 88
    .local v0, "event":Lcom/alibaba/poplayer/trigger/Event;
    iget v1, v0, Lcom/alibaba/poplayer/trigger/Event;->source:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 89
    iget-object v1, p0, Lc8/uYb;->mCurrentEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :goto_0
    invoke-virtual {p0, v0}, Lc8/uYb;->accept(Lcom/alibaba/poplayer/trigger/Event;)V

    .line 96
    return-void

    .line 92
    :cond_0
    invoke-direct {p0, v0}, Lc8/uYb;->intoNewPage(Lcom/alibaba/poplayer/trigger/Event;)V

    goto :goto_0
.end method

.method protected initService()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lc8/sYb;

    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/poplayer/PopLayer;->getConfigAdapter(I)Lcom/alibaba/poplayer/norm/IConfigAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/sYb;-><init>(Lcom/alibaba/poplayer/norm/IConfigAdapter;)V

    iput-object v0, p0, Lc8/uYb;->mConfigMgr:Lc8/eYb;

    .line 49
    new-instance v0, Lc8/pYb;

    invoke-direct {v0, p0}, Lc8/pYb;-><init>(Lc8/gYb;)V

    iput-object v0, p0, Lc8/uYb;->mTimerMgr:Lc8/pYb;

    .line 50
    new-instance v0, Lc8/vYb;

    invoke-direct {v0, p0}, Lc8/vYb;-><init>(Lc8/uYb;)V

    iput-object v0, p0, Lc8/uYb;->mAutoCloseMgr:Lc8/vYb;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/uYb;->mCurrentEvents:Ljava/util/List;

    .line 52
    return-void
.end method

.method protected isPopRequestContains(Ljava/util/ArrayList;Lc8/lYb;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lYb",
            "<",
            "Lc8/rYb;",
            ">;>;",
            "Lc8/lYb",
            "<",
            "Lc8/rYb;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "requestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;>;"
    .local p2, "newRequest":Lc8/lYb;, "Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;"
    const/4 v3, 0x0

    .line 206
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v3

    .line 214
    :goto_0
    return v2

    .line 209
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/lYb;

    .line 210
    .local v1, "request":Lc8/lYb;
    invoke-virtual {v1}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v2

    iget-object v4, v2, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    invoke-virtual {p2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v2

    check-cast v2, Lc8/rYb;

    iget-object v2, v2, Lc8/rYb;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lc8/lYb;->getStatus()Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    move-result-object v2

    sget-object v4, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->REMOVED:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    if-eq v2, v4, :cond_2

    .line 211
    const/4 v2, 0x1

    goto :goto_0

    .end local v1    # "request":Lc8/lYb;
    :cond_3
    move v2, v3

    .line 214
    goto :goto_0
.end method

.method public onReady(Lc8/yXb;)V
    .locals 7
    .param p1, "request"    # Lc8/yXb;

    .prologue
    const/4 v6, 0x0

    .line 160
    instance-of v3, p1, Lc8/lYb;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 161
    check-cast v2, Lc8/lYb;

    .line 165
    .local v2, "req":Lc8/lYb;
    invoke-virtual {v2}, Lc8/lYb;->getLayer()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    .line 167
    invoke-static {}, Lc8/eXb;->instance()Lc8/eXb;

    move-result-object v3

    iget-object v4, p0, Lc8/uYb;->mContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-virtual {v2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lc8/eXb;->createLayer(Landroid/content/Context;Ljava/lang/String;)Lc8/jXb;

    move-result-object v1

    .line 168
    .local v1, "popLayerView":Lc8/jXb;
    if-nez v1, :cond_1

    .line 169
    const-string/jumbo v3, "createLayerAndAddRequest fail.Create layer Fail."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p0, p1}, Lc8/uYb;->removeMapRequest(Lc8/yXb;)V

    .line 171
    const-string/jumbo v3, "createLayerAndAddRequest fail.Removed."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    .end local v1    # "popLayerView":Lc8/jXb;
    .end local v2    # "req":Lc8/lYb;
    :cond_0
    :goto_0
    return-void

    .line 174
    .restart local v1    # "popLayerView":Lc8/jXb;
    .restart local v2    # "req":Lc8/lYb;
    :cond_1
    invoke-virtual {v2, v1}, Lc8/lYb;->setLayer(Landroid/view/View;)V

    .line 175
    invoke-virtual {v1, v2}, Lc8/jXb;->setPopRequest(Lc8/yXb;)V

    .line 180
    :goto_1
    :try_start_0
    iget-object v3, p0, Lc8/uYb;->mContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-virtual {v1, v3, v2}, Lc8/jXb;->init(Landroid/content/Context;Lc8/yXb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_2
    invoke-static {}, Lc8/uXb;->instance()Lc8/uXb;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/uXb;->add(Lc8/yXb;)V

    .line 188
    :try_start_1
    iget-object v3, p0, Lc8/uYb;->mContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-virtual {v1, v3}, Lc8/jXb;->onViewAdded(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    :goto_3
    :try_start_2
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v3

    invoke-virtual {p1}, Lc8/yXb;->getDomian()I

    move-result v4

    iget-object v5, p0, Lc8/uYb;->mContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-virtual {p1}, Lc8/yXb;->getLayer()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/poplayer/PopLayer;->onPopped(ILandroid/content/Context;Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 197
    :goto_4
    invoke-virtual {v2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/poplayer/utils/PLDebug;->isForceDisplay(Lcom/alibaba/poplayer/trigger/BaseConfigItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {v2}, Lc8/lYb;->getLayer()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lc8/jXb;

    invoke-virtual {v3}, Lc8/jXb;->displayMe()V

    goto :goto_0

    .line 177
    .end local v1    # "popLayerView":Lc8/jXb;
    :cond_2
    invoke-virtual {v2}, Lc8/lYb;->getLayer()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/jXb;

    .restart local v1    # "popLayerView":Lc8/jXb;
    goto :goto_1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "PopLayerView init fail."

    invoke-static {v3, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 189
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 190
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "PopLayerView onViewAdded fail."

    invoke-static {v3, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 194
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 195
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "PopLayerView onLayerPopped notify fail."

    invoke-static {v3, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public passiveAccept()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lc8/uYb;->mCurrentActivityName:Ljava/lang/String;

    iget-object v1, p0, Lc8/uYb;->mCurrentActivityInfo:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/uYb;->activeAccept(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public removeRequest(Lc8/yXb;)V
    .locals 2
    .param p1, "request"    # Lc8/yXb;

    .prologue
    const/4 v1, 0x1

    .line 219
    invoke-virtual {p0, p1, v1, v1}, Lc8/uYb;->removeRequest(Lc8/yXb;ZZ)V

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lc8/uYb;->mHuDongPopRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 221
    iget-object v1, p0, Lc8/uYb;->mHuDongPopRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 222
    iget-object v1, p0, Lc8/uYb;->mHuDongPopRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 225
    :cond_0
    return-void

    .line 220
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeRequestByConfigUUID(Ljava/lang/String;)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const/4 v0, 0x0

    .line 231
    .local v0, "hitRequest":Lc8/lYb;, "Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;"
    iget-object v3, p0, Lc8/uYb;->mHuDongPopRequests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/lYb;

    .line 232
    .local v2, "req":Lc8/lYb;, "Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;"
    invoke-virtual {v2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v3

    check-cast v3, Lc8/rYb;

    iget-object v3, v3, Lc8/rYb;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v3

    check-cast v3, Lc8/rYb;

    iget-boolean v3, v3, Lc8/rYb;->autoClose:Z

    if-eqz v3, :cond_2

    .line 233
    move-object v0, v2

    .line 237
    .end local v2    # "req":Lc8/lYb;, "Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/app/AppConfigItem;>;"
    :cond_3
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0, v0}, Lc8/uYb;->removeRequest(Lc8/yXb;)V

    goto :goto_0
.end method
