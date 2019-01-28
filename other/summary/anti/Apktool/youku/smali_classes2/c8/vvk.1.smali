.class public Lc8/vvk;
.super Ljava/lang/Object;
.source "FreeFlowActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private appStop:Z

.field private hasEnter:Z

.field private startActivityCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/vvk;->appStop:Z

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/vvk;->hasEnter:Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "name":Ljava/lang/String;
    iget-boolean v1, p0, Lc8/vvk;->hasEnter:Z

    if-nez v1, :cond_0

    .line 38
    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.youku.HomePageEntry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iput-boolean v2, p0, Lc8/vvk;->hasEnter:Z

    .line 40
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v1

    invoke-virtual {v1, v2}, Lc8/Dvk;->setCanShowToast(Z)V

    .line 43
    :cond_0
    iget-boolean v1, p0, Lc8/vvk;->appStop:Z

    if-eqz v1, :cond_1

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/vvk;->appStop:Z

    .line 46
    new-instance v1, Lc8/uvk;

    invoke-direct {v1, p0}, Lc8/uvk;-><init>(Lc8/vvk;)V

    invoke-static {v1}, Lc8/Vcf;->execute(Ljava/lang/Runnable;)V

    .line 54
    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    iget v0, p0, Lc8/vvk;->startActivityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/vvk;->startActivityCount:I

    .line 32
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    if-nez p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget v0, p0, Lc8/vvk;->startActivityCount:I

    if-lez v0, :cond_2

    .line 67
    iget v0, p0, Lc8/vvk;->startActivityCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc8/vvk;->startActivityCount:I

    .line 69
    :cond_2
    iget v0, p0, Lc8/vvk;->startActivityCount:I

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/vvk;->appStop:Z

    goto :goto_0
.end method
