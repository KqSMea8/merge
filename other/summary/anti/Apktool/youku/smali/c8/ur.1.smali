.class public Lc8/ur;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarBackgroundDrawable.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Lc8/N;
    value = 0x9
.end annotation


# instance fields
.field final mContainer:Lc8/wr;


# direct methods
.method public constructor <init>(Lc8/wr;)V
    .locals 0
    .param p1, "container"    # Lc8/wr;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    iput-object p1, p0, Lc8/ur;->mContainer:Lc8/wr;

    .line 33
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 37
    iget-object v0, p0, Lc8/ur;->mContainer:Lc8/wr;

    iget-boolean v0, v0, Lc8/wr;->mIsSplit:Z

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lc8/ur;->mContainer:Lc8/wr;

    iget-object v0, v0, Lc8/wr;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lc8/ur;->mContainer:Lc8/wr;

    iget-object v0, v0, Lc8/wr;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lc8/ur;->mContainer:Lc8/wr;

    iget-object v0, v0, Lc8/wr;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lc8/ur;->mContainer:Lc8/wr;

    iget-object v0, v0, Lc8/wr;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 45
    :cond_2
    iget-object v0, p0, Lc8/ur;->mContainer:Lc8/wr;

    iget-object v0, v0, Lc8/wr;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ur;->mContainer:Lc8/wr;

    iget-boolean v0, v0, Lc8/wr;->mIsStacked:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lc8/ur;->mContainer:Lc8/wr;

    iget-object v0, v0, Lc8/wr;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 53
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 57
    return-void
.end method
