.class public Lc8/oYb;
.super Ljava/lang/Object;
.source "InternalTriggerController.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation runtime Lcom/alibaba/poplayer/utils/Monitor$TargetClass;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/mYb;,
        Lc8/nYb;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentActivity:Ljava/lang/ref/WeakReference;
    .annotation runtime Lcom/alibaba/poplayer/utils/Monitor$TargetField;
        name = "page"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 4
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lc8/oYb;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 51
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Lc8/nYb;

    invoke-direct {v1, p0}, Lc8/nYb;-><init>(Lc8/oYb;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.alibaba.poplayer.PopLayer.action.POP"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 54
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Lc8/mYb;

    invoke-direct {v1, p0}, Lc8/mYb;-><init>(Lc8/oYb;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.alibaba.poplayer.PopLayer.action.FRAGMENT_SWITCH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 57
    return-void
.end method

.method public static findRootView(Landroid/app/Activity;)Landroid/view/View;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 299
    sget-boolean v0, Lc8/uXb;->sAllowPopOnParentActivity:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p0

    .line 302
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityKeyCode(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 288
    if-nez p0, :cond_1

    .line 289
    const-string/jumbo v0, ""

    .line 295
    :cond_0
    :goto_0
    return-object v0

    .line 291
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "keyCode":Ljava/lang/String;
    sget-boolean v1, Lc8/uXb;->sAllowPopOnParentActivity:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isAllowedPopupFromFragmentNotice(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 212
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lc8/aXb;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lc8/aXb;

    .line 213
    .local v0, "popupAllowedFromFragment":Lc8/aXb;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isManaulPopup(Landroid/app/Activity;)Z
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lc8/bXb;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lc8/bXb;

    .line 206
    .local v1, "popupOnlyManually":Lc8/bXb;
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/poplayer/PopLayer;->isMunualPopPageContains(Ljava/lang/String;)Z

    move-result v0

    .line 207
    .local v0, "contains":Z
    const-string/jumbo v4, "EventManager.isManaulPopup?contains=%s&popupOnlyManually=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2
.end method

.method private onActivityOrInnerViewResumed(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/String;
    .param p4, "needActivityParam"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 85
    if-nez p1, :cond_1

    .line 86
    :try_start_0
    const-string/jumbo v5, "EventManager.onActivityOrInnerViewResumed.activity is null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 91
    .local v2, "isFragment":Z
    :goto_1
    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lc8/oYb;->isAllowedPopupFromFragmentNotice(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 92
    const-string/jumbo v5, "EventManager.onActivityOrFragmentResumed.isAllowedPopupFromFragmentNotice=false"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    .end local v2    # "isFragment":Z
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "EventManager.onActivityOrInnerViewResumed.fail."

    invoke-static {v5, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    move v2, v5

    .line 90
    goto :goto_1

    .line 96
    .restart local v2    # "isFragment":Z
    :cond_3
    :try_start_1
    iget-object v5, p0, Lc8/oYb;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-static {v5}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 99
    .local v4, "preActivity":Landroid/app/Activity;
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lcom/alibaba/poplayer/PopLayer;->isSamePage(Landroid/app/Activity;Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v2, :cond_0

    .line 104
    :cond_4
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/alibaba/poplayer/PopLayer;->isValidActivity(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    if-eqz v4, :cond_5

    .line 110
    invoke-static {}, Lc8/zYb;->instance()Lc8/zYb;

    move-result-object v5

    invoke-static {v4}, Lc8/oYb;->getActivityKeyCode(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lc8/zYb;->pageClean(Landroid/app/Activity;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v5

    invoke-static {v4}, Lc8/oYb;->getActivityKeyCode(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lc8/UYb;->pageClean(Landroid/app/Activity;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lc8/uYb;->instance()Lc8/uYb;

    move-result-object v5

    invoke-static {v4}, Lc8/oYb;->getActivityKeyCode(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lc8/uYb;->pageClean(Landroid/app/Activity;Ljava/lang/String;)V

    .line 115
    :cond_5
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lc8/oYb;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    .line 119
    if-eqz v2, :cond_7

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "eventUri":Ljava/lang/String;
    :goto_2
    if-eqz p4, :cond_6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 126
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/alibaba/poplayer/PopLayer;->getActivityInfo(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p3

    .line 129
    :cond_6
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/alibaba/poplayer/PopLayer;->internalNotifyNativeUrlChanged(Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Lc8/oYb;->getActivityKeyCode(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "keyCode":Ljava/lang/String;
    invoke-static {}, Lc8/uXb;->instance()Lc8/uXb;

    move-result-object v5

    invoke-virtual {v5, p1, v3}, Lc8/uXb;->touchActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lc8/uYb;->instance()Lc8/uYb;

    move-result-object v5

    invoke-virtual {v5, p1, v1, p3, v3}, Lc8/uYb;->updateActivityInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lc8/zYb;->instance()Lc8/zYb;

    move-result-object v5

    invoke-virtual {v5, p1, v1, p3, v3}, Lc8/zYb;->updateActivityInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v5

    invoke-virtual {v5, p1, v1, p3, v3}, Lc8/UYb;->updateActivityInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, p1}, Lc8/oYb;->isManaulPopup(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 147
    invoke-static {}, Lc8/uYb;->instance()Lc8/uYb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/uYb;->passiveAccept()V

    .line 148
    invoke-static {}, Lc8/zYb;->instance()Lc8/zYb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/zYb;->passiveAccept()V

    .line 149
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/UYb;->passiveAccept()V

    .line 151
    const-string/jumbo v5, "EventManager.onActivityOrFragmentResumed.posttoService{uri:%s,param:%s}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    invoke-static {v5, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 122
    .end local v1    # "eventUri":Ljava/lang/String;
    .end local v3    # "keyCode":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .restart local v1    # "eventUri":Ljava/lang/String;
    goto :goto_2
.end method


# virtual methods
.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lc8/oYb;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 196
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 197
    .local v1, "param":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "EventManager.onActivityCreated.activity{%s}.withParam{%s}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    .end local v1    # "param":Ljava/lang/String;
    :goto_1
    return-void

    .line 196
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "EventManager.onActivityCreated.error"

    invoke-static {v2, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-static {p1}, Lc8/oYb;->getActivityKeyCode(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "keyCode":Ljava/lang/String;
    invoke-static {}, Lc8/zYb;->instance()Lc8/zYb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/zYb;->cleanMap(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 165
    :try_start_0
    const-string/jumbo v1, "EventManager.onActivityPaused.activity{%s}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "EventManager.onActivityPaused.removeWebView.error."

    invoke-static {v1, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lc8/oYb;->onActivityOrInnerViewResumed(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 191
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 173
    return-void
.end method

.method onFragmentResumed(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "needActivityParam"    # Z

    .prologue
    .line 73
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lc8/oYb;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-static {v1}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p0, v1, p1, p2, p3}, Lc8/oYb;->onActivityOrInnerViewResumed(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "EventManager.onFragmentResumed.fail."

    invoke-static {v1, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
