.class public Lc8/Vdo;
.super Ljava/lang/Object;
.source "YoukuCircleLoading.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Udo;
    }
.end annotation


# static fields
.field private static anim:Landroid/graphics/drawable/AnimationDrawable;

.field private static mLoadingDialog:Lc8/Udo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method private static canDismissed(Landroid/content/Context;Landroid/widget/ImageView;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mLoadingImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 101
    sget-object v0, Lc8/Vdo;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Vdo;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dismiss()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lc8/Vdo;->mLoadingDialog:Lc8/Udo;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Vdo;->mLoadingDialog:Lc8/Udo;

    invoke-virtual {v0}, Lc8/Udo;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Vdo;->mLoadingDialog:Lc8/Udo;

    .line 55
    invoke-virtual {v0}, Lc8/Udo;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lc8/Vdo;->mLoadingDialog:Lc8/Udo;

    invoke-virtual {v0}, Lc8/Udo;->dismiss()V

    .line 58
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lc8/Vdo;->mLoadingDialog:Lc8/Udo;

    .line 59
    return-void
.end method

.method public static dismiss(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mLoadingImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 82
    invoke-static {p0, p1}, Lc8/Vdo;->canDismissed(Landroid/content/Context;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lc8/Vdo;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lc8/Vdo;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 86
    :cond_0
    return-void
.end method

.method public static isRunning(Landroid/content/Context;Landroid/widget/ImageView;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mLoadingImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 97
    sget-object v0, Lc8/Vdo;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Vdo;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowing()Z
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lc8/Vdo;->mLoadingDialog:Lc8/Udo;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Vdo;->mLoadingDialog:Lc8/Udo;

    invoke-virtual {v0}, Lc8/Udo;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static remove()V
    .locals 0

    .prologue
    .line 93
    invoke-static {}, Lc8/Vdo;->dismiss()V

    .line 94
    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-static {}, Lc8/Vdo;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lc8/Jao;->isActivityContextValid(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    :cond_2
    new-instance v0, Lc8/Udo;

    invoke-direct {v0, p0}, Lc8/Udo;-><init>(Landroid/content/Context;)V

    .line 46
    sput-object v0, Lc8/Vdo;->mLoadingDialog:Lc8/Udo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Udo;->setCanceledOnTouchOutside(Z)V

    .line 47
    sget-object v0, Lc8/Vdo;->mLoadingDialog:Lc8/Udo;

    invoke-virtual {v0}, Lc8/Udo;->show()V

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mLoadingImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 68
    invoke-static {p0, p1}, Lc8/Vdo;->isRunning(Landroid/content/Context;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    sget v0, Lcom/youku/phone/R$drawable;->baseuikit_circle_loading_anim:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 73
    sput-object v0, Lc8/Vdo;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method
