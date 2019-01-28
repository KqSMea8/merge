.class public abstract Lc8/Gx;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Mx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final ABS_HORIZONTAL_DIR_FLAGS:I = 0xc0c0c

.field public static final DEFAULT_DRAG_ANIMATION_DURATION:I = 0xc8

.field public static final DEFAULT_SWIPE_ANIMATION_DURATION:I = 0xfa

.field private static final DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS:J = 0x7d0L

.field static final RELATIVE_DIR_FLAGS:I = 0x303030

.field private static final sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

.field private static final sUICallback:Lc8/Nx;


# instance fields
.field private mCachedMaxScrollSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1371
    new-instance v0, Lc8/Ex;

    invoke-direct {v0}, Lc8/Ex;-><init>()V

    sput-object v0, Lc8/Gx;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 1378
    new-instance v0, Lc8/Fx;

    invoke-direct {v0}, Lc8/Fx;-><init>()V

    sput-object v0, Lc8/Gx;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 1394
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1395
    new-instance v0, Lc8/Qx;

    invoke-direct {v0}, Lc8/Qx;-><init>()V

    sput-object v0, Lc8/Gx;->sUICallback:Lc8/Nx;

    .line 1401
    :goto_0
    return-void

    .line 1396
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1397
    new-instance v0, Lc8/Px;

    invoke-direct {v0}, Lc8/Px;-><init>()V

    sput-object v0, Lc8/Gx;->sUICallback:Lc8/Nx;

    goto :goto_0

    .line 1399
    :cond_1
    new-instance v0, Lc8/Ox;

    invoke-direct {v0}, Lc8/Ox;-><init>()V

    sput-object v0, Lc8/Gx;->sUICallback:Lc8/Nx;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1391
    const/4 v0, -0x1

    iput v0, p0, Lc8/Gx;->mCachedMaxScrollSpeed:I

    return-void
.end method

.method public static convertToRelativeDirection(II)I
    .locals 4
    .param p0, "flags"    # I
    .param p1, "layoutDirection"    # I

    .prologue
    const v3, 0xc0c0c

    .line 1459
    and-int v0, p0, v3

    .line 1460
    .local v0, "masked":I
    if-nez v0, :cond_0

    .line 1474
    :goto_0
    return p0

    .line 1463
    :cond_0
    xor-int/lit8 v1, v0, -0x1

    and-int/2addr p0, v1

    .line 1464
    if-nez p1, :cond_1

    .line 1466
    shl-int/lit8 v1, v0, 0x2

    or-int/2addr p0, v1

    .line 1467
    goto :goto_0

    .line 1470
    :cond_1
    shl-int/lit8 v1, v0, 0x1

    const v2, -0xc0c0d

    and-int/2addr v1, v2

    or-int/2addr p0, v1

    .line 1472
    shl-int/lit8 v1, v0, 0x1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr p0, v1

    .line 1474
    goto :goto_0
.end method

.method public static getDefaultUIUtil()Lc8/Nx;
    .locals 1

    .prologue
    .line 1444
    sget-object v0, Lc8/Gx;->sUICallback:Lc8/Nx;

    return-object v0
.end method

.method private getMaxDragScroll(Lc8/Rv;)I
    .locals 2
    .param p1, "recyclerView"    # Lc8/Rv;

    .prologue
    .line 1869
    iget v0, p0, Lc8/Gx;->mCachedMaxScrollSpeed:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1870
    invoke-virtual {p1}, Lc8/Rv;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$dimen;->item_touch_helper_max_drag_scroll_per_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lc8/Gx;->mCachedMaxScrollSpeed:I

    .line 1873
    :cond_0
    iget v0, p0, Lc8/Gx;->mCachedMaxScrollSpeed:I

    return v0
.end method

.method public static makeFlag(II)I
    .locals 1
    .param p0, "actionState"    # I
    .param p1, "directions"    # I

    .prologue
    .line 1505
    shl-int/lit8 v0, p0, 0x3

    shl-int v0, p1, v0

    return v0
.end method

.method public static makeMovementFlags(II)I
    .locals 2
    .param p0, "dragFlags"    # I
    .param p1, "swipeFlags"    # I

    .prologue
    .line 1489
    const/4 v0, 0x0

    or-int v1, p1, p0

    invoke-static {v0, v1}, Lc8/Gx;->makeFlag(II)I

    move-result v0

    const/4 v1, 0x1

    .line 1490
    invoke-static {v1, p1}, Lc8/Gx;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lc8/Gx;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public canDropOver(Lc8/Rv;Lc8/Qv;Lc8/Qv;)Z
    .locals 1
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "current"    # Lc8/Qv;
    .param p3, "target"    # Lc8/Qv;

    .prologue
    .line 1600
    const/4 v0, 0x1

    return v0
.end method

.method public chooseDropTarget(Lc8/Qv;Ljava/util/List;II)Lc8/Qv;
    .locals 13
    .param p1, "selected"    # Lc8/Qv;
    .param p3, "curX"    # I
    .param p4, "curY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Qv;",
            "Ljava/util/List",
            "<",
            "Lc8/Qv;",
            ">;II)",
            "Lc8/Qv;"
        }
    .end annotation

    .prologue
    .line 1770
    .local p2, "dropTargets":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    iget-object v11, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int v5, p3, v11

    .line 1771
    .local v5, "right":I
    iget-object v11, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int v0, p4, v11

    .line 1772
    .local v0, "bottom":I
    const/4 v9, 0x0

    .line 1773
    .local v9, "winner":Lc8/Qv;
    const/4 v10, -0x1

    .line 1774
    .local v10, "winnerScore":I
    iget-object v11, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v2, p3, v11

    .line 1775
    .local v2, "dx":I
    iget-object v11, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v3, p4, v11

    .line 1776
    .local v3, "dy":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    .line 1777
    .local v8, "targetsSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_4

    .line 1778
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/Qv;

    .line 1779
    .local v7, "target":Lc8/Qv;
    if-lez v2, :cond_0

    .line 1780
    iget-object v11, v7, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int v1, v11, v5

    .line 1781
    .local v1, "diff":I
    if-gez v1, :cond_0

    iget-object v11, v7, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    iget-object v12, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    if-le v11, v12, :cond_0

    .line 1782
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1783
    .local v6, "score":I
    if-le v6, v10, :cond_0

    .line 1784
    move v10, v6

    .line 1785
    move-object v9, v7

    .line 1789
    .end local v1    # "diff":I
    .end local v6    # "score":I
    :cond_0
    if-gez v2, :cond_1

    .line 1790
    iget-object v11, v7, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v1, v11, p3

    .line 1791
    .restart local v1    # "diff":I
    if-lez v1, :cond_1

    iget-object v11, v7, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    iget-object v12, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 1792
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1793
    .restart local v6    # "score":I
    if-le v6, v10, :cond_1

    .line 1794
    move v10, v6

    .line 1795
    move-object v9, v7

    .line 1799
    .end local v1    # "diff":I
    .end local v6    # "score":I
    :cond_1
    if-gez v3, :cond_2

    .line 1800
    iget-object v11, v7, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v1, v11, p4

    .line 1801
    .restart local v1    # "diff":I
    if-lez v1, :cond_2

    iget-object v11, v7, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 1802
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1803
    .restart local v6    # "score":I
    if-le v6, v10, :cond_2

    .line 1804
    move v10, v6

    .line 1805
    move-object v9, v7

    .line 1810
    .end local v1    # "diff":I
    .end local v6    # "score":I
    :cond_2
    if-lez v3, :cond_3

    .line 1811
    iget-object v11, v7, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    sub-int v1, v11, v0

    .line 1812
    .restart local v1    # "diff":I
    if-gez v1, :cond_3

    iget-object v11, v7, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    iget-object v12, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    if-le v11, v12, :cond_3

    .line 1813
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1814
    .restart local v6    # "score":I
    if-le v6, v10, :cond_3

    .line 1815
    move v10, v6

    .line 1816
    move-object v9, v7

    .line 1777
    .end local v1    # "diff":I
    .end local v6    # "score":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1821
    .end local v7    # "target":Lc8/Qv;
    :cond_4
    return-object v9
.end method

.method public clearView(Lc8/Rv;Lc8/Qv;)V
    .locals 2
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 2006
    sget-object v0, Lc8/Gx;->sUICallback:Lc8/Nx;

    iget-object v1, p2, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lc8/Nx;->clearView(Landroid/view/View;)V

    .line 2007
    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .locals 5
    .param p1, "flags"    # I
    .param p2, "layoutDirection"    # I

    .prologue
    const v4, 0x303030

    .line 1548
    and-int v1, p1, v4

    .line 1549
    .local v1, "masked":I
    if-nez v1, :cond_0

    move v0, p1

    .line 1563
    .end local p1    # "flags":I
    .local v0, "flags":I
    :goto_0
    return v0

    .line 1552
    .end local v0    # "flags":I
    .restart local p1    # "flags":I
    :cond_0
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr p1, v2

    .line 1553
    if-nez p2, :cond_1

    .line 1555
    shr-int/lit8 v2, v1, 0x2

    or-int/2addr p1, v2

    move v0, p1

    .line 1556
    .end local p1    # "flags":I
    .restart local v0    # "flags":I
    goto :goto_0

    .line 1559
    .end local v0    # "flags":I
    .restart local p1    # "flags":I
    :cond_1
    shr-int/lit8 v2, v1, 0x1

    const v3, -0x303031

    and-int/2addr v2, v3

    or-int/2addr p1, v2

    .line 1561
    shr-int/lit8 v2, v1, 0x1

    and-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr p1, v2

    move v0, p1

    .line 1563
    .end local p1    # "flags":I
    .restart local v0    # "flags":I
    goto :goto_0
.end method

.method final getAbsoluteMovementFlags(Lc8/Rv;Lc8/Qv;)I
    .locals 2
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 1568
    invoke-virtual {p0, p1, p2}, Lc8/Gx;->getMovementFlags(Lc8/Rv;Lc8/Qv;)I

    move-result v0

    .line 1569
    .local v0, "flags":I
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lc8/Gx;->convertToAbsoluteDirection(II)I

    move-result v1

    return v1
.end method

.method public getAnimationDuration(Lc8/Rv;IFF)J
    .locals 4
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "animationType"    # I
    .param p3, "animateDx"    # F
    .param p4, "animateDy"    # F

    .prologue
    const/16 v1, 0x8

    .line 2099
    invoke-virtual {p1}, Lc8/Rv;->getItemAnimator()Lc8/qv;

    move-result-object v0

    .line 2100
    .local v0, "itemAnimator":Lc8/qv;
    if-nez v0, :cond_1

    .line 2101
    if-ne p2, v1, :cond_0

    const-wide/16 v2, 0xc8

    .line 2105
    :goto_0
    return-wide v2

    .line 2101
    :cond_0
    const-wide/16 v2, 0xfa

    goto :goto_0

    .line 2104
    :cond_1
    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Lc8/qv;->getMoveDuration()J

    move-result-wide v2

    goto :goto_0

    .line 2105
    :cond_2
    invoke-virtual {v0}, Lc8/qv;->getRemoveDuration()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getBoundingBoxMargin()I
    .locals 1

    .prologue
    .line 1663
    const/4 v0, 0x0

    return v0
.end method

.method public getMoveThreshold(Lc8/Qv;)F
    .locals 1
    .param p1, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 1691
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public abstract getMovementFlags(Lc8/Rv;Lc8/Qv;)I
.end method

.method public getSwipeEscapeVelocity(F)F
    .locals 0
    .param p1, "defaultValue"    # F

    .prologue
    .line 1716
    return p1
.end method

.method public getSwipeThreshold(Lc8/Qv;)F
    .locals 1
    .param p1, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 1678
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getSwipeVelocityThreshold(F)F
    .locals 0
    .param p1, "defaultValue"    # F

    .prologue
    .line 1739
    return p1
.end method

.method hasDragFlag(Lc8/Rv;Lc8/Qv;)Z
    .locals 2
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 1573
    invoke-virtual {p0, p1, p2}, Lc8/Gx;->getAbsoluteMovementFlags(Lc8/Rv;Lc8/Qv;)I

    move-result v0

    .line 1574
    .local v0, "flags":I
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hasSwipeFlag(Lc8/Rv;Lc8/Qv;)Z
    .locals 2
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 1579
    invoke-virtual {p0, p1, p2}, Lc8/Gx;->getAbsoluteMovementFlags(Lc8/Rv;Lc8/Qv;)I

    move-result v0

    .line 1580
    .local v0, "flags":I
    const v1, 0xff00

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public interpolateOutOfBoundsScroll(Lc8/Rv;IIIJ)I
    .locals 13
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "viewSize"    # I
    .param p3, "viewSizeOutOfBounds"    # I
    .param p4, "totalSize"    # I
    .param p5, "msSinceStartScroll"    # J

    .prologue
    .line 2132
    invoke-direct {p0, p1}, Lc8/Gx;->getMaxDragScroll(Lc8/Rv;)I

    move-result v5

    .line 2133
    .local v5, "maxScroll":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2134
    .local v2, "absOutOfBounds":I
    move/from16 v0, p3

    int-to-float v9, v0

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    float-to-int v4, v9

    .line 2136
    .local v4, "direction":I
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    int-to-float v11, v2

    mul-float/2addr v10, v11

    int-to-float v11, p2

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 2137
    .local v6, "outOfBoundsRatio":F
    mul-int v9, v4, v5

    int-to-float v9, v9

    sget-object v10, Lc8/Gx;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 2138
    invoke-interface {v10, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v3, v9

    .line 2140
    .local v3, "cappedScroll":I
    const-wide/16 v10, 0x7d0

    cmp-long v9, p5, v10

    if-lez v9, :cond_1

    .line 2141
    const/high16 v7, 0x3f800000    # 1.0f

    .line 2145
    .local v7, "timeRatio":F
    :goto_0
    int-to-float v9, v3

    sget-object v10, Lc8/Gx;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 2146
    invoke-interface {v10, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v8, v9

    .line 2147
    .local v8, "value":I
    if-nez v8, :cond_0

    .line 2148
    if-lez p3, :cond_2

    const/4 v8, 0x1

    .line 2150
    .end local v8    # "value":I
    :cond_0
    :goto_1
    return v8

    .line 2143
    .end local v7    # "timeRatio":F
    :cond_1
    move-wide/from16 v0, p5

    long-to-float v9, v0

    const/high16 v10, 0x44fa0000    # 2000.0f

    div-float v7, v9, v10

    .restart local v7    # "timeRatio":F
    goto :goto_0

    .line 2148
    .restart local v8    # "value":I
    :cond_2
    const/4 v8, -0x1

    goto :goto_1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 1652
    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 1637
    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Lc8/Rv;Lc8/Qv;FFIZ)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lc8/Rv;
    .param p3, "viewHolder"    # Lc8/Qv;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 2039
    sget-object v0, Lc8/Gx;->sUICallback:Lc8/Nx;

    iget-object v3, p3, Lc8/Qv;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lc8/Nx;->onDraw(Landroid/graphics/Canvas;Lc8/Rv;Landroid/view/View;FFIZ)V

    .line 2041
    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Lc8/Rv;Lc8/Qv;FFIZ)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lc8/Rv;
    .param p3, "viewHolder"    # Lc8/Qv;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 2073
    sget-object v0, Lc8/Gx;->sUICallback:Lc8/Nx;

    iget-object v3, p3, Lc8/Qv;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lc8/Nx;->onDrawOver(Landroid/graphics/Canvas;Lc8/Rv;Landroid/view/View;FFIZ)V

    .line 2075
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Lc8/Rv;Lc8/Qv;Ljava/util/List;IFF)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lc8/Rv;
    .param p3, "selected"    # Lc8/Qv;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lc8/Rv;",
            "Lc8/Qv;",
            "Ljava/util/List",
            "<",
            "Lc8/Jx;",
            ">;IFF)V"
        }
    .end annotation

    .prologue
    .line 1946
    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v12

    .line 1947
    .local v12, "recoverAnimSize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v12, :cond_0

    .line 1948
    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/Jx;

    .line 1949
    .local v9, "anim":Lc8/Jx;
    invoke-virtual {v9}, Lc8/Jx;->update()V

    .line 1950
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1951
    .local v10, "count":I
    iget-object v4, v9, Lc8/Jx;->mViewHolder:Lc8/Qv;

    iget v5, v9, Lc8/Jx;->mX:F

    iget v6, v9, Lc8/Jx;->mY:F

    iget v7, v9, Lc8/Jx;->mActionState:I

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Lc8/Gx;->onChildDraw(Landroid/graphics/Canvas;Lc8/Rv;Lc8/Qv;FFIZ)V

    .line 1953
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1947
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1955
    .end local v9    # "anim":Lc8/Jx;
    .end local v10    # "count":I
    :cond_0
    if-eqz p3, :cond_1

    .line 1956
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1957
    .restart local v10    # "count":I
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lc8/Gx;->onChildDraw(Landroid/graphics/Canvas;Lc8/Rv;Lc8/Qv;FFIZ)V

    .line 1958
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1960
    .end local v10    # "count":I
    :cond_1
    return-void
.end method

.method onDrawOver(Landroid/graphics/Canvas;Lc8/Rv;Lc8/Qv;Ljava/util/List;IFF)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lc8/Rv;
    .param p3, "selected"    # Lc8/Qv;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lc8/Rv;",
            "Lc8/Qv;",
            "Ljava/util/List",
            "<",
            "Lc8/Jx;",
            ">;IFF)V"
        }
    .end annotation

    .prologue
    .line 1965
    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v13

    .line 1966
    .local v13, "recoverAnimSize":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v13, :cond_0

    .line 1967
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/Jx;

    .line 1968
    .local v9, "anim":Lc8/Jx;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1969
    .local v10, "count":I
    iget-object v4, v9, Lc8/Jx;->mViewHolder:Lc8/Qv;

    iget v5, v9, Lc8/Jx;->mX:F

    iget v6, v9, Lc8/Jx;->mY:F

    iget v7, v9, Lc8/Jx;->mActionState:I

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Lc8/Gx;->onChildDrawOver(Landroid/graphics/Canvas;Lc8/Rv;Lc8/Qv;FFIZ)V

    .line 1971
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1966
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1973
    .end local v9    # "anim":Lc8/Jx;
    .end local v10    # "count":I
    :cond_0
    if-eqz p3, :cond_1

    .line 1974
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1975
    .restart local v10    # "count":I
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lc8/Gx;->onChildDrawOver(Landroid/graphics/Canvas;Lc8/Rv;Lc8/Qv;FFIZ)V

    .line 1976
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1978
    .end local v10    # "count":I
    :cond_1
    const/4 v11, 0x0

    .line 1979
    .local v11, "hasRunningAnimation":Z
    add-int/lit8 v12, v13, -0x1

    :goto_1
    if-ltz v12, :cond_4

    .line 1980
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/Jx;

    .line 1981
    .restart local v9    # "anim":Lc8/Jx;
    iget-boolean v1, v9, Lc8/Jx;->mEnded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v9, Lc8/Jx;->mIsPendingCleanup:Z

    if-nez v1, :cond_3

    .line 1982
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1979
    :cond_2
    :goto_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 1983
    :cond_3
    iget-boolean v1, v9, Lc8/Jx;->mEnded:Z

    if-nez v1, :cond_2

    .line 1984
    const/4 v11, 0x1

    goto :goto_2

    .line 1987
    .end local v9    # "anim":Lc8/Jx;
    :cond_4
    if-eqz v11, :cond_5

    .line 1988
    invoke-virtual/range {p2 .. p2}, Lc8/Rv;->invalidate()V

    .line 1990
    :cond_5
    return-void
.end method

.method public abstract onMove(Lc8/Rv;Lc8/Qv;Lc8/Qv;)Z
.end method

.method public onMoved(Lc8/Rv;Lc8/Qv;ILc8/Qv;III)V
    .locals 7
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "viewHolder"    # Lc8/Qv;
    .param p3, "fromPos"    # I
    .param p4, "target"    # Lc8/Qv;
    .param p5, "toPos"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I

    .prologue
    .line 1912
    invoke-virtual {p1}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v0

    .line 1913
    .local v0, "layoutManager":Lc8/xv;
    instance-of v5, v0, Lc8/Lx;

    if-eqz v5, :cond_1

    .line 1914
    check-cast v0, Lc8/Lx;

    .end local v0    # "layoutManager":Lc8/xv;
    iget-object v5, p2, Lc8/Qv;->itemView:Landroid/view/View;

    iget-object v6, p4, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-interface {v0, v5, v6, p6, p7}, Lc8/Lx;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    .line 1941
    :cond_0
    :goto_0
    return-void

    .line 1920
    .restart local v0    # "layoutManager":Lc8/xv;
    :cond_1
    invoke-virtual {v0}, Lc8/xv;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1921
    iget-object v5, p4, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Lc8/xv;->getDecoratedLeft(Landroid/view/View;)I

    move-result v3

    .line 1922
    .local v3, "minLeft":I
    invoke-virtual {p1}, Lc8/Rv;->getPaddingLeft()I

    move-result v5

    if-gt v3, v5, :cond_2

    .line 1923
    invoke-virtual {p1, p5}, Lc8/Rv;->scrollToPosition(I)V

    .line 1925
    :cond_2
    iget-object v5, p4, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Lc8/xv;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    .line 1926
    .local v2, "maxRight":I
    invoke-virtual {p1}, Lc8/Rv;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lc8/Rv;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v2, v5, :cond_3

    .line 1927
    invoke-virtual {p1, p5}, Lc8/Rv;->scrollToPosition(I)V

    .line 1931
    .end local v2    # "maxRight":I
    .end local v3    # "minLeft":I
    :cond_3
    invoke-virtual {v0}, Lc8/xv;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1932
    iget-object v5, p4, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Lc8/xv;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    .line 1933
    .local v4, "minTop":I
    invoke-virtual {p1}, Lc8/Rv;->getPaddingTop()I

    move-result v5

    if-gt v4, v5, :cond_4

    .line 1934
    invoke-virtual {p1, p5}, Lc8/Rv;->scrollToPosition(I)V

    .line 1936
    :cond_4
    iget-object v5, p4, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Lc8/xv;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    .line 1937
    .local v1, "maxBottom":I
    invoke-virtual {p1}, Lc8/Rv;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Lc8/Rv;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v1, v5, :cond_0

    .line 1938
    invoke-virtual {p1, p5}, Lc8/Rv;->scrollToPosition(I)V

    goto :goto_0
.end method

.method public onSelectedChanged(Lc8/Qv;I)V
    .locals 2
    .param p1, "viewHolder"    # Lc8/Qv;
    .param p2, "actionState"    # I

    .prologue
    .line 1863
    if-eqz p1, :cond_0

    .line 1864
    sget-object v0, Lc8/Gx;->sUICallback:Lc8/Nx;

    iget-object v1, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lc8/Nx;->onSelected(Landroid/view/View;)V

    .line 1866
    :cond_0
    return-void
.end method

.method public abstract onSwiped(Lc8/Qv;I)V
.end method
