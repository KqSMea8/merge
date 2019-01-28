.class public Lc8/Jbp;
.super Ljava/lang/Object;
.source "YoukuLoading.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ibp;
    }
.end annotation


# static fields
.field private static anim:Landroid/graphics/drawable/AnimationDrawable;

.field private static mLoadingDialog:Lc8/Ibp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method private static canDismissed(Landroid/content/Context;Landroid/widget/ImageView;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mLoadingImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 102
    sget-object v0, Lc8/Jbp;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Jbp;->anim:Landroid/graphics/drawable/AnimationDrawable;

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
    .line 55
    sget-object v0, Lc8/Jbp;->mLoadingDialog:Lc8/Ibp;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Jbp;->mLoadingDialog:Lc8/Ibp;

    invoke-virtual {v0}, Lc8/Ibp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Jbp;->mLoadingDialog:Lc8/Ibp;

    .line 56
    invoke-virtual {v0}, Lc8/Ibp;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lc8/Jbp;->mLoadingDialog:Lc8/Ibp;

    invoke-virtual {v0}, Lc8/Ibp;->dismiss()V

    .line 59
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lc8/Jbp;->mLoadingDialog:Lc8/Ibp;

    .line 60
    return-void
.end method

.method public static dismiss(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mLoadingImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 83
    invoke-static {p0, p1}, Lc8/Jbp;->canDismissed(Landroid/content/Context;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lc8/Jbp;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lc8/Jbp;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 87
    :cond_0
    return-void
.end method

.method public static isRunning(Landroid/content/Context;Landroid/widget/ImageView;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mLoadingImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 98
    sget-object v0, Lc8/Jbp;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Jbp;->anim:Landroid/graphics/drawable/AnimationDrawable;

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
    .line 90
    sget-object v0, Lc8/Jbp;->mLoadingDialog:Lc8/Ibp;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Jbp;->mLoadingDialog:Lc8/Ibp;

    invoke-virtual {v0}, Lc8/Ibp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-static {}, Lc8/Jbp;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lc8/Mzo;->isActivityContextValid(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :cond_2
    new-instance v0, Lc8/Ibp;

    invoke-direct {v0, p0}, Lc8/Ibp;-><init>(Landroid/content/Context;)V

    .line 47
    sput-object v0, Lc8/Jbp;->mLoadingDialog:Lc8/Ibp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Ibp;->setCanceledOnTouchOutside(Z)V

    .line 48
    sget-object v0, Lc8/Jbp;->mLoadingDialog:Lc8/Ibp;

    invoke-virtual {v0}, Lc8/Ibp;->show()V

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mLoadingImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 69
    invoke-static {p0, p1}, Lc8/Jbp;->isRunning(Landroid/content/Context;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    sget v0, Lcom/youku/phone/R$drawable;->youku_loading_anim:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 74
    sput-object v0, Lc8/Jbp;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method
