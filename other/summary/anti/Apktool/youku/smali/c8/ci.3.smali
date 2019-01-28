.class public Lc8/ci;
.super Ljava/lang/Object;
.source "ActivityCompatApi21.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Lc8/N;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bi;,
        Lc8/ai;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method private static createCallback(Lc8/ai;)Landroid/app/SharedElementCallback;
    .locals 1
    .param p0, "callback"    # Lc8/ai;

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "newListener":Landroid/app/SharedElementCallback;
    if-eqz p0, :cond_0

    .line 77
    new-instance v0, Lc8/bi;

    .end local v0    # "newListener":Landroid/app/SharedElementCallback;
    invoke-direct {v0, p0}, Lc8/bi;-><init>(Lc8/ai;)V

    .line 79
    .restart local v0    # "newListener":Landroid/app/SharedElementCallback;
    :cond_0
    return-object v0
.end method

.method public static finishAfterTransition(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    .line 38
    return-void
.end method

.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    .line 52
    return-void
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Lc8/ai;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Lc8/ai;

    .prologue
    .line 42
    invoke-static {p1}, Lc8/ci;->createCallback(Lc8/ai;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 43
    return-void
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Lc8/ai;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Lc8/ai;

    .prologue
    .line 47
    invoke-static {p1}, Lc8/ci;->createCallback(Lc8/ai;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 48
    return-void
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    .line 56
    return-void
.end method
