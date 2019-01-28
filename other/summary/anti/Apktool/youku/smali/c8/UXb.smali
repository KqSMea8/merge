.class public Lc8/UXb;
.super Ljava/lang/Object;
.source "AppLayerLifeCyclerMgr.java"

# interfaces
.implements Lc8/WXb;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAppLayer:Lc8/TXb;

.field private mAppLayerNotify:Lc8/YXb;

.field private mCanvas:Lc8/LXb;

.field private mContextWrapper:Landroid/content/MutableContextWrapper;

.field private mInnerCallback:Lc8/aYb;

.field private mStatusLineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lc8/UXb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/UXb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lc8/mXb;Landroid/app/Application;)V
    .locals 2
    .param p1, "canvasViewModel"    # Lc8/mXb;
    .param p2, "application"    # Landroid/app/Application;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lc8/UXb;->mStatusLineHeight:I

    .line 38
    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p2}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/UXb;->mContextWrapper:Landroid/content/MutableContextWrapper;

    .line 39
    invoke-virtual {p2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/poplayer/utils/Utils;->getStatusBarHeight(Landroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lc8/UXb;->mStatusLineHeight:I

    .line 41
    new-instance v0, Lc8/LXb;

    iget-object v1, p0, Lc8/UXb;->mContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-direct {v0, v1}, Lc8/LXb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/UXb;->mCanvas:Lc8/LXb;

    .line 42
    iget-object v0, p0, Lc8/UXb;->mCanvas:Lc8/LXb;

    invoke-virtual {p1, v0}, Lc8/mXb;->setCanvas(Lc8/LXb;)V

    .line 44
    new-instance v0, Lc8/TXb;

    iget-object v1, p0, Lc8/UXb;->mContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-direct {v0, v1}, Lc8/TXb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/UXb;->mAppLayer:Lc8/TXb;

    .line 45
    iget-object v0, p0, Lc8/UXb;->mAppLayer:Lc8/TXb;

    iget-object v1, p0, Lc8/UXb;->mCanvas:Lc8/LXb;

    invoke-virtual {v0, v1}, Lc8/TXb;->setView(Lc8/LXb;)V

    .line 46
    new-instance v0, Lc8/aYb;

    invoke-direct {v0, p0}, Lc8/aYb;-><init>(Lc8/UXb;)V

    iput-object v0, p0, Lc8/UXb;->mInnerCallback:Lc8/aYb;

    .line 47
    new-instance v0, Lc8/YXb;

    invoke-direct {v0, p2, p0}, Lc8/YXb;-><init>(Landroid/app/Application;Lc8/WXb;)V

    iput-object v0, p0, Lc8/UXb;->mAppLayerNotify:Lc8/YXb;

    .line 48
    return-void
.end method


# virtual methods
.method dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 74
    :try_start_0
    iget-object v2, p0, Lc8/UXb;->mAppLayer:Lc8/TXb;

    invoke-virtual {v2}, Lc8/TXb;->isShow()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    iget-object v2, p0, Lc8/UXb;->mCanvas:Lc8/LXb;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/UXb;->mCanvas:Lc8/LXb;

    invoke-virtual {v2}, Lc8/LXb;->all()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    iget-object v2, p0, Lc8/UXb;->mCanvas:Lc8/LXb;

    invoke-virtual {v2}, Lc8/LXb;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 84
    iget-object v2, p0, Lc8/UXb;->mCanvas:Lc8/LXb;

    invoke-virtual {v2}, Lc8/LXb;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lc8/UXb;->mCanvas:Lc8/LXb;

    invoke-virtual {v2, p1}, Lc8/LXb;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "dispatchTouchEvent.error"

    invoke-static {v2, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method getStatusLineHeight()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lc8/UXb;->mStatusLineHeight:I

    return v0
.end method

.method public hideCanvas()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 105
    iget-object v0, p0, Lc8/UXb;->mCanvas:Lc8/LXb;

    invoke-virtual {v0}, Lc8/LXb;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 106
    const-string/jumbo v0, "%s.hideCanvas"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lc8/UXb;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lc8/UXb;->mCanvas:Lc8/LXb;

    invoke-virtual {v0, v4}, Lc8/LXb;->setVisibility(I)V

    .line 109
    :cond_0
    return-void
.end method

.method onActivityPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    iget-object v0, p0, Lc8/UXb;->mAppLayerNotify:Lc8/YXb;

    invoke-virtual {v0}, Lc8/YXb;->pause()V

    .line 69
    return-void
.end method

.method onActivityResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    iget-object v0, p0, Lc8/UXb;->mCanvas:Lc8/LXb;

    invoke-virtual {v0}, Lc8/LXb;->all()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc8/UXb;->mAppLayer:Lc8/TXb;

    invoke-virtual {v0}, Lc8/TXb;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lc8/UXb;->showLayerWithActivity(Landroid/app/Activity;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lc8/UXb;->mAppLayerNotify:Lc8/YXb;

    invoke-virtual {v0}, Lc8/YXb;->resume()V

    .line 65
    return-void
.end method

.method public onKeepInBackground()V
    .locals 4

    .prologue
    .line 141
    const-string/jumbo v0, "%s.onKeepInBackground"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lc8/UXb;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lc8/UXb;->mAppLayer:Lc8/TXb;

    invoke-virtual {v0}, Lc8/TXb;->hide()V

    .line 143
    return-void
.end method

.method public onQuicklyIntoBackground()V
    .locals 4

    .prologue
    .line 135
    const-string/jumbo v0, "%s.onQuicklyIntoBackground"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lc8/UXb;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lc8/UXb;->hideCanvas()V

    .line 137
    return-void
.end method

.method public removeLayer()V
    .locals 4

    .prologue
    .line 127
    const-string/jumbo v0, "%s.removeLayer"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lc8/UXb;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lc8/UXb;->mAppLayerNotify:Lc8/YXb;

    invoke-virtual {v0}, Lc8/YXb;->stopNotify()V

    .line 129
    iget-object v0, p0, Lc8/UXb;->mInnerCallback:Lc8/aYb;

    invoke-virtual {v0}, Lc8/aYb;->stopHookCallbacks()V

    .line 130
    iget-object v0, p0, Lc8/UXb;->mAppLayer:Lc8/TXb;

    invoke-virtual {v0}, Lc8/TXb;->hide()V

    .line 131
    return-void
.end method

.method public showCanvas()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    iget-object v0, p0, Lc8/UXb;->mCanvas:Lc8/LXb;

    invoke-virtual {v0}, Lc8/LXb;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string/jumbo v0, "%s.showCanvas"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lc8/UXb;->TAG:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lc8/UXb;->mCanvas:Lc8/LXb;

    invoke-virtual {v0, v3}, Lc8/LXb;->setVisibility(I)V

    .line 102
    :cond_0
    return-void
.end method

.method public showLayerWithActivity(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 112
    iget-object v0, p0, Lc8/UXb;->mAppLayer:Lc8/TXb;

    invoke-virtual {v0}, Lc8/TXb;->isShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lc8/UXb;->mInnerCallback:Lc8/aYb;

    invoke-virtual {v0, p1}, Lc8/aYb;->startHookCallback(Landroid/app/Activity;)V

    .line 115
    const-string/jumbo v0, "%s.showLayerWithActivity."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lc8/UXb;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lc8/UXb;->mCanvas:Lc8/LXb;

    invoke-virtual {v0}, Lc8/LXb;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lc8/UXb;->mAppLayer:Lc8/TXb;

    iget-object v1, p0, Lc8/UXb;->mCanvas:Lc8/LXb;

    invoke-virtual {v0, v1}, Lc8/TXb;->setView(Lc8/LXb;)V

    .line 121
    :cond_0
    invoke-virtual {p0}, Lc8/UXb;->showCanvas()V

    .line 122
    iget-object v0, p0, Lc8/UXb;->mAppLayer:Lc8/TXb;

    invoke-virtual {v0}, Lc8/TXb;->show()V

    .line 124
    :cond_1
    return-void
.end method

.method public updateContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    iget-object v0, p0, Lc8/UXb;->mContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 53
    return-void
.end method
