.class public Lc8/RNb;
.super Ljava/lang/Object;
.source "UIUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkActivityDestroy(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 14
    if-eqz p0, :cond_0

    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 24
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p0

    .line 17
    check-cast v0, Landroid/app/Activity;

    .line 18
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 24
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
