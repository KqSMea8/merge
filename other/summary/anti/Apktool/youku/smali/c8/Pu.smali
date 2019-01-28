.class public final Lc8/Pu;
.super Lc8/Ru;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ru;->createHorizontalHelper(Lc8/xv;)Lc8/Ru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>(Lc8/xv;)V
    .locals 1
    .param p1, "layoutManager"    # Lc8/xv;

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Ru;-><init>(Lc8/xv;Lc8/Pu;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 290
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/yv;

    .line 292
    .local v0, "params":Lc8/yv;
    iget-object v1, p0, Lc8/Pu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v1, p1}, Lc8/xv;->getDecoratedRight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lc8/yv;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 274
    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/yv;

    .line 276
    .local v0, "params":Lc8/yv;
    iget-object v1, p0, Lc8/Pu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v1, p1}, Lc8/xv;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lc8/yv;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lc8/yv;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 282
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/yv;

    .line 284
    .local v0, "params":Lc8/yv;
    iget-object v1, p0, Lc8/Pu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v1, p1}, Lc8/xv;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lc8/yv;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lc8/yv;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 297
    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/yv;

    .line 299
    .local v0, "params":Lc8/yv;
    iget-object v1, p0, Lc8/Pu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v1, p1}, Lc8/xv;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lc8/yv;->leftMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lc8/Pu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getWidth()I

    move-result v0

    return v0
.end method

.method public getEndAfterPadding()I
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lc8/Pu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getWidth()I

    move-result v0

    iget-object v1, p0, Lc8/Pu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v1}, Lc8/xv;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEndPadding()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lc8/Pu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lc8/Pu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getWidthMode()I

    move-result v0

    return v0
.end method

.method public getModeInOther()I
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lc8/Pu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getHeightMode()I

    move-result v0

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lc8/Pu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lc8/Pu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getWidth()I

    move-result v0

    iget-object v1, p0, Lc8/Pu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v1}, Lc8/xv;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lc8/Pu;->mLayoutManager:Lc8/xv;

    .line 317
    invoke-virtual {v1}, Lc8/xv;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTransformedEndWithDecoration(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 304
    iget-object v0, p0, Lc8/Pu;->mLayoutManager:Lc8/xv;

    const/4 v1, 0x1

    iget-object v2, p0, Lc8/Pu;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lc8/xv;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 305
    iget-object v0, p0, Lc8/Pu;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getTransformedStartWithDecoration(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 310
    iget-object v0, p0, Lc8/Pu;->mLayoutManager:Lc8/xv;

    const/4 v1, 0x1

    iget-object v2, p0, Lc8/Pu;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lc8/xv;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 311
    iget-object v0, p0, Lc8/Pu;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public offsetChild(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 322
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 323
    return-void
.end method

.method public offsetChildren(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lc8/Pu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v0, p1}, Lc8/xv;->offsetChildrenHorizontal(I)V

    .line 265
    return-void
.end method
