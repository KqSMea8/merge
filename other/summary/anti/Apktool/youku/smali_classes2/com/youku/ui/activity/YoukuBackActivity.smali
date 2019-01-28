.class public Lcom/youku/ui/activity/YoukuBackActivity;
.super Landroid/app/Activity;
.source "YoukuBackActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private startLauncherActivity()V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lc8/Ygn;->getInstance()Lc8/Ygn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lc8/Ygn;->launchWelcomeActivity(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 12
    invoke-virtual {p0}, Lcom/youku/ui/activity/YoukuBackActivity;->finish()V

    .line 14
    invoke-direct {p0}, Lcom/youku/ui/activity/YoukuBackActivity;->startLauncherActivity()V

    .line 15
    return-void
.end method
