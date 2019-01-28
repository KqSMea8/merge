.class public Lc8/vr;
.super Lc8/ur;
.source "ActionBarBackgroundDrawableV21.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Lc8/N;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>(Lc8/wr;)V
    .locals 0
    .param p1, "container"    # Lc8/wr;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lc8/ur;-><init>(Lc8/wr;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    iget-object v0, p0, Lc8/vr;->mContainer:Lc8/wr;

    iget-boolean v0, v0, Lc8/wr;->mIsSplit:Z

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lc8/vr;->mContainer:Lc8/wr;

    iget-object v0, v0, Lc8/wr;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lc8/vr;->mContainer:Lc8/wr;

    iget-object v0, v0, Lc8/wr;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lc8/vr;->mContainer:Lc8/wr;

    iget-object v0, v0, Lc8/wr;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lc8/vr;->mContainer:Lc8/wr;

    iget-object v0, v0, Lc8/wr;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_0
.end method
