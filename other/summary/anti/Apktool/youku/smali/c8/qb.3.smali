.class public Lc8/qb;
.super Lc8/xb;
.source "ConstraintWidgetContainer.java"


# static fields
.field static ALLOW_ROOT_GROUP:Z = false

.field private static final CHAIN_FIRST:I = 0x0

.field private static final CHAIN_FIRST_VISIBLE:I = 0x2

.field private static final CHAIN_LAST:I = 0x1

.field private static final CHAIN_LAST_VISIBLE:I = 0x3

.field private static final DEBUG:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_OPTIMIZE:Z = false

.field private static final FLAG_CHAIN_DANGLING:I = 0x1

.field private static final FLAG_CHAIN_OPTIMIZE:I = 0x0

.field private static final FLAG_RECOMPUTE_BOUNDS:I = 0x2

.field private static final MAX_ITERATIONS:I = 0x8

.field public static final OPTIMIZATION_ALL:I = 0x2

.field public static final OPTIMIZATION_BASIC:I = 0x4

.field public static final OPTIMIZATION_CHAIN:I = 0x8

.field public static final OPTIMIZATION_NONE:I = 0x1

.field private static final USE_SNAPSHOT:Z = true

.field private static final USE_THREAD:Z


# instance fields
.field private flags:[Z

.field protected mBackgroundSystem:Lc8/bb;

.field private mChainEnds:[Lc8/ob;

.field private mHeightMeasuredTooSmall:Z

.field private mHorizontalChainsArray:[Lc8/ob;

.field private mHorizontalChainsSize:I

.field private mMatchConstraintsChainedWidgets:[Lc8/ob;

.field private mOptimizationLevel:I

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field private mSnapshot:Lc8/wb;

.field protected mSystem:Lc8/bb;

.field private mVerticalChainsArray:[Lc8/ob;

.field private mVerticalChainsSize:I

.field private mWidthMeasuredTooSmall:Z

.field mWrapHeight:I

.field mWrapWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lc8/qb;->ALLOW_ROOT_GROUP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lc8/xb;-><init>()V

    .line 39
    new-instance v0, Lc8/bb;

    invoke-direct {v0}, Lc8/bb;-><init>()V

    iput-object v0, p0, Lc8/qb;->mSystem:Lc8/bb;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/qb;->mBackgroundSystem:Lc8/bb;

    .line 54
    iput v1, p0, Lc8/qb;->mHorizontalChainsSize:I

    .line 55
    iput v1, p0, Lc8/qb;->mVerticalChainsSize:I

    .line 56
    new-array v0, v2, [Lc8/ob;

    iput-object v0, p0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    .line 57
    new-array v0, v2, [Lc8/ob;

    iput-object v0, p0, Lc8/qb;->mVerticalChainsArray:[Lc8/ob;

    .line 58
    new-array v0, v2, [Lc8/ob;

    iput-object v0, p0, Lc8/qb;->mHorizontalChainsArray:[Lc8/ob;

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lc8/qb;->mOptimizationLevel:I

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lc8/qb;->flags:[Z

    .line 76
    new-array v0, v2, [Lc8/ob;

    iput-object v0, p0, Lc8/qb;->mChainEnds:[Lc8/ob;

    .line 82
    iput-boolean v1, p0, Lc8/qb;->mWidthMeasuredTooSmall:Z

    .line 83
    iput-boolean v1, p0, Lc8/qb;->mHeightMeasuredTooSmall:Z

    .line 93
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Lc8/xb;-><init>(II)V

    .line 39
    new-instance v0, Lc8/bb;

    invoke-direct {v0}, Lc8/bb;-><init>()V

    iput-object v0, p0, Lc8/qb;->mSystem:Lc8/bb;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/qb;->mBackgroundSystem:Lc8/bb;

    .line 54
    iput v1, p0, Lc8/qb;->mHorizontalChainsSize:I

    .line 55
    iput v1, p0, Lc8/qb;->mVerticalChainsSize:I

    .line 56
    new-array v0, v2, [Lc8/ob;

    iput-object v0, p0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    .line 57
    new-array v0, v2, [Lc8/ob;

    iput-object v0, p0, Lc8/qb;->mVerticalChainsArray:[Lc8/ob;

    .line 58
    new-array v0, v2, [Lc8/ob;

    iput-object v0, p0, Lc8/qb;->mHorizontalChainsArray:[Lc8/ob;

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lc8/qb;->mOptimizationLevel:I

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lc8/qb;->flags:[Z

    .line 76
    new-array v0, v2, [Lc8/ob;

    iput-object v0, p0, Lc8/qb;->mChainEnds:[Lc8/ob;

    .line 82
    iput-boolean v1, p0, Lc8/qb;->mWidthMeasuredTooSmall:Z

    .line 83
    iput-boolean v1, p0, Lc8/qb;->mHeightMeasuredTooSmall:Z

    .line 115
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/xb;-><init>(IIII)V

    .line 39
    new-instance v0, Lc8/bb;

    invoke-direct {v0}, Lc8/bb;-><init>()V

    iput-object v0, p0, Lc8/qb;->mSystem:Lc8/bb;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/qb;->mBackgroundSystem:Lc8/bb;

    .line 54
    iput v1, p0, Lc8/qb;->mHorizontalChainsSize:I

    .line 55
    iput v1, p0, Lc8/qb;->mVerticalChainsSize:I

    .line 56
    new-array v0, v2, [Lc8/ob;

    iput-object v0, p0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    .line 57
    new-array v0, v2, [Lc8/ob;

    iput-object v0, p0, Lc8/qb;->mVerticalChainsArray:[Lc8/ob;

    .line 58
    new-array v0, v2, [Lc8/ob;

    iput-object v0, p0, Lc8/qb;->mHorizontalChainsArray:[Lc8/ob;

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lc8/qb;->mOptimizationLevel:I

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lc8/qb;->flags:[Z

    .line 76
    new-array v0, v2, [Lc8/ob;

    iput-object v0, p0, Lc8/qb;->mChainEnds:[Lc8/ob;

    .line 82
    iput-boolean v1, p0, Lc8/qb;->mWidthMeasuredTooSmall:Z

    .line 83
    iput-boolean v1, p0, Lc8/qb;->mHeightMeasuredTooSmall:Z

    .line 105
    return-void
.end method

.method private addHorizontalChain(Lc8/ob;)V
    .locals 3
    .param p1, "widget"    # Lc8/ob;

    .prologue
    .line 1849
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lc8/qb;->mHorizontalChainsSize:I

    if-ge v0, v1, :cond_1

    .line 1850
    iget-object v1, p0, Lc8/qb;->mHorizontalChainsArray:[Lc8/ob;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1859
    :goto_1
    return-void

    .line 1849
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1854
    :cond_1
    iget v1, p0, Lc8/qb;->mHorizontalChainsSize:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lc8/qb;->mHorizontalChainsArray:[Lc8/ob;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 1855
    iget-object v1, p0, Lc8/qb;->mHorizontalChainsArray:[Lc8/ob;

    iget-object v2, p0, Lc8/qb;->mHorizontalChainsArray:[Lc8/ob;

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lc8/ob;

    iput-object v1, p0, Lc8/qb;->mHorizontalChainsArray:[Lc8/ob;

    .line 1857
    :cond_2
    iget-object v1, p0, Lc8/qb;->mHorizontalChainsArray:[Lc8/ob;

    iget v2, p0, Lc8/qb;->mHorizontalChainsSize:I

    aput-object p1, v1, v2

    .line 1858
    iget v1, p0, Lc8/qb;->mHorizontalChainsSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/qb;->mHorizontalChainsSize:I

    goto :goto_1
.end method

.method private addVerticalChain(Lc8/ob;)V
    .locals 3
    .param p1, "widget"    # Lc8/ob;

    .prologue
    .line 1868
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lc8/qb;->mVerticalChainsSize:I

    if-ge v0, v1, :cond_1

    .line 1869
    iget-object v1, p0, Lc8/qb;->mVerticalChainsArray:[Lc8/ob;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1878
    :goto_1
    return-void

    .line 1868
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1873
    :cond_1
    iget v1, p0, Lc8/qb;->mVerticalChainsSize:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lc8/qb;->mVerticalChainsArray:[Lc8/ob;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 1874
    iget-object v1, p0, Lc8/qb;->mVerticalChainsArray:[Lc8/ob;

    iget-object v2, p0, Lc8/qb;->mVerticalChainsArray:[Lc8/ob;

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lc8/ob;

    iput-object v1, p0, Lc8/qb;->mVerticalChainsArray:[Lc8/ob;

    .line 1876
    :cond_2
    iget-object v1, p0, Lc8/qb;->mVerticalChainsArray:[Lc8/ob;

    iget v2, p0, Lc8/qb;->mVerticalChainsSize:I

    aput-object p1, v1, v2

    .line 1877
    iget v1, p0, Lc8/qb;->mVerticalChainsSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/qb;->mVerticalChainsSize:I

    goto :goto_1
.end method

.method private applyHorizontalChain(Lc8/bb;)V
    .locals 48
    .param p1, "system"    # Lc8/bb;

    .prologue
    .line 357
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lc8/qb;->mHorizontalChainsSize:I

    move/from16 v0, v30

    if-ge v0, v4, :cond_33

    .line 358
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/qb;->mHorizontalChainsArray:[Lc8/ob;

    aget-object v28, v4, v30

    .line 359
    .local v28, "first":Lc8/ob;
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/qb;->mHorizontalChainsArray:[Lc8/ob;

    aget-object v7, v4, v30

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/qb;->flags:[Z

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lc8/qb;->countMatchConstraintsChainedWidgets(Lc8/bb;[Lc8/ob;Lc8/ob;I[Z)I

    move-result v40

    .line 361
    .local v40, "numMatchConstraints":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v5, 0x2

    aget-object v26, v4, v5

    .line 362
    .local v26, "currentWidget":Lc8/ob;
    if-eqz v26, :cond_2

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/qb;->flags:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_0

    .line 367
    invoke-virtual/range {v28 .. v28}, Lc8/ob;->getDrawX()I

    move-result v47

    .line 368
    .local v47, "x":I
    :goto_1
    if-eqz v26, :cond_2

    .line 369
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-virtual {v0, v4, v1}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 370
    move-object/from16 v0, v26

    iget-object v0, v0, Lc8/ob;->mHorizontalNextWidget:Lc8/ob;

    move-object/from16 v38, v0

    .line 371
    .local v38, "next":Lc8/ob;
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v4

    invoke-virtual/range {v26 .. v26}, Lc8/ob;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mRight:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v5

    add-int/2addr v4, v5

    add-int v47, v47, v4

    .line 372
    move-object/from16 v26, v38

    .line 373
    goto :goto_1

    .line 376
    .end local v38    # "next":Lc8/ob;
    .end local v47    # "x":I
    :cond_0
    move-object/from16 v0, v28

    iget v4, v0, Lc8/ob;->mHorizontalChainStyle:I

    if-nez v4, :cond_3

    const/16 v32, 0x1

    .line 377
    .local v32, "isChainSpread":Z
    :goto_2
    move-object/from16 v0, v28

    iget v4, v0, Lc8/ob;->mHorizontalChainStyle:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    const/16 v31, 0x1

    .line 378
    .local v31, "isChainPacked":Z
    :goto_3
    move-object/from16 v46, v28

    .line 379
    .local v46, "widget":Lc8/ob;
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/qb;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_5

    const/16 v34, 0x1

    .line 380
    .local v34, "isWrapContent":Z
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lc8/qb;->mOptimizationLevel:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lc8/qb;->mOptimizationLevel:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/qb;->flags:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_6

    move-object/from16 v0, v46

    iget-boolean v4, v0, Lc8/ob;->mHorizontalChainFixedPosition:Z

    if-eqz v4, :cond_6

    if-nez v31, :cond_6

    if-nez v34, :cond_6

    move-object/from16 v0, v28

    iget v4, v0, Lc8/ob;->mHorizontalChainStyle:I

    if-nez v4, :cond_6

    .line 384
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v40

    move-object/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lc8/tb;->applyDirectResolutionHorizontalChain(Lc8/qb;Lc8/bb;ILc8/ob;)V

    .line 357
    .end local v31    # "isChainPacked":Z
    .end local v32    # "isChainSpread":Z
    .end local v34    # "isWrapContent":Z
    .end local v46    # "widget":Lc8/ob;
    :cond_2
    :goto_5
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_0

    .line 376
    :cond_3
    const/16 v32, 0x0

    goto :goto_2

    .line 377
    .restart local v32    # "isChainSpread":Z
    :cond_4
    const/16 v31, 0x0

    goto :goto_3

    .line 379
    .restart local v31    # "isChainPacked":Z
    .restart local v46    # "widget":Lc8/ob;
    :cond_5
    const/16 v34, 0x0

    goto :goto_4

    .line 386
    .restart local v34    # "isWrapContent":Z
    :cond_6
    if-eqz v40, :cond_7

    if-eqz v31, :cond_1d

    .line 387
    :cond_7
    const/16 v43, 0x0

    .line 388
    .local v43, "previousVisibleWidget":Lc8/ob;
    const/16 v36, 0x0

    .line 389
    .local v36, "lastWidget":Lc8/ob;
    move-object/from16 v29, v26

    .line 392
    .local v29, "firstVisibleWidget":Lc8/ob;
    const/16 v33, 0x0

    .line 394
    .local v33, "isLast":Z
    :goto_6
    if-eqz v26, :cond_1a

    .line 395
    move-object/from16 v0, v26

    iget-object v0, v0, Lc8/ob;->mHorizontalNextWidget:Lc8/ob;

    move-object/from16 v38, v0

    .line 396
    .restart local v38    # "next":Lc8/ob;
    if-nez v38, :cond_8

    .line 397
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v5, 0x1

    aget-object v36, v4, v5

    .line 398
    const/16 v33, 0x1

    .line 400
    :cond_8
    if-eqz v31, :cond_d

    .line 401
    move-object/from16 v0, v26

    iget-object v0, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v16, v0

    .line 402
    .local v16, "left":Lc8/ib;
    invoke-virtual/range {v16 .. v16}, Lc8/ib;->getMargin()I

    move-result v37

    .line 403
    .local v37, "margin":I
    if-eqz v43, :cond_9

    .line 404
    move-object/from16 v0, v43

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v42

    .line 405
    .local v42, "previousMargin":I
    add-int v37, v37, v42

    .line 407
    .end local v42    # "previousMargin":I
    :cond_9
    const/16 v44, 0x1

    .line 408
    .local v44, "strength":I
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_a

    .line 409
    const/16 v44, 0x3

    .line 411
    :cond_a
    move-object/from16 v0, v16

    iget-object v4, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v16

    iget-object v5, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    move/from16 v1, v37

    move/from16 v2, v44

    invoke-virtual {v0, v4, v5, v1, v2}, Lc8/bb;->addGreaterThan(Lc8/gb;Lc8/gb;II)V

    .line 412
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_b

    .line 413
    move-object/from16 v0, v26

    iget-object v0, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v18, v0

    .line 414
    .local v18, "right":Lc8/ib;
    move-object/from16 v0, v26

    iget v4, v0, Lc8/ob;->mMatchConstraintDefaultWidth:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 415
    move-object/from16 v0, v26

    iget v4, v0, Lc8/ob;->mMatchConstraintMinWidth:I

    invoke-virtual/range {v26 .. v26}, Lc8/ob;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 416
    .local v27, "dimension":I
    move-object/from16 v0, v18

    iget-object v4, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v16

    iget-object v5, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v8, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v4, v5, v1, v8}, Lc8/bb;->addEquality(Lc8/gb;Lc8/gb;II)Lc8/Y;

    .line 468
    .end local v16    # "left":Lc8/ib;
    .end local v18    # "right":Lc8/ib;
    .end local v27    # "dimension":I
    .end local v37    # "margin":I
    .end local v44    # "strength":I
    :cond_b
    :goto_7
    move-object/from16 v43, v26

    .line 469
    if-eqz v33, :cond_19

    const/16 v26, 0x0

    :goto_8
    goto :goto_6

    .line 419
    .restart local v16    # "left":Lc8/ib;
    .restart local v18    # "right":Lc8/ib;
    .restart local v37    # "margin":I
    .restart local v44    # "strength":I
    :cond_c
    move-object/from16 v0, v16

    iget-object v4, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v16

    iget-object v5, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v16

    iget v8, v0, Lc8/ib;->mMargin:I

    const/4 v10, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v8, v10}, Lc8/bb;->addGreaterThan(Lc8/gb;Lc8/gb;II)V

    .line 421
    move-object/from16 v0, v18

    iget-object v4, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v16

    iget-object v5, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v26

    iget v8, v0, Lc8/ob;->mMatchConstraintMinWidth:I

    const/4 v10, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v8, v10}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    goto :goto_7

    .line 426
    .end local v16    # "left":Lc8/ib;
    .end local v18    # "right":Lc8/ib;
    .end local v37    # "margin":I
    .end local v44    # "strength":I
    :cond_d
    if-nez v32, :cond_f

    if-eqz v33, :cond_f

    if-eqz v43, :cond_f

    .line 427
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-nez v4, :cond_e

    .line 428
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    invoke-virtual/range {v26 .. v26}, Lc8/ob;->getDrawRight()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lc8/bb;->addEquality(Lc8/gb;I)V

    goto :goto_7

    .line 430
    :cond_e
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v37

    .line 431
    .restart local v37    # "margin":I
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v36

    iget-object v5, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move/from16 v0, v37

    neg-int v8, v0

    const/4 v10, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v8, v10}, Lc8/bb;->addEquality(Lc8/gb;Lc8/gb;II)Lc8/Y;

    goto :goto_7

    .line 433
    .end local v37    # "margin":I
    :cond_f
    if-nez v32, :cond_11

    if-nez v33, :cond_11

    if-nez v43, :cond_11

    .line 434
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-nez v4, :cond_10

    .line 435
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    invoke-virtual/range {v26 .. v26}, Lc8/ob;->getDrawX()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lc8/bb;->addEquality(Lc8/gb;I)V

    goto/16 :goto_7

    .line 437
    :cond_10
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v37

    .line 438
    .restart local v37    # "margin":I
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v28

    iget-object v5, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v8, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v4, v5, v1, v8}, Lc8/bb;->addEquality(Lc8/gb;Lc8/gb;II)Lc8/Y;

    goto/16 :goto_7

    .line 442
    .end local v37    # "margin":I
    :cond_11
    move-object/from16 v0, v26

    iget-object v0, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v16, v0

    .line 443
    .restart local v16    # "left":Lc8/ib;
    move-object/from16 v0, v26

    iget-object v0, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v18, v0

    .line 444
    .restart local v18    # "right":Lc8/ib;
    invoke-virtual/range {v16 .. v16}, Lc8/ib;->getMargin()I

    move-result v7

    .line 445
    .local v7, "leftMargin":I
    invoke-virtual/range {v18 .. v18}, Lc8/ib;->getMargin()I

    move-result v11

    .line 446
    .local v11, "rightMargin":I
    move-object/from16 v0, v16

    iget-object v4, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v16

    iget-object v5, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v7, v8}, Lc8/bb;->addGreaterThan(Lc8/gb;Lc8/gb;II)V

    .line 447
    move-object/from16 v0, v18

    iget-object v4, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v18

    iget-object v5, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    neg-int v8, v11

    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v8, v10}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    .line 448
    move-object/from16 v0, v16

    iget-object v4, v0, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_15

    move-object/from16 v0, v16

    iget-object v4, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 449
    .local v6, "leftTarget":Lc8/gb;
    :goto_9
    if-nez v43, :cond_12

    .line 451
    move-object/from16 v0, v28

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_16

    move-object/from16 v0, v28

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 453
    :cond_12
    :goto_a
    if-nez v38, :cond_13

    .line 454
    move-object/from16 v0, v36

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_17

    move-object/from16 v0, v36

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v0, v4, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v38, v0

    .line 456
    :cond_13
    :goto_b
    if-eqz v38, :cond_b

    .line 457
    move-object/from16 v0, v38

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v9, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 458
    .local v9, "rightTarget":Lc8/gb;
    if-eqz v33, :cond_14

    .line 459
    move-object/from16 v0, v36

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_18

    move-object/from16 v0, v36

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v9, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 461
    :cond_14
    :goto_c
    if-eqz v6, :cond_b

    if-eqz v9, :cond_b

    .line 462
    move-object/from16 v0, v16

    iget-object v5, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/high16 v8, 0x3f000000    # 0.5f

    move-object/from16 v0, v18

    iget-object v10, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v12, 0x4

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v12}, Lc8/bb;->addCentering(Lc8/gb;Lc8/gb;IFLc8/gb;Lc8/gb;II)V

    goto/16 :goto_7

    .line 448
    .end local v6    # "leftTarget":Lc8/gb;
    .end local v9    # "rightTarget":Lc8/gb;
    :cond_15
    const/4 v6, 0x0

    goto :goto_9

    .line 451
    .restart local v6    # "leftTarget":Lc8/gb;
    :cond_16
    const/4 v6, 0x0

    goto :goto_a

    .line 454
    :cond_17
    const/16 v38, 0x0

    goto :goto_b

    .line 459
    .restart local v9    # "rightTarget":Lc8/gb;
    :cond_18
    const/4 v9, 0x0

    goto :goto_c

    .end local v6    # "leftTarget":Lc8/gb;
    .end local v7    # "leftMargin":I
    .end local v9    # "rightTarget":Lc8/gb;
    .end local v11    # "rightMargin":I
    .end local v16    # "left":Lc8/ib;
    .end local v18    # "right":Lc8/ib;
    :cond_19
    move-object/from16 v26, v38

    .line 469
    goto/16 :goto_8

    .line 471
    .end local v38    # "next":Lc8/ob;
    :cond_1a
    if-eqz v31, :cond_2

    .line 472
    move-object/from16 v0, v29

    iget-object v0, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v16, v0

    .line 473
    .restart local v16    # "left":Lc8/ib;
    move-object/from16 v0, v36

    iget-object v0, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v18, v0

    .line 474
    .restart local v18    # "right":Lc8/ib;
    invoke-virtual/range {v16 .. v16}, Lc8/ib;->getMargin()I

    move-result v7

    .line 475
    .restart local v7    # "leftMargin":I
    invoke-virtual/range {v18 .. v18}, Lc8/ib;->getMargin()I

    move-result v11

    .line 476
    .restart local v11    # "rightMargin":I
    move-object/from16 v0, v28

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_1b

    move-object/from16 v0, v28

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 477
    .restart local v6    # "leftTarget":Lc8/gb;
    :goto_d
    move-object/from16 v0, v36

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_1c

    move-object/from16 v0, v36

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v9, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 478
    .restart local v9    # "rightTarget":Lc8/gb;
    :goto_e
    if-eqz v6, :cond_2

    if-eqz v9, :cond_2

    .line 479
    move-object/from16 v0, v18

    iget-object v4, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    neg-int v5, v11

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v5, v8}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    .line 480
    move-object/from16 v0, v16

    iget-object v5, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v28

    iget v8, v0, Lc8/ob;->mHorizontalBiasPercent:F

    move-object/from16 v0, v18

    iget-object v10, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v12, 0x4

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v12}, Lc8/bb;->addCentering(Lc8/gb;Lc8/gb;IFLc8/gb;Lc8/gb;II)V

    goto/16 :goto_5

    .line 476
    .end local v6    # "leftTarget":Lc8/gb;
    .end local v9    # "rightTarget":Lc8/gb;
    :cond_1b
    const/4 v6, 0x0

    goto :goto_d

    .line 477
    .restart local v6    # "leftTarget":Lc8/gb;
    :cond_1c
    const/4 v9, 0x0

    goto :goto_e

    .line 485
    .end local v6    # "leftTarget":Lc8/gb;
    .end local v7    # "leftMargin":I
    .end local v11    # "rightMargin":I
    .end local v16    # "left":Lc8/ib;
    .end local v18    # "right":Lc8/ib;
    .end local v29    # "firstVisibleWidget":Lc8/ob;
    .end local v33    # "isLast":Z
    .end local v36    # "lastWidget":Lc8/ob;
    .end local v43    # "previousVisibleWidget":Lc8/ob;
    :cond_1d
    const/16 v41, 0x0

    .line 486
    .local v41, "previous":Lc8/ob;
    const/4 v14, 0x0

    .line 487
    .local v14, "totalWeights":F
    :goto_f
    if-eqz v26, :cond_24

    .line 488
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_22

    .line 489
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v37

    .line 490
    .restart local v37    # "margin":I
    if-eqz v41, :cond_1e

    .line 491
    move-object/from16 v0, v41

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v4

    add-int v37, v37, v4

    .line 493
    :cond_1e
    const/16 v44, 0x3

    .line 494
    .restart local v44    # "strength":I
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v4, v4, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_1f

    .line 495
    const/16 v44, 0x2

    .line 497
    :cond_1f
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    move/from16 v1, v37

    move/from16 v2, v44

    invoke-virtual {v0, v4, v5, v1, v2}, Lc8/bb;->addGreaterThan(Lc8/gb;Lc8/gb;II)V

    .line 498
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v37

    .line 499
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v4, v4, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_20

    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v4, v4, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v0, v26

    if-ne v4, v0, :cond_20

    .line 500
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v4, v4, Lc8/ob;->mLeft:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v4

    add-int v37, v37, v4

    .line 502
    :cond_20
    const/16 v44, 0x3

    .line 503
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v4, v4, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_21

    .line 504
    const/16 v44, 0x2

    .line 506
    :cond_21
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move/from16 v0, v37

    neg-int v8, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v4, v5, v8, v1}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    .line 519
    .end local v44    # "strength":I
    :goto_10
    move-object/from16 v41, v26

    .line 520
    move-object/from16 v0, v26

    iget-object v0, v0, Lc8/ob;->mHorizontalNextWidget:Lc8/ob;

    move-object/from16 v26, v0

    goto/16 :goto_f

    .line 508
    .end local v37    # "margin":I
    :cond_22
    move-object/from16 v0, v26

    iget v4, v0, Lc8/ob;->mHorizontalWeight:F

    add-float/2addr v14, v4

    .line 509
    const/16 v37, 0x0

    .line 510
    .restart local v37    # "margin":I
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_23

    .line 511
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v37

    .line 512
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    move-object/from16 v0, v26

    if-eq v0, v4, :cond_23

    .line 513
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v4, v4, Lc8/ob;->mLeft:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v4

    add-int v37, v37, v4

    .line 516
    :cond_23
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v8, v10}, Lc8/bb;->addGreaterThan(Lc8/gb;Lc8/gb;II)V

    .line 517
    move-object/from16 v0, v26

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move/from16 v0, v37

    neg-int v8, v0

    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v8, v10}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    goto :goto_10

    .line 522
    .end local v37    # "margin":I
    :cond_24
    const/4 v4, 0x1

    move/from16 v0, v40

    if-ne v0, v4, :cond_29

    .line 523
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    const/4 v5, 0x0

    aget-object v45, v4, v5

    .line 524
    .local v45, "w":Lc8/ob;
    move-object/from16 v0, v45

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v7

    .line 525
    .restart local v7    # "leftMargin":I
    move-object/from16 v0, v45

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_25

    .line 526
    move-object/from16 v0, v45

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v4

    add-int/2addr v7, v4

    .line 528
    :cond_25
    move-object/from16 v0, v45

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v11

    .line 529
    .restart local v11    # "rightMargin":I
    move-object/from16 v0, v45

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_26

    .line 530
    move-object/from16 v0, v45

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v4

    add-int/2addr v11, v4

    .line 532
    :cond_26
    move-object/from16 v0, v46

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v9, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 533
    .restart local v9    # "rightTarget":Lc8/gb;
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    move-object/from16 v0, v45

    if-ne v0, v4, :cond_27

    .line 534
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v9, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 537
    :cond_27
    move-object/from16 v0, v45

    iget v4, v0, Lc8/ob;->mMatchConstraintDefaultWidth:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28

    .line 538
    move-object/from16 v0, v46

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v46

    iget-object v5, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v7, v8}, Lc8/bb;->addGreaterThan(Lc8/gb;Lc8/gb;II)V

    .line 539
    move-object/from16 v0, v46

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    neg-int v5, v11

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v5, v8}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    .line 540
    move-object/from16 v0, v46

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v46

    iget-object v5, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    invoke-virtual/range {v46 .. v46}, Lc8/ob;->getWidth()I

    move-result v8

    const/4 v10, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v8, v10}, Lc8/bb;->addEquality(Lc8/gb;Lc8/gb;II)Lc8/Y;

    goto/16 :goto_5

    .line 542
    :cond_28
    move-object/from16 v0, v45

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v45

    iget-object v5, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v7, v8}, Lc8/bb;->addEquality(Lc8/gb;Lc8/gb;II)Lc8/Y;

    .line 543
    move-object/from16 v0, v45

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    neg-int v5, v11

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v5, v8}, Lc8/bb;->addEquality(Lc8/gb;Lc8/gb;II)Lc8/Y;

    goto/16 :goto_5

    .line 546
    .end local v7    # "leftMargin":I
    .end local v9    # "rightTarget":Lc8/gb;
    .end local v11    # "rightMargin":I
    .end local v45    # "w":Lc8/ob;
    :cond_29
    const/16 v35, 0x0

    .local v35, "j":I
    :goto_11
    add-int/lit8 v4, v40, -0x1

    move/from16 v0, v35

    if-ge v0, v4, :cond_2

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    aget-object v25, v4, v35

    .line 548
    .local v25, "current":Lc8/ob;
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    add-int/lit8 v5, v35, 0x1

    aget-object v39, v4, v5

    .line 549
    .local v39, "nextWidget":Lc8/ob;
    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v0, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v16, v0

    .line 550
    .local v16, "left":Lc8/gb;
    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v0, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v18, v0

    .line 551
    .local v18, "right":Lc8/gb;
    move-object/from16 v0, v39

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v0, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v20, v0

    .line 552
    .local v20, "nextLeft":Lc8/gb;
    move-object/from16 v0, v39

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v0, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v22, v0

    .line 553
    .local v22, "nextRight":Lc8/gb;
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    move-object/from16 v0, v39

    if-ne v0, v4, :cond_2a

    .line 554
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lc8/ob;->mRight:Lc8/ib;

    iget-object v0, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v22, v0

    .line 556
    :cond_2a
    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v37

    .line 557
    .restart local v37    # "margin":I
    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_2b

    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v4, v4, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_2b

    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v4, v4, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v0, v25

    if-ne v4, v0, :cond_2b

    .line 559
    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v4, v4, Lc8/ob;->mRight:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v4

    add-int v37, v37, v4

    .line 561
    :cond_2b
    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v5, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v37

    invoke-virtual {v0, v1, v4, v2, v5}, Lc8/bb;->addGreaterThan(Lc8/gb;Lc8/gb;II)V

    .line 562
    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v37

    .line 563
    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_2c

    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/ob;->mHorizontalNextWidget:Lc8/ob;

    if-eqz v4, :cond_2c

    .line 564
    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/ob;->mHorizontalNextWidget:Lc8/ob;

    iget-object v4, v4, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_32

    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/ob;->mHorizontalNextWidget:Lc8/ob;

    iget-object v4, v4, Lc8/ob;->mLeft:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v4

    :goto_12
    add-int v37, v37, v4

    .line 566
    :cond_2c
    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    move/from16 v0, v37

    neg-int v5, v0

    const/4 v8, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4, v5, v8}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    .line 567
    add-int/lit8 v4, v35, 0x1

    add-int/lit8 v5, v40, -0x1

    if-ne v4, v5, :cond_30

    .line 569
    move-object/from16 v0, v39

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v37

    .line 570
    move-object/from16 v0, v39

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_2d

    move-object/from16 v0, v39

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v4, v4, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_2d

    move-object/from16 v0, v39

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v4, v4, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v0, v39

    if-ne v4, v0, :cond_2d

    .line 572
    move-object/from16 v0, v39

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v4, v4, Lc8/ob;->mRight:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v4

    add-int v37, v37, v4

    .line 574
    :cond_2d
    move-object/from16 v0, v39

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v5, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v37

    invoke-virtual {v0, v1, v4, v2, v5}, Lc8/bb;->addGreaterThan(Lc8/gb;Lc8/gb;II)V

    .line 575
    move-object/from16 v0, v39

    iget-object v0, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v24, v0

    .line 576
    .local v24, "anchor":Lc8/ib;
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    move-object/from16 v0, v39

    if-ne v0, v4, :cond_2e

    .line 577
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget-object v0, v4, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v24, v0

    .line 579
    :cond_2e
    invoke-virtual/range {v24 .. v24}, Lc8/ib;->getMargin()I

    move-result v37

    .line 580
    move-object/from16 v0, v24

    iget-object v4, v0, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_2f

    move-object/from16 v0, v24

    iget-object v4, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v4, v4, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v4, :cond_2f

    move-object/from16 v0, v24

    iget-object v4, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v4, v4, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v0, v39

    if-ne v4, v0, :cond_2f

    .line 582
    move-object/from16 v0, v24

    iget-object v4, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v4, v4, Lc8/ob;->mLeft:Lc8/ib;

    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v4

    add-int v37, v37, v4

    .line 584
    :cond_2f
    move-object/from16 v0, v24

    iget-object v4, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    move/from16 v0, v37

    neg-int v5, v0

    const/4 v8, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4, v5, v8}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    .line 587
    .end local v24    # "anchor":Lc8/ib;
    :cond_30
    move-object/from16 v0, v46

    iget v4, v0, Lc8/ob;->mMatchConstraintMaxWidth:I

    if-lez v4, :cond_31

    .line 588
    move-object/from16 v0, v46

    iget v4, v0, Lc8/ob;->mMatchConstraintMaxWidth:I

    const/4 v5, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    .line 591
    :cond_31
    invoke-virtual/range {p1 .. p1}, Lc8/bb;->createRow()Lc8/Y;

    move-result-object v12

    .line 592
    .local v12, "row":Lc8/Y;
    move-object/from16 v0, v25

    iget v13, v0, Lc8/ob;->mHorizontalWeight:F

    move-object/from16 v0, v39

    iget v15, v0, Lc8/ob;->mHorizontalWeight:F

    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    .line 594
    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v17

    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    .line 595
    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v19

    move-object/from16 v0, v39

    iget-object v4, v0, Lc8/ob;->mLeft:Lc8/ib;

    .line 596
    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v21

    move-object/from16 v0, v39

    iget-object v4, v0, Lc8/ob;->mRight:Lc8/ib;

    .line 597
    invoke-virtual {v4}, Lc8/ib;->getMargin()I

    move-result v23

    .line 592
    invoke-virtual/range {v12 .. v23}, Lc8/Y;->createRowEqualDimension(FFFLc8/gb;ILc8/gb;ILc8/gb;ILc8/gb;I)Lc8/Y;

    .line 598
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lc8/bb;->addConstraint(Lc8/Y;)V

    .line 546
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_11

    .line 564
    .end local v12    # "row":Lc8/Y;
    :cond_32
    const/4 v4, 0x0

    goto/16 :goto_12

    .line 604
    .end local v14    # "totalWeights":F
    .end local v16    # "left":Lc8/gb;
    .end local v18    # "right":Lc8/gb;
    .end local v20    # "nextLeft":Lc8/gb;
    .end local v22    # "nextRight":Lc8/gb;
    .end local v25    # "current":Lc8/ob;
    .end local v26    # "currentWidget":Lc8/ob;
    .end local v28    # "first":Lc8/ob;
    .end local v31    # "isChainPacked":Z
    .end local v32    # "isChainSpread":Z
    .end local v34    # "isWrapContent":Z
    .end local v35    # "j":I
    .end local v37    # "margin":I
    .end local v39    # "nextWidget":Lc8/ob;
    .end local v40    # "numMatchConstraints":I
    .end local v41    # "previous":Lc8/ob;
    .end local v46    # "widget":Lc8/ob;
    :cond_33
    return-void
.end method

.method private applyVerticalChain(Lc8/bb;)V
    .locals 51
    .param p1, "system"    # Lc8/bb;

    .prologue
    .line 613
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lc8/qb;->mVerticalChainsSize:I

    move/from16 v0, v31

    if-ge v0, v5, :cond_36

    .line 614
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/qb;->mVerticalChainsArray:[Lc8/ob;

    aget-object v29, v5, v31

    .line 615
    .local v29, "first":Lc8/ob;
    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/qb;->mVerticalChainsArray:[Lc8/ob;

    aget-object v8, v5, v31

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/qb;->flags:[Z

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lc8/qb;->countMatchConstraintsChainedWidgets(Lc8/bb;[Lc8/ob;Lc8/ob;I[Z)I

    move-result v41

    .line 617
    .local v41, "numMatchConstraints":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v6, 0x2

    aget-object v27, v5, v6

    .line 618
    .local v27, "currentWidget":Lc8/ob;
    if-eqz v27, :cond_2

    .line 622
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/qb;->flags:[Z

    const/4 v6, 0x1

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_0

    .line 623
    invoke-virtual/range {v29 .. v29}, Lc8/ob;->getDrawY()I

    move-result v50

    .line 624
    .local v50, "y":I
    :goto_1
    if-eqz v27, :cond_2

    .line 625
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    move/from16 v1, v50

    invoke-virtual {v0, v5, v1}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 626
    move-object/from16 v0, v27

    iget-object v0, v0, Lc8/ob;->mVerticalNextWidget:Lc8/ob;

    move-object/from16 v39, v0

    .line 627
    .local v39, "next":Lc8/ob;
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v5

    invoke-virtual/range {v27 .. v27}, Lc8/ob;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, v27

    iget-object v6, v0, Lc8/ob;->mBottom:Lc8/ib;

    invoke-virtual {v6}, Lc8/ib;->getMargin()I

    move-result v6

    add-int/2addr v5, v6

    add-int v50, v50, v5

    .line 628
    move-object/from16 v27, v39

    .line 629
    goto :goto_1

    .line 632
    .end local v39    # "next":Lc8/ob;
    .end local v50    # "y":I
    :cond_0
    move-object/from16 v0, v29

    iget v5, v0, Lc8/ob;->mVerticalChainStyle:I

    if-nez v5, :cond_3

    const/16 v33, 0x1

    .line 633
    .local v33, "isChainSpread":Z
    :goto_2
    move-object/from16 v0, v29

    iget v5, v0, Lc8/ob;->mVerticalChainStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    const/16 v32, 0x1

    .line 634
    .local v32, "isChainPacked":Z
    :goto_3
    move-object/from16 v49, v29

    .line 635
    .local v49, "widget":Lc8/ob;
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/qb;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_5

    const/16 v35, 0x1

    .line 636
    .local v35, "isWrapContent":Z
    :goto_4
    move-object/from16 v0, p0

    iget v5, v0, Lc8/qb;->mOptimizationLevel:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    move-object/from16 v0, p0

    iget v5, v0, Lc8/qb;->mOptimizationLevel:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_6

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/qb;->flags:[Z

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_6

    move-object/from16 v0, v49

    iget-boolean v5, v0, Lc8/ob;->mVerticalChainFixedPosition:Z

    if-eqz v5, :cond_6

    if-nez v32, :cond_6

    if-nez v35, :cond_6

    move-object/from16 v0, v29

    iget v5, v0, Lc8/ob;->mVerticalChainStyle:I

    if-nez v5, :cond_6

    .line 640
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v41

    move-object/from16 v3, v49

    invoke-static {v0, v1, v2, v3}, Lc8/tb;->applyDirectResolutionVerticalChain(Lc8/qb;Lc8/bb;ILc8/ob;)V

    .line 613
    .end local v32    # "isChainPacked":Z
    .end local v33    # "isChainSpread":Z
    .end local v35    # "isWrapContent":Z
    .end local v49    # "widget":Lc8/ob;
    :cond_2
    :goto_5
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_0

    .line 632
    :cond_3
    const/16 v33, 0x0

    goto :goto_2

    .line 633
    .restart local v33    # "isChainSpread":Z
    :cond_4
    const/16 v32, 0x0

    goto :goto_3

    .line 635
    .restart local v32    # "isChainPacked":Z
    .restart local v49    # "widget":Lc8/ob;
    :cond_5
    const/16 v35, 0x0

    goto :goto_4

    .line 642
    .restart local v35    # "isWrapContent":Z
    :cond_6
    if-eqz v41, :cond_7

    if-eqz v32, :cond_20

    .line 643
    :cond_7
    const/16 v44, 0x0

    .line 644
    .local v44, "previousVisibleWidget":Lc8/ob;
    const/16 v37, 0x0

    .line 645
    .local v37, "lastWidget":Lc8/ob;
    move-object/from16 v30, v27

    .line 648
    .local v30, "firstVisibleWidget":Lc8/ob;
    const/16 v34, 0x0

    .line 650
    .local v34, "isLast":Z
    :goto_6
    if-eqz v27, :cond_1d

    .line 651
    move-object/from16 v0, v27

    iget-object v0, v0, Lc8/ob;->mVerticalNextWidget:Lc8/ob;

    move-object/from16 v39, v0

    .line 652
    .restart local v39    # "next":Lc8/ob;
    if-nez v39, :cond_8

    .line 653
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v6, 0x1

    aget-object v37, v5, v6

    .line 654
    const/16 v34, 0x1

    .line 656
    :cond_8
    if-eqz v32, :cond_10

    .line 657
    move-object/from16 v0, v27

    iget-object v0, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v17, v0

    .line 658
    .local v17, "top":Lc8/ib;
    invoke-virtual/range {v17 .. v17}, Lc8/ib;->getMargin()I

    move-result v38

    .line 659
    .local v38, "margin":I
    if-eqz v44, :cond_9

    .line 660
    move-object/from16 v0, v44

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v43

    .line 661
    .local v43, "previousMargin":I
    add-int v38, v38, v43

    .line 663
    .end local v43    # "previousMargin":I
    :cond_9
    const/16 v46, 0x1

    .line 664
    .local v46, "strength":I
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_a

    .line 665
    const/16 v46, 0x3

    .line 667
    :cond_a
    const/16 v45, 0x0

    .line 668
    .local v45, "source":Lc8/gb;
    const/16 v47, 0x0

    .line 669
    .local v47, "target":Lc8/gb;
    move-object/from16 v0, v17

    iget-object v5, v0, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_e

    .line 670
    move-object/from16 v0, v17

    iget-object v0, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v45, v0

    .line 671
    move-object/from16 v0, v17

    iget-object v5, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v0, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v47, v0

    .line 677
    :cond_b
    :goto_7
    if-eqz v45, :cond_c

    if-eqz v47, :cond_c

    .line 678
    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    move/from16 v3, v38

    move/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/bb;->addGreaterThan(Lc8/gb;Lc8/gb;II)V

    .line 680
    :cond_c
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_d

    .line 681
    move-object/from16 v0, v27

    iget-object v0, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v19, v0

    .line 682
    .local v19, "bottom":Lc8/ib;
    move-object/from16 v0, v27

    iget v5, v0, Lc8/ob;->mMatchConstraintDefaultHeight:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f

    .line 683
    move-object/from16 v0, v27

    iget v5, v0, Lc8/ob;->mMatchConstraintMinHeight:I

    invoke-virtual/range {v27 .. v27}, Lc8/ob;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 684
    .local v28, "dimension":I
    move-object/from16 v0, v19

    iget-object v5, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v17

    iget-object v6, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v9, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v5, v6, v1, v9}, Lc8/bb;->addEquality(Lc8/gb;Lc8/gb;II)Lc8/Y;

    .line 736
    .end local v17    # "top":Lc8/ib;
    .end local v19    # "bottom":Lc8/ib;
    .end local v28    # "dimension":I
    .end local v38    # "margin":I
    .end local v45    # "source":Lc8/gb;
    .end local v46    # "strength":I
    .end local v47    # "target":Lc8/gb;
    :cond_d
    :goto_8
    move-object/from16 v44, v27

    .line 737
    if-eqz v34, :cond_1c

    const/16 v27, 0x0

    :goto_9
    goto/16 :goto_6

    .line 672
    .restart local v17    # "top":Lc8/ib;
    .restart local v38    # "margin":I
    .restart local v45    # "source":Lc8/gb;
    .restart local v46    # "strength":I
    .restart local v47    # "target":Lc8/gb;
    :cond_e
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_b

    .line 673
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v0, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v45, v0

    .line 674
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v0, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v47, v0

    .line 675
    invoke-virtual/range {v17 .. v17}, Lc8/ib;->getMargin()I

    move-result v5

    sub-int v38, v38, v5

    goto :goto_7

    .line 687
    .restart local v19    # "bottom":Lc8/ib;
    :cond_f
    move-object/from16 v0, v17

    iget-object v5, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v17

    iget-object v6, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v17

    iget v9, v0, Lc8/ib;->mMargin:I

    const/4 v11, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v9, v11}, Lc8/bb;->addGreaterThan(Lc8/gb;Lc8/gb;II)V

    .line 689
    move-object/from16 v0, v19

    iget-object v5, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v17

    iget-object v6, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v27

    iget v9, v0, Lc8/ob;->mMatchConstraintMinHeight:I

    const/4 v11, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v9, v11}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    goto :goto_8

    .line 694
    .end local v17    # "top":Lc8/ib;
    .end local v19    # "bottom":Lc8/ib;
    .end local v38    # "margin":I
    .end local v45    # "source":Lc8/gb;
    .end local v46    # "strength":I
    .end local v47    # "target":Lc8/gb;
    :cond_10
    if-nez v33, :cond_12

    if-eqz v34, :cond_12

    if-eqz v44, :cond_12

    .line 695
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-nez v5, :cond_11

    .line 696
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    invoke-virtual/range {v27 .. v27}, Lc8/ob;->getDrawBottom()I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lc8/bb;->addEquality(Lc8/gb;I)V

    goto :goto_8

    .line 698
    :cond_11
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v38

    .line 699
    .restart local v38    # "margin":I
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v37

    iget-object v6, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mSolverVariable:Lc8/gb;

    move/from16 v0, v38

    neg-int v9, v0

    const/4 v11, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v9, v11}, Lc8/bb;->addEquality(Lc8/gb;Lc8/gb;II)Lc8/Y;

    goto/16 :goto_8

    .line 701
    .end local v38    # "margin":I
    :cond_12
    if-nez v33, :cond_14

    if-nez v34, :cond_14

    if-nez v44, :cond_14

    .line 702
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-nez v5, :cond_13

    .line 703
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    invoke-virtual/range {v27 .. v27}, Lc8/ob;->getDrawY()I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lc8/bb;->addEquality(Lc8/gb;I)V

    goto/16 :goto_8

    .line 705
    :cond_13
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v38

    .line 706
    .restart local v38    # "margin":I
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v29

    iget-object v6, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v9, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v5, v6, v1, v9}, Lc8/bb;->addEquality(Lc8/gb;Lc8/gb;II)Lc8/Y;

    goto/16 :goto_8

    .line 710
    .end local v38    # "margin":I
    :cond_14
    move-object/from16 v0, v27

    iget-object v0, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v17, v0

    .line 711
    .restart local v17    # "top":Lc8/ib;
    move-object/from16 v0, v27

    iget-object v0, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v19, v0

    .line 712
    .restart local v19    # "bottom":Lc8/ib;
    invoke-virtual/range {v17 .. v17}, Lc8/ib;->getMargin()I

    move-result v8

    .line 713
    .local v8, "topMargin":I
    invoke-virtual/range {v19 .. v19}, Lc8/ib;->getMargin()I

    move-result v12

    .line 714
    .local v12, "bottomMargin":I
    move-object/from16 v0, v17

    iget-object v5, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v17

    iget-object v6, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v8, v9}, Lc8/bb;->addGreaterThan(Lc8/gb;Lc8/gb;II)V

    .line 715
    move-object/from16 v0, v19

    iget-object v5, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v19

    iget-object v6, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mSolverVariable:Lc8/gb;

    neg-int v9, v12

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v9, v11}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    .line 716
    move-object/from16 v0, v17

    iget-object v5, v0, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_18

    move-object/from16 v0, v17

    iget-object v5, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 717
    .local v7, "topTarget":Lc8/gb;
    :goto_a
    if-nez v44, :cond_15

    .line 719
    move-object/from16 v0, v29

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_19

    move-object/from16 v0, v29

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 721
    :cond_15
    :goto_b
    if-nez v39, :cond_16

    .line 722
    move-object/from16 v0, v37

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_1a

    move-object/from16 v0, v37

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v0, v5, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v39, v0

    .line 724
    :cond_16
    :goto_c
    if-eqz v39, :cond_d

    .line 725
    move-object/from16 v0, v39

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v10, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 726
    .local v10, "bottomTarget":Lc8/gb;
    if-eqz v34, :cond_17

    .line 727
    move-object/from16 v0, v37

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_1b

    move-object/from16 v0, v37

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v10, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 729
    :cond_17
    :goto_d
    if-eqz v7, :cond_d

    if-eqz v10, :cond_d

    .line 730
    move-object/from16 v0, v17

    iget-object v6, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/high16 v9, 0x3f000000    # 0.5f

    move-object/from16 v0, v19

    iget-object v11, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v13, 0x4

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v13}, Lc8/bb;->addCentering(Lc8/gb;Lc8/gb;IFLc8/gb;Lc8/gb;II)V

    goto/16 :goto_8

    .line 716
    .end local v7    # "topTarget":Lc8/gb;
    .end local v10    # "bottomTarget":Lc8/gb;
    :cond_18
    const/4 v7, 0x0

    goto :goto_a

    .line 719
    .restart local v7    # "topTarget":Lc8/gb;
    :cond_19
    const/4 v7, 0x0

    goto :goto_b

    .line 722
    :cond_1a
    const/16 v39, 0x0

    goto :goto_c

    .line 727
    .restart local v10    # "bottomTarget":Lc8/gb;
    :cond_1b
    const/4 v10, 0x0

    goto :goto_d

    .end local v7    # "topTarget":Lc8/gb;
    .end local v8    # "topMargin":I
    .end local v10    # "bottomTarget":Lc8/gb;
    .end local v12    # "bottomMargin":I
    .end local v17    # "top":Lc8/ib;
    .end local v19    # "bottom":Lc8/ib;
    :cond_1c
    move-object/from16 v27, v39

    .line 737
    goto/16 :goto_9

    .line 739
    .end local v39    # "next":Lc8/ob;
    :cond_1d
    if-eqz v32, :cond_2

    .line 740
    move-object/from16 v0, v30

    iget-object v0, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v17, v0

    .line 741
    .restart local v17    # "top":Lc8/ib;
    move-object/from16 v0, v37

    iget-object v0, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v19, v0

    .line 742
    .restart local v19    # "bottom":Lc8/ib;
    invoke-virtual/range {v17 .. v17}, Lc8/ib;->getMargin()I

    move-result v8

    .line 743
    .restart local v8    # "topMargin":I
    invoke-virtual/range {v19 .. v19}, Lc8/ib;->getMargin()I

    move-result v12

    .line 744
    .restart local v12    # "bottomMargin":I
    move-object/from16 v0, v29

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_1e

    move-object/from16 v0, v29

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 745
    .restart local v7    # "topTarget":Lc8/gb;
    :goto_e
    move-object/from16 v0, v37

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_1f

    move-object/from16 v0, v37

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v10, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 746
    .restart local v10    # "bottomTarget":Lc8/gb;
    :goto_f
    if-eqz v7, :cond_2

    if-eqz v10, :cond_2

    .line 747
    move-object/from16 v0, v19

    iget-object v5, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    neg-int v6, v12

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v6, v9}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    .line 748
    move-object/from16 v0, v17

    iget-object v6, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v29

    iget v9, v0, Lc8/ob;->mVerticalBiasPercent:F

    move-object/from16 v0, v19

    iget-object v11, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v13, 0x4

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v13}, Lc8/bb;->addCentering(Lc8/gb;Lc8/gb;IFLc8/gb;Lc8/gb;II)V

    goto/16 :goto_5

    .line 744
    .end local v7    # "topTarget":Lc8/gb;
    .end local v10    # "bottomTarget":Lc8/gb;
    :cond_1e
    const/4 v7, 0x0

    goto :goto_e

    .line 745
    .restart local v7    # "topTarget":Lc8/gb;
    :cond_1f
    const/4 v10, 0x0

    goto :goto_f

    .line 753
    .end local v7    # "topTarget":Lc8/gb;
    .end local v8    # "topMargin":I
    .end local v12    # "bottomMargin":I
    .end local v17    # "top":Lc8/ib;
    .end local v19    # "bottom":Lc8/ib;
    .end local v30    # "firstVisibleWidget":Lc8/ob;
    .end local v34    # "isLast":Z
    .end local v37    # "lastWidget":Lc8/ob;
    .end local v44    # "previousVisibleWidget":Lc8/ob;
    :cond_20
    const/16 v42, 0x0

    .line 754
    .local v42, "previous":Lc8/ob;
    const/4 v15, 0x0

    .line 755
    .local v15, "totalWeights":F
    :goto_10
    if-eqz v27, :cond_27

    .line 756
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v6, :cond_25

    .line 757
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v38

    .line 758
    .restart local v38    # "margin":I
    if-eqz v42, :cond_21

    .line 759
    move-object/from16 v0, v42

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v5

    add-int v38, v38, v5

    .line 761
    :cond_21
    const/16 v46, 0x3

    .line 762
    .restart local v46    # "strength":I
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v5, v5, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_22

    .line 763
    const/16 v46, 0x2

    .line 765
    :cond_22
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v27

    iget-object v6, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    move/from16 v1, v38

    move/from16 v2, v46

    invoke-virtual {v0, v5, v6, v1, v2}, Lc8/bb;->addGreaterThan(Lc8/gb;Lc8/gb;II)V

    .line 766
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v38

    .line 767
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v5, v5, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_23

    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v5, v5, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_23

    .line 768
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v5, v5, Lc8/ob;->mTop:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v5

    add-int v38, v38, v5

    .line 770
    :cond_23
    const/16 v46, 0x3

    .line 771
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v5, v5, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_24

    .line 772
    const/16 v46, 0x2

    .line 774
    :cond_24
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v27

    iget-object v6, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mSolverVariable:Lc8/gb;

    move/from16 v0, v38

    neg-int v9, v0

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-virtual {v0, v5, v6, v9, v1}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    .line 787
    .end local v46    # "strength":I
    :goto_11
    move-object/from16 v42, v27

    .line 788
    move-object/from16 v0, v27

    iget-object v0, v0, Lc8/ob;->mVerticalNextWidget:Lc8/ob;

    move-object/from16 v27, v0

    goto/16 :goto_10

    .line 776
    .end local v38    # "margin":I
    :cond_25
    move-object/from16 v0, v27

    iget v5, v0, Lc8/ob;->mVerticalWeight:F

    add-float/2addr v15, v5

    .line 777
    const/16 v38, 0x0

    .line 778
    .restart local v38    # "margin":I
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_26

    .line 779
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v38

    .line 780
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    move-object/from16 v0, v27

    if-eq v0, v5, :cond_26

    .line 781
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v5, v5, Lc8/ob;->mTop:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v5

    add-int v38, v38, v5

    .line 784
    :cond_26
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v27

    iget-object v6, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v9, v11}, Lc8/bb;->addGreaterThan(Lc8/gb;Lc8/gb;II)V

    .line 785
    move-object/from16 v0, v27

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v27

    iget-object v6, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mSolverVariable:Lc8/gb;

    move/from16 v0, v38

    neg-int v9, v0

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v9, v11}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    goto :goto_11

    .line 790
    .end local v38    # "margin":I
    :cond_27
    const/4 v5, 0x1

    move/from16 v0, v41

    if-ne v0, v5, :cond_2c

    .line 791
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    const/4 v6, 0x0

    aget-object v48, v5, v6

    .line 792
    .local v48, "w":Lc8/ob;
    move-object/from16 v0, v48

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v8

    .line 793
    .restart local v8    # "topMargin":I
    move-object/from16 v0, v48

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_28

    .line 794
    move-object/from16 v0, v48

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v5

    add-int/2addr v8, v5

    .line 796
    :cond_28
    move-object/from16 v0, v48

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v12

    .line 797
    .restart local v12    # "bottomMargin":I
    move-object/from16 v0, v48

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_29

    .line 798
    move-object/from16 v0, v48

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v5

    add-int/2addr v12, v5

    .line 800
    :cond_29
    move-object/from16 v0, v49

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v10, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 801
    .restart local v10    # "bottomTarget":Lc8/gb;
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    move-object/from16 v0, v48

    if-ne v0, v5, :cond_2a

    .line 802
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v10, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 805
    :cond_2a
    move-object/from16 v0, v48

    iget v5, v0, Lc8/ob;->mMatchConstraintDefaultHeight:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2b

    .line 806
    move-object/from16 v0, v49

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v49

    iget-object v6, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v8, v9}, Lc8/bb;->addGreaterThan(Lc8/gb;Lc8/gb;II)V

    .line 807
    move-object/from16 v0, v49

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    neg-int v6, v12

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v6, v9}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    .line 808
    move-object/from16 v0, v49

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v49

    iget-object v6, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mSolverVariable:Lc8/gb;

    invoke-virtual/range {v49 .. v49}, Lc8/ob;->getHeight()I

    move-result v9

    const/4 v11, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v9, v11}, Lc8/bb;->addEquality(Lc8/gb;Lc8/gb;II)Lc8/Y;

    goto/16 :goto_5

    .line 810
    :cond_2b
    move-object/from16 v0, v48

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, v48

    iget-object v6, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v8, v9}, Lc8/bb;->addEquality(Lc8/gb;Lc8/gb;II)Lc8/Y;

    .line 811
    move-object/from16 v0, v48

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    neg-int v6, v12

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v6, v9}, Lc8/bb;->addEquality(Lc8/gb;Lc8/gb;II)Lc8/Y;

    goto/16 :goto_5

    .line 814
    .end local v8    # "topMargin":I
    .end local v10    # "bottomTarget":Lc8/gb;
    .end local v12    # "bottomMargin":I
    .end local v48    # "w":Lc8/ob;
    :cond_2c
    const/16 v36, 0x0

    .local v36, "j":I
    :goto_12
    add-int/lit8 v5, v41, -0x1

    move/from16 v0, v36

    if-ge v0, v5, :cond_2

    .line 815
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    aget-object v26, v5, v36

    .line 816
    .local v26, "current":Lc8/ob;
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    add-int/lit8 v6, v36, 0x1

    aget-object v40, v5, v6

    .line 817
    .local v40, "nextWidget":Lc8/ob;
    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v0, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v17, v0

    .line 818
    .local v17, "top":Lc8/gb;
    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v0, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v19, v0

    .line 819
    .local v19, "bottom":Lc8/gb;
    move-object/from16 v0, v40

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v0, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v21, v0

    .line 820
    .local v21, "nextTop":Lc8/gb;
    move-object/from16 v0, v40

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v0, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v23, v0

    .line 821
    .local v23, "nextBottom":Lc8/gb;
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    move-object/from16 v0, v40

    if-ne v0, v5, :cond_2d

    .line 822
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v0, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v23, v0

    .line 824
    :cond_2d
    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v38

    .line 825
    .restart local v38    # "margin":I
    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_2e

    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v5, v5, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_2e

    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v5, v5, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v0, v26

    if-ne v5, v0, :cond_2e

    .line 827
    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v5, v5, Lc8/ob;->mBottom:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v5

    add-int v38, v38, v5

    .line 829
    :cond_2e
    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v6, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v38

    invoke-virtual {v0, v1, v5, v2, v6}, Lc8/bb;->addGreaterThan(Lc8/gb;Lc8/gb;II)V

    .line 830
    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v38

    .line 831
    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_2f

    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mVerticalNextWidget:Lc8/ob;

    if-eqz v5, :cond_2f

    .line 832
    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mVerticalNextWidget:Lc8/ob;

    iget-object v5, v5, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_35

    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mVerticalNextWidget:Lc8/ob;

    iget-object v5, v5, Lc8/ob;->mTop:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v5

    :goto_13
    add-int v38, v38, v5

    .line 834
    :cond_2f
    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move/from16 v0, v38

    neg-int v6, v0

    const/4 v9, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5, v6, v9}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    .line 835
    add-int/lit8 v5, v36, 0x1

    add-int/lit8 v6, v41, -0x1

    if-ne v5, v6, :cond_33

    .line 837
    move-object/from16 v0, v40

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v38

    .line 838
    move-object/from16 v0, v40

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_30

    move-object/from16 v0, v40

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v5, v5, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_30

    move-object/from16 v0, v40

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v5, v5, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v0, v40

    if-ne v5, v0, :cond_30

    .line 840
    move-object/from16 v0, v40

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v5, v5, Lc8/ob;->mBottom:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v5

    add-int v38, v38, v5

    .line 842
    :cond_30
    move-object/from16 v0, v40

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v6, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v38

    invoke-virtual {v0, v1, v5, v2, v6}, Lc8/bb;->addGreaterThan(Lc8/gb;Lc8/gb;II)V

    .line 843
    move-object/from16 v0, v40

    iget-object v0, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v25, v0

    .line 844
    .local v25, "anchor":Lc8/ib;
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    move-object/from16 v0, v40

    if-ne v0, v5, :cond_31

    .line 845
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/qb;->mChainEnds:[Lc8/ob;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget-object v0, v5, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v25, v0

    .line 847
    :cond_31
    invoke-virtual/range {v25 .. v25}, Lc8/ib;->getMargin()I

    move-result v38

    .line 848
    move-object/from16 v0, v25

    iget-object v5, v0, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_32

    move-object/from16 v0, v25

    iget-object v5, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v5, v5, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v5, :cond_32

    move-object/from16 v0, v25

    iget-object v5, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v5, v5, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v0, v40

    if-ne v5, v0, :cond_32

    .line 850
    move-object/from16 v0, v25

    iget-object v5, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v5, v5, Lc8/ob;->mTop:Lc8/ib;

    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v5

    add-int v38, v38, v5

    .line 852
    :cond_32
    move-object/from16 v0, v25

    iget-object v5, v0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v5, v5, Lc8/ib;->mSolverVariable:Lc8/gb;

    move/from16 v0, v38

    neg-int v6, v0

    const/4 v9, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5, v6, v9}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    .line 855
    .end local v25    # "anchor":Lc8/ib;
    :cond_33
    move-object/from16 v0, v49

    iget v5, v0, Lc8/ob;->mMatchConstraintMaxHeight:I

    if-lez v5, :cond_34

    .line 856
    move-object/from16 v0, v49

    iget v5, v0, Lc8/ob;->mMatchConstraintMaxHeight:I

    const/4 v6, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v5, v6}, Lc8/bb;->addLowerThan(Lc8/gb;Lc8/gb;II)V

    .line 859
    :cond_34
    invoke-virtual/range {p1 .. p1}, Lc8/bb;->createRow()Lc8/Y;

    move-result-object v13

    .line 860
    .local v13, "row":Lc8/Y;
    move-object/from16 v0, v26

    iget v14, v0, Lc8/ob;->mVerticalWeight:F

    move-object/from16 v0, v40

    iget v0, v0, Lc8/ob;->mVerticalWeight:F

    move/from16 v16, v0

    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    .line 862
    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v18

    move-object/from16 v0, v26

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    .line 863
    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v20

    move-object/from16 v0, v40

    iget-object v5, v0, Lc8/ob;->mTop:Lc8/ib;

    .line 864
    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v22

    move-object/from16 v0, v40

    iget-object v5, v0, Lc8/ob;->mBottom:Lc8/ib;

    .line 865
    invoke-virtual {v5}, Lc8/ib;->getMargin()I

    move-result v24

    .line 860
    invoke-virtual/range {v13 .. v24}, Lc8/Y;->createRowEqualDimension(FFFLc8/gb;ILc8/gb;ILc8/gb;ILc8/gb;I)Lc8/Y;

    .line 866
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lc8/bb;->addConstraint(Lc8/Y;)V

    .line 814
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_12

    .line 832
    .end local v13    # "row":Lc8/Y;
    :cond_35
    const/4 v5, 0x0

    goto/16 :goto_13

    .line 872
    .end local v15    # "totalWeights":F
    .end local v17    # "top":Lc8/gb;
    .end local v19    # "bottom":Lc8/gb;
    .end local v21    # "nextTop":Lc8/gb;
    .end local v23    # "nextBottom":Lc8/gb;
    .end local v26    # "current":Lc8/ob;
    .end local v27    # "currentWidget":Lc8/ob;
    .end local v29    # "first":Lc8/ob;
    .end local v32    # "isChainPacked":Z
    .end local v33    # "isChainSpread":Z
    .end local v35    # "isWrapContent":Z
    .end local v36    # "j":I
    .end local v38    # "margin":I
    .end local v40    # "nextWidget":Lc8/ob;
    .end local v41    # "numMatchConstraints":I
    .end local v42    # "previous":Lc8/ob;
    .end local v49    # "widget":Lc8/ob;
    :cond_36
    return-void
.end method

.method private countMatchConstraintsChainedWidgets(Lc8/bb;[Lc8/ob;Lc8/ob;I[Z)I
    .locals 11
    .param p1, "system"    # Lc8/bb;
    .param p2, "chainEnds"    # [Lc8/ob;
    .param p3, "widget"    # Lc8/ob;
    .param p4, "direction"    # I
    .param p5, "flags"    # [Z

    .prologue
    .line 1886
    const/4 v0, 0x0

    .line 1887
    .local v0, "count":I
    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-boolean v8, p5, v7

    .line 1888
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-boolean v8, p5, v7

    .line 1889
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, p2, v7

    .line 1890
    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, p2, v7

    .line 1891
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, p2, v7

    .line 1892
    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, p2, v7

    .line 1894
    if-nez p4, :cond_c

    .line 1895
    const/4 v4, 0x1

    .line 1896
    .local v4, "fixedPosition":Z
    move-object v2, p3

    .line 1897
    .local v2, "first":Lc8/ob;
    const/4 v5, 0x0

    .line 1898
    .local v5, "last":Lc8/ob;
    iget-object v7, p3, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_0

    iget-object v7, p3, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    if-eq v7, p0, :cond_0

    .line 1899
    const/4 v4, 0x0

    .line 1901
    :cond_0
    const/4 v7, 0x0

    iput-object v7, p3, Lc8/ob;->mHorizontalNextWidget:Lc8/ob;

    .line 1902
    const/4 v3, 0x0

    .line 1903
    .local v3, "firstVisible":Lc8/ob;
    invoke-virtual {p3}, Lc8/ob;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    .line 1904
    move-object v3, p3

    .line 1906
    :cond_1
    move-object v6, v3

    .line 1907
    .local v6, "lastVisible":Lc8/ob;
    :goto_0
    iget-object v7, p3, Lc8/ob;->mRight:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_8

    .line 1908
    const/4 v7, 0x0

    iput-object v7, p3, Lc8/ob;->mHorizontalNextWidget:Lc8/ob;

    .line 1909
    invoke-virtual {p3}, Lc8/ob;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_7

    .line 1910
    if-nez v3, :cond_2

    .line 1911
    move-object v3, p3

    .line 1913
    :cond_2
    if-eqz v6, :cond_3

    if-eq v6, p3, :cond_3

    .line 1914
    iput-object p3, v6, Lc8/ob;->mHorizontalNextWidget:Lc8/ob;

    .line 1916
    :cond_3
    move-object v6, p3

    .line 1921
    :goto_1
    invoke-virtual {p3}, Lc8/ob;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_6

    iget-object v7, p3, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_6

    .line 1922
    iget-object v7, p3, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_4

    .line 1923
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-boolean v8, p5, v7

    .line 1925
    :cond_4
    iget v7, p3, Lc8/ob;->mDimensionRatio:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_6

    .line 1926
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-boolean v8, p5, v7

    .line 1927
    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    array-length v8, v8

    if-lt v7, v8, :cond_5

    .line 1928
    iget-object v7, p0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    iget-object v8, p0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    array-length v8, v8

    shl-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lc8/ob;

    iput-object v7, p0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    .line 1930
    :cond_5
    iget-object v7, p0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput-object p3, v7, v0

    move v0, v1

    .line 1933
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_6
    iget-object v7, p3, Lc8/ob;->mRight:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v7, v7, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_8

    .line 1936
    iget-object v7, p3, Lc8/ob;->mRight:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v7, v7, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    if-ne v7, p3, :cond_8

    .line 1939
    iget-object v7, p3, Lc8/ob;->mRight:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    if-eq v7, p3, :cond_8

    .line 1942
    iget-object v7, p3, Lc8/ob;->mRight:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object p3, v7, Lc8/ib;->mOwner:Lc8/ob;

    .line 1943
    move-object v5, p3

    goto/16 :goto_0

    .line 1918
    :cond_7
    iget-object v7, p3, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mSolverVariable:Lc8/gb;

    iget-object v8, p3, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v8, v8, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v8, v8, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {p1, v7, v8, v9, v10}, Lc8/bb;->addEquality(Lc8/gb;Lc8/gb;II)Lc8/Y;

    .line 1919
    iget-object v7, p3, Lc8/ob;->mRight:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mSolverVariable:Lc8/gb;

    iget-object v8, p3, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v8, v8, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {p1, v7, v8, v9, v10}, Lc8/bb;->addEquality(Lc8/gb;Lc8/gb;II)Lc8/Y;

    goto/16 :goto_1

    .line 1945
    :cond_8
    iget-object v7, p3, Lc8/ob;->mRight:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_9

    iget-object v7, p3, Lc8/ob;->mRight:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    if-eq v7, p0, :cond_9

    .line 1946
    const/4 v4, 0x0

    .line 1948
    :cond_9
    iget-object v7, v2, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_a

    iget-object v7, v5, Lc8/ob;->mRight:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-nez v7, :cond_b

    .line 1949
    :cond_a
    const/4 v7, 0x1

    const/4 v8, 0x1

    aput-boolean v8, p5, v7

    .line 1953
    :cond_b
    iput-boolean v4, v2, Lc8/ob;->mHorizontalChainFixedPosition:Z

    .line 1954
    const/4 v7, 0x0

    iput-object v7, v5, Lc8/ob;->mHorizontalNextWidget:Lc8/ob;

    .line 1955
    const/4 v7, 0x0

    aput-object v2, p2, v7

    .line 1956
    const/4 v7, 0x2

    aput-object v3, p2, v7

    .line 1957
    const/4 v7, 0x1

    aput-object v5, p2, v7

    .line 1958
    const/4 v7, 0x3

    aput-object v6, p2, v7

    .line 2025
    :goto_2
    return v0

    .line 1960
    .end local v2    # "first":Lc8/ob;
    .end local v3    # "firstVisible":Lc8/ob;
    .end local v4    # "fixedPosition":Z
    .end local v5    # "last":Lc8/ob;
    .end local v6    # "lastVisible":Lc8/ob;
    :cond_c
    const/4 v4, 0x1

    .line 1961
    .restart local v4    # "fixedPosition":Z
    move-object v2, p3

    .line 1962
    .restart local v2    # "first":Lc8/ob;
    const/4 v5, 0x0

    .line 1963
    .restart local v5    # "last":Lc8/ob;
    iget-object v7, p3, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_d

    iget-object v7, p3, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    if-eq v7, p0, :cond_d

    .line 1964
    const/4 v4, 0x0

    .line 1966
    :cond_d
    const/4 v7, 0x0

    iput-object v7, p3, Lc8/ob;->mVerticalNextWidget:Lc8/ob;

    .line 1967
    const/4 v3, 0x0

    .line 1968
    .restart local v3    # "firstVisible":Lc8/ob;
    invoke-virtual {p3}, Lc8/ob;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_e

    .line 1969
    move-object v3, p3

    .line 1971
    :cond_e
    move-object v6, v3

    .line 1972
    .restart local v6    # "lastVisible":Lc8/ob;
    :goto_3
    iget-object v7, p3, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_15

    .line 1973
    const/4 v7, 0x0

    iput-object v7, p3, Lc8/ob;->mVerticalNextWidget:Lc8/ob;

    .line 1974
    invoke-virtual {p3}, Lc8/ob;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_14

    .line 1975
    if-nez v3, :cond_f

    .line 1976
    move-object v3, p3

    .line 1978
    :cond_f
    if-eqz v6, :cond_10

    if-eq v6, p3, :cond_10

    .line 1979
    iput-object p3, v6, Lc8/ob;->mVerticalNextWidget:Lc8/ob;

    .line 1981
    :cond_10
    move-object v6, p3

    .line 1986
    :goto_4
    invoke-virtual {p3}, Lc8/ob;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_13

    iget-object v7, p3, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_13

    .line 1987
    iget-object v7, p3, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_11

    .line 1988
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-boolean v8, p5, v7

    .line 1990
    :cond_11
    iget v7, p3, Lc8/ob;->mDimensionRatio:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_13

    .line 1991
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-boolean v8, p5, v7

    .line 1992
    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    array-length v8, v8

    if-lt v7, v8, :cond_12

    .line 1993
    iget-object v7, p0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    iget-object v8, p0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    array-length v8, v8

    shl-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lc8/ob;

    iput-object v7, p0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    .line 1995
    :cond_12
    iget-object v7, p0, Lc8/qb;->mMatchConstraintsChainedWidgets:[Lc8/ob;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .restart local v1    # "count":I
    aput-object p3, v7, v0

    move v0, v1

    .line 1998
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_13
    iget-object v7, p3, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v7, v7, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_15

    .line 2001
    iget-object v7, p3, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v7, v7, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    if-ne v7, p3, :cond_15

    .line 2004
    iget-object v7, p3, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    if-eq v7, p3, :cond_15

    .line 2007
    iget-object v7, p3, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object p3, v7, Lc8/ib;->mOwner:Lc8/ob;

    .line 2008
    move-object v5, p3

    goto/16 :goto_3

    .line 1983
    :cond_14
    iget-object v7, p3, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mSolverVariable:Lc8/gb;

    iget-object v8, p3, Lc8/ob;->mTop:Lc8/ib;

    iget-object v8, v8, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v8, v8, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {p1, v7, v8, v9, v10}, Lc8/bb;->addEquality(Lc8/gb;Lc8/gb;II)Lc8/Y;

    .line 1984
    iget-object v7, p3, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mSolverVariable:Lc8/gb;

    iget-object v8, p3, Lc8/ob;->mTop:Lc8/ib;

    iget-object v8, v8, Lc8/ib;->mSolverVariable:Lc8/gb;

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {p1, v7, v8, v9, v10}, Lc8/bb;->addEquality(Lc8/gb;Lc8/gb;II)Lc8/Y;

    goto/16 :goto_4

    .line 2010
    :cond_15
    iget-object v7, p3, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_16

    iget-object v7, p3, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    if-eq v7, p0, :cond_16

    .line 2011
    const/4 v4, 0x0

    .line 2013
    :cond_16
    iget-object v7, v2, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_17

    iget-object v7, v5, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-nez v7, :cond_18

    .line 2014
    :cond_17
    const/4 v7, 0x1

    const/4 v8, 0x1

    aput-boolean v8, p5, v7

    .line 2018
    :cond_18
    iput-boolean v4, v2, Lc8/ob;->mVerticalChainFixedPosition:Z

    .line 2019
    const/4 v7, 0x0

    iput-object v7, v5, Lc8/ob;->mVerticalNextWidget:Lc8/ob;

    .line 2020
    const/4 v7, 0x0

    aput-object v2, p2, v7

    .line 2021
    const/4 v7, 0x2

    aput-object v3, p2, v7

    .line 2022
    const/4 v7, 0x1

    aput-object v5, p2, v7

    .line 2023
    const/4 v7, 0x3

    aput-object v6, p2, v7

    goto/16 :goto_2
.end method

.method public static createContainer(Lc8/qb;Ljava/lang/String;Ljava/util/ArrayList;I)Lc8/qb;
    .locals 8
    .param p0, "container"    # Lc8/qb;
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "padding"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qb;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/ob;",
            ">;I)",
            "Lc8/qb;"
        }
    .end annotation

    .prologue
    .line 172
    .local p2, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-static {p2}, Lc8/qb;->getBounds(Ljava/util/ArrayList;)Lc8/ub;

    move-result-object v0

    .line 173
    .local v0, "bounds":Lc8/ub;
    iget v6, v0, Lc8/ub;->width:I

    if-eqz v6, :cond_0

    iget v6, v0, Lc8/ub;->height:I

    if-nez v6, :cond_2

    .line 174
    :cond_0
    const/4 p0, 0x0

    .line 197
    .end local p0    # "container":Lc8/qb;
    :cond_1
    return-object p0

    .line 176
    .restart local p0    # "container":Lc8/qb;
    :cond_2
    if-lez p3, :cond_4

    .line 177
    iget v6, v0, Lc8/ub;->x:I

    iget v7, v0, Lc8/ub;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 178
    .local v2, "maxPadding":I
    if-le p3, v2, :cond_3

    .line 179
    move p3, v2

    .line 181
    :cond_3
    invoke-virtual {v0, p3, p3}, Lc8/ub;->grow(II)V

    .line 183
    .end local v2    # "maxPadding":I
    :cond_4
    iget v6, v0, Lc8/ub;->x:I

    iget v7, v0, Lc8/ub;->y:I

    invoke-virtual {p0, v6, v7}, Lc8/qb;->setOrigin(II)V

    .line 184
    iget v6, v0, Lc8/ub;->width:I

    iget v7, v0, Lc8/ub;->height:I

    invoke-virtual {p0, v6, v7}, Lc8/qb;->setDimension(II)V

    .line 185
    invoke-virtual {p0, p1}, Lc8/qb;->setDebugName(Ljava/lang/String;)V

    .line 187
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/ob;

    invoke-virtual {v6}, Lc8/ob;->getParent()Lc8/ob;

    move-result-object v3

    .line 188
    .local v3, "parent":Lc8/ob;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "widgetsSize":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 189
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/ob;

    .line 190
    .local v4, "widget":Lc8/ob;
    invoke-virtual {v4}, Lc8/ob;->getParent()Lc8/ob;

    move-result-object v6

    if-ne v6, v3, :cond_5

    .line 193
    invoke-virtual {p0, v4}, Lc8/qb;->add(Lc8/ob;)V

    .line 194
    invoke-virtual {v4}, Lc8/ob;->getX()I

    move-result v6

    iget v7, v0, Lc8/ub;->x:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Lc8/ob;->setX(I)V

    .line 195
    invoke-virtual {v4}, Lc8/ob;->getY()I

    move-result v6

    iget v7, v0, Lc8/ub;->y:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Lc8/ob;->setY(I)V

    .line 188
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private optimize(Lc8/bb;)Z
    .locals 14
    .param p1, "system"    # Lc8/bb;

    .prologue
    const/4 v10, 0x1

    const/4 v13, -0x1

    .line 263
    iget-object v11, p0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 264
    .local v0, "count":I
    const/4 v2, 0x0

    .line 265
    .local v2, "done":Z
    const/4 v3, 0x0

    .line 266
    .local v3, "dv":I
    const/4 v1, 0x0

    .line 268
    .local v1, "dh":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 269
    iget-object v11, p0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/ob;

    .line 271
    .local v9, "widget":Lc8/ob;
    iput v13, v9, Lc8/ob;->mHorizontalResolution:I

    .line 272
    iput v13, v9, Lc8/ob;->mVerticalResolution:I

    .line 273
    iget-object v11, v9, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v11, v12, :cond_0

    iget-object v11, v9, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_1

    .line 275
    :cond_0
    iput v10, v9, Lc8/ob;->mHorizontalResolution:I

    .line 276
    iput v10, v9, Lc8/ob;->mVerticalResolution:I

    .line 268
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 319
    .end local v9    # "widget":Lc8/ob;
    .local v5, "preh":I
    .local v6, "prev":I
    :cond_2
    if-nez v3, :cond_a

    if-nez v1, :cond_a

    .line 320
    const/4 v2, 0x1

    .line 279
    .end local v5    # "preh":I
    .end local v6    # "prev":I
    :cond_3
    :goto_1
    if-nez v2, :cond_b

    .line 280
    move v6, v3

    .line 281
    .restart local v6    # "prev":I
    move v5, v1

    .line 282
    .restart local v5    # "preh":I
    const/4 v3, 0x0

    .line 283
    const/4 v1, 0x0

    .line 288
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_2

    .line 289
    iget-object v11, p0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/ob;

    .line 290
    .restart local v9    # "widget":Lc8/ob;
    iget v11, v9, Lc8/ob;->mHorizontalResolution:I

    if-ne v11, v13, :cond_4

    .line 291
    iget-object v11, p0, Lc8/qb;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_8

    .line 292
    iput v10, v9, Lc8/ob;->mHorizontalResolution:I

    .line 297
    :cond_4
    :goto_3
    iget v11, v9, Lc8/ob;->mVerticalResolution:I

    if-ne v11, v13, :cond_5

    .line 298
    iget-object v11, p0, Lc8/qb;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_9

    .line 299
    iput v10, v9, Lc8/ob;->mVerticalResolution:I

    .line 309
    :cond_5
    :goto_4
    iget v11, v9, Lc8/ob;->mVerticalResolution:I

    if-ne v11, v13, :cond_6

    .line 310
    add-int/lit8 v3, v3, 0x1

    .line 312
    :cond_6
    iget v11, v9, Lc8/ob;->mHorizontalResolution:I

    if-ne v11, v13, :cond_7

    .line 313
    add-int/lit8 v1, v1, 0x1

    .line 288
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 294
    :cond_8
    invoke-static {p0, p1, v9}, Lc8/tb;->checkHorizontalSimpleDependency(Lc8/qb;Lc8/bb;Lc8/ob;)V

    goto :goto_3

    .line 301
    :cond_9
    invoke-static {p0, p1, v9}, Lc8/tb;->checkVerticalSimpleDependency(Lc8/qb;Lc8/bb;Lc8/ob;)V

    goto :goto_4

    .line 321
    .end local v9    # "widget":Lc8/ob;
    :cond_a
    if-ne v6, v3, :cond_3

    if-ne v5, v1, :cond_3

    .line 322
    const/4 v2, 0x1

    goto :goto_1

    .line 329
    .end local v5    # "preh":I
    .end local v6    # "prev":I
    :cond_b
    const/4 v7, 0x0

    .line 330
    .local v7, "sh":I
    const/4 v8, 0x0

    .line 331
    .local v8, "sv":I
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v0, :cond_10

    .line 332
    iget-object v11, p0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/ob;

    .line 333
    .restart local v9    # "widget":Lc8/ob;
    iget v11, v9, Lc8/ob;->mHorizontalResolution:I

    if-eq v11, v10, :cond_c

    iget v11, v9, Lc8/ob;->mHorizontalResolution:I

    if-ne v11, v13, :cond_d

    .line 335
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 337
    :cond_d
    iget v11, v9, Lc8/ob;->mVerticalResolution:I

    if-eq v11, v10, :cond_e

    iget v11, v9, Lc8/ob;->mVerticalResolution:I

    if-ne v11, v13, :cond_f

    .line 339
    :cond_e
    add-int/lit8 v8, v8, 0x1

    .line 331
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 342
    .end local v9    # "widget":Lc8/ob;
    :cond_10
    if-nez v7, :cond_11

    if-nez v8, :cond_11

    .line 345
    :goto_6
    return v10

    :cond_11
    const/4 v10, 0x0

    goto :goto_6
.end method

.method private resetChains()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1809
    iput v0, p0, Lc8/qb;->mHorizontalChainsSize:I

    .line 1810
    iput v0, p0, Lc8/qb;->mVerticalChainsSize:I

    .line 1811
    return-void
.end method

.method static setGroup(Lc8/ib;I)I
    .locals 4
    .param p0, "anchor"    # Lc8/ib;
    .param p1, "group"    # I

    .prologue
    .line 1157
    iget v0, p0, Lc8/ib;->mGroup:I

    .line 1158
    .local v0, "oldGroup":I
    iget-object v3, p0, Lc8/ib;->mOwner:Lc8/ob;

    invoke-virtual {v3}, Lc8/ob;->getParent()Lc8/ob;

    move-result-object v3

    if-nez v3, :cond_1

    move v0, p1

    .line 1175
    .end local v0    # "oldGroup":I
    :cond_0
    :goto_0
    return v0

    .line 1161
    .restart local v0    # "oldGroup":I
    :cond_1
    if-le v0, p1, :cond_0

    .line 1165
    iput p1, p0, Lc8/ib;->mGroup:I

    .line 1166
    invoke-virtual {p0}, Lc8/ib;->getOpposite()Lc8/ib;

    move-result-object v1

    .line 1167
    .local v1, "opposite":Lc8/ib;
    iget-object v2, p0, Lc8/ib;->mTarget:Lc8/ib;

    .line 1169
    .local v2, "target":Lc8/ib;
    if-eqz v1, :cond_2

    invoke-static {v1, p1}, Lc8/qb;->setGroup(Lc8/ib;I)I

    move-result p1

    .line 1170
    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v2, p1}, Lc8/qb;->setGroup(Lc8/ib;I)I

    move-result p1

    .line 1171
    :cond_3
    if-eqz v1, :cond_4

    invoke-static {v1, p1}, Lc8/qb;->setGroup(Lc8/ib;I)I

    move-result p1

    .line 1173
    :cond_4
    iput p1, p0, Lc8/ib;->mGroup:I

    move v0, p1

    .line 1175
    goto :goto_0
.end method


# virtual methods
.method addChain(Lc8/ob;I)V
    .locals 3
    .param p1, "constraintWidget"    # Lc8/ob;
    .param p2, "type"    # I

    .prologue
    .line 1820
    move-object v0, p1

    .line 1821
    .local v0, "widget":Lc8/ob;
    if-nez p2, :cond_2

    .line 1823
    :goto_0
    iget-object v1, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v1, v1, Lc8/ob;->mRight:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v1, v1, Lc8/ob;->mRight:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v2, v0, Lc8/ob;->mLeft:Lc8/ib;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mOwner:Lc8/ob;

    if-eq v1, v0, :cond_0

    .line 1827
    iget-object v1, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v0, v1, Lc8/ib;->mOwner:Lc8/ob;

    goto :goto_0

    .line 1829
    :cond_0
    invoke-direct {p0, v0}, Lc8/qb;->addHorizontalChain(Lc8/ob;)V

    .line 1840
    :cond_1
    :goto_1
    return-void

    .line 1830
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 1832
    :goto_2
    iget-object v1, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v1, v1, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v1, v1, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v2, v0, Lc8/ob;->mTop:Lc8/ib;

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mOwner:Lc8/ob;

    if-eq v1, v0, :cond_3

    .line 1836
    iget-object v1, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v1, v1, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v0, v1, Lc8/ib;->mOwner:Lc8/ob;

    goto :goto_2

    .line 1838
    :cond_3
    invoke-direct {p0, v0}, Lc8/qb;->addVerticalChain(Lc8/ob;)V

    goto :goto_1
.end method

.method public addChildrenToSolver(Lc8/bb;I)Z
    .locals 8
    .param p1, "system"    # Lc8/bb;
    .param p2, "group"    # I

    .prologue
    .line 210
    invoke-virtual {p0, p1, p2}, Lc8/qb;->addToSolver(Lc8/bb;I)V

    .line 211
    iget-object v6, p0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 212
    .local v0, "count":I
    const/4 v3, 0x0

    .line 213
    .local v3, "setMatchParent":Z
    iget v6, p0, Lc8/qb;->mOptimizationLevel:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    iget v6, p0, Lc8/qb;->mOptimizationLevel:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 215
    :cond_0
    invoke-direct {p0, p1}, Lc8/qb;->optimize(Lc8/bb;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 216
    const/4 v6, 0x0

    .line 253
    :goto_0
    return v6

    .line 220
    :cond_1
    const/4 v3, 0x1

    .line 222
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_9

    .line 223
    iget-object v6, p0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/ob;

    .line 224
    .local v5, "widget":Lc8/ob;
    instance-of v6, v5, Lc8/qb;

    if-eqz v6, :cond_7

    .line 225
    iget-object v1, v5, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 226
    .local v1, "horizontalBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v4, v5, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 227
    .local v4, "verticalBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v6, :cond_3

    .line 228
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v5, v6}, Lc8/ob;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 230
    :cond_3
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_4

    .line 231
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v5, v6}, Lc8/ob;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 233
    :cond_4
    invoke-virtual {v5, p1, p2}, Lc8/ob;->addToSolver(Lc8/bb;I)V

    .line 234
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v6, :cond_5

    .line 235
    invoke-virtual {v5, v1}, Lc8/ob;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 237
    :cond_5
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_6

    .line 238
    invoke-virtual {v5, v4}, Lc8/ob;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 222
    .end local v1    # "horizontalBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v4    # "verticalBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 241
    :cond_7
    if-eqz v3, :cond_8

    .line 242
    invoke-static {p0, p1, v5}, Lc8/tb;->checkMatchParent(Lc8/qb;Lc8/bb;Lc8/ob;)V

    .line 244
    :cond_8
    invoke-virtual {v5, p1, p2}, Lc8/ob;->addToSolver(Lc8/bb;I)V

    goto :goto_2

    .line 247
    .end local v5    # "widget":Lc8/ob;
    :cond_9
    iget v6, p0, Lc8/qb;->mHorizontalChainsSize:I

    if-lez v6, :cond_a

    .line 248
    invoke-direct {p0, p1}, Lc8/qb;->applyHorizontalChain(Lc8/bb;)V

    .line 250
    :cond_a
    iget v6, p0, Lc8/qb;->mVerticalChainsSize:I

    if-lez v6, :cond_b

    .line 251
    invoke-direct {p0, p1}, Lc8/qb;->applyVerticalChain(Lc8/bb;)V

    .line 253
    :cond_b
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public findHorizontalWrapRecursive(Lc8/ob;[Z)V
    .locals 12
    .param p1, "widget"    # Lc8/ob;
    .param p2, "flags"    # [Z

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1198
    iget-object v6, p1, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v9, :cond_0

    iget-object v6, p1, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v9, :cond_0

    iget v6, p1, Lc8/ob;->mDimensionRatio:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_0

    .line 1201
    aput-boolean v7, p2, v7

    .line 1296
    :goto_0
    return-void

    .line 1204
    :cond_0
    invoke-virtual {p1}, Lc8/ob;->getOptimizerWrapWidth()I

    move-result v5

    .line 1206
    .local v5, "w":I
    iget-object v6, p1, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v9, :cond_1

    .line 1207
    iget-object v6, p1, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v9, :cond_1

    iget v6, p1, Lc8/ob;->mDimensionRatio:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_1

    .line 1209
    aput-boolean v7, p2, v7

    goto :goto_0

    .line 1216
    :cond_1
    move v1, v5

    .line 1217
    .local v1, "distToRight":I
    move v0, v5

    .line 1218
    .local v0, "distToLeft":I
    const/4 v3, 0x0

    .line 1219
    .local v3, "leftWidget":Lc8/ob;
    const/4 v4, 0x0

    .line 1220
    .local v4, "rightWidget":Lc8/ob;
    iput-boolean v8, p1, Lc8/ob;->mHorizontalWrapVisited:Z

    .line 1222
    instance-of v6, p1, Lc8/sb;

    if-eqz v6, :cond_5

    move-object v2, p1

    .line 1223
    check-cast v2, Lc8/sb;

    .line 1224
    .local v2, "guideline":Lc8/sb;
    invoke-virtual {v2}, Lc8/sb;->getOrientation()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 1225
    const/4 v0, 0x0

    .line 1226
    const/4 v1, 0x0

    .line 1227
    invoke-virtual {v2}, Lc8/sb;->getRelativeBegin()I

    move-result v6

    if-eq v6, v11, :cond_4

    .line 1228
    invoke-virtual {v2}, Lc8/sb;->getRelativeBegin()I

    move-result v0

    .line 1290
    .end local v2    # "guideline":Lc8/sb;
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lc8/ob;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    .line 1291
    iget v6, p1, Lc8/ob;->mWidth:I

    sub-int/2addr v0, v6

    .line 1292
    iget v6, p1, Lc8/ob;->mWidth:I

    sub-int/2addr v1, v6

    .line 1294
    :cond_3
    iput v0, p1, Lc8/ob;->mDistToLeft:I

    .line 1295
    iput v1, p1, Lc8/ob;->mDistToRight:I

    goto :goto_0

    .line 1229
    .restart local v2    # "guideline":Lc8/sb;
    :cond_4
    invoke-virtual {v2}, Lc8/sb;->getRelativeEnd()I

    move-result v6

    if-eq v6, v11, :cond_2

    .line 1230
    invoke-virtual {v2}, Lc8/sb;->getRelativeEnd()I

    move-result v1

    goto :goto_1

    .line 1233
    .end local v2    # "guideline":Lc8/sb;
    :cond_5
    iget-object v6, p1, Lc8/ob;->mRight:Lc8/ib;

    invoke-virtual {v6}, Lc8/ib;->isConnected()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p1, Lc8/ob;->mLeft:Lc8/ib;

    invoke-virtual {v6}, Lc8/ib;->isConnected()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1234
    invoke-virtual {p1}, Lc8/ob;->getX()I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_1

    .line 1236
    :cond_6
    iget-object v6, p1, Lc8/ob;->mRight:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v6, :cond_8

    iget-object v6, p1, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v6, :cond_8

    iget-object v6, p1, Lc8/ob;->mRight:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v9, p1, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v9, v9, Lc8/ib;->mTarget:Lc8/ib;

    if-eq v6, v9, :cond_7

    iget-object v6, p1, Lc8/ob;->mRight:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v9, p1, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v9, v9, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v9, v9, Lc8/ib;->mOwner:Lc8/ob;

    if-ne v6, v9, :cond_8

    iget-object v6, p1, Lc8/ob;->mRight:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v9, p1, Lc8/ob;->mParent:Lc8/ob;

    if-eq v6, v9, :cond_8

    .line 1240
    :cond_7
    aput-boolean v7, p2, v7

    goto/16 :goto_0

    .line 1243
    :cond_8
    iget-object v6, p1, Lc8/ob;->mRight:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v6, :cond_9

    .line 1244
    iget-object v6, p1, Lc8/ob;->mRight:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v4, v6, Lc8/ib;->mOwner:Lc8/ob;

    .line 1245
    iget-object v6, p1, Lc8/ob;->mRight:Lc8/ib;

    invoke-virtual {v6}, Lc8/ib;->getMargin()I

    move-result v6

    add-int/2addr v1, v6

    .line 1246
    invoke-virtual {v4}, Lc8/ob;->isRoot()Z

    move-result v6

    if-nez v6, :cond_9

    iget-boolean v6, v4, Lc8/ob;->mHorizontalWrapVisited:Z

    if-nez v6, :cond_9

    .line 1247
    invoke-virtual {p0, v4, p2}, Lc8/qb;->findHorizontalWrapRecursive(Lc8/ob;[Z)V

    .line 1250
    :cond_9
    iget-object v6, p1, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v6, :cond_a

    .line 1251
    iget-object v6, p1, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v3, v6, Lc8/ib;->mOwner:Lc8/ob;

    .line 1252
    iget-object v6, p1, Lc8/ob;->mLeft:Lc8/ib;

    invoke-virtual {v6}, Lc8/ib;->getMargin()I

    move-result v6

    add-int/2addr v0, v6

    .line 1253
    invoke-virtual {v3}, Lc8/ob;->isRoot()Z

    move-result v6

    if-nez v6, :cond_a

    iget-boolean v6, v3, Lc8/ob;->mHorizontalWrapVisited:Z

    if-nez v6, :cond_a

    .line 1254
    invoke-virtual {p0, v3, p2}, Lc8/qb;->findHorizontalWrapRecursive(Lc8/ob;[Z)V

    .line 1258
    :cond_a
    iget-object v6, p1, Lc8/ob;->mRight:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v6, :cond_e

    invoke-virtual {v4}, Lc8/ob;->isRoot()Z

    move-result v6

    if-nez v6, :cond_e

    .line 1259
    iget-object v6, p1, Lc8/ob;->mRight:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v9, :cond_13

    .line 1260
    iget v6, v4, Lc8/ob;->mDistToRight:I

    invoke-virtual {v4}, Lc8/ob;->getOptimizerWrapWidth()I

    move-result v9

    sub-int/2addr v6, v9

    add-int/2addr v1, v6

    .line 1265
    :cond_b
    :goto_2
    iget-boolean v6, v4, Lc8/ob;->mRightHasCentered:Z

    if-nez v6, :cond_c

    iget-object v6, v4, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v6, :cond_14

    iget-object v6, v4, Lc8/ob;->mRight:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v6, :cond_14

    iget-object v6, v4, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v9, :cond_14

    :cond_c
    move v6, v8

    :goto_3
    iput-boolean v6, p1, Lc8/ob;->mRightHasCentered:Z

    .line 1268
    iget-boolean v6, p1, Lc8/ob;->mRightHasCentered:Z

    if-eqz v6, :cond_e

    iget-object v6, v4, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v6, :cond_d

    iget-object v6, v4, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mOwner:Lc8/ob;

    if-eq v6, p1, :cond_e

    .line 1270
    :cond_d
    iget v6, v4, Lc8/ob;->mDistToRight:I

    sub-int v6, v1, v6

    add-int/2addr v1, v6

    .line 1274
    :cond_e
    iget-object v6, p1, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lc8/ob;->isRoot()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1275
    iget-object v6, p1, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    invoke-virtual {v6}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v6

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v9, :cond_15

    .line 1276
    iget v6, v3, Lc8/ob;->mDistToLeft:I

    invoke-virtual {v3}, Lc8/ob;->getOptimizerWrapWidth()I

    move-result v9

    sub-int/2addr v6, v9

    add-int/2addr v0, v6

    .line 1281
    :cond_f
    :goto_4
    iget-boolean v6, v3, Lc8/ob;->mLeftHasCentered:Z

    if-nez v6, :cond_10

    iget-object v6, v3, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v6, :cond_11

    iget-object v6, v3, Lc8/ob;->mRight:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v6, :cond_11

    iget-object v6, v3, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v9, :cond_11

    :cond_10
    move v7, v8

    :cond_11
    iput-boolean v7, p1, Lc8/ob;->mLeftHasCentered:Z

    .line 1284
    iget-boolean v6, p1, Lc8/ob;->mLeftHasCentered:Z

    if-eqz v6, :cond_2

    iget-object v6, v3, Lc8/ob;->mRight:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v6, :cond_12

    iget-object v6, v3, Lc8/ob;->mRight:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mOwner:Lc8/ob;

    if-eq v6, p1, :cond_2

    .line 1286
    :cond_12
    iget v6, v3, Lc8/ob;->mDistToLeft:I

    sub-int v6, v0, v6

    add-int/2addr v0, v6

    goto/16 :goto_1

    .line 1261
    :cond_13
    iget-object v6, p1, Lc8/ob;->mRight:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    invoke-virtual {v6}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v6

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v9, :cond_b

    .line 1262
    iget v6, v4, Lc8/ob;->mDistToRight:I

    add-int/2addr v1, v6

    goto/16 :goto_2

    :cond_14
    move v6, v7

    .line 1265
    goto :goto_3

    .line 1277
    :cond_15
    iget-object v6, p1, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v6, v6, Lc8/ib;->mTarget:Lc8/ib;

    invoke-virtual {v6}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v6

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v9, :cond_f

    .line 1278
    iget v6, v3, Lc8/ob;->mDistToLeft:I

    add-int/2addr v0, v6

    goto :goto_4
.end method

.method public findVerticalWrapRecursive(Lc8/ob;[Z)V
    .locals 13
    .param p1, "widget"    # Lc8/ob;
    .param p2, "flags"    # [Z

    .prologue
    const/16 v12, 0x8

    const/4 v11, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1299
    iget-object v7, p1, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v10, :cond_0

    .line 1300
    iget-object v7, p1, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v7, v10, :cond_0

    iget v7, p1, Lc8/ob;->mDimensionRatio:F

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-lez v7, :cond_0

    .line 1302
    aput-boolean v8, p2, v8

    .line 1411
    :goto_0
    return-void

    .line 1310
    :cond_0
    invoke-virtual {p1}, Lc8/ob;->getOptimizerWrapHeight()I

    move-result v5

    .line 1312
    .local v5, "h":I
    move v3, v5

    .line 1313
    .local v3, "distToTop":I
    move v2, v5

    .line 1314
    .local v2, "distToBottom":I
    const/4 v6, 0x0

    .line 1315
    .local v6, "topWidget":Lc8/ob;
    const/4 v1, 0x0

    .line 1316
    .local v1, "bottomWidget":Lc8/ob;
    iput-boolean v9, p1, Lc8/ob;->mVerticalWrapVisited:Z

    .line 1318
    instance-of v7, p1, Lc8/sb;

    if-eqz v7, :cond_4

    move-object v4, p1

    .line 1319
    check-cast v4, Lc8/sb;

    .line 1320
    .local v4, "guideline":Lc8/sb;
    invoke-virtual {v4}, Lc8/sb;->getOrientation()I

    move-result v7

    if-nez v7, :cond_1

    .line 1321
    const/4 v3, 0x0

    .line 1322
    const/4 v2, 0x0

    .line 1323
    invoke-virtual {v4}, Lc8/sb;->getRelativeBegin()I

    move-result v7

    if-eq v7, v11, :cond_3

    .line 1324
    invoke-virtual {v4}, Lc8/sb;->getRelativeBegin()I

    move-result v3

    .line 1404
    .end local v4    # "guideline":Lc8/sb;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lc8/ob;->getVisibility()I

    move-result v7

    if-ne v7, v12, :cond_2

    .line 1405
    iget v7, p1, Lc8/ob;->mHeight:I

    sub-int/2addr v3, v7

    .line 1406
    iget v7, p1, Lc8/ob;->mHeight:I

    sub-int/2addr v2, v7

    .line 1409
    :cond_2
    iput v3, p1, Lc8/ob;->mDistToTop:I

    .line 1410
    iput v2, p1, Lc8/ob;->mDistToBottom:I

    goto :goto_0

    .line 1325
    .restart local v4    # "guideline":Lc8/sb;
    :cond_3
    invoke-virtual {v4}, Lc8/sb;->getRelativeEnd()I

    move-result v7

    if-eq v7, v11, :cond_1

    .line 1326
    invoke-virtual {v4}, Lc8/sb;->getRelativeEnd()I

    move-result v2

    goto :goto_1

    .line 1329
    .end local v4    # "guideline":Lc8/sb;
    :cond_4
    iget-object v7, p1, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-nez v7, :cond_5

    iget-object v7, p1, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-nez v7, :cond_5

    iget-object v7, p1, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-nez v7, :cond_5

    .line 1330
    invoke-virtual {p1}, Lc8/ob;->getY()I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_1

    .line 1332
    :cond_5
    iget-object v7, p1, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_7

    iget-object v7, p1, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_7

    iget-object v7, p1, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v10, p1, Lc8/ob;->mTop:Lc8/ib;

    iget-object v10, v10, Lc8/ib;->mTarget:Lc8/ib;

    if-eq v7, v10, :cond_6

    iget-object v7, p1, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v10, p1, Lc8/ob;->mTop:Lc8/ib;

    iget-object v10, v10, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v10, v10, Lc8/ib;->mOwner:Lc8/ob;

    if-ne v7, v10, :cond_7

    iget-object v7, p1, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v10, p1, Lc8/ob;->mParent:Lc8/ob;

    if-eq v7, v10, :cond_7

    .line 1336
    :cond_6
    aput-boolean v8, p2, v8

    goto/16 :goto_0

    .line 1339
    :cond_7
    iget-object v7, p1, Lc8/ob;->mBaseline:Lc8/ib;

    invoke-virtual {v7}, Lc8/ib;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1340
    iget-object v7, p1, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    invoke-virtual {v7}, Lc8/ib;->getOwner()Lc8/ob;

    move-result-object v0

    .line 1341
    .local v0, "baseLineWidget":Lc8/ob;
    iget-boolean v7, v0, Lc8/ob;->mVerticalWrapVisited:Z

    if-nez v7, :cond_8

    .line 1342
    invoke-virtual {p0, v0, p2}, Lc8/qb;->findVerticalWrapRecursive(Lc8/ob;[Z)V

    .line 1344
    :cond_8
    iget v7, v0, Lc8/ob;->mDistToTop:I

    iget v8, v0, Lc8/ob;->mHeight:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1345
    iget v7, v0, Lc8/ob;->mDistToBottom:I

    iget v8, v0, Lc8/ob;->mHeight:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1346
    invoke-virtual {p1}, Lc8/ob;->getVisibility()I

    move-result v7

    if-ne v7, v12, :cond_9

    .line 1347
    iget v7, p1, Lc8/ob;->mHeight:I

    sub-int/2addr v3, v7

    .line 1348
    iget v7, p1, Lc8/ob;->mHeight:I

    sub-int/2addr v2, v7

    .line 1350
    :cond_9
    iput v3, p1, Lc8/ob;->mDistToTop:I

    .line 1351
    iput v2, p1, Lc8/ob;->mDistToBottom:I

    goto/16 :goto_0

    .line 1354
    .end local v0    # "baseLineWidget":Lc8/ob;
    :cond_a
    iget-object v7, p1, Lc8/ob;->mTop:Lc8/ib;

    invoke-virtual {v7}, Lc8/ib;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1355
    iget-object v7, p1, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    invoke-virtual {v7}, Lc8/ib;->getOwner()Lc8/ob;

    move-result-object v6

    .line 1356
    iget-object v7, p1, Lc8/ob;->mTop:Lc8/ib;

    invoke-virtual {v7}, Lc8/ib;->getMargin()I

    move-result v7

    add-int/2addr v3, v7

    .line 1357
    invoke-virtual {v6}, Lc8/ob;->isRoot()Z

    move-result v7

    if-nez v7, :cond_b

    iget-boolean v7, v6, Lc8/ob;->mVerticalWrapVisited:Z

    if-nez v7, :cond_b

    .line 1358
    invoke-virtual {p0, v6, p2}, Lc8/qb;->findVerticalWrapRecursive(Lc8/ob;[Z)V

    .line 1361
    :cond_b
    iget-object v7, p1, Lc8/ob;->mBottom:Lc8/ib;

    invoke-virtual {v7}, Lc8/ib;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1362
    iget-object v7, p1, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    invoke-virtual {v7}, Lc8/ib;->getOwner()Lc8/ob;

    move-result-object v1

    .line 1363
    iget-object v7, p1, Lc8/ob;->mBottom:Lc8/ib;

    invoke-virtual {v7}, Lc8/ib;->getMargin()I

    move-result v7

    add-int/2addr v2, v7

    .line 1364
    invoke-virtual {v1}, Lc8/ob;->isRoot()Z

    move-result v7

    if-nez v7, :cond_c

    iget-boolean v7, v1, Lc8/ob;->mVerticalWrapVisited:Z

    if-nez v7, :cond_c

    .line 1365
    invoke-virtual {p0, v1, p2}, Lc8/qb;->findVerticalWrapRecursive(Lc8/ob;[Z)V

    .line 1369
    :cond_c
    iget-object v7, p1, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_10

    invoke-virtual {v6}, Lc8/ob;->isRoot()Z

    move-result v7

    if-nez v7, :cond_10

    .line 1370
    iget-object v7, p1, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    invoke-virtual {v7}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v7

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v7, v10, :cond_15

    .line 1371
    iget v7, v6, Lc8/ob;->mDistToTop:I

    invoke-virtual {v6}, Lc8/ob;->getOptimizerWrapHeight()I

    move-result v10

    sub-int/2addr v7, v10

    add-int/2addr v3, v7

    .line 1376
    :cond_d
    :goto_2
    iget-boolean v7, v6, Lc8/ob;->mTopHasCentered:Z

    if-nez v7, :cond_e

    iget-object v7, v6, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_16

    iget-object v7, v6, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    if-eq v7, p1, :cond_16

    iget-object v7, v6, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_16

    iget-object v7, v6, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    if-eq v7, p1, :cond_16

    iget-object v7, v6, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v7, v10, :cond_16

    :cond_e
    move v7, v9

    :goto_3
    iput-boolean v7, p1, Lc8/ob;->mTopHasCentered:Z

    .line 1381
    iget-boolean v7, p1, Lc8/ob;->mTopHasCentered:Z

    if-eqz v7, :cond_10

    iget-object v7, v6, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_f

    iget-object v7, v6, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    if-eq v7, p1, :cond_10

    .line 1383
    :cond_f
    iget v7, v6, Lc8/ob;->mDistToTop:I

    sub-int v7, v3, v7

    add-int/2addr v3, v7

    .line 1386
    :cond_10
    iget-object v7, p1, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lc8/ob;->isRoot()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1387
    iget-object v7, p1, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    invoke-virtual {v7}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v7

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v7, v10, :cond_17

    .line 1388
    iget v7, v1, Lc8/ob;->mDistToBottom:I

    invoke-virtual {v1}, Lc8/ob;->getOptimizerWrapHeight()I

    move-result v10

    sub-int/2addr v7, v10

    add-int/2addr v2, v7

    .line 1393
    :cond_11
    :goto_4
    iget-boolean v7, v1, Lc8/ob;->mBottomHasCentered:Z

    if-nez v7, :cond_12

    iget-object v7, v1, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_13

    iget-object v7, v1, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    if-eq v7, p1, :cond_13

    iget-object v7, v1, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_13

    iget-object v7, v1, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    if-eq v7, p1, :cond_13

    iget-object v7, v1, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v7, v10, :cond_13

    :cond_12
    move v8, v9

    :cond_13
    iput-boolean v8, p1, Lc8/ob;->mBottomHasCentered:Z

    .line 1398
    iget-boolean v7, p1, Lc8/ob;->mBottomHasCentered:Z

    if-eqz v7, :cond_1

    iget-object v7, v1, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v7, :cond_14

    iget-object v7, v1, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mOwner:Lc8/ob;

    if-eq v7, p1, :cond_1

    .line 1400
    :cond_14
    iget v7, v1, Lc8/ob;->mDistToBottom:I

    sub-int v7, v2, v7

    add-int/2addr v2, v7

    goto/16 :goto_1

    .line 1372
    :cond_15
    iget-object v7, p1, Lc8/ob;->mTop:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    invoke-virtual {v7}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v7

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v7, v10, :cond_d

    .line 1373
    iget v7, v6, Lc8/ob;->mDistToTop:I

    add-int/2addr v3, v7

    goto/16 :goto_2

    :cond_16
    move v7, v8

    .line 1376
    goto/16 :goto_3

    .line 1389
    :cond_17
    iget-object v7, p1, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v7, v7, Lc8/ib;->mTarget:Lc8/ib;

    invoke-virtual {v7}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v7

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v7, v10, :cond_11

    .line 1390
    iget v7, v1, Lc8/ob;->mDistToBottom:I

    add-int/2addr v2, v7

    goto :goto_4
.end method

.method public findWrapSize(Ljava/util/ArrayList;[Z)V
    .locals 17
    .param p2, "flags"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/ob;",
            ">;[Z)V"
        }
    .end annotation

    .prologue
    .line 1419
    .local p1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    const/4 v12, 0x0

    .line 1420
    .local v12, "maxTopDist":I
    const/4 v10, 0x0

    .line 1421
    .local v10, "maxLeftDist":I
    const/4 v11, 0x0

    .line 1422
    .local v11, "maxRightDist":I
    const/4 v7, 0x0

    .line 1424
    .local v7, "maxBottomDist":I
    const/4 v9, 0x0

    .line 1425
    .local v9, "maxConnectWidth":I
    const/4 v8, 0x0

    .line 1426
    .local v8, "maxConnectHeight":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1427
    .local v13, "size":I
    const/4 v15, 0x0

    const/16 v16, 0x1

    aput-boolean v16, p2, v15

    .line 1429
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, v13, :cond_8

    .line 1430
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc8/ob;

    .line 1431
    .local v14, "widget":Lc8/ob;
    invoke-virtual {v14}, Lc8/ob;->isRoot()Z

    move-result v15

    if-nez v15, :cond_7

    .line 1434
    iget-boolean v15, v14, Lc8/ob;->mHorizontalWrapVisited:Z

    if-nez v15, :cond_0

    .line 1435
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1}, Lc8/qb;->findHorizontalWrapRecursive(Lc8/ob;[Z)V

    .line 1437
    :cond_0
    iget-boolean v15, v14, Lc8/ob;->mVerticalWrapVisited:Z

    if-nez v15, :cond_1

    .line 1438
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1}, Lc8/qb;->findVerticalWrapRecursive(Lc8/ob;[Z)V

    .line 1440
    :cond_1
    const/4 v15, 0x0

    aget-boolean v15, p2, v15

    if-nez v15, :cond_3

    .line 1475
    .end local v14    # "widget":Lc8/ob;
    :cond_2
    return-void

    .line 1443
    .restart local v14    # "widget":Lc8/ob;
    :cond_3
    iget v15, v14, Lc8/ob;->mDistToLeft:I

    iget v0, v14, Lc8/ob;->mDistToRight:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v14}, Lc8/ob;->getWidth()I

    move-result v16

    sub-int v4, v15, v16

    .line 1444
    .local v4, "connectWidth":I
    iget v15, v14, Lc8/ob;->mDistToTop:I

    iget v0, v14, Lc8/ob;->mDistToBottom:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v14}, Lc8/ob;->getHeight()I

    move-result v16

    sub-int v3, v15, v16

    .line 1445
    .local v3, "connectHeight":I
    iget-object v15, v14, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v16, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 1446
    invoke-virtual {v14}, Lc8/ob;->getWidth()I

    move-result v15

    iget-object v0, v14, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lc8/ib;->mMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iget-object v0, v14, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lc8/ib;->mMargin:I

    move/from16 v16, v0

    add-int v4, v15, v16

    .line 1448
    :cond_4
    iget-object v15, v14, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v16, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 1449
    invoke-virtual {v14}, Lc8/ob;->getHeight()I

    move-result v15

    iget-object v0, v14, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lc8/ib;->mMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iget-object v0, v14, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lc8/ib;->mMargin:I

    move/from16 v16, v0

    add-int v3, v15, v16

    .line 1451
    :cond_5
    invoke-virtual {v14}, Lc8/ob;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1452
    const/4 v4, 0x0

    .line 1453
    const/4 v3, 0x0

    .line 1455
    :cond_6
    iget v15, v14, Lc8/ob;->mDistToLeft:I

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1456
    iget v15, v14, Lc8/ob;->mDistToRight:I

    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1457
    iget v15, v14, Lc8/ob;->mDistToBottom:I

    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1458
    iget v15, v14, Lc8/ob;->mDistToTop:I

    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1459
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1460
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1429
    .end local v3    # "connectHeight":I
    .end local v4    # "connectWidth":I
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1462
    .end local v14    # "widget":Lc8/ob;
    :cond_8
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1463
    .local v6, "max":I
    move-object/from16 v0, p0

    iget v15, v0, Lc8/qb;->mMinWidth:I

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lc8/qb;->mWrapWidth:I

    .line 1464
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1465
    move-object/from16 v0, p0

    iget v15, v0, Lc8/qb;->mMinHeight:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lc8/qb;->mWrapHeight:I

    .line 1466
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v13, :cond_2

    .line 1467
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/ob;

    .line 1468
    .local v2, "child":Lc8/ob;
    const/4 v15, 0x0

    iput-boolean v15, v2, Lc8/ob;->mHorizontalWrapVisited:Z

    .line 1469
    const/4 v15, 0x0

    iput-boolean v15, v2, Lc8/ob;->mVerticalWrapVisited:Z

    .line 1470
    const/4 v15, 0x0

    iput-boolean v15, v2, Lc8/ob;->mLeftHasCentered:Z

    .line 1471
    const/4 v15, 0x0

    iput-boolean v15, v2, Lc8/ob;->mRightHasCentered:Z

    .line 1472
    const/4 v15, 0x0

    iput-boolean v15, v2, Lc8/ob;->mTopHasCentered:Z

    .line 1473
    const/4 v15, 0x0

    iput-boolean v15, v2, Lc8/ob;->mBottomHasCentered:Z

    .line 1466
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public getHorizontalGuidelines()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/sb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1788
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1789
    .local v1, "guidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/Guideline;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "mChildrenSize":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1790
    iget-object v5, p0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/ob;

    .line 1791
    .local v4, "widget":Lc8/ob;
    instance-of v5, v4, Lc8/sb;

    if-eqz v5, :cond_0

    move-object v0, v4

    .line 1792
    check-cast v0, Lc8/sb;

    .line 1793
    .local v0, "guideline":Lc8/sb;
    invoke-virtual {v0}, Lc8/sb;->getOrientation()I

    move-result v5

    if-nez v5, :cond_0

    .line 1794
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1789
    .end local v0    # "guideline":Lc8/sb;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1798
    .end local v4    # "widget":Lc8/ob;
    :cond_1
    return-object v1
.end method

.method public getSystem()Lc8/bb;
    .locals 1

    .prologue
    .line 1802
    iget-object v0, p0, Lc8/qb;->mSystem:Lc8/bb;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string/jumbo v0, "ConstraintLayout"

    return-object v0
.end method

.method public getVerticalGuidelines()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/sb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1769
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1770
    .local v1, "guidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/Guideline;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "mChildrenSize":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1771
    iget-object v5, p0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/ob;

    .line 1772
    .local v4, "widget":Lc8/ob;
    instance-of v5, v4, Lc8/sb;

    if-eqz v5, :cond_0

    move-object v0, v4

    .line 1773
    check-cast v0, Lc8/sb;

    .line 1774
    .local v0, "guideline":Lc8/sb;
    invoke-virtual {v0}, Lc8/sb;->getOrientation()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1775
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    .end local v0    # "guideline":Lc8/sb;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1779
    .end local v4    # "widget":Lc8/ob;
    :cond_1
    return-object v1
.end method

.method public handlesInternalConstraints()Z
    .locals 1

    .prologue
    .line 1756
    const/4 v0, 0x0

    return v0
.end method

.method public isHeightMeasuredTooSmall()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lc8/qb;->mHeightMeasuredTooSmall:Z

    return v0
.end method

.method public isWidthMeasuredTooSmall()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lc8/qb;->mWidthMeasuredTooSmall:Z

    return v0
.end method

.method public layout()V
    .locals 24

    .prologue
    .line 917
    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mX:I

    move/from16 v16, v0

    .line 918
    .local v16, "prex":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mY:I

    move/from16 v17, v0

    .line 919
    .local v17, "prey":I
    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getWidth()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 920
    .local v15, "prew":I
    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getHeight()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 921
    .local v14, "preh":I
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/qb;->mWidthMeasuredTooSmall:Z

    .line 922
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/qb;->mHeightMeasuredTooSmall:Z

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mParent:Lc8/ob;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mSnapshot:Lc8/wb;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 926
    new-instance v21, Lc8/wb;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lc8/wb;-><init>(Lc8/ob;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/qb;->mSnapshot:Lc8/wb;

    .line 928
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mSnapshot:Lc8/wb;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lc8/wb;->updateFrom(Lc8/ob;)V

    .line 933
    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mPaddingLeft:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/qb;->setX(I)V

    .line 934
    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mPaddingTop:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/qb;->setY(I)V

    .line 935
    invoke-virtual/range {p0 .. p0}, Lc8/qb;->resetAnchors()V

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mSystem:Lc8/bb;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lc8/bb;->getCache()Lc8/Z;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/qb;->resetSolverVariables(Lc8/Z;)V

    .line 942
    :goto_0
    const/16 v20, 0x0

    .line 943
    .local v20, "wrap_override":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/qb;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 944
    .local v13, "originalVerticalDimensionBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/qb;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 949
    .local v12, "originalHorizontalDimensionBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mOptimizationLevel:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    sget-object v22, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    sget-object v22, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 953
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->flags:[Z

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lc8/qb;->findWrapSize(Ljava/util/ArrayList;[Z)V

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->flags:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-boolean v20, v21, v22

    .line 958
    if-lez v15, :cond_3

    if-lez v14, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mWrapWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-gt v0, v15, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mWrapHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v0, v14, :cond_3

    .line 961
    :cond_2
    const/16 v20, 0x0

    .line 963
    :cond_3
    if-eqz v20, :cond_5

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    sget-object v22, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 965
    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/qb;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 966
    if-lez v15, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mWrapWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_8

    .line 967
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/qb;->mWidthMeasuredTooSmall:Z

    .line 968
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lc8/qb;->setWidth(I)V

    .line 973
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    sget-object v22, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 974
    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/qb;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 975
    if-lez v14, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mWrapHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_9

    .line 976
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/qb;->mHeightMeasuredTooSmall:Z

    .line 977
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lc8/qb;->setHeight(I)V

    .line 986
    :cond_5
    :goto_2
    invoke-direct/range {p0 .. p0}, Lc8/qb;->resetChains()V

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 991
    .local v4, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v4, :cond_a

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lc8/ob;

    .line 993
    .local v18, "widget":Lc8/ob;
    move-object/from16 v0, v18

    instance-of v0, v0, Lc8/xb;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 994
    check-cast v18, Lc8/xb;

    .end local v18    # "widget":Lc8/ob;
    invoke-virtual/range {v18 .. v18}, Lc8/xb;->layout()V

    .line 991
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 938
    .end local v4    # "count":I
    .end local v8    # "i":I
    .end local v12    # "originalHorizontalDimensionBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v13    # "originalVerticalDimensionBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v20    # "wrap_override":Z
    :cond_7
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lc8/qb;->mX:I

    .line 939
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lc8/qb;->mY:I

    goto/16 :goto_0

    .line 970
    .restart local v12    # "originalHorizontalDimensionBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v13    # "originalVerticalDimensionBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v20    # "wrap_override":Z
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mMinWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mWrapWidth:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/qb;->setWidth(I)V

    goto/16 :goto_1

    .line 979
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mMinHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mWrapHeight:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/qb;->setHeight(I)V

    goto :goto_2

    .line 999
    .restart local v4    # "count":I
    .restart local v8    # "i":I
    :cond_a
    const/4 v11, 0x1

    .line 1000
    .local v11, "needsSolving":Z
    const/4 v5, 0x0

    .line 1001
    .local v5, "countSolve":I
    :cond_b
    :goto_4
    if-eqz v11, :cond_17

    .line 1002
    add-int/lit8 v5, v5, 0x1

    .line 1004
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mSystem:Lc8/bb;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lc8/bb;->reset()V

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mSystem:Lc8/bb;

    move-object/from16 v21, v0

    const v22, 0x7fffffff

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lc8/qb;->addChildrenToSolver(Lc8/bb;I)Z

    move-result v11

    .line 1015
    if-eqz v11, :cond_c

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mSystem:Lc8/bb;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lc8/bb;->minimize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    :cond_c
    :goto_5
    if-eqz v11, :cond_e

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mSystem:Lc8/bb;

    move-object/from16 v21, v0

    const v22, 0x7fffffff

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->flags:[Z

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lc8/qb;->updateChildrenFromSolver(Lc8/bb;I[Z)V

    .line 1039
    :cond_d
    :goto_6
    const/4 v11, 0x0

    .line 1041
    const/16 v21, 0x8

    move/from16 v0, v21

    if-ge v5, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->flags:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_13

    .line 1043
    const/4 v9, 0x0

    .line 1044
    .local v9, "maxX":I
    const/4 v10, 0x0

    .line 1045
    .local v10, "maxY":I
    const/4 v8, 0x0

    :goto_7
    if-ge v8, v4, :cond_11

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lc8/ob;

    .line 1047
    .restart local v18    # "widget":Lc8/ob;
    move-object/from16 v0, v18

    iget v0, v0, Lc8/ob;->mX:I

    move/from16 v21, v0

    invoke-virtual/range {v18 .. v18}, Lc8/ob;->getWidth()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1048
    move-object/from16 v0, v18

    iget v0, v0, Lc8/ob;->mY:I

    move/from16 v21, v0

    invoke-virtual/range {v18 .. v18}, Lc8/ob;->getHeight()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1045
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1018
    .end local v9    # "maxX":I
    .end local v10    # "maxY":I
    .end local v18    # "widget":Lc8/ob;
    :catch_0
    move-exception v6

    .line 1019
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1024
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mSystem:Lc8/bb;

    move-object/from16 v21, v0

    const v22, 0x7fffffff

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lc8/qb;->updateFromSolver(Lc8/bb;I)V

    .line 1025
    const/4 v8, 0x0

    :goto_8
    if-ge v8, v4, :cond_d

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lc8/ob;

    .line 1027
    .restart local v18    # "widget":Lc8/ob;
    move-object/from16 v0, v18

    iget-object v0, v0, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    sget-object v22, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 1028
    invoke-virtual/range {v18 .. v18}, Lc8/ob;->getWidth()I

    move-result v21

    invoke-virtual/range {v18 .. v18}, Lc8/ob;->getWrapWidth()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->flags:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x1

    aput-boolean v23, v21, v22

    goto/16 :goto_6

    .line 1032
    :cond_f
    move-object/from16 v0, v18

    iget-object v0, v0, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    sget-object v22, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 1033
    invoke-virtual/range {v18 .. v18}, Lc8/ob;->getHeight()I

    move-result v21

    invoke-virtual/range {v18 .. v18}, Lc8/ob;->getWrapHeight()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_10

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->flags:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x1

    aput-boolean v23, v21, v22

    goto/16 :goto_6

    .line 1025
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1050
    .end local v18    # "widget":Lc8/ob;
    .restart local v9    # "maxX":I
    .restart local v10    # "maxY":I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mMinWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1051
    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mMinHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1052
    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    if-ne v12, v0, :cond_12

    .line 1053
    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getWidth()I

    move-result v21

    move/from16 v0, v21

    if-ge v0, v9, :cond_12

    .line 1057
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lc8/qb;->setWidth(I)V

    .line 1058
    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/qb;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1059
    const/16 v20, 0x1

    .line 1060
    const/4 v11, 0x1

    .line 1063
    :cond_12
    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    if-ne v13, v0, :cond_13

    .line 1064
    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getHeight()I

    move-result v21

    move/from16 v0, v21

    if-ge v0, v10, :cond_13

    .line 1068
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lc8/qb;->setHeight(I)V

    .line 1069
    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/qb;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1070
    const/16 v20, 0x1

    .line 1071
    const/4 v11, 0x1

    .line 1076
    .end local v9    # "maxX":I
    .end local v10    # "maxY":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mMinWidth:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getWidth()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 1077
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getWidth()I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_14

    .line 1081
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lc8/qb;->setWidth(I)V

    .line 1082
    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/qb;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1083
    const/16 v20, 0x1

    .line 1084
    const/4 v11, 0x1

    .line 1086
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mMinHeight:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getHeight()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1087
    .local v7, "height":I
    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getHeight()I

    move-result v21

    move/from16 v0, v21

    if-le v7, v0, :cond_15

    .line 1091
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lc8/qb;->setHeight(I)V

    .line 1092
    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/qb;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1093
    const/16 v20, 0x1

    .line 1094
    const/4 v11, 0x1

    .line 1097
    :cond_15
    if-nez v20, :cond_b

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    sget-object v22, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_16

    if-lez v15, :cond_16

    .line 1099
    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getWidth()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v15, :cond_16

    .line 1103
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/qb;->mWidthMeasuredTooSmall:Z

    .line 1104
    const/16 v20, 0x1

    .line 1105
    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/qb;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1106
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lc8/qb;->setWidth(I)V

    .line 1107
    const/4 v11, 0x1

    .line 1110
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    sget-object v22, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_b

    if-lez v14, :cond_b

    .line 1111
    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getHeight()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v14, :cond_b

    .line 1115
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/qb;->mHeightMeasuredTooSmall:Z

    .line 1116
    const/16 v20, 0x1

    .line 1117
    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/qb;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1118
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lc8/qb;->setHeight(I)V

    .line 1119
    const/4 v11, 0x1

    goto/16 :goto_4

    .line 1127
    .end local v7    # "height":I
    .end local v19    # "width":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mParent:Lc8/ob;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1a

    .line 1128
    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mMinWidth:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getWidth()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 1129
    .restart local v19    # "width":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mMinHeight:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getHeight()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1131
    .restart local v7    # "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mSnapshot:Lc8/wb;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lc8/wb;->applyTo(Lc8/ob;)V

    .line 1132
    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mPaddingLeft:I

    move/from16 v21, v0

    add-int v21, v21, v19

    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mPaddingRight:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/qb;->setWidth(I)V

    .line 1133
    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mPaddingTop:I

    move/from16 v21, v0

    add-int v21, v21, v7

    move-object/from16 v0, p0

    iget v0, v0, Lc8/qb;->mPaddingBottom:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/qb;->setHeight(I)V

    .line 1138
    .end local v7    # "height":I
    .end local v19    # "width":I
    :goto_9
    if-eqz v20, :cond_18

    .line 1139
    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/qb;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1140
    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/qb;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1142
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mSystem:Lc8/bb;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lc8/bb;->getCache()Lc8/Z;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/qb;->resetSolverVariables(Lc8/Z;)V

    .line 1143
    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getRootConstraintContainer()Lc8/qb;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 1144
    invoke-virtual/range {p0 .. p0}, Lc8/qb;->updateDrawPosition()V

    .line 1146
    :cond_19
    return-void

    .line 1135
    :cond_1a
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lc8/qb;->mX:I

    .line 1136
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lc8/qb;->mY:I

    goto :goto_9
.end method

.method public layoutFindGroups()I
    .locals 19

    .prologue
    .line 1481
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v3, v0, [Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/16 v17, 0x0

    sget-object v18, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    aput-object v18, v3, v17

    const/16 v17, 0x1

    sget-object v18, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    aput-object v18, v3, v17

    const/16 v17, 0x2

    sget-object v18, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    aput-object v18, v3, v17

    const/16 v17, 0x3

    sget-object v18, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    aput-object v18, v3, v17

    const/16 v17, 0x4

    sget-object v18, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    aput-object v18, v3, v17

    .line 1486
    .local v3, "dir":[Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    const/4 v9, 0x1

    .line 1487
    .local v9, "label":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1488
    .local v12, "size":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    if-ge v8, v12, :cond_a

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lc8/ob;

    .line 1492
    .local v16, "widget":Lc8/ob;
    move-object/from16 v0, v16

    iget-object v2, v0, Lc8/ob;->mLeft:Lc8/ib;

    .line 1493
    .local v2, "anchor":Lc8/ib;
    iget-object v0, v2, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 1494
    invoke-static {v2, v9}, Lc8/qb;->setGroup(Lc8/ib;I)I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v9, :cond_0

    .line 1495
    add-int/lit8 v9, v9, 0x1

    .line 1501
    :cond_0
    :goto_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lc8/ob;->mTop:Lc8/ib;

    .line 1502
    iget-object v0, v2, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1503
    invoke-static {v2, v9}, Lc8/qb;->setGroup(Lc8/ib;I)I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v9, :cond_1

    .line 1504
    add-int/lit8 v9, v9, 0x1

    .line 1510
    :cond_1
    :goto_2
    move-object/from16 v0, v16

    iget-object v2, v0, Lc8/ob;->mRight:Lc8/ib;

    .line 1511
    iget-object v0, v2, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1512
    invoke-static {v2, v9}, Lc8/qb;->setGroup(Lc8/ib;I)I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v9, :cond_2

    .line 1513
    add-int/lit8 v9, v9, 0x1

    .line 1519
    :cond_2
    :goto_3
    move-object/from16 v0, v16

    iget-object v2, v0, Lc8/ob;->mBottom:Lc8/ib;

    .line 1520
    iget-object v0, v2, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1521
    invoke-static {v2, v9}, Lc8/qb;->setGroup(Lc8/ib;I)I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v9, :cond_3

    .line 1522
    add-int/lit8 v9, v9, 0x1

    .line 1528
    :cond_3
    :goto_4
    move-object/from16 v0, v16

    iget-object v2, v0, Lc8/ob;->mBaseline:Lc8/ib;

    .line 1529
    iget-object v0, v2, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 1530
    invoke-static {v2, v9}, Lc8/qb;->setGroup(Lc8/ib;I)I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v9, :cond_4

    .line 1531
    add-int/lit8 v9, v9, 0x1

    .line 1488
    :cond_4
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1498
    :cond_5
    const v17, 0x7fffffff

    move/from16 v0, v17

    iput v0, v2, Lc8/ib;->mGroup:I

    goto :goto_1

    .line 1507
    :cond_6
    const v17, 0x7fffffff

    move/from16 v0, v17

    iput v0, v2, Lc8/ib;->mGroup:I

    goto :goto_2

    .line 1516
    :cond_7
    const v17, 0x7fffffff

    move/from16 v0, v17

    iput v0, v2, Lc8/ib;->mGroup:I

    goto :goto_3

    .line 1525
    :cond_8
    const v17, 0x7fffffff

    move/from16 v0, v17

    iput v0, v2, Lc8/ib;->mGroup:I

    goto :goto_4

    .line 1534
    :cond_9
    const v17, 0x7fffffff

    move/from16 v0, v17

    iput v0, v2, Lc8/ib;->mGroup:I

    goto :goto_5

    .line 1537
    .end local v2    # "anchor":Lc8/ib;
    .end local v16    # "widget":Lc8/ob;
    :cond_a
    const/4 v10, 0x1

    .line 1543
    .local v10, "notDone":Z
    :cond_b
    if-eqz v10, :cond_11

    .line 1544
    const/4 v10, 0x0

    .line 1546
    const/4 v8, 0x0

    :goto_6
    if-ge v8, v12, :cond_b

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lc8/ob;

    .line 1548
    .restart local v16    # "widget":Lc8/ob;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_10

    .line 1549
    aget-object v15, v3, v5

    .line 1550
    .local v15, "type":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    const/4 v2, 0x0

    .line 1551
    .restart local v2    # "anchor":Lc8/ib;
    sget-object v17, Lc8/pb;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 1573
    :goto_8
    iget-object v14, v2, Lc8/ib;->mTarget:Lc8/ib;

    .line 1574
    .local v14, "target":Lc8/ib;
    if-eqz v14, :cond_d

    .line 1578
    iget-object v0, v14, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lc8/ob;->getParent()Lc8/ob;

    move-result-object v17

    if-eqz v17, :cond_c

    iget v0, v14, Lc8/ib;->mGroup:I

    move/from16 v17, v0

    iget v0, v2, Lc8/ib;->mGroup:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    .line 1579
    iget v0, v2, Lc8/ib;->mGroup:I

    move/from16 v17, v0

    iget v0, v14, Lc8/ib;->mGroup:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_e

    iget v0, v14, Lc8/ib;->mGroup:I

    move/from16 v17, v0

    :goto_9
    move/from16 v0, v17

    iput v0, v2, Lc8/ib;->mGroup:I

    move/from16 v0, v17

    iput v0, v14, Lc8/ib;->mGroup:I

    .line 1581
    const/4 v10, 0x1

    .line 1584
    :cond_c
    invoke-virtual {v14}, Lc8/ib;->getOpposite()Lc8/ib;

    move-result-object v11

    .line 1585
    .local v11, "opposite":Lc8/ib;
    if-eqz v11, :cond_d

    iget v0, v11, Lc8/ib;->mGroup:I

    move/from16 v17, v0

    iget v0, v2, Lc8/ib;->mGroup:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    .line 1586
    iget v0, v2, Lc8/ib;->mGroup:I

    move/from16 v17, v0

    iget v0, v11, Lc8/ib;->mGroup:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_f

    iget v0, v11, Lc8/ib;->mGroup:I

    move/from16 v17, v0

    :goto_a
    move/from16 v0, v17

    iput v0, v2, Lc8/ib;->mGroup:I

    move/from16 v0, v17

    iput v0, v11, Lc8/ib;->mGroup:I

    .line 1588
    const/4 v10, 0x1

    .line 1548
    .end local v11    # "opposite":Lc8/ib;
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1553
    .end local v14    # "target":Lc8/ib;
    :pswitch_0
    move-object/from16 v0, v16

    iget-object v2, v0, Lc8/ob;->mLeft:Lc8/ib;

    .line 1555
    goto :goto_8

    .line 1557
    :pswitch_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lc8/ob;->mTop:Lc8/ib;

    .line 1559
    goto :goto_8

    .line 1561
    :pswitch_2
    move-object/from16 v0, v16

    iget-object v2, v0, Lc8/ob;->mRight:Lc8/ib;

    .line 1563
    goto :goto_8

    .line 1565
    :pswitch_3
    move-object/from16 v0, v16

    iget-object v2, v0, Lc8/ob;->mBottom:Lc8/ib;

    .line 1567
    goto/16 :goto_8

    .line 1569
    :pswitch_4
    move-object/from16 v0, v16

    iget-object v2, v0, Lc8/ob;->mBaseline:Lc8/ib;

    goto/16 :goto_8

    .line 1579
    .restart local v14    # "target":Lc8/ib;
    :cond_e
    iget v0, v2, Lc8/ib;->mGroup:I

    move/from16 v17, v0

    goto :goto_9

    .line 1586
    .restart local v11    # "opposite":Lc8/ib;
    :cond_f
    iget v0, v2, Lc8/ib;->mGroup:I

    move/from16 v17, v0

    goto :goto_a

    .line 1546
    .end local v2    # "anchor":Lc8/ib;
    .end local v11    # "opposite":Lc8/ib;
    .end local v14    # "target":Lc8/ib;
    .end local v15    # "type":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 1595
    .end local v5    # "i":I
    .end local v16    # "widget":Lc8/ob;
    :cond_11
    const/4 v6, 0x0

    .line 1596
    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    array-length v0, v3

    move/from16 v18, v0

    mul-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    new-array v13, v0, [I

    .line 1597
    .local v13, "table":[I
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1598
    const/4 v8, 0x0

    move v7, v6

    .end local v6    # "index":I
    .local v7, "index":I
    :goto_b
    if-ge v8, v12, :cond_1a

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lc8/ob;

    .line 1602
    .restart local v16    # "widget":Lc8/ob;
    move-object/from16 v0, v16

    iget-object v2, v0, Lc8/ob;->mLeft:Lc8/ib;

    .line 1603
    .restart local v2    # "anchor":Lc8/ib;
    iget v0, v2, Lc8/ib;->mGroup:I

    move/from16 v17, v0

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1c

    .line 1604
    iget v4, v2, Lc8/ib;->mGroup:I

    .line 1605
    .local v4, "g":I
    aget v17, v13, v4

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 1606
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    aput v7, v13, v4

    .line 1608
    :goto_c
    aget v17, v13, v4

    move/from16 v0, v17

    iput v0, v2, Lc8/ib;->mGroup:I

    .line 1611
    .end local v4    # "g":I
    :goto_d
    move-object/from16 v0, v16

    iget-object v2, v0, Lc8/ob;->mTop:Lc8/ib;

    .line 1612
    iget v0, v2, Lc8/ib;->mGroup:I

    move/from16 v17, v0

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 1613
    iget v4, v2, Lc8/ib;->mGroup:I

    .line 1614
    .restart local v4    # "g":I
    aget v17, v13, v4

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 1615
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    aput v6, v13, v4

    move v6, v7

    .line 1617
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :cond_12
    aget v17, v13, v4

    move/from16 v0, v17

    iput v0, v2, Lc8/ib;->mGroup:I

    .line 1620
    .end local v4    # "g":I
    :cond_13
    move-object/from16 v0, v16

    iget-object v2, v0, Lc8/ob;->mRight:Lc8/ib;

    .line 1621
    iget v0, v2, Lc8/ib;->mGroup:I

    move/from16 v17, v0

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    .line 1622
    iget v4, v2, Lc8/ib;->mGroup:I

    .line 1623
    .restart local v4    # "g":I
    aget v17, v13, v4

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 1624
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    aput v6, v13, v4

    move v6, v7

    .line 1626
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :cond_14
    aget v17, v13, v4

    move/from16 v0, v17

    iput v0, v2, Lc8/ib;->mGroup:I

    .line 1629
    .end local v4    # "g":I
    :cond_15
    move-object/from16 v0, v16

    iget-object v2, v0, Lc8/ob;->mBottom:Lc8/ib;

    .line 1630
    iget v0, v2, Lc8/ib;->mGroup:I

    move/from16 v17, v0

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_17

    .line 1631
    iget v4, v2, Lc8/ib;->mGroup:I

    .line 1632
    .restart local v4    # "g":I
    aget v17, v13, v4

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 1633
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    aput v6, v13, v4

    move v6, v7

    .line 1635
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :cond_16
    aget v17, v13, v4

    move/from16 v0, v17

    iput v0, v2, Lc8/ib;->mGroup:I

    .line 1638
    .end local v4    # "g":I
    :cond_17
    move-object/from16 v0, v16

    iget-object v2, v0, Lc8/ob;->mBaseline:Lc8/ib;

    .line 1639
    iget v0, v2, Lc8/ib;->mGroup:I

    move/from16 v17, v0

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_19

    .line 1640
    iget v4, v2, Lc8/ib;->mGroup:I

    .line 1641
    .restart local v4    # "g":I
    aget v17, v13, v4

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 1642
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    aput v6, v13, v4

    move v6, v7

    .line 1644
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :cond_18
    aget v17, v13, v4

    move/from16 v0, v17

    iput v0, v2, Lc8/ib;->mGroup:I

    .line 1598
    .end local v4    # "g":I
    :cond_19
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto/16 :goto_b

    .line 1647
    .end local v2    # "anchor":Lc8/ib;
    .end local v16    # "widget":Lc8/ob;
    :cond_1a
    return v7

    .restart local v2    # "anchor":Lc8/ib;
    .restart local v4    # "g":I
    .restart local v16    # "widget":Lc8/ob;
    :cond_1b
    move v6, v7

    .end local v7    # "index":I
    .restart local v6    # "index":I
    goto/16 :goto_c

    .end local v4    # "g":I
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_1c
    move v6, v7

    .end local v7    # "index":I
    .restart local v6    # "index":I
    goto/16 :goto_d

    .line 1551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public layoutFindGroupsSimple()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1179
    iget-object v3, p0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1180
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1181
    iget-object v3, p0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/ob;

    .line 1182
    .local v2, "widget":Lc8/ob;
    iget-object v3, v2, Lc8/ob;->mLeft:Lc8/ib;

    iput v5, v3, Lc8/ib;->mGroup:I

    .line 1183
    iget-object v3, v2, Lc8/ob;->mRight:Lc8/ib;

    iput v5, v3, Lc8/ib;->mGroup:I

    .line 1184
    iget-object v3, v2, Lc8/ob;->mTop:Lc8/ib;

    iput v4, v3, Lc8/ib;->mGroup:I

    .line 1185
    iget-object v3, v2, Lc8/ob;->mBottom:Lc8/ib;

    iput v4, v3, Lc8/ib;->mGroup:I

    .line 1186
    iget-object v3, v2, Lc8/ob;->mBaseline:Lc8/ib;

    iput v4, v3, Lc8/ib;->mGroup:I

    .line 1180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1188
    .end local v2    # "widget":Lc8/ob;
    :cond_0
    const/4 v3, 0x2

    return v3
.end method

.method public layoutWithGroup(I)V
    .locals 11
    .param p1, "numOfGroups"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1654
    iget v4, p0, Lc8/qb;->mX:I

    .line 1655
    .local v4, "prex":I
    iget v5, p0, Lc8/qb;->mY:I

    .line 1656
    .local v5, "prey":I
    iget-object v8, p0, Lc8/qb;->mParent:Lc8/ob;

    if-eqz v8, :cond_2

    .line 1657
    iget-object v8, p0, Lc8/qb;->mSnapshot:Lc8/wb;

    if-nez v8, :cond_0

    .line 1658
    new-instance v8, Lc8/wb;

    invoke-direct {v8, p0}, Lc8/wb;-><init>(Lc8/ob;)V

    iput-object v8, p0, Lc8/qb;->mSnapshot:Lc8/wb;

    .line 1660
    :cond_0
    iget-object v8, p0, Lc8/qb;->mSnapshot:Lc8/wb;

    invoke-virtual {v8, p0}, Lc8/wb;->updateFrom(Lc8/ob;)V

    .line 1665
    iput v9, p0, Lc8/qb;->mX:I

    .line 1666
    iput v9, p0, Lc8/qb;->mY:I

    .line 1667
    invoke-virtual {p0}, Lc8/qb;->resetAnchors()V

    .line 1668
    iget-object v8, p0, Lc8/qb;->mSystem:Lc8/bb;

    invoke-virtual {v8}, Lc8/bb;->getCache()Lc8/Z;

    move-result-object v8

    invoke-virtual {p0, v8}, Lc8/qb;->resetSolverVariables(Lc8/Z;)V

    .line 1675
    :goto_0
    iget-object v8, p0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1676
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 1677
    iget-object v8, p0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/ob;

    .line 1678
    .local v6, "widget":Lc8/ob;
    instance-of v8, v6, Lc8/xb;

    if-eqz v8, :cond_1

    .line 1679
    check-cast v6, Lc8/xb;

    .end local v6    # "widget":Lc8/ob;
    invoke-virtual {v6}, Lc8/xb;->layout()V

    .line 1676
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1670
    .end local v0    # "count":I
    .end local v3    # "i":I
    :cond_2
    iput v9, p0, Lc8/qb;->mX:I

    .line 1671
    iput v9, p0, Lc8/qb;->mY:I

    goto :goto_0

    .line 1683
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    :cond_3
    iget-object v8, p0, Lc8/qb;->mLeft:Lc8/ib;

    iput v9, v8, Lc8/ib;->mGroup:I

    .line 1684
    iget-object v8, p0, Lc8/qb;->mRight:Lc8/ib;

    iput v9, v8, Lc8/ib;->mGroup:I

    .line 1685
    iget-object v8, p0, Lc8/qb;->mTop:Lc8/ib;

    iput v10, v8, Lc8/ib;->mGroup:I

    .line 1686
    iget-object v8, p0, Lc8/qb;->mBottom:Lc8/ib;

    iput v10, v8, Lc8/ib;->mGroup:I

    .line 1687
    iget-object v8, p0, Lc8/qb;->mSystem:Lc8/bb;

    invoke-virtual {v8}, Lc8/bb;->reset()V

    .line 1721
    const/4 v3, 0x0

    :goto_2
    if-ge v3, p1, :cond_4

    .line 1723
    :try_start_0
    iget-object v8, p0, Lc8/qb;->mSystem:Lc8/bb;

    invoke-virtual {p0, v8, v3}, Lc8/qb;->addToSolver(Lc8/bb;I)V

    .line 1724
    iget-object v8, p0, Lc8/qb;->mSystem:Lc8/bb;

    invoke-virtual {v8}, Lc8/bb;->minimize()V

    .line 1725
    iget-object v8, p0, Lc8/qb;->mSystem:Lc8/bb;

    invoke-virtual {p0, v8, v3}, Lc8/qb;->updateFromSolver(Lc8/bb;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1729
    :goto_3
    iget-object v8, p0, Lc8/qb;->mSystem:Lc8/bb;

    const/4 v9, -0x2

    invoke-virtual {p0, v8, v9}, Lc8/qb;->updateFromSolver(Lc8/bb;I)V

    .line 1721
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1726
    :catch_0
    move-exception v1

    .line 1727
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1733
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v8, p0, Lc8/qb;->mParent:Lc8/ob;

    if-eqz v8, :cond_6

    .line 1734
    invoke-virtual {p0}, Lc8/qb;->getWidth()I

    move-result v7

    .line 1735
    .local v7, "width":I
    invoke-virtual {p0}, Lc8/qb;->getHeight()I

    move-result v2

    .line 1737
    .local v2, "height":I
    iget-object v8, p0, Lc8/qb;->mSnapshot:Lc8/wb;

    invoke-virtual {v8, p0}, Lc8/wb;->applyTo(Lc8/ob;)V

    .line 1738
    invoke-virtual {p0, v7}, Lc8/qb;->setWidth(I)V

    .line 1739
    invoke-virtual {p0, v2}, Lc8/qb;->setHeight(I)V

    .line 1745
    .end local v2    # "height":I
    .end local v7    # "width":I
    :goto_4
    invoke-virtual {p0}, Lc8/qb;->getRootConstraintContainer()Lc8/qb;

    move-result-object v8

    if-ne p0, v8, :cond_5

    .line 1746
    invoke-virtual {p0}, Lc8/qb;->updateDrawPosition()V

    .line 1748
    :cond_5
    return-void

    .line 1741
    :cond_6
    iput v4, p0, Lc8/qb;->mX:I

    .line 1742
    iput v5, p0, Lc8/qb;->mY:I

    goto :goto_4
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lc8/qb;->mSystem:Lc8/bb;

    invoke-virtual {v0}, Lc8/bb;->reset()V

    .line 142
    iput v1, p0, Lc8/qb;->mPaddingLeft:I

    .line 143
    iput v1, p0, Lc8/qb;->mPaddingRight:I

    .line 144
    iput v1, p0, Lc8/qb;->mPaddingTop:I

    .line 145
    iput v1, p0, Lc8/qb;->mPaddingBottom:I

    .line 146
    invoke-super {p0}, Lc8/xb;->reset()V

    .line 147
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 123
    iput p1, p0, Lc8/qb;->mOptimizationLevel:I

    .line 124
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 906
    iput p1, p0, Lc8/qb;->mPaddingLeft:I

    .line 907
    iput p2, p0, Lc8/qb;->mPaddingTop:I

    .line 908
    iput p3, p0, Lc8/qb;->mPaddingRight:I

    .line 909
    iput p4, p0, Lc8/qb;->mPaddingBottom:I

    .line 910
    return-void
.end method

.method public updateChildrenFromSolver(Lc8/bb;I[Z)V
    .locals 7
    .param p1, "system"    # Lc8/bb;
    .param p2, "group"    # I
    .param p3, "flags"    # [Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 880
    const/4 v3, 0x0

    aput-boolean v3, p3, v5

    .line 881
    invoke-virtual {p0, p1, p2}, Lc8/qb;->updateFromSolver(Lc8/bb;I)V

    .line 882
    iget-object v3, p0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 883
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 884
    iget-object v3, p0, Lc8/qb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/ob;

    .line 885
    .local v2, "widget":Lc8/ob;
    invoke-virtual {v2, p1, p2}, Lc8/ob;->updateFromSolver(Lc8/bb;I)V

    .line 886
    iget-object v3, v2, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_0

    .line 887
    invoke-virtual {v2}, Lc8/ob;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lc8/ob;->getWrapWidth()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 888
    aput-boolean v6, p3, v5

    .line 890
    :cond_0
    iget-object v3, v2, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1

    .line 891
    invoke-virtual {v2}, Lc8/ob;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Lc8/ob;->getWrapHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 892
    aput-boolean v6, p3, v5

    .line 883
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 895
    .end local v2    # "widget":Lc8/ob;
    :cond_2
    return-void
.end method
