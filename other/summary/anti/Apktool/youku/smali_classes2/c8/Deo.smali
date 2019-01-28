.class public Lc8/Deo;
.super Lc8/Beo;
.source "XItemDecoration.java"


# instance fields
.field private isApplyFirstItem:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lc8/Beo;-><init>(Landroid/content/Context;I)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Deo;->isApplyFirstItem:Z

    .line 22
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILc8/Rv;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Lc8/Rv;

    .prologue
    .line 26
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lc8/Deo;->isApplyFirstItem:Z

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lc8/Beo;->getItemOffsets(Landroid/graphics/Rect;ILc8/Rv;)V

    .line 29
    :cond_1
    return-void
.end method

.method public isApplyFirstItem()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lc8/Deo;->isApplyFirstItem:Z

    return v0
.end method

.method public setApplyFirstItem(Z)V
    .locals 0
    .param p1, "applyFirstItem"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lc8/Deo;->isApplyFirstItem:Z

    .line 37
    return-void
.end method
