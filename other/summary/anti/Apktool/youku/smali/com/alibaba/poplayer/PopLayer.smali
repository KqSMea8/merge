.class public Lcom/alibaba/poplayer/PopLayer;
.super Ljava/lang/Object;
.source "PopLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/aXb;,
        Lc8/bXb;
    }
.end annotation


# static fields
.field public static final ACTION_FRAGMENT_SWITCH:Ljava/lang/String; = "com.alibaba.poplayer.PopLayer.action.FRAGMENT_SWITCH"

.field public static final ACTION_NOTIFY_TRACKS_NAME:Ljava/lang/String; = "PopLayer.TrackingView.Event"

.field public static final ACTION_OUT_DISMISS:Ljava/lang/String; = "com.alibaba.poplayer.PopLayer.action.out.CLOSE"

.field public static final ACTION_OUT_DISPLAY:Ljava/lang/String; = "com.alibaba.poplayer.PopLayer.action.out.DISPLAY"

.field public static final ACTION_POP:Ljava/lang/String; = "com.alibaba.poplayer.PopLayer.action.POP"

.field public static final ACTION_TRACK_INFO_KEY_EVENT_NAME:Ljava/lang/String; = "eventName"

.field public static final ACTION_TRACK_INFO_KEY_GROUPID:Ljava/lang/String; = "groupId"

.field public static final ACTION_TRACK_INFO_KEY_OPERATION_NAME:Ljava/lang/String; = "operationName"

.field public static final ACTION_TRACK_INFO_KEY_PARAMS:Ljava/lang/String; = "params"

.field public static final EXTRA_KEY_EVENT:Ljava/lang/String; = "event"

.field public static final EXTRA_KEY_EXTRA_PARAMS:Ljava/lang/String; = "extra_params"

.field public static final EXTRA_KEY_FRAGMENT_NAME:Ljava/lang/String; = "fragment_name"

.field public static final EXTRA_KEY_FRAGMENT_NEED_ACTIVITY_PARAM:Ljava/lang/String; = "fragment_need_activity_param"

.field public static final EXTRA_KEY_FRAGMENT_PARAM:Ljava/lang/String; = "fragment_param"

.field public static final EXTRA_KEY_PARAM:Ljava/lang/String; = "param"

.field public static final SCHEMA:Ljava/lang/String; = "poplayer"

.field private static sPoplayer:Lcom/alibaba/poplayer/PopLayer;

.field private static sSetup:Z


# instance fields
.field public isLogOutputMode:Z

.field final mActivitiesMustBroadcastPop:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppTriggerService:Lc8/uYb;
    .annotation runtime Lcom/alibaba/poplayer/utils/Monitor$TargetField;
        prefix = "App"
    .end annotation
.end field

.field protected mConfigContainers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/poplayer/norm/IConfigAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/app/Application;

.field private mCurrentNativeUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/poplayer/utils/Monitor$TargetField;
        name = "native_url"
    .end annotation
.end field

.field protected final mFaceAdapter:Lcom/alibaba/poplayer/norm/IFaceAdapter;

.field private mILogAdapters:Lcom/alibaba/poplayer/norm/ILogAdapter;

.field private mLayerMgrAdapter:Lc8/oXb;
    .annotation runtime Lcom/alibaba/poplayer/utils/Monitor$TargetField;
    .end annotation
.end field

.field private mPageTriggerService:Lc8/zYb;
    .annotation runtime Lcom/alibaba/poplayer/utils/Monitor$TargetField;
        prefix = "Page"
    .end annotation
.end field

.field private mTriggleController:Lc8/oYb;
    .annotation runtime Lcom/alibaba/poplayer/utils/Monitor$TargetField;
    .end annotation
.end field

.field private mVersion:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/poplayer/utils/Monitor$TargetField;
        name = "version"
    .end annotation
.end field

.field private mViewTriggerService:Lc8/UYb;
    .annotation runtime Lcom/alibaba/poplayer/utils/Monitor$TargetField;
        prefix = "View"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/poplayer/norm/IFaceAdapter;Lcom/alibaba/poplayer/norm/IConfigAdapter;Lcom/alibaba/poplayer/norm/IConfigAdapter;Lcom/alibaba/poplayer/norm/IConfigAdapter;Lc8/oXb;)V
    .locals 3
    .param p1, "faceAdapter"    # Lcom/alibaba/poplayer/norm/IFaceAdapter;
    .param p2, "pageConfigAdapter"    # Lcom/alibaba/poplayer/norm/IConfigAdapter;
    .param p3, "appConfigAdapter"    # Lcom/alibaba/poplayer/norm/IConfigAdapter;
    .param p4, "viewConfigAdapter"    # Lcom/alibaba/poplayer/norm/IConfigAdapter;
    .param p5, "layerMgrAdapter"    # Lc8/oXb;

    .prologue
    const/4 v2, 0x3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/poplayer/PopLayer;->isLogOutputMode:Z

    .line 75
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/poplayer/PopLayer;->mActivitiesMustBroadcastPop:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/poplayer/PopLayer;->mConfigContainers:Ljava/util/Map;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/poplayer/PopLayer;->mILogAdapters:Lcom/alibaba/poplayer/norm/ILogAdapter;

    .line 151
    iput-object p1, p0, Lcom/alibaba/poplayer/PopLayer;->mFaceAdapter:Lcom/alibaba/poplayer/norm/IFaceAdapter;

    .line 152
    iget-object v0, p0, Lcom/alibaba/poplayer/PopLayer;->mConfigContainers:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/alibaba/poplayer/PopLayer;->mConfigContainers:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/alibaba/poplayer/PopLayer;->mConfigContainers:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iput-object p5, p0, Lcom/alibaba/poplayer/PopLayer;->mLayerMgrAdapter:Lc8/oXb;

    .line 156
    sget-object v0, Lcom/alibaba/poplayer/PopLayer;->sPoplayer:Lcom/alibaba/poplayer/PopLayer;

    if-nez v0, :cond_0

    .line 157
    sput-object p0, Lcom/alibaba/poplayer/PopLayer;->sPoplayer:Lcom/alibaba/poplayer/PopLayer;

    .line 158
    :cond_0
    return-void
.end method

.method public static getReference()Lcom/alibaba/poplayer/PopLayer;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/alibaba/poplayer/PopLayer;->sPoplayer:Lcom/alibaba/poplayer/PopLayer;

    return-object v0
.end method


# virtual methods
.method public acceptMsg(Ljava/lang/String;Ljava/util/Map;Landroid/view/View;)V
    .locals 1
    .param p1, "msgName"    # Ljava/lang/String;
    .param p3, "hostView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 435
    .local p2, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p2}, Lc8/UYb;->acceptMsg(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;)V

    .line 436
    return-void
.end method

.method public getActivityInfo(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 385
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getApp()Landroid/app/Application;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/alibaba/poplayer/PopLayer;->mContext:Landroid/app/Application;

    return-object v0
.end method

.method public getConfigAdapter(I)Lcom/alibaba/poplayer/norm/IConfigAdapter;
    .locals 2
    .param p1, "domain"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/alibaba/poplayer/PopLayer;->mConfigContainers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/poplayer/norm/IConfigAdapter;

    return-object v0
.end method

.method public getCurrentTimeStamp()J
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alibaba/poplayer/PopLayer;->mFaceAdapter:Lcom/alibaba/poplayer/norm/IFaceAdapter;

    iget-object v1, p0, Lcom/alibaba/poplayer/PopLayer;->mContext:Landroid/app/Application;

    invoke-interface {v0, v1}, Lcom/alibaba/poplayer/norm/IFaceAdapter;->getCurrentTimeStamp(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFaceAdapter()Lcom/alibaba/poplayer/norm/IFaceAdapter;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alibaba/poplayer/PopLayer;->mFaceAdapter:Lcom/alibaba/poplayer/norm/IFaceAdapter;

    return-object v0
.end method

.method public getLifecycleManager()Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alibaba/poplayer/PopLayer;->mTriggleController:Lc8/oYb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/poplayer/PopLayer;->mTriggleController:Lc8/oYb;

    goto :goto_0
.end method

.method public getLogAdapter()Lcom/alibaba/poplayer/norm/ILogAdapter;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/alibaba/poplayer/PopLayer;->mILogAdapters:Lcom/alibaba/poplayer/norm/ILogAdapter;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alibaba/poplayer/PopLayer;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public internalGetCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alibaba/poplayer/PopLayer;->mTriggleController:Lc8/oYb;

    invoke-virtual {v0}, Lc8/oYb;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public internalNotifyDismissedIfPopLayerView(Lc8/jXb;)V
    .locals 3
    .param p1, "poplayerView"    # Lc8/jXb;

    .prologue
    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.poplayer.PopLayer.action.out.CLOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "event"

    invoke-virtual {p1}, Lc8/jXb;->getInfo()Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 258
    iget-object v1, p0, Lcom/alibaba/poplayer/PopLayer;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 259
    const-string/jumbo v1, "PopLayer.dismiss.notify"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p1}, Lc8/jXb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/alibaba/poplayer/PopLayer;->onDismissed(Landroid/content/Context;Lc8/jXb;)V

    .line 261
    return-void
.end method

.method public internalNotifyDisplayedIfPopLayerView(Lc8/jXb;)V
    .locals 3
    .param p1, "poplayerView"    # Lc8/jXb;

    .prologue
    .line 269
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.poplayer.PopLayer.action.out.DISPLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "event"

    invoke-virtual {p1}, Lc8/jXb;->getInfo()Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p1}, Lc8/jXb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 272
    const-string/jumbo v1, "PopLayer.display.notify"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    invoke-virtual {p1}, Lc8/jXb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/alibaba/poplayer/PopLayer;->onDisplayed(Landroid/content/Context;Lc8/jXb;)V

    .line 274
    return-void
.end method

.method public internalNotifyNativeUrlChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/alibaba/poplayer/PopLayer;->mCurrentNativeUrl:Ljava/lang/String;

    .line 294
    const-string/jumbo v0, "PopLayer.internalNotifyNativeUrlChanged.mCurrentNativeUrl{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/poplayer/PopLayer;->mCurrentNativeUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    return-void
.end method

.method public isMunualPopPageContains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/alibaba/poplayer/PopLayer;->mActivitiesMustBroadcastPop:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSamePage(Landroid/app/Activity;Landroid/app/Activity;)Z
    .locals 10
    .param p1, "preActivity"    # Landroid/app/Activity;
    .param p2, "curActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 397
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v5

    .line 426
    :goto_0
    return v2

    .line 401
    :cond_1
    if-ne p2, p1, :cond_5

    .line 402
    const/4 v2, 0x0

    .line 403
    .local v2, "isSame":Z
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 404
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 405
    .local v1, "curIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 406
    .local v4, "preIntent":Landroid/content/Intent;
    if-nez v1, :cond_3

    if-nez v4, :cond_3

    .line 407
    const/4 v2, 0x1

    .line 408
    const-string/jumbo v6, "PopLayer.isSamePage.curActivity: no intent "

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    .end local v1    # "curIntent":Landroid/content/Intent;
    .end local v4    # "preIntent":Landroid/content/Intent;
    :cond_2
    :goto_1
    const-string/jumbo v6, "PopLayer.isSamePage.curActivity == preActivity {%s}"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 409
    .restart local v1    # "curIntent":Landroid/content/Intent;
    .restart local v4    # "preIntent":Landroid/content/Intent;
    :cond_3
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 410
    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "curData":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, "preData":Ljava/lang/String;
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    .line 413
    const/4 v2, 0x1

    .line 414
    const-string/jumbo v6, "PopLayer.isSamePage.curActivity: no intent.dataString "

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 415
    :cond_4
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 416
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 417
    const-string/jumbo v6, "PopLayer.isSamePage.curActivity: intent.dataString equal:%s"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .end local v0    # "curData":Ljava/lang/String;
    .end local v1    # "curIntent":Landroid/content/Intent;
    .end local v2    # "isSame":Z
    .end local v3    # "preData":Ljava/lang/String;
    .end local v4    # "preIntent":Landroid/content/Intent;
    :cond_5
    move v2, v5

    .line 426
    goto :goto_0
.end method

.method public isValidActivity(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 497
    const/4 v0, 0x1

    return v0
.end method

.method public isValidConfig(Lcom/alibaba/poplayer/trigger/BaseConfigItem;)Z
    .locals 1
    .param p1, "configItem"    # Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    .prologue
    .line 488
    const/4 v0, 0x1

    return v0
.end method

.method protected onDismissed(Landroid/content/Context;Lc8/jXb;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "poplayerView"    # Lc8/jXb;

    .prologue
    .line 349
    const-string/jumbo v0, "PopLayer.onDismissed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    return-void
.end method

.method protected onDisplayed(Landroid/content/Context;Lc8/jXb;)V
    .locals 2
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "poplayerView"    # Lc8/jXb;

    .prologue
    .line 341
    const-string/jumbo v0, "PopLayer.onDisplayed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    return-void
.end method

.method public onPopped(ILandroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "domain"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layer"    # Landroid/view/View;

    .prologue
    .line 336
    const-string/jumbo v0, "PopLayer.onPopped"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    return-void
.end method

.method public registerLogAdapter(Lcom/alibaba/poplayer/norm/ILogAdapter;)V
    .locals 2
    .param p1, "logAdapter"    # Lcom/alibaba/poplayer/norm/ILogAdapter;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/alibaba/poplayer/PopLayer;->mILogAdapters:Lcom/alibaba/poplayer/norm/ILogAdapter;

    .line 469
    const-string/jumbo v0, "PopLayer.registerLogAdapter."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    return-void
.end method

.method public registerManualPopPage(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "activityClazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/app/Activity;>;"
    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "activity":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/poplayer/PopLayer;->mActivitiesMustBroadcastPop:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 310
    .local v1, "add":Z
    const-string/jumbo v2, "PopLayer.registerManualPopPage?activityClazz=%s.return?add=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    return v1
.end method

.method public final registerViewType(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/jXb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView;>;"
    :try_start_0
    invoke-static {}, Lc8/eXb;->instance()Lc8/eXb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/eXb;->register(Ljava/lang/Class;)V

    .line 370
    const-string/jumbo v1, "PopLayerAction.registerViewType success!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "PopLayerAction.registerViewType fail!"

    invoke-static {v1, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public removeMsg(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "msgName"    # Ljava/lang/String;
    .param p2, "hostView"    # Landroid/view/View;

    .prologue
    .line 444
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/UYb;->removeMsg(Ljava/lang/String;Landroid/view/View;)V

    .line 445
    return-void
.end method

.method public removeRequest(Lc8/yXb;)V
    .locals 1
    .param p1, "request"    # Lc8/yXb;

    .prologue
    .line 450
    invoke-virtual {p1}, Lc8/yXb;->getDomian()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 461
    :goto_0
    return-void

    .line 452
    :pswitch_0
    invoke-static {}, Lc8/uYb;->instance()Lc8/uYb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/uYb;->removeRequest(Lc8/yXb;)V

    goto :goto_0

    .line 455
    :pswitch_1
    invoke-static {}, Lc8/zYb;->instance()Lc8/zYb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/zYb;->removeRequest(Lc8/yXb;)V

    goto :goto_0

    .line 458
    :pswitch_2
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/UYb;->removeRequest(Lc8/yXb;)V

    goto :goto_0

    .line 450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setup(Landroid/app/Application;)V
    .locals 12
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 170
    :try_start_0
    sget-boolean v8, Lcom/alibaba/poplayer/PopLayer;->sSetup:Z

    if-eqz v8, :cond_0

    .line 171
    const-string/jumbo v6, "PopLayer.setup.alreadySetup"

    invoke-static {v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Loge(Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 174
    :cond_0
    iput-object p1, p0, Lcom/alibaba/poplayer/PopLayer;->mContext:Landroid/app/Application;

    .line 177
    new-instance v8, Lc8/oYb;

    invoke-direct {v8, p1}, Lc8/oYb;-><init>(Landroid/app/Application;)V

    iput-object v8, p0, Lcom/alibaba/poplayer/PopLayer;->mTriggleController:Lc8/oYb;

    .line 178
    invoke-static {}, Lc8/uYb;->instance()Lc8/uYb;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/poplayer/PopLayer;->mAppTriggerService:Lc8/uYb;

    .line 179
    invoke-static {}, Lc8/zYb;->instance()Lc8/zYb;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/poplayer/PopLayer;->mPageTriggerService:Lc8/zYb;

    .line 180
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/poplayer/PopLayer;->mViewTriggerService:Lc8/UYb;

    .line 187
    new-instance v8, Lc8/uXb;

    iget-object v9, p0, Lcom/alibaba/poplayer/PopLayer;->mLayerMgrAdapter:Lc8/oXb;

    invoke-direct {v8, v9}, Lc8/uXb;-><init>(Lc8/oXb;)V

    invoke-virtual {v8, p1}, Lc8/uXb;->init(Landroid/app/Application;)V

    .line 194
    iget-object v8, p0, Lcom/alibaba/poplayer/PopLayer;->mFaceAdapter:Lcom/alibaba/poplayer/norm/IFaceAdapter;

    invoke-interface {v8, p1, p0}, Lcom/alibaba/poplayer/norm/IFaceAdapter;->registerNavPreprocessor(Landroid/content/Context;Lcom/alibaba/poplayer/PopLayer;)V

    .line 195
    iget-object v8, p0, Lcom/alibaba/poplayer/PopLayer;->mFaceAdapter:Lcom/alibaba/poplayer/norm/IFaceAdapter;

    invoke-interface {v8, p1, p0}, Lcom/alibaba/poplayer/norm/IFaceAdapter;->registerTrackViewTypes(Landroid/content/Context;Lcom/alibaba/poplayer/PopLayer;)V

    .line 197
    iget-object v8, p0, Lcom/alibaba/poplayer/PopLayer;->mConfigContainers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 198
    .local v4, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 199
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 200
    iget-object v8, p0, Lcom/alibaba/poplayer/PopLayer;->mConfigContainers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/poplayer/norm/IConfigAdapter;

    .line 201
    .local v1, "iConfigAdapter":Lcom/alibaba/poplayer/norm/IConfigAdapter;
    invoke-interface {v1, p1, p0}, Lcom/alibaba/poplayer/norm/IConfigAdapter;->initializeConfigContainer(Landroid/content/Context;Lcom/alibaba/poplayer/PopLayer;)V

    .line 202
    invoke-interface {v1, p1, p0}, Lcom/alibaba/poplayer/norm/IConfigAdapter;->addConfigObserver(Landroid/content/Context;Lcom/alibaba/poplayer/PopLayer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 224
    .end local v1    # "iConfigAdapter":Lcom/alibaba/poplayer/norm/IConfigAdapter;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PopLayer.setup.fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 209
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/poplayer/PopLayer;->getApp()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "poplayer_version"

    const-string/jumbo v10, "string"

    invoke-virtual {p0}, Lcom/alibaba/poplayer/PopLayer;->getApp()Landroid/app/Application;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 210
    .local v5, "resId":I
    invoke-virtual {p0}, Lcom/alibaba/poplayer/PopLayer;->getApp()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/poplayer/PopLayer;->mVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    .end local v5    # "resId":I
    :goto_2
    :try_start_2
    iget-object v8, p0, Lcom/alibaba/poplayer/PopLayer;->mContext:Landroid/app/Application;

    invoke-virtual {v8}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 218
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget v8, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    :goto_3
    sput-boolean v6, Lcom/alibaba/poplayer/utils/PopLayerLog;->DEBUG:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 222
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_4
    :try_start_3
    const-string/jumbo v6, "PopLayer.version{%s}.setup.success.debug{%s}"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/poplayer/PopLayer;->mVersion:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-boolean v9, Lcom/alibaba/poplayer/utils/PopLayerLog;->DEBUG:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    const/4 v6, 0x1

    sput-boolean v6, Lcom/alibaba/poplayer/PopLayer;->sSetup:Z

    goto/16 :goto_0

    .line 211
    :catch_1
    move-exception v0

    .line 212
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, ""

    iput-object v8, p0, Lcom/alibaba/poplayer/PopLayer;->mVersion:Ljava/lang/String;

    .line 213
    const-string/jumbo v8, "PopLayer.setup.version.error"

    invoke-static {v8, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    move v6, v7

    .line 218
    goto :goto_3

    .line 220
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_2
    move-exception v6

    const/4 v6, 0x0

    sput-boolean v6, Lcom/alibaba/poplayer/utils/PopLayerLog;->DEBUG:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4
.end method

.method public swithcLogMode(Z)V
    .locals 4
    .param p1, "isOutput"    # Z

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/alibaba/poplayer/PopLayer;->isLogOutputMode:Z

    .line 479
    const-string/jumbo v0, "PopLayer.swithcLogMode:{%s}."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    return-void
.end method

.method public unregisterManualPopPage(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "activityClazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/app/Activity;>;"
    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "activity":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/poplayer/PopLayer;->mActivitiesMustBroadcastPop:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 326
    .local v1, "remove":Z
    const-string/jumbo v2, "PopLayer.unregisterManualPopPage?activityClazz=%s.return?remove=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    return v1
.end method

.method public updateCacheConfigAsync(I)V
    .locals 4
    .param p1, "domain"    # I

    .prologue
    .line 238
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PopLayer.updateCacheConfigAsync Domain :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lc8/ZWb;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 240
    invoke-static {}, Lc8/uYb;->instance()Lc8/uYb;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/poplayer/PopLayer;->mContext:Landroid/app/Application;

    invoke-virtual {v1, v2, v3}, Lc8/uYb;->updateCacheConfigAsync(ZLandroid/content/Context;)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 242
    invoke-static {}, Lc8/zYb;->instance()Lc8/zYb;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/poplayer/PopLayer;->mContext:Landroid/app/Application;

    invoke-virtual {v1, v2, v3}, Lc8/zYb;->updateCacheConfigAsync(ZLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PopLayer.updateCacheConfigAsync.fail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 243
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 244
    :try_start_1
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/poplayer/PopLayer;->mContext:Landroid/app/Application;

    invoke-virtual {v1, v2, v3}, Lc8/UYb;->updateCacheConfigAsync(ZLandroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
