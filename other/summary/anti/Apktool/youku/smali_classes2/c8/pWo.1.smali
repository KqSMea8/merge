.class public Lc8/pWo;
.super Lc8/teg;
.source "YKImageView.java"


# instance fields
.field private mIsPlay:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lc8/teg;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/pWo;->mIsPlay:Z

    .line 19
    return-void
.end method

.method private setDrawableState(Z)V
    .locals 1
    .param p1, "isPlay"    # Z

    .prologue
    .line 27
    invoke-virtual {p0}, Lc8/pWo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lc8/ivf;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/pWo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lc8/ivf;

    invoke-virtual {v0}, Lc8/ivf;->isPlaying()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 28
    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p0}, Lc8/pWo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lc8/ivf;

    invoke-virtual {v0}, Lc8/ivf;->start()V

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Lc8/pWo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lc8/ivf;

    invoke-virtual {v0}, Lc8/ivf;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isGif"    # Z

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lc8/teg;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 39
    iget-boolean v0, p0, Lc8/pWo;->mIsPlay:Z

    invoke-direct {p0, v0}, Lc8/pWo;->setDrawableState(Z)V

    .line 40
    return-void
.end method

.method public setPlay(Z)V
    .locals 1
    .param p1, "isPlay"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lc8/pWo;->mIsPlay:Z

    .line 23
    iget-boolean v0, p0, Lc8/pWo;->mIsPlay:Z

    invoke-direct {p0, v0}, Lc8/pWo;->setDrawableState(Z)V

    .line 24
    return-void
.end method
