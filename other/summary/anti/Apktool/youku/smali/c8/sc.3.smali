.class public Lc8/sc;
.super Lc8/Zd;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1393
    invoke-direct {p0}, Lc8/Zd;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1396
    invoke-direct {p0, p1, p2}, Lc8/Zd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1398
    sget-object v1, Lcom/youku/phone/R$styleable;->ScrollingViewBehavior_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1400
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/youku/phone/R$styleable;->ScrollingViewBehavior_Layout_behavior_overlapTop:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lc8/sc;->setOverlayTop(I)V

    .line 1402
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1403
    return-void
.end method

.method private static getAppBarLayoutOffset(Lc8/tc;)I
    .locals 2
    .param p0, "abl"    # Lc8/tc;

    .prologue
    .line 1476
    .line 1477
    invoke-virtual {p0}, Lc8/tc;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lc8/ud;

    invoke-virtual {v1}, Lc8/ud;->getBehavior()Lc8/qd;

    move-result-object v0

    .line 1478
    .local v0, "behavior":Lc8/qd;
    instance-of v1, v0, Lc8/oc;

    if-eqz v1, :cond_0

    .line 1479
    check-cast v0, Lc8/oc;

    .end local v0    # "behavior":Lc8/qd;
    invoke-virtual {v0}, Lc8/oc;->getTopBottomOffsetForScrollingSibling()I

    move-result v1

    .line 1481
    :goto_0
    return v1

    .restart local v0    # "behavior":Lc8/qd;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private offsetChildAsNeeded(Lc8/yd;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Lc8/yd;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 1440
    .line 1441
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lc8/ud;

    invoke-virtual {v2}, Lc8/ud;->getBehavior()Lc8/qd;

    move-result-object v1

    .line 1442
    .local v1, "behavior":Lc8/qd;
    instance-of v2, v1, Lc8/oc;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1445
    check-cast v0, Lc8/oc;

    .line 1446
    .local v0, "ablBehavior":Lc8/oc;
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1447
    invoke-static {v0}, Lc8/oc;->access$000(Lc8/oc;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1448
    invoke-virtual {p0}, Lc8/sc;->getVerticalLayoutGap()I

    move-result v3

    add-int/2addr v2, v3

    .line 1449
    invoke-virtual {p0, p3}, Lc8/sc;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1446
    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1451
    .end local v0    # "ablBehavior":Lc8/oc;
    :cond_0
    return-void
.end method


# virtual methods
.method bridge synthetic findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1391
    invoke-virtual {p0, p1}, Lc8/sc;->findFirstDependency(Ljava/util/List;)Lc8/tc;

    move-result-object v0

    return-object v0
.end method

.method findFirstDependency(Ljava/util/List;)Lc8/tc;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Lc8/tc;"
        }
    .end annotation

    .prologue
    .line 1486
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1487
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1488
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Lc8/tc;

    if-eqz v3, :cond_0

    .line 1489
    check-cast v1, Lc8/tc;

    .line 1492
    .end local v1    # "view":Landroid/view/View;
    :goto_1
    return-object v1

    .line 1486
    .restart local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1492
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .locals 1

    .prologue
    .line 1391
    invoke-super {p0}, Lc8/Zd;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 8
    .param p1, "header"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 1455
    instance-of v6, p1, Lc8/tc;

    if-eqz v6, :cond_0

    move-object v0, p1

    .line 1456
    check-cast v0, Lc8/tc;

    .line 1457
    .local v0, "abl":Lc8/tc;
    invoke-virtual {v0}, Lc8/tc;->getTotalScrollRange()I

    move-result v4

    .line 1458
    .local v4, "totalScrollRange":I
    invoke-virtual {v0}, Lc8/tc;->getDownNestedPreScrollRange()I

    move-result v3

    .line 1459
    .local v3, "preScrollDown":I
    invoke-static {v0}, Lc8/sc;->getAppBarLayoutOffset(Lc8/tc;)I

    move-result v2

    .line 1461
    .local v2, "offset":I
    if-eqz v3, :cond_1

    add-int v6, v4, v2

    if-gt v6, v3, :cond_1

    .line 1472
    .end local v0    # "abl":Lc8/tc;
    .end local v2    # "offset":I
    .end local v3    # "preScrollDown":I
    .end local v4    # "totalScrollRange":I
    :cond_0
    :goto_0
    return v5

    .line 1465
    .restart local v0    # "abl":Lc8/tc;
    .restart local v2    # "offset":I
    .restart local v3    # "preScrollDown":I
    .restart local v4    # "totalScrollRange":I
    :cond_1
    sub-int v1, v4, v3

    .line 1466
    .local v1, "availScrollRange":I
    if-eqz v1, :cond_0

    .line 1468
    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v6, v2

    int-to-float v7, v1

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    goto :goto_0
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1497
    instance-of v0, p1, Lc8/tc;

    if-eqz v0, :cond_0

    .line 1498
    check-cast p1, Lc8/tc;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lc8/tc;->getTotalScrollRange()I

    move-result v0

    .line 1500
    :goto_0
    return v0

    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Lc8/Zd;->getScrollRange(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 1

    .prologue
    .line 1391
    invoke-super {p0}, Lc8/Zd;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method public layoutDependsOn(Lc8/yd;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lc8/yd;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 1408
    instance-of v0, p3, Lc8/tc;

    return v0
.end method

.method public onDependentViewChanged(Lc8/yd;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lc8/yd;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 1414
    invoke-direct {p0, p1, p2, p3}, Lc8/sc;->offsetChildAsNeeded(Lc8/yd;Landroid/view/View;Landroid/view/View;)V

    .line 1415
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onLayoutChild(Lc8/yd;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1391
    invoke-super {p0, p1, p2, p3}, Lc8/Zd;->onLayoutChild(Lc8/yd;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onMeasureChild(Lc8/yd;Landroid/view/View;IIII)Z
    .locals 1

    .prologue
    .line 1391
    invoke-super/range {p0 .. p6}, Lc8/Zd;->onMeasureChild(Lc8/yd;Landroid/view/View;IIII)Z

    move-result v0

    return v0
.end method

.method public onRequestChildRectangleOnScreen(Lc8/yd;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6
    .param p1, "parent"    # Lc8/yd;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rectangle"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1421
    invoke-virtual {p1, p2}, Lc8/yd;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/sc;->findFirstDependency(Ljava/util/List;)Lc8/tc;

    move-result-object v0

    .line 1422
    .local v0, "header":Lc8/tc;
    if-eqz v0, :cond_1

    .line 1424
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p3, v2, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1426
    iget-object v1, p0, Lc8/sc;->mTempRect1:Landroid/graphics/Rect;

    .line 1427
    .local v1, "parentRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lc8/yd;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lc8/yd;->getHeight()I

    move-result v5

    invoke-virtual {v1, v4, v4, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1429
    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1432
    if-nez p4, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v4, v2}, Lc8/tc;->setExpanded(ZZ)V

    .line 1436
    .end local v1    # "parentRect":Landroid/graphics/Rect;
    :goto_1
    return v3

    .restart local v1    # "parentRect":Landroid/graphics/Rect;
    :cond_0
    move v2, v4

    .line 1432
    goto :goto_0

    .end local v1    # "parentRect":Landroid/graphics/Rect;
    :cond_1
    move v3, v4

    .line 1436
    goto :goto_1
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 1

    .prologue
    .line 1391
    invoke-super {p0, p1}, Lc8/Zd;->setLeftAndRightOffset(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 1

    .prologue
    .line 1391
    invoke-super {p0, p1}, Lc8/Zd;->setTopAndBottomOffset(I)Z

    move-result v0

    return v0
.end method
