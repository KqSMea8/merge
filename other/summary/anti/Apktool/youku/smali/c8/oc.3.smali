.class public Lc8/oc;
.super Lc8/Yd;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;,
        Lc8/mc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Yd",
        "<",
        "Lc8/tc;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x258


# instance fields
.field private mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetAnimator:Lc8/ef;

.field private mOffsetDelta:I

.field private mOffsetToChildIndexOnLayout:I

.field private mOffsetToChildIndexOnLayoutIsMinHeight:Z

.field private mOffsetToChildIndexOnLayoutPerc:F

.field private mOnDragCallback:Lc8/mc;

.field private mSkipNestedPreScroll:Z

.field private mWasNestedFlung:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 806
    invoke-direct {p0}, Lc8/Yd;-><init>()V

    .line 799
    const/4 v0, -0x1

    iput v0, p0, Lc8/oc;->mOffsetToChildIndexOnLayout:I

    .line 806
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 809
    invoke-direct {p0, p1, p2}, Lc8/Yd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 799
    const/4 v0, -0x1

    iput v0, p0, Lc8/oc;->mOffsetToChildIndexOnLayout:I

    .line 810
    return-void
.end method

.method static synthetic access$000(Lc8/oc;)I
    .locals 1
    .param p0, "x0"    # Lc8/oc;

    .prologue
    .line 772
    iget v0, p0, Lc8/oc;->mOffsetDelta:I

    return v0
.end method

.method private animateOffsetTo(Lc8/yd;Lc8/tc;IF)V
    .locals 5
    .param p1, "coordinatorLayout"    # Lc8/yd;
    .param p2, "child"    # Lc8/tc;
    .param p3, "offset"    # I
    .param p4, "velocity"    # F

    .prologue
    .line 932
    invoke-virtual {p0}, Lc8/oc;->getTopBottomOffsetForScrollingSibling()I

    move-result v3

    sub-int/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 935
    .local v0, "distance":I
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 936
    const/4 v3, 0x0

    cmpl-float v3, p4, v3

    if-lez v3, :cond_0

    .line 937
    const/high16 v3, 0x447a0000    # 1000.0f

    int-to-float v4, v0

    div-float/2addr v4, p4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v2, v3, 0x3

    .line 943
    .local v2, "duration":I
    :goto_0
    invoke-direct {p0, p1, p2, p3, v2}, Lc8/oc;->animateOffsetWithDuration(Lc8/yd;Lc8/tc;II)V

    .line 944
    return-void

    .line 939
    .end local v2    # "duration":I
    :cond_0
    int-to-float v3, v0

    invoke-virtual {p2}, Lc8/tc;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 940
    .local v1, "distanceRatio":F
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v1

    const/high16 v4, 0x43160000    # 150.0f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .restart local v2    # "duration":I
    goto :goto_0
.end method

.method private animateOffsetWithDuration(Lc8/yd;Lc8/tc;II)V
    .locals 4
    .param p1, "coordinatorLayout"    # Lc8/yd;
    .param p2, "child"    # Lc8/tc;
    .param p3, "offset"    # I
    .param p4, "duration"    # I

    .prologue
    .line 948
    invoke-virtual {p0}, Lc8/oc;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 949
    .local v0, "currentOffset":I
    if-ne v0, p3, :cond_1

    .line 950
    iget-object v1, p0, Lc8/oc;->mOffsetAnimator:Lc8/ef;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/oc;->mOffsetAnimator:Lc8/ef;

    invoke-virtual {v1}, Lc8/ef;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    iget-object v1, p0, Lc8/oc;->mOffsetAnimator:Lc8/ef;

    invoke-virtual {v1}, Lc8/ef;->cancel()V

    .line 973
    :cond_0
    :goto_0
    return-void

    .line 956
    :cond_1
    iget-object v1, p0, Lc8/oc;->mOffsetAnimator:Lc8/ef;

    if-nez v1, :cond_2

    .line 957
    invoke-static {}, Lc8/sf;->createAnimator()Lc8/ef;

    move-result-object v1

    iput-object v1, p0, Lc8/oc;->mOffsetAnimator:Lc8/ef;

    .line 958
    iget-object v1, p0, Lc8/oc;->mOffsetAnimator:Lc8/ef;

    sget-object v2, Lc8/jc;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Lc8/ef;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 959
    iget-object v1, p0, Lc8/oc;->mOffsetAnimator:Lc8/ef;

    new-instance v2, Lc8/lc;

    invoke-direct {v2, p0, p1, p2}, Lc8/lc;-><init>(Lc8/oc;Lc8/yd;Lc8/tc;)V

    invoke-virtual {v1, v2}, Lc8/ef;->addUpdateListener(Lc8/Ze;)V

    .line 970
    :goto_1
    iget-object v1, p0, Lc8/oc;->mOffsetAnimator:Lc8/ef;

    const/16 v2, 0x258

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lc8/ef;->setDuration(J)V

    .line 971
    iget-object v1, p0, Lc8/oc;->mOffsetAnimator:Lc8/ef;

    invoke-virtual {v1, v0, p3}, Lc8/ef;->setIntValues(II)V

    .line 972
    iget-object v1, p0, Lc8/oc;->mOffsetAnimator:Lc8/ef;

    invoke-virtual {v1}, Lc8/ef;->start()V

    goto :goto_0

    .line 967
    :cond_2
    iget-object v1, p0, Lc8/oc;->mOffsetAnimator:Lc8/ef;

    invoke-virtual {v1}, Lc8/ef;->cancel()V

    goto :goto_1
.end method

.method private static checkFlag(II)Z
    .locals 1
    .param p0, "flags"    # I
    .param p1, "check"    # I

    .prologue
    .line 1028
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAppBarChildOnOffset(Lc8/tc;I)Landroid/view/View;
    .locals 5
    .param p0, "layout"    # Lc8/tc;
    .param p1, "offset"    # I

    .prologue
    .line 1294
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1295
    .local v0, "absOffset":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lc8/tc;->getChildCount()I

    move-result v3

    .local v3, "z":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1296
    invoke-virtual {p0, v2}, Lc8/tc;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1297
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v0, v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v0, v4, :cond_0

    .line 1301
    .end local v1    # "child":Landroid/view/View;
    :goto_1
    return-object v1

    .line 1295
    .restart local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1301
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getChildIndexOnOffset(Lc8/tc;I)I
    .locals 5
    .param p1, "abl"    # Lc8/tc;
    .param p2, "offset"    # I

    .prologue
    .line 976
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Lc8/tc;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 977
    invoke-virtual {p1, v2}, Lc8/tc;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 978
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v4, p2

    if-gt v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    neg-int v4, p2

    if-lt v3, v4, :cond_0

    .line 982
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 976
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 982
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private interpolateOffset(Lc8/tc;I)I
    .locals 13
    .param p1, "layout"    # Lc8/tc;
    .param p2, "offset"    # I

    .prologue
    .line 1195
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1197
    .local v0, "absOffset":I
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {p1}, Lc8/tc;->getChildCount()I

    move-result v9

    .local v9, "z":I
    :goto_0
    if-ge v5, v9, :cond_2

    .line 1198
    invoke-virtual {p1, v5}, Lc8/tc;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1199
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lc8/qc;

    .line 1200
    .local v2, "childLp":Lc8/qc;
    invoke-virtual {v2}, Lc8/qc;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    .line 1202
    .local v7, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v0, v10, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v0, v10, :cond_3

    .line 1203
    if-eqz v7, :cond_2

    .line 1204
    const/4 v3, 0x0

    .line 1205
    .local v3, "childScrollableHeight":I
    invoke-virtual {v2}, Lc8/qc;->getScrollFlags()I

    move-result v4

    .line 1206
    .local v4, "flags":I
    and-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_0

    .line 1208
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    iget v11, v2, Lc8/qc;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v2, Lc8/qc;->bottomMargin:I

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 1211
    and-int/lit8 v10, v4, 0x2

    if-eqz v10, :cond_0

    .line 1214
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v3, v10

    .line 1218
    :cond_0
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1219
    invoke-virtual {p1}, Lc8/tc;->getTopInset()I

    move-result v10

    sub-int/2addr v3, v10

    .line 1222
    :cond_1
    if-lez v3, :cond_2

    .line 1223
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v8, v0, v10

    .line 1224
    .local v8, "offsetForView":I
    int-to-float v10, v3

    int-to-float v11, v8

    int-to-float v12, v3

    div-float/2addr v11, v12

    .line 1225
    invoke-interface {v7, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v10, v11

    .line 1224
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1228
    .local v6, "interpolatedDiff":I
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    add-int/2addr v11, v6

    mul-int p2, v10, v11

    .line 1238
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childLp":Lc8/qc;
    .end local v3    # "childScrollableHeight":I
    .end local v4    # "flags":I
    .end local v6    # "interpolatedDiff":I
    .end local v7    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v8    # "offsetForView":I
    .end local p2    # "offset":I
    :cond_2
    return p2

    .line 1197
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childLp":Lc8/qc;
    .restart local v7    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local p2    # "offset":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private shouldJumpElevationState(Lc8/yd;Lc8/tc;)Z
    .locals 8
    .param p1, "parent"    # Lc8/yd;
    .param p2, "layout"    # Lc8/tc;

    .prologue
    const/4 v6, 0x0

    .line 1279
    invoke-virtual {p1, p2}, Lc8/yd;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 1280
    .local v1, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 1281
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1283
    .local v2, "dependency":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lc8/ud;

    .line 1284
    .local v4, "lp":Lc8/ud;
    invoke-virtual {v4}, Lc8/ud;->getBehavior()Lc8/qd;

    move-result-object v0

    .line 1286
    .local v0, "behavior":Lc8/qd;
    instance-of v7, v0, Lc8/sc;

    if-eqz v7, :cond_1

    .line 1287
    check-cast v0, Lc8/sc;

    .end local v0    # "behavior":Lc8/qd;
    invoke-virtual {v0}, Lc8/sc;->getOverlayTop()I

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    .line 1290
    .end local v2    # "dependency":Landroid/view/View;
    .end local v4    # "lp":Lc8/ud;
    :cond_0
    return v6

    .line 1280
    .restart local v0    # "behavior":Lc8/qd;
    .restart local v2    # "dependency":Landroid/view/View;
    .restart local v4    # "lp":Lc8/ud;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private snapToChildIfNeeded(Lc8/yd;Lc8/tc;)V
    .locals 11
    .param p1, "coordinatorLayout"    # Lc8/yd;
    .param p2, "abl"    # Lc8/tc;

    .prologue
    .line 986
    invoke-virtual {p0}, Lc8/oc;->getTopBottomOffsetForScrollingSibling()I

    move-result v3

    .line 987
    .local v3, "offset":I
    invoke-direct {p0, p2, v3}, Lc8/oc;->getChildIndexOnOffset(Lc8/tc;I)I

    move-result v5

    .line 988
    .local v5, "offsetChildIndex":I
    if-ltz v5, :cond_2

    .line 989
    invoke-virtual {p2, v5}, Lc8/tc;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 990
    .local v4, "offsetChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lc8/qc;

    .line 991
    .local v1, "lp":Lc8/qc;
    invoke-virtual {v1}, Lc8/qc;->getScrollFlags()I

    move-result v0

    .line 993
    .local v0, "flags":I
    and-int/lit8 v9, v0, 0x11

    const/16 v10, 0x11

    if-ne v9, v10, :cond_2

    .line 995
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    neg-int v8, v9

    .line 996
    .local v8, "snapTop":I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    neg-int v7, v9

    .line 998
    .local v7, "snapBottom":I
    invoke-virtual {p2}, Lc8/tc;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v5, v9, :cond_0

    .line 1000
    invoke-virtual {p2}, Lc8/tc;->getTopInset()I

    move-result v9

    add-int/2addr v7, v9

    .line 1003
    :cond_0
    const/4 v9, 0x2

    invoke-static {v0, v9}, Lc8/oc;->checkFlag(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1005
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    add-int/2addr v7, v9

    .line 1018
    :cond_1
    :goto_0
    add-int v9, v7, v8

    div-int/lit8 v9, v9, 0x2

    if-ge v3, v9, :cond_5

    move v2, v7

    .line 1022
    .local v2, "newOffset":I
    :goto_1
    invoke-virtual {p2}, Lc8/tc;->getTotalScrollRange()I

    move-result v9

    neg-int v9, v9

    const/4 v10, 0x0

    invoke-static {v2, v9, v10}, Lc8/ae;->constrain(III)I

    move-result v9

    const/4 v10, 0x0

    .line 1021
    invoke-direct {p0, p1, p2, v9, v10}, Lc8/oc;->animateOffsetTo(Lc8/yd;Lc8/tc;IF)V

    .line 1025
    .end local v0    # "flags":I
    .end local v1    # "lp":Lc8/qc;
    .end local v2    # "newOffset":I
    .end local v4    # "offsetChild":Landroid/view/View;
    .end local v7    # "snapBottom":I
    .end local v8    # "snapTop":I
    :cond_2
    return-void

    .line 1006
    .restart local v0    # "flags":I
    .restart local v1    # "lp":Lc8/qc;
    .restart local v4    # "offsetChild":Landroid/view/View;
    .restart local v7    # "snapBottom":I
    .restart local v8    # "snapTop":I
    :cond_3
    const/4 v9, 0x5

    invoke-static {v0, v9}, Lc8/oc;->checkFlag(II)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1010
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    add-int v6, v7, v9

    .line 1011
    .local v6, "seam":I
    if-ge v3, v6, :cond_4

    .line 1012
    move v8, v6

    goto :goto_0

    .line 1014
    :cond_4
    move v7, v6

    goto :goto_0

    .end local v6    # "seam":I
    :cond_5
    move v2, v8

    .line 1018
    goto :goto_1
.end method

.method private updateAppBarLayoutDrawableState(Lc8/yd;Lc8/tc;IIZ)V
    .locals 9
    .param p1, "parent"    # Lc8/yd;
    .param p2, "layout"    # Lc8/tc;
    .param p3, "offset"    # I
    .param p4, "direction"    # I
    .param p5, "forceJump"    # Z

    .prologue
    .line 1244
    invoke-static {p2, p3}, Lc8/oc;->getAppBarChildOnOffset(Lc8/tc;I)Landroid/view/View;

    move-result-object v1

    .line 1245
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1246
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lc8/qc;

    .line 1247
    .local v2, "childLp":Lc8/qc;
    invoke-virtual {v2}, Lc8/qc;->getScrollFlags()I

    move-result v4

    .line 1248
    .local v4, "flags":I
    const/4 v3, 0x0

    .line 1250
    .local v3, "collapsed":Z
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_0

    .line 1251
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    .line 1253
    .local v5, "minHeight":I
    if-lez p4, :cond_4

    and-int/lit8 v6, v4, 0xc

    if-eqz v6, :cond_4

    .line 1257
    neg-int v6, p3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {p2}, Lc8/tc;->getTopInset()I

    move-result v8

    sub-int/2addr v7, v8

    if-lt v6, v7, :cond_3

    const/4 v3, 0x1

    .line 1265
    .end local v5    # "minHeight":I
    :cond_0
    :goto_0
    invoke-virtual {p2, v3}, Lc8/tc;->setCollapsedState(Z)Z

    move-result v0

    .line 1267
    .local v0, "changed":Z
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_2

    if-nez p5, :cond_1

    if-eqz v0, :cond_2

    .line 1268
    invoke-direct {p0, p1, p2}, Lc8/oc;->shouldJumpElevationState(Lc8/yd;Lc8/tc;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1271
    :cond_1
    invoke-virtual {p2}, Lc8/tc;->jumpDrawablesToCurrentState()V

    .line 1274
    .end local v0    # "changed":Z
    .end local v2    # "childLp":Lc8/qc;
    .end local v3    # "collapsed":Z
    .end local v4    # "flags":I
    :cond_2
    return-void

    .line 1257
    .restart local v2    # "childLp":Lc8/qc;
    .restart local v3    # "collapsed":Z
    .restart local v4    # "flags":I
    .restart local v5    # "minHeight":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1258
    :cond_4
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_0

    .line 1261
    neg-int v6, p3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {p2}, Lc8/tc;->getTopInset()I

    move-result v8

    sub-int/2addr v7, v8

    if-lt v6, v7, :cond_5

    const/4 v3, 0x1

    :goto_1
    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 772
    check-cast p1, Lc8/tc;

    invoke-virtual {p0, p1}, Lc8/oc;->canDragView(Lc8/tc;)Z

    move-result v0

    return v0
.end method

.method canDragView(Lc8/tc;)Z
    .locals 3
    .param p1, "view"    # Lc8/tc;

    .prologue
    const/4 v1, 0x1

    .line 1111
    iget-object v2, p0, Lc8/oc;->mOnDragCallback:Lc8/mc;

    if-eqz v2, :cond_1

    .line 1113
    iget-object v1, p0, Lc8/oc;->mOnDragCallback:Lc8/mc;

    invoke-virtual {v1, p1}, Lc8/mc;->canDrag(Lc8/tc;)Z

    move-result v1

    .line 1124
    :cond_0
    :goto_0
    return v1

    .line 1117
    :cond_1
    iget-object v2, p0, Lc8/oc;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 1119
    iget-object v2, p0, Lc8/oc;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1120
    .local v0, "scrollingView":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    .line 1121
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .locals 1

    .prologue
    .line 772
    invoke-super {p0}, Lc8/Yd;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 772
    check-cast p1, Lc8/tc;

    invoke-virtual {p0, p1}, Lc8/oc;->getMaxDragOffset(Lc8/tc;)I

    move-result v0

    return v0
.end method

.method getMaxDragOffset(Lc8/tc;)I
    .locals 1
    .param p1, "view"    # Lc8/tc;

    .prologue
    .line 1136
    invoke-virtual {p1}, Lc8/tc;->getDownNestedScrollRange()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 772
    check-cast p1, Lc8/tc;

    invoke-virtual {p0, p1}, Lc8/oc;->getScrollRangeForDragFling(Lc8/tc;)I

    move-result v0

    return v0
.end method

.method getScrollRangeForDragFling(Lc8/tc;)I
    .locals 1
    .param p1, "view"    # Lc8/tc;

    .prologue
    .line 1141
    invoke-virtual {p1}, Lc8/tc;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 1

    .prologue
    .line 772
    invoke-super {p0}, Lc8/Yd;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 2

    .prologue
    .line 1306
    invoke-virtual {p0}, Lc8/oc;->getTopAndBottomOffset()I

    move-result v0

    iget v1, p0, Lc8/oc;->mOffsetDelta:I

    add-int/2addr v0, v1

    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1191
    iget-object v0, p0, Lc8/oc;->mOffsetAnimator:Lc8/ef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/oc;->mOffsetAnimator:Lc8/ef;

    invoke-virtual {v0}, Lc8/ef;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bridge synthetic onFlingFinished(Lc8/yd;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 772
    check-cast p2, Lc8/tc;

    invoke-virtual {p0, p1, p2}, Lc8/oc;->onFlingFinished(Lc8/yd;Lc8/tc;)V

    return-void
.end method

.method onFlingFinished(Lc8/yd;Lc8/tc;)V
    .locals 0
    .param p1, "parent"    # Lc8/yd;
    .param p2, "layout"    # Lc8/tc;

    .prologue
    .line 1131
    invoke-direct {p0, p1, p2}, Lc8/oc;->snapToChildIfNeeded(Lc8/yd;Lc8/tc;)V

    .line 1132
    return-void
.end method

.method public bridge synthetic onLayoutChild(Lc8/yd;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 772
    check-cast p2, Lc8/tc;

    invoke-virtual {p0, p1, p2, p3}, Lc8/oc;->onLayoutChild(Lc8/yd;Lc8/tc;I)Z

    move-result v0

    return v0
.end method

.method public onLayoutChild(Lc8/yd;Lc8/tc;I)Z
    .locals 11
    .param p1, "parent"    # Lc8/yd;
    .param p2, "abl"    # Lc8/tc;
    .param p3, "layoutDirection"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1055
    invoke-super {p0, p1, p2, p3}, Lc8/Yd;->onLayoutChild(Lc8/yd;Landroid/view/View;I)Z

    move-result v8

    .line 1061
    .local v8, "handled":Z
    invoke-virtual {p2}, Lc8/tc;->getPendingAction()I

    move-result v10

    .line 1062
    .local v10, "pendingAction":I
    iget v0, p0, Lc8/oc;->mOffsetToChildIndexOnLayout:I

    if-ltz v0, :cond_2

    and-int/lit8 v0, v10, 0x8

    if-nez v0, :cond_2

    .line 1063
    iget v0, p0, Lc8/oc;->mOffsetToChildIndexOnLayout:I

    invoke-virtual {p2, v0}, Lc8/tc;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1064
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    neg-int v9, v0

    .line 1065
    .local v9, "offset":I
    iget-boolean v0, p0, Lc8/oc;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v0, :cond_1

    .line 1066
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Lc8/tc;->getTopInset()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v9, v0

    .line 1070
    :goto_0
    invoke-virtual {p0, p1, p2, v9}, Lc8/oc;->setHeaderTopBottomOffset(Lc8/yd;Landroid/view/View;I)I

    .line 1090
    .end local v7    # "child":Landroid/view/View;
    .end local v9    # "offset":I
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lc8/tc;->resetPendingAction()V

    .line 1091
    const/4 v0, -0x1

    iput v0, p0, Lc8/oc;->mOffsetToChildIndexOnLayout:I

    .line 1096
    invoke-virtual {p0}, Lc8/oc;->getTopAndBottomOffset()I

    move-result v0

    invoke-virtual {p2}, Lc8/tc;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v4}, Lc8/ae;->constrain(III)I

    move-result v0

    .line 1095
    invoke-virtual {p0, v0}, Lc8/oc;->setTopAndBottomOffset(I)Z

    .line 1101
    invoke-virtual {p0}, Lc8/oc;->getTopAndBottomOffset()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lc8/oc;->updateAppBarLayoutDrawableState(Lc8/yd;Lc8/tc;IIZ)V

    .line 1104
    invoke-virtual {p0}, Lc8/oc;->getTopAndBottomOffset()I

    move-result v0

    invoke-virtual {p2, v0}, Lc8/tc;->dispatchOffsetUpdates(I)V

    .line 1106
    return v8

    .line 1068
    .restart local v7    # "child":Landroid/view/View;
    .restart local v9    # "offset":I
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lc8/oc;->mOffsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v9, v0

    goto :goto_0

    .line 1071
    .end local v7    # "child":Landroid/view/View;
    .end local v9    # "offset":I
    :cond_2
    if-eqz v10, :cond_0

    .line 1072
    and-int/lit8 v0, v10, 0x4

    if-eqz v0, :cond_3

    move v6, v5

    .line 1073
    .local v6, "animate":Z
    :goto_2
    and-int/lit8 v0, v10, 0x2

    if-eqz v0, :cond_5

    .line 1074
    invoke-virtual {p2}, Lc8/tc;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v9, v0

    .line 1075
    .restart local v9    # "offset":I
    if-eqz v6, :cond_4

    .line 1076
    invoke-direct {p0, p1, p2, v9, v1}, Lc8/oc;->animateOffsetTo(Lc8/yd;Lc8/tc;IF)V

    goto :goto_1

    .end local v6    # "animate":Z
    .end local v9    # "offset":I
    :cond_3
    move v6, v4

    .line 1072
    goto :goto_2

    .line 1078
    .restart local v6    # "animate":Z
    .restart local v9    # "offset":I
    :cond_4
    invoke-virtual {p0, p1, p2, v9}, Lc8/oc;->setHeaderTopBottomOffset(Lc8/yd;Landroid/view/View;I)I

    goto :goto_1

    .line 1080
    .end local v9    # "offset":I
    :cond_5
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_0

    .line 1081
    if-eqz v6, :cond_6

    .line 1082
    invoke-direct {p0, p1, p2, v4, v1}, Lc8/oc;->animateOffsetTo(Lc8/yd;Lc8/tc;IF)V

    goto :goto_1

    .line 1084
    :cond_6
    invoke-virtual {p0, p1, p2, v4}, Lc8/oc;->setHeaderTopBottomOffset(Lc8/yd;Landroid/view/View;I)I

    goto :goto_1
.end method

.method public bridge synthetic onMeasureChild(Lc8/yd;Landroid/view/View;IIII)Z
    .locals 7

    .prologue
    .line 772
    move-object v2, p2

    check-cast v2, Lc8/tc;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lc8/oc;->onMeasureChild(Lc8/yd;Lc8/tc;IIII)Z

    move-result v0

    return v0
.end method

.method public onMeasureChild(Lc8/yd;Lc8/tc;IIII)Z
    .locals 7
    .param p1, "parent"    # Lc8/yd;
    .param p2, "child"    # Lc8/tc;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I

    .prologue
    const/4 v2, 0x0

    .line 1035
    .line 1036
    invoke-virtual {p2}, Lc8/tc;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lc8/ud;

    .line 1037
    .local v6, "lp":Lc8/ud;
    iget v0, v6, Lc8/ud;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1043
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    .line 1042
    invoke-virtual/range {v0 .. v5}, Lc8/yd;->onMeasureChild(Landroid/view/View;IIII)V

    .line 1044
    const/4 v0, 0x1

    .line 1048
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p6}, Lc8/Yd;->onMeasureChild(Lc8/yd;Landroid/view/View;IIII)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onNestedFling(Lc8/yd;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 7

    .prologue
    .line 772
    move-object v2, p2

    check-cast v2, Lc8/tc;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lc8/oc;->onNestedFling(Lc8/yd;Lc8/tc;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedFling(Lc8/yd;Lc8/tc;Landroid/view/View;FFZ)Z
    .locals 8
    .param p1, "coordinatorLayout"    # Lc8/yd;
    .param p2, "child"    # Lc8/tc;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "consumed"    # Z

    .prologue
    .line 886
    const/4 v6, 0x0

    .line 888
    .local v6, "flung":Z
    if-nez p6, :cond_1

    .line 890
    invoke-virtual {p2}, Lc8/tc;->getTotalScrollRange()I

    move-result v0

    neg-int v3, v0

    const/4 v4, 0x0

    neg-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lc8/oc;->fling(Lc8/yd;Landroid/view/View;IIF)Z

    move-result v6

    .line 917
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lc8/oc;->mWasNestedFlung:Z

    .line 918
    return v6

    .line 895
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p5, v0

    if-gez v0, :cond_2

    .line 897
    invoke-virtual {p2}, Lc8/tc;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    .line 898
    invoke-virtual {p2}, Lc8/tc;->getDownNestedPreScrollRange()I

    move-result v1

    add-int v7, v0, v1

    .line 899
    .local v7, "targetScroll":I
    invoke-virtual {p0}, Lc8/oc;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-ge v0, v7, :cond_0

    .line 902
    invoke-direct {p0, p1, p2, v7, p5}, Lc8/oc;->animateOffsetTo(Lc8/yd;Lc8/tc;IF)V

    .line 903
    const/4 v6, 0x1

    goto :goto_0

    .line 907
    .end local v7    # "targetScroll":I
    :cond_2
    invoke-virtual {p2}, Lc8/tc;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v7, v0

    .line 908
    .restart local v7    # "targetScroll":I
    invoke-virtual {p0}, Lc8/oc;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 911
    invoke-direct {p0, p1, p2, v7, p5}, Lc8/oc;->animateOffsetTo(Lc8/yd;Lc8/tc;IF)V

    .line 912
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onNestedPreScroll(Lc8/yd;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 7

    .prologue
    .line 772
    move-object v2, p2

    check-cast v2, Lc8/tc;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lc8/oc;->onNestedPreScroll(Lc8/yd;Lc8/tc;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedPreScroll(Lc8/yd;Lc8/tc;Landroid/view/View;II[I)V
    .locals 7
    .param p1, "coordinatorLayout"    # Lc8/yd;
    .param p2, "child"    # Lc8/tc;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I

    .prologue
    .line 835
    if-eqz p5, :cond_0

    iget-boolean v0, p0, Lc8/oc;->mSkipNestedPreScroll:Z

    if-nez v0, :cond_0

    .line 837
    if-gez p5, :cond_1

    .line 839
    invoke-virtual {p2}, Lc8/tc;->getTotalScrollRange()I

    move-result v0

    neg-int v4, v0

    .line 840
    .local v4, "min":I
    invoke-virtual {p2}, Lc8/tc;->getDownNestedPreScrollRange()I

    move-result v0

    add-int v5, v4, v0

    .line 846
    .local v5, "max":I
    :goto_0
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-virtual/range {v0 .. v5}, Lc8/oc;->scroll(Lc8/yd;Landroid/view/View;III)I

    move-result v0

    aput v0, p6, v6

    .line 848
    .end local v4    # "min":I
    .end local v5    # "max":I
    :cond_0
    return-void

    .line 843
    :cond_1
    invoke-virtual {p2}, Lc8/tc;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v4, v0

    .line 844
    .restart local v4    # "min":I
    const/4 v5, 0x0

    .restart local v5    # "max":I
    goto :goto_0
.end method

.method public bridge synthetic onNestedScroll(Lc8/yd;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8

    .prologue
    .line 772
    move-object v2, p2

    check-cast v2, Lc8/tc;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lc8/oc;->onNestedScroll(Lc8/yd;Lc8/tc;Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedScroll(Lc8/yd;Lc8/tc;Landroid/view/View;IIII)V
    .locals 6
    .param p1, "coordinatorLayout"    # Lc8/yd;
    .param p2, "child"    # Lc8/tc;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I

    .prologue
    const/4 v5, 0x0

    .line 854
    if-gez p7, :cond_0

    .line 858
    invoke-virtual {p2}, Lc8/tc;->getDownNestedScrollRange()I

    move-result v0

    neg-int v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    .line 857
    invoke-virtual/range {v0 .. v5}, Lc8/oc;->scroll(Lc8/yd;Landroid/view/View;III)I

    .line 860
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/oc;->mSkipNestedPreScroll:Z

    .line 865
    :goto_0
    return-void

    .line 863
    :cond_0
    iput-boolean v5, p0, Lc8/oc;->mSkipNestedPreScroll:Z

    goto :goto_0
.end method

.method public bridge synthetic onRestoreInstanceState(Lc8/yd;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 772
    check-cast p2, Lc8/tc;

    invoke-virtual {p0, p1, p2, p3}, Lc8/oc;->onRestoreInstanceState(Lc8/yd;Lc8/tc;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRestoreInstanceState(Lc8/yd;Lc8/tc;Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "parent"    # Lc8/yd;
    .param p2, "appBarLayout"    # Lc8/tc;
    .param p3, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1336
    instance-of v1, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 1337
    check-cast v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    .line 1338
    .local v0, "ss":Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Lc8/Yd;->onRestoreInstanceState(Lc8/yd;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1339
    iget v1, v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    iput v1, p0, Lc8/oc;->mOffsetToChildIndexOnLayout:I

    .line 1340
    iget v1, v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    iput v1, p0, Lc8/oc;->mOffsetToChildIndexOnLayoutPerc:F

    .line 1341
    iget-boolean v1, v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean v1, p0, Lc8/oc;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    .line 1346
    .end local v0    # "ss":Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;
    :goto_0
    return-void

    .line 1343
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lc8/Yd;->onRestoreInstanceState(Lc8/yd;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1344
    const/4 v1, -0x1

    iput v1, p0, Lc8/oc;->mOffsetToChildIndexOnLayout:I

    goto :goto_0
.end method

.method public bridge synthetic onSaveInstanceState(Lc8/yd;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 772
    check-cast p2, Lc8/tc;

    invoke-virtual {p0, p1, p2}, Lc8/oc;->onSaveInstanceState(Lc8/yd;Lc8/tc;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Lc8/yd;Lc8/tc;)Landroid/os/Parcelable;
    .locals 9
    .param p1, "parent"    # Lc8/yd;
    .param p2, "abl"    # Lc8/tc;

    .prologue
    .line 1311
    invoke-super {p0, p1, p2}, Lc8/Yd;->onSaveInstanceState(Lc8/yd;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v5

    .line 1312
    .local v5, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lc8/oc;->getTopAndBottomOffset()I

    move-result v3

    .line 1315
    .local v3, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p2}, Lc8/tc;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1316
    invoke-virtual {p2, v2}, Lc8/tc;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1317
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v6, v7, v3

    .line 1319
    .local v6, "visBottom":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v7, v3

    if-gtz v7, :cond_1

    if-ltz v6, :cond_1

    .line 1320
    new-instance v4, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-direct {v4, v5}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1321
    .local v4, "ss":Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;
    iput v2, v4, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    .line 1323
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p2}, Lc8/tc;->getTopInset()I

    move-result v8

    add-int/2addr v7, v8

    if-ne v6, v7, :cond_0

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v4, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    .line 1324
    int-to-float v7, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, v4, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    .line 1330
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ss":Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;
    .end local v6    # "visBottom":I
    :goto_2
    return-object v4

    .line 1323
    .restart local v0    # "child":Landroid/view/View;
    .restart local v4    # "ss":Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;
    .restart local v6    # "visBottom":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 1315
    .end local v4    # "ss":Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "visBottom":I
    :cond_2
    move-object v4, v5

    .line 1330
    goto :goto_2
.end method

.method public bridge synthetic onStartNestedScroll(Lc8/yd;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 772
    move-object v2, p2

    check-cast v2, Lc8/tc;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lc8/oc;->onStartNestedScroll(Lc8/yd;Lc8/tc;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onStartNestedScroll(Lc8/yd;Lc8/tc;Landroid/view/View;Landroid/view/View;I)Z
    .locals 3
    .param p1, "parent"    # Lc8/yd;
    .param p2, "child"    # Lc8/tc;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I

    .prologue
    .line 817
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_1

    .line 818
    invoke-virtual {p2}, Lc8/tc;->hasScrollableChildren()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 819
    invoke-virtual {p1}, Lc8/yd;->getHeight()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Lc8/tc;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 821
    .local v0, "started":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lc8/oc;->mOffsetAnimator:Lc8/ef;

    if-eqz v1, :cond_0

    .line 823
    iget-object v1, p0, Lc8/oc;->mOffsetAnimator:Lc8/ef;

    invoke-virtual {v1}, Lc8/ef;->cancel()V

    .line 827
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/oc;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 829
    return v0

    .line 819
    .end local v0    # "started":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onStopNestedScroll(Lc8/yd;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 772
    check-cast p2, Lc8/tc;

    invoke-virtual {p0, p1, p2, p3}, Lc8/oc;->onStopNestedScroll(Lc8/yd;Lc8/tc;Landroid/view/View;)V

    return-void
.end method

.method public onStopNestedScroll(Lc8/yd;Lc8/tc;Landroid/view/View;)V
    .locals 2
    .param p1, "coordinatorLayout"    # Lc8/yd;
    .param p2, "abl"    # Lc8/tc;
    .param p3, "target"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 870
    iget-boolean v0, p0, Lc8/oc;->mWasNestedFlung:Z

    if-nez v0, :cond_0

    .line 872
    invoke-direct {p0, p1, p2}, Lc8/oc;->snapToChildIfNeeded(Lc8/yd;Lc8/tc;)V

    .line 876
    :cond_0
    iput-boolean v1, p0, Lc8/oc;->mSkipNestedPreScroll:Z

    .line 877
    iput-boolean v1, p0, Lc8/oc;->mWasNestedFlung:Z

    .line 879
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/oc;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 880
    return-void
.end method

.method public setDragCallback(Lc8/mc;)V
    .locals 0
    .param p1, "callback"    # Lc8/mc;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 927
    iput-object p1, p0, Lc8/oc;->mOnDragCallback:Lc8/mc;

    .line 928
    return-void
.end method

.method bridge synthetic setHeaderTopBottomOffset(Lc8/yd;Landroid/view/View;III)I
    .locals 6

    .prologue
    .line 772
    move-object v2, p2

    check-cast v2, Lc8/tc;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lc8/oc;->setHeaderTopBottomOffset(Lc8/yd;Lc8/tc;III)I

    move-result v0

    return v0
.end method

.method setHeaderTopBottomOffset(Lc8/yd;Lc8/tc;III)I
    .locals 10
    .param p1, "coordinatorLayout"    # Lc8/yd;
    .param p2, "appBarLayout"    # Lc8/tc;
    .param p3, "newOffset"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I

    .prologue
    const/4 v5, 0x0

    .line 1147
    invoke-virtual {p0}, Lc8/oc;->getTopBottomOffsetForScrollingSibling()I

    move-result v7

    .line 1148
    .local v7, "curOffset":I
    const/4 v6, 0x0

    .line 1150
    .local v6, "consumed":I
    if-eqz p4, :cond_4

    if-lt v7, p4, :cond_4

    if-gt v7, p5, :cond_4

    .line 1153
    invoke-static {p3, p4, p5}, Lc8/ae;->constrain(III)I

    move-result p3

    .line 1154
    if-eq v7, p3, :cond_1

    .line 1155
    invoke-virtual {p2}, Lc8/tc;->hasChildWithInterpolator()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1156
    invoke-direct {p0, p2, p3}, Lc8/oc;->interpolateOffset(Lc8/tc;I)I

    move-result v8

    .line 1159
    .local v8, "interpolatedOffset":I
    :goto_0
    invoke-virtual {p0, v8}, Lc8/oc;->setTopAndBottomOffset(I)Z

    move-result v9

    .line 1162
    .local v9, "offsetChanged":Z
    sub-int v6, v7, p3

    .line 1164
    sub-int v0, p3, v8

    iput v0, p0, Lc8/oc;->mOffsetDelta:I

    .line 1166
    if-nez v9, :cond_0

    invoke-virtual {p2}, Lc8/tc;->hasChildWithInterpolator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {p1, p2}, Lc8/yd;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 1175
    :cond_0
    invoke-virtual {p0}, Lc8/oc;->getTopAndBottomOffset()I

    move-result v0

    invoke-virtual {p2, v0}, Lc8/tc;->dispatchOffsetUpdates(I)V

    .line 1178
    if-ge p3, v7, :cond_3

    const/4 v4, -0x1

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lc8/oc;->updateAppBarLayoutDrawableState(Lc8/yd;Lc8/tc;IIZ)V

    .line 1186
    .end local v8    # "interpolatedOffset":I
    .end local v9    # "offsetChanged":Z
    :cond_1
    :goto_2
    return v6

    :cond_2
    move v8, p3

    .line 1156
    goto :goto_0

    .line 1178
    .restart local v8    # "interpolatedOffset":I
    .restart local v9    # "offsetChanged":Z
    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 1183
    .end local v8    # "interpolatedOffset":I
    .end local v9    # "offsetChanged":Z
    :cond_4
    iput v5, p0, Lc8/oc;->mOffsetDelta:I

    goto :goto_2
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 1

    .prologue
    .line 772
    invoke-super {p0, p1}, Lc8/Yd;->setLeftAndRightOffset(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 1

    .prologue
    .line 772
    invoke-super {p0, p1}, Lc8/Yd;->setTopAndBottomOffset(I)Z

    move-result v0

    return v0
.end method
