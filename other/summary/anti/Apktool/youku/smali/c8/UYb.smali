.class public Lc8/UYb;
.super Lc8/gYb;
.source "ViewTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/SYb;,
        Lc8/TYb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/gYb",
        "<",
        "Lcom/alibaba/poplayer/trigger/view/ViewEvent;",
        "Lc8/PYb;",
        "Lc8/QYb;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final VIEW_SCHEME:Ljava/lang/String; = "poplayerview://"


# instance fields
.field private mLostHostViewsRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lYb",
            "<",
            "Lc8/PYb;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTargetViewsStatusChangeLsn:Lc8/MYb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lc8/UYb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/UYb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lc8/gYb;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/UYb;->mLostHostViewsRequests:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Lc8/RYb;

    invoke-direct {v0, p0}, Lc8/RYb;-><init>(Lc8/UYb;)V

    iput-object v0, p0, Lc8/UYb;->mTargetViewsStatusChangeLsn:Lc8/MYb;

    .line 365
    return-void
.end method

.method static synthetic access$000(Lc8/UYb;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lc8/UYb;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/UYb;->mLostHostViewsRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lc8/UYb;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lc8/UYb;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lc8/UYb;->filterPopRequestsByHostView(Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lc8/UYb;Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;Landroid/view/View;)Lc8/lYb;
    .locals 1
    .param p0, "x0"    # Lc8/UYb;
    .param p1, "x1"    # Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    .param p2, "x2"    # Lc8/PYb;
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lc8/UYb;->createPopRequest(Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;Landroid/view/View;)Lc8/lYb;

    move-result-object v0

    return-object v0
.end method

.method private buildAndRunSelectTasks(Landroid/app/Activity;Lcom/alibaba/poplayer/trigger/view/ViewEvent;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "event"    # Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    .param p3    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/poplayer/trigger/view/ViewEvent;",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/PYb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p3, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 336
    :cond_0
    return-void

    .line 333
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/PYb;

    .line 334
    .local v3, "configItem":Lc8/PYb;
    invoke-virtual {p2}, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->getHostView()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, v3, Lc8/PYb;->viewuri:Ljava/lang/String;

    const-string/jumbo v6, "pageLauncher"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lc8/UYb;->buildAndRunSelectTask(Landroid/app/Activity;Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Lc8/NYb;

    goto :goto_0
.end method

.method private createPopRequest(Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;Landroid/view/View;)Lc8/lYb;
    .locals 6
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    .param p2, "configItem"    # Lc8/PYb;
    .param p3, "hostView"    # Landroid/view/View;

    .prologue
    .line 202
    new-instance v0, Lc8/lYb;

    const/4 v1, 0x3

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lc8/lYb;-><init>(ILcom/alibaba/poplayer/trigger/Event;Lcom/alibaba/poplayer/trigger/BaseConfigItem;Landroid/app/Activity;Lc8/xXb;)V

    .line 203
    .local v0, "request":Lc8/lYb;
    if-eqz p3, :cond_0

    .line 204
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lc8/lYb;->setAttachActivity(Landroid/app/Activity;)V

    .line 205
    invoke-virtual {v0, p3}, Lc8/lYb;->setHostView(Landroid/view/View;)V

    .line 207
    :cond_0
    return-object v0
.end method

.method private filterPopRequestsByHostView(Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 4
    .param p2, "hostView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lYb",
            "<",
            "Lc8/PYb;",
            ">;>;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lYb",
            "<",
            "Lc8/PYb;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "requestsSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    :cond_0
    const/4 v2, 0x0

    .line 169
    :cond_1
    return-object v2

    .line 164
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/lYb;

    .line 166
    .local v1, "request":Lc8/lYb;, "Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;"
    invoke-virtual {v1}, Lc8/lYb;->getHostView()Landroid/view/View;

    move-result-object v3

    if-ne v3, p2, :cond_3

    .line 167
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static instance()Lc8/UYb;
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lc8/TYb;->access$300()Lc8/UYb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic accept(Lcom/alibaba/poplayer/trigger/Event;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/poplayer/trigger/Event;

    .prologue
    .line 32
    check-cast p1, Lcom/alibaba/poplayer/trigger/view/ViewEvent;

    .end local p1    # "x0":Lcom/alibaba/poplayer/trigger/Event;
    invoke-virtual {p0, p1}, Lc8/UYb;->accept(Lcom/alibaba/poplayer/trigger/view/ViewEvent;)V

    return-void
.end method

.method protected accept(Lcom/alibaba/poplayer/trigger/view/ViewEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/view/ViewEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lc8/UYb;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " create Event:{%s}."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v3, p1, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->attachActivityKeyCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->attachActivityKeyCode:Ljava/lang/String;

    iget-object v4, p0, Lc8/UYb;->mCurrentKeyCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 136
    :cond_0
    const-string/jumbo v3, "%s activeAccept Useless event,eventKeyCode:%s,curKeyCode:%s."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lc8/UYb;->TAG:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p1, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->attachActivityKeyCode:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lc8/UYb;->mCurrentKeyCode:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 140
    :cond_2
    invoke-virtual {p0, p1}, Lc8/UYb;->checkRepeatEvent(Lcom/alibaba/poplayer/trigger/Event;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 141
    iget-object v3, p0, Lc8/UYb;->mCurrentEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v1, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayer/trigger/view/ViewEvent;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v3, p0, Lc8/UYb;->mConfigMgr:Lc8/eYb;

    check-cast v3, Lc8/QYb;

    invoke-virtual {v3, p1}, Lc8/QYb;->findConfigs(Lcom/alibaba/poplayer/trigger/Event;)Lc8/qYb;

    move-result-object v0

    .line 150
    .local v0, "configs":Lc8/qYb;, "Lcom/alibaba/poplayer/trigger/ValidConfigs<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v2, "validConfigsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayer/trigger/ValidConfigs<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p0}, Lc8/UYb;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, v0, Lc8/qYb;->startedconfigs:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p1, v4}, Lc8/UYb;->buildAndRunSelectTasks(Landroid/app/Activity;Lcom/alibaba/poplayer/trigger/view/ViewEvent;Ljava/util/ArrayList;)V

    .line 155
    iget v3, p1, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->source:I

    if-ne v8, v3, :cond_1

    iget-object v3, v0, Lc8/qYb;->unStartedConfigs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    iget-object v3, p0, Lc8/UYb;->mTimerMgr:Lc8/pYb;

    iget-object v4, v0, Lc8/qYb;->unStartedConfigs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v4}, Lc8/pYb;->installTimerForConfigs(Lcom/alibaba/poplayer/trigger/Event;Ljava/util/List;)V

    goto :goto_0
.end method

.method public acceptMsg(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p1, "hostView"    # Landroid/view/View;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 180
    const-string/jumbo v3, "poplayerview://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    const-string/jumbo v3, "%s.activeAccept fail,uri{%s} must startsWith{%s} error"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lc8/UYb;->TAG:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    const-string/jumbo v5, "poplayerview://"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    .line 185
    const-string/jumbo v3, "%s.activeAccept fail,uri{%s},attachActivity is empty."

    new-array v4, v8, [Ljava/lang/Object;

    sget-object v5, Lc8/UYb;->TAG:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 190
    .local v0, "activity":Landroid/app/Activity;
    if-nez p3, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-static {v0}, Lc8/oYb;->getActivityKeyCode(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->createViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/poplayer/trigger/view/ViewEvent;

    move-result-object v2

    .line 191
    .local v2, "event":Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->setHostView(Ljava/lang/ref/WeakReference;)V

    .line 193
    iget-object v3, p0, Lc8/UYb;->mConfigMgr:Lc8/eYb;

    check-cast v3, Lc8/QYb;

    invoke-virtual {v3, v2, p3}, Lc8/QYb;->findValidConfigsByFilters(Lcom/alibaba/poplayer/trigger/Event;Ljava/util/Map;)Lc8/qYb;

    move-result-object v1

    .line 194
    .local v1, "configs":Lc8/qYb;, "Lcom/alibaba/poplayer/trigger/ValidConfigs<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;"
    iget-object v3, v1, Lc8/qYb;->startedconfigs:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v3}, Lc8/UYb;->buildAndRunSelectTasks(Landroid/app/Activity;Lcom/alibaba/poplayer/trigger/view/ViewEvent;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 190
    .end local v1    # "configs":Lc8/qYb;, "Lcom/alibaba/poplayer/trigger/ValidConfigs<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;"
    .end local v2    # "event":Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public activeAccept(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v3, p0, Lc8/UYb;->mCurrentKeyCode:Ljava/lang/String;

    invoke-static {p1, p2, v3}, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->createViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/poplayer/trigger/view/ViewEvent;

    move-result-object v1

    .line 117
    .local v1, "event":Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    const/4 v3, 0x2

    iget v4, v1, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->source:I

    if-ne v3, v4, :cond_0

    .line 118
    iget-object v3, p0, Lc8/UYb;->mCurrentEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 120
    invoke-virtual {p0}, Lc8/UYb;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 121
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lc8/UYb;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lc8/UYb;->findTrackingService(Landroid/app/Activity;)Lc8/OYb;

    move-result-object v2

    .line 123
    .local v2, "service":Lc8/OYb;
    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v2}, Lc8/OYb;->touchActivity()V

    .line 128
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "service":Lc8/OYb;
    :cond_0
    invoke-virtual {p0, v1}, Lc8/UYb;->accept(Lcom/alibaba/poplayer/trigger/view/ViewEvent;)V

    .line 129
    return-void
.end method

.method bindTrackingService(Landroid/app/Activity;Lc8/OYb;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "service"    # Lc8/OYb;

    .prologue
    .line 400
    invoke-static {p1}, Lc8/oYb;->findRootView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 401
    .local v0, "root":Landroid/view/View;
    sget v1, Lcom/youku/phone/R$id;->poplayer_trigger_tracking_service_id:I

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 402
    return-void
.end method

.method public buildAndRunSelectTask(Landroid/app/Activity;Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Lc8/NYb;
    .locals 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "event"    # Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    .param p3, "configItem"    # Lc8/PYb;
    .param p4, "masterView"    # Landroid/view/View;
    .param p5, "taskHandle"    # Ljava/lang/String;
    .param p6, "groupId"    # Ljava/lang/String;

    .prologue
    .line 340
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lc8/UYb;->findOrCreateTrackingService(Landroid/app/Activity;)Lc8/OYb;

    move-result-object v1

    .line 341
    .local v1, "service":Lc8/OYb;
    move-object/from16 v0, p3

    iget-object v4, v0, Lc8/PYb;->viewuri:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v6, v0, Lc8/PYb;->params:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-boolean v7, v0, Lc8/PYb;->selectFromCache:Z

    move-object/from16 v0, p3

    iget-boolean v8, v0, Lc8/PYb;->continuousSelect:Z

    move-object/from16 v0, p3

    iget-object v9, v0, Lc8/PYb;->operationName:Ljava/lang/String;

    iget-object v12, p0, Lc8/UYb;->mTargetViewsStatusChangeLsn:Lc8/MYb;

    const/4 v13, 0x1

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v1 .. v13}, Lc8/OYb;->scheduleSTask(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;Lc8/MYb;Z)Lc8/NYb;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 356
    .end local v1    # "service":Lc8/OYb;
    :goto_0
    return-object v2

    .line 354
    :catch_0
    move-exception v14

    .line 355
    .local v14, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "createSelectTask.error"

    invoke-static {v2, v14}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findHuDongRequestAttachInfo(Lc8/yXb;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "request"    # Lc8/yXb;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 308
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/yXb;->getExtra()Ljava/lang/Object;

    move-result-object v0

    .local v0, "extra":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lc8/SYb;

    if-nez v3, :cond_1

    .line 316
    .end local v0    # "extra":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .restart local v0    # "extra":Ljava/lang/Object;
    :cond_1
    move-object v1, v0

    .line 311
    check-cast v1, Lc8/SYb;

    .line 312
    .local v1, "tag":Lc8/SYb;
    const-string/jumbo v3, "groupId"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 313
    iget-object v2, v1, Lc8/SYb;->groupId:Ljava/lang/String;

    goto :goto_0

    .line 314
    :cond_2
    const-string/jumbo v3, "operationName"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    iget-object v2, v1, Lc8/SYb;->operationName:Ljava/lang/String;

    goto :goto_0
.end method

.method findOrCreateTrackingService(Landroid/app/Activity;)Lc8/OYb;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lc8/UYb;->findTrackingService(Landroid/app/Activity;)Lc8/OYb;

    move-result-object v0

    .line 406
    .local v0, "service":Lc8/OYb;
    if-nez v0, :cond_0

    .line 407
    new-instance v0, Lc8/OYb;

    .end local v0    # "service":Lc8/OYb;
    invoke-direct {v0, p1}, Lc8/OYb;-><init>(Landroid/app/Activity;)V

    .line 408
    .restart local v0    # "service":Lc8/OYb;
    invoke-virtual {p0, p1, v0}, Lc8/UYb;->bindTrackingService(Landroid/app/Activity;Lc8/OYb;)V

    .line 410
    :cond_0
    return-object v0
.end method

.method public findRequestsByMasterAndGroupId(Lc8/jXb;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "masterView"    # Lc8/jXb;
    .param p2, "groupId"    # Ljava/lang/String;
    .param p3, "activityKeyCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/jXb;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/yXb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0, p3}, Lc8/UYb;->getRequest(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 290
    .local v3, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 303
    :cond_0
    return-object v4

    .line 293
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/lYb;

    .line 294
    .local v2, "req":Lc8/lYb;
    invoke-virtual {v2}, Lc8/lYb;->getMasterView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lc8/lYb;->getMasterView()Landroid/view/View;

    move-result-object v6

    if-ne v6, p1, :cond_2

    .line 295
    invoke-virtual {v2}, Lc8/lYb;->getExtra()Ljava/lang/Object;

    move-result-object v0

    .line 296
    .local v0, "extra":Ljava/lang/Object;
    if-eqz v0, :cond_2

    instance-of v6, v0, Lc8/SYb;

    if-eqz v6, :cond_2

    move-object v5, v0

    .line 297
    check-cast v5, Lc8/SYb;

    .line 298
    .local v5, "tag":Lc8/SYb;
    iget-object v6, v5, Lc8/SYb;->groupId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v5, Lc8/SYb;->groupId:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 299
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method findTrackingService(Landroid/app/Activity;)Lc8/OYb;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 394
    invoke-static {p1}, Lc8/oYb;->findRootView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 395
    .local v1, "root":Landroid/view/View;
    sget v2, Lcom/youku/phone/R$id;->poplayer_trigger_tracking_service_id:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 396
    .local v0, "object":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local v0    # "object":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lc8/OYb;

    goto :goto_0
.end method

.method protected initService()V
    .locals 4

    .prologue
    .line 105
    new-instance v0, Lc8/QYb;

    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/alibaba/poplayer/PopLayer;->getConfigAdapter(I)Lcom/alibaba/poplayer/norm/IConfigAdapter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/QYb;-><init>(Lcom/alibaba/poplayer/PopLayer;Lcom/alibaba/poplayer/norm/IConfigAdapter;)V

    iput-object v0, p0, Lc8/UYb;->mConfigMgr:Lc8/eYb;

    .line 106
    new-instance v0, Lc8/pYb;

    invoke-direct {v0, p0}, Lc8/pYb;-><init>(Lc8/gYb;)V

    iput-object v0, p0, Lc8/UYb;->mTimerMgr:Lc8/pYb;

    .line 107
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
            "Lc8/PYb;",
            ">;>;",
            "Lc8/lYb",
            "<",
            "Lc8/PYb;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "requestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;>;"
    .local p2, "newRequest":Lc8/lYb;, "Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;"
    const/4 v3, 0x0

    .line 263
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v3

    .line 272
    :goto_0
    return v2

    .line 266
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

    .line 267
    .local v1, "request":Lc8/lYb;, "Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;"
    invoke-virtual {v1}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v2

    check-cast v2, Lc8/PYb;

    iget-object v4, v2, Lc8/PYb;->viewuri:Ljava/lang/String;

    invoke-virtual {p2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v2

    check-cast v2, Lc8/PYb;

    iget-object v2, v2, Lc8/PYb;->viewuri:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lc8/lYb;->getHostView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2}, Lc8/lYb;->getHostView()Landroid/view/View;

    move-result-object v4

    if-ne v2, v4, :cond_2

    .line 269
    const/4 v2, 0x1

    goto :goto_0

    .end local v1    # "request":Lc8/lYb;, "Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;"
    :cond_3
    move v2, v3

    .line 272
    goto :goto_0
.end method

.method public managerTask(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lc8/PYb;)V
    .locals 2
    .param p1, "masterView"    # Landroid/view/View;
    .param p2, "taskHandle"    # Ljava/lang/String;
    .param p3, "taskOperationName"    # Ljava/lang/String;
    .param p4, "config"    # Lc8/PYb;

    .prologue
    .line 361
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lc8/UYb;->findOrCreateTrackingService(Landroid/app/Activity;)Lc8/OYb;

    move-result-object v0

    .line 362
    .local v0, "service":Lc8/OYb;
    invoke-virtual {v0, p1, p2, p3, p4}, Lc8/OYb;->manageTask(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lc8/PYb;)V

    .line 363
    return-void
.end method

.method public pageClean(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "keyCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 276
    invoke-virtual {p0, p1}, Lc8/UYb;->findTrackingService(Landroid/app/Activity;)Lc8/OYb;

    move-result-object v0

    .line 277
    .local v0, "service":Lc8/OYb;
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Lc8/OYb;->leave()V

    .line 280
    :cond_0
    iget-object v1, p0, Lc8/UYb;->mLostHostViewsRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 282
    iget-object v1, p0, Lc8/UYb;->mTimerMgr:Lc8/pYb;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lc8/pYb;->removeNotStartedEventsByType(I)V

    .line 284
    invoke-virtual {p0, v3, p2, v3}, Lc8/UYb;->clean(ZLjava/lang/String;Z)V

    .line 286
    return-void
.end method

.method public passiveAccept()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lc8/UYb;->mCurrentActivityName:Ljava/lang/String;

    iget-object v1, p0, Lc8/UYb;->mCurrentActivityInfo:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/UYb;->activeAccept(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public removeMsg(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "msgName"    # Ljava/lang/String;
    .param p2, "hostView"    # Landroid/view/View;

    .prologue
    .line 198
    const-string/jumbo v0, "removeActiveLaunched"

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v0, v1}, Lc8/UYb;->managerTask(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lc8/PYb;)V

    .line 199
    return-void
.end method

.method public removeRequest(Lc8/yXb;)V
    .locals 5
    .param p1, "request"    # Lc8/yXb;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 321
    instance-of v2, p1, Lc8/lYb;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 322
    check-cast v0, Lc8/lYb;

    .line 323
    .local v0, "hdReq":Lc8/lYb;
    invoke-virtual {v0}, Lc8/lYb;->getAttachActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/UYb;->findTrackingService(Landroid/app/Activity;)Lc8/OYb;

    move-result-object v1

    .line 324
    .local v1, "service":Lc8/OYb;
    const-string/jumbo v3, "removeALL"

    invoke-virtual {v0}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v2

    check-cast v2, Lc8/PYb;

    invoke-virtual {v1, v4, v4, v3, v2}, Lc8/OYb;->manageTask(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lc8/PYb;)V

    .line 328
    .end local v0    # "hdReq":Lc8/lYb;
    .end local v1    # "service":Lc8/OYb;
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {p0, p1, v3, v3}, Lc8/UYb;->removeRequest(Lc8/yXb;ZZ)V

    goto :goto_0
.end method

.method public updateCacheConfigAsync(ZLandroid/content/Context;)V
    .locals 1
    .param p1, "isInit"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    iget-object v0, p0, Lc8/UYb;->mConfigMgr:Lc8/eYb;

    check-cast v0, Lc8/QYb;

    invoke-virtual {v0, p1, p2}, Lc8/QYb;->updateCacheConfigAsync(ZLandroid/content/Context;)V

    .line 212
    return-void
.end method
