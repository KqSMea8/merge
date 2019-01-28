.class public Lc8/aYb;
.super Ljava/lang/Object;
.source "InnerAppLifeCycleCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ZXb;
    }
.end annotation


# instance fields
.field private isRegisterd:Z

.field private mActivityCallbackHookers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/ZXb;",
            ">;"
        }
    .end annotation
.end field

.field mAppLayerMgr:Lc8/UXb;


# direct methods
.method public constructor <init>(Lc8/UXb;)V
    .locals 1
    .param p1, "mgr"    # Lc8/UXb;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/aYb;->isRegisterd:Z

    .line 33
    iput-object p1, p0, Lc8/aYb;->mAppLayerMgr:Lc8/UXb;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/aYb;->mActivityCallbackHookers:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method private findHook(Landroid/app/Activity;)Lc8/ZXb;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 139
    iget-object v2, p0, Lc8/aYb;->mActivityCallbackHookers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ZXb;

    .line 140
    .local v0, "c":Lc8/ZXb;
    iget-object v2, v0, Lc8/ZXb;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 143
    .end local v0    # "c":Lc8/ZXb;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopHookCallback(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lc8/aYb;->findHook(Landroid/app/Activity;)Lc8/ZXb;

    move-result-object v0

    .line 85
    .local v0, "callback":Lc8/ZXb;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lc8/ZXb;->reset()V

    .line 87
    iget-object v1, p0, Lc8/aYb;->mActivityCallbackHookers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 136
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-boolean v0, p0, Lc8/aYb;->isRegisterd:Z

    if-nez v0, :cond_1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "App Service,bad onPause event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lc8/aYb;->mAppLayerMgr:Lc8/UXb;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/UXb;->updateContext(Landroid/content/Context;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "App Service.onPause : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-direct {p0, p1}, Lc8/aYb;->stopHookCallback(Landroid/app/Activity;)V

    .line 79
    iget-object v0, p0, Lc8/aYb;->mAppLayerMgr:Lc8/UXb;

    invoke-virtual {v0, p1}, Lc8/UXb;->onActivityPause(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-boolean v0, p0, Lc8/aYb;->isRegisterd:Z

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "App Service,bad onResume event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lc8/aYb;->mAppLayerMgr:Lc8/UXb;

    invoke-virtual {v0, p1}, Lc8/UXb;->updateContext(Landroid/content/Context;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "App Service,onResume : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lc8/aYb;->mAppLayerMgr:Lc8/UXb;

    invoke-virtual {v0, p1}, Lc8/UXb;->onActivityResume(Landroid/app/Activity;)V

    .line 63
    invoke-virtual {p0, p1}, Lc8/aYb;->startHookCallback(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 126
    return-void
.end method

.method public startHookCallback(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lc8/aYb;->findHook(Landroid/app/Activity;)Lc8/ZXb;

    move-result-object v0

    .line 95
    .local v0, "callback":Lc8/ZXb;
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lc8/ZXb;

    .end local v0    # "callback":Lc8/ZXb;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lc8/bYb;

    iget-object v3, p0, Lc8/aYb;->mAppLayerMgr:Lc8/UXb;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lc8/bYb;-><init>(Lc8/UXb;Landroid/view/Window$Callback;)V

    invoke-direct {v0, v1, v2}, Lc8/ZXb;-><init>(Ljava/lang/ref/WeakReference;Lc8/bYb;)V

    .line 97
    .restart local v0    # "callback":Lc8/ZXb;
    iget-object v1, p0, Lc8/aYb;->mActivityCallbackHookers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    invoke-virtual {v0}, Lc8/ZXb;->bind()V

    .line 101
    iget-boolean v1, p0, Lc8/aYb;->isRegisterd:Z

    if-nez v1, :cond_1

    .line 102
    const-string/jumbo v1, "App registerActivityLifecycleCallback."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/poplayer/PopLayer;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/aYb;->isRegisterd:Z

    .line 106
    :cond_1
    return-void
.end method

.method public stopHookCallbacks()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    iget-object v2, p0, Lc8/aYb;->mActivityCallbackHookers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ZXb;

    .line 110
    .local v0, "callback":Lc8/ZXb;
    invoke-virtual {v0}, Lc8/ZXb;->reset()V

    goto :goto_0

    .line 111
    .end local v0    # "callback":Lc8/ZXb;
    :cond_0
    iget-object v2, p0, Lc8/aYb;->mActivityCallbackHookers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 113
    iget-boolean v2, p0, Lc8/aYb;->isRegisterd:Z

    if-eqz v2, :cond_1

    .line 114
    const-string/jumbo v2, "App unregisterActivityLifecycleCallback."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/poplayer/PopLayer;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 117
    iput-boolean v4, p0, Lc8/aYb;->isRegisterd:Z

    .line 119
    :cond_1
    return-void
.end method
