.class public Lc8/deo;
.super Landroid/widget/ImageView;
.source "CircleLoading.java"


# instance fields
.field private frameAnim:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    sget v0, Lcom/youku/phone/R$drawable;->baseuikit_circle_loading_anim:I

    invoke-virtual {p0, v0}, Lc8/deo;->setBackgroundResource(I)V

    .line 31
    invoke-virtual {p0}, Lc8/deo;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lc8/deo;->frameAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 33
    invoke-virtual {p0}, Lc8/deo;->startAnimation()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lc8/deo;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lc8/deo;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/deo;->frameAnim:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method


# virtual methods
.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 66
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 67
    :cond_0
    invoke-virtual {p0}, Lc8/deo;->stopAnimation()V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p0}, Lc8/deo;->startAnimation()V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lc8/beo;

    invoke-direct {v0, p0}, Lc8/beo;-><init>(Lc8/deo;)V

    invoke-virtual {p0, v0}, Lc8/deo;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lc8/ceo;

    invoke-direct {v0, p0}, Lc8/ceo;-><init>(Lc8/deo;)V

    invoke-virtual {p0, v0}, Lc8/deo;->post(Ljava/lang/Runnable;)Z

    .line 57
    return-void
.end method
