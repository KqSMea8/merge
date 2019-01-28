.class public Lc8/Pof;
.super Ljava/lang/Object;
.source "AlibcAppStatusMonitor.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private volatile count:I

.field private lifecycleListner:Lc8/Oof;


# direct methods
.method public constructor <init>(Lc8/Oof;)V
    .locals 0
    .param p1, "lifecycleListner"    # Lc8/Oof;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lc8/Pof;->lifecycleListner:Lc8/Oof;

    .line 20
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 69
    .local v0, "application":Landroid/app/Application;
    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method

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
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    iget v0, p0, Lc8/Pof;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/Pof;->count:I

    .line 29
    iget v0, p0, Lc8/Pof;->count:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lc8/Pof;->lifecycleListner:Lc8/Oof;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Pof;->lifecycleListner:Lc8/Oof;

    invoke-interface {v0}, Lc8/Oof;->onFront()V

    .line 33
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    iget v0, p0, Lc8/Pof;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc8/Pof;->count:I

    .line 48
    iget v0, p0, Lc8/Pof;->count:I

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lc8/Pof;->lifecycleListner:Lc8/Oof;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Pof;->lifecycleListner:Lc8/Oof;

    invoke-interface {v0}, Lc8/Oof;->onBack()V

    .line 51
    :cond_0
    return-void
.end method
