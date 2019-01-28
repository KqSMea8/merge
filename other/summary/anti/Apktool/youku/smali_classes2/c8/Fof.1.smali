.class public Lc8/Fof;
.super Ljava/lang/Object;
.source "TipsActivityLifecycleCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private tipsPlugin:Lc8/Hof;


# direct methods
.method public constructor <init>(Lc8/Hof;)V
    .locals 1
    .param p1, "tipsPlugin"    # Lc8/Hof;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v0, "tipsPlugin"

    iput-object v0, p0, Lc8/Fof;->LOG_TAG:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lc8/Fof;->tipsPlugin:Lc8/Hof;

    .line 21
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    iget-object v0, p0, Lc8/Fof;->tipsPlugin:Lc8/Hof;

    iget-boolean v0, v0, Lc8/Hof;->isShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Fof;->tipsPlugin:Lc8/Hof;

    invoke-virtual {v0, p1}, Lc8/Hof;->isShowInActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lc8/Fof;->tipsPlugin:Lc8/Hof;

    invoke-virtual {v0}, Lc8/Hof;->hildTips()V

    .line 51
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/Fof;->tipsPlugin:Lc8/Hof;

    iget-object v0, v0, Lc8/Hof;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    if-nez v0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lc8/Fof;->tipsPlugin:Lc8/Hof;

    iget-boolean v0, v0, Lc8/Hof;->isShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Fof;->tipsPlugin:Lc8/Hof;

    invoke-virtual {v0, p1}, Lc8/Hof;->isShowInActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lc8/Fof;->tipsPlugin:Lc8/Hof;

    invoke-virtual {v0, p1}, Lc8/Hof;->resumeTips(Landroid/app/Activity;)V

    .line 35
    iget-object v0, p0, Lc8/Fof;->tipsPlugin:Lc8/Hof;

    iget-object v0, v0, Lc8/Hof;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    iget-object v0, v0, Lcom/taobao/flowcustoms/data/OpenParams;->backUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lc8/Fof;->tipsPlugin:Lc8/Hof;

    invoke-virtual {v0, p1}, Lc8/Hof;->resumeTips(Landroid/app/Activity;)V

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lc8/Eof;->showInFirstTime(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    return-void
.end method
