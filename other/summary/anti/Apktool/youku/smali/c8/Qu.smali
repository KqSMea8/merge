.class public final Lc8/Qu;
.super Lc8/Ru;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ru;->createVerticalHelper(Lc8/xv;)Lc8/Ru;
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
    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Ru;-><init>(Lc8/xv;Lc8/Pu;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 388
    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/yv;

    .line 390
    .local v0, "params":Lc8/yv;
    iget-object v1, p0, Lc8/Qu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v1, p1}, Lc8/xv;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lc8/yv;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 372
    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/yv;

    .line 374
    .local v0, "params":Lc8/yv;
    iget-object v1, p0, Lc8/Qu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v1, p1}, Lc8/xv;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lc8/yv;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lc8/yv;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 380
    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/yv;

    .line 382
    .local v0, "params":Lc8/yv;
    iget-object v1, p0, Lc8/Qu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v1, p1}, Lc8/xv;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lc8/yv;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lc8/yv;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 395
    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/yv;

    .line 397
    .local v0, "params":Lc8/yv;
    iget-object v1, p0, Lc8/Qu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v1, p1}, Lc8/xv;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lc8/yv;->topMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lc8/Qu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getHeight()I

    move-result v0

    return v0
.end method

.method public getEndAfterPadding()I
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lc8/Qu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getHeight()I

    move-result v0

    iget-object v1, p0, Lc8/Qu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v1}, Lc8/xv;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEndPadding()I
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lc8/Qu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lc8/Qu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getHeightMode()I

    move-result v0

    return v0
.end method

.method public getModeInOther()I
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lc8/Qu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getWidthMode()I

    move-result v0

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lc8/Qu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lc8/Qu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getHeight()I

    move-result v0

    iget-object v1, p0, Lc8/Qu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v1}, Lc8/xv;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lc8/Qu;->mLayoutManager:Lc8/xv;

    .line 415
    invoke-virtual {v1}, Lc8/xv;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTransformedEndWithDecoration(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 402
    iget-object v0, p0, Lc8/Qu;->mLayoutManager:Lc8/xv;

    const/4 v1, 0x1

    iget-object v2, p0, Lc8/Qu;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lc8/xv;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 403
    iget-object v0, p0, Lc8/Qu;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getTransformedStartWithDecoration(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 408
    iget-object v0, p0, Lc8/Qu;->mLayoutManager:Lc8/xv;

    const/4 v1, 0x1

    iget-object v2, p0, Lc8/Qu;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lc8/xv;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 409
    iget-object v0, p0, Lc8/Qu;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public offsetChild(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 420
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 421
    return-void
.end method

.method public offsetChildren(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lc8/Qu;->mLayoutManager:Lc8/xv;

    invoke-virtual {v0, p1}, Lc8/xv;->offsetChildrenVertical(I)V

    .line 363
    return-void
.end method
