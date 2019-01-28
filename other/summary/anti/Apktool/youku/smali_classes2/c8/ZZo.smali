.class public Lc8/ZZo;
.super Landroid/widget/ImageView;
.source "Loading.java"


# instance fields
.field private frameAnim:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    sget v0, Lcom/youku/phone/R$drawable;->youku_loading_anim:I

    invoke-virtual {p0, v0}, Lc8/ZZo;->setBackgroundResource(I)V

    .line 33
    invoke-virtual {p0}, Lc8/ZZo;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lc8/ZZo;->frameAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 35
    invoke-virtual {p0}, Lc8/ZZo;->startAnimation()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lc8/ZZo;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lc8/ZZo;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/ZZo;->frameAnim:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method


# virtual methods
.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 68
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lc8/ZZo;->stopAnimation()V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Lc8/ZZo;->startAnimation()V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lc8/XZo;

    invoke-direct {v0, p0}, Lc8/XZo;-><init>(Lc8/ZZo;)V

    invoke-virtual {p0, v0}, Lc8/ZZo;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lc8/YZo;

    invoke-direct {v0, p0}, Lc8/YZo;-><init>(Lc8/ZZo;)V

    invoke-virtual {p0, v0}, Lc8/ZZo;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method
