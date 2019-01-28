.class public Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;
.super Lc8/jj;
.source "DrawableWrapperHoneycomb.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Lc8/N;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb$DrawableWrapperStateHoneycomb;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lc8/jj;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lc8/hj;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Lc8/hj;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lc8/jj;-><init>(Lc8/hj;Landroid/content/res/Resources;)V

    .line 36
    return-void
.end method


# virtual methods
.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 41
    return-void
.end method

.method public mutateConstantState()Lc8/hj;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 46
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb$DrawableWrapperStateHoneycomb;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;->mState:Lc8/hj;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb$DrawableWrapperStateHoneycomb;-><init>(Lc8/hj;Landroid/content/res/Resources;)V

    return-object v0
.end method
