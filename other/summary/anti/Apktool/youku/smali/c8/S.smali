.class public Lc8/S;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/R;
    }
.end annotation


# static fields
.field static final ALLOWS_EMBEDDED:Z = false

.field private static final SIMPLE_LAYOUT:Z = true

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-1.0.0"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSet:Lc8/V;

.field private mDirtyHierarchy:Z

.field mLayoutWidget:Lc8/qb;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOptimizationLevel:I

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/ob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const v3, 0x7fffffff

    const/4 v2, 0x0

    .line 414
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 395
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/S;->mChildrenByIds:Landroid/util/SparseArray;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/S;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 402
    new-instance v0, Lc8/qb;

    invoke-direct {v0}, Lc8/qb;-><init>()V

    iput-object v0, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    .line 404
    iput v2, p0, Lc8/S;->mMinWidth:I

    .line 405
    iput v2, p0, Lc8/S;->mMinHeight:I

    .line 406
    iput v3, p0, Lc8/S;->mMaxWidth:I

    .line 407
    iput v3, p0, Lc8/S;->mMaxHeight:I

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/S;->mDirtyHierarchy:Z

    .line 410
    const/4 v0, 0x2

    iput v0, p0, Lc8/S;->mOptimizationLevel:I

    .line 411
    iput-object v4, p0, Lc8/S;->mConstraintSet:Lc8/V;

    .line 415
    invoke-direct {p0, v4}, Lc8/S;->init(Landroid/util/AttributeSet;)V

    .line 416
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v3, 0x7fffffff

    const/4 v2, 0x0

    .line 419
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 395
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/S;->mChildrenByIds:Landroid/util/SparseArray;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/S;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 402
    new-instance v0, Lc8/qb;

    invoke-direct {v0}, Lc8/qb;-><init>()V

    iput-object v0, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    .line 404
    iput v2, p0, Lc8/S;->mMinWidth:I

    .line 405
    iput v2, p0, Lc8/S;->mMinHeight:I

    .line 406
    iput v3, p0, Lc8/S;->mMaxWidth:I

    .line 407
    iput v3, p0, Lc8/S;->mMaxHeight:I

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/S;->mDirtyHierarchy:Z

    .line 410
    const/4 v0, 0x2

    iput v0, p0, Lc8/S;->mOptimizationLevel:I

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/S;->mConstraintSet:Lc8/V;

    .line 420
    invoke-direct {p0, p2}, Lc8/S;->init(Landroid/util/AttributeSet;)V

    .line 421
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v3, 0x7fffffff

    const/4 v2, 0x0

    .line 424
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 395
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/S;->mChildrenByIds:Landroid/util/SparseArray;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/S;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 402
    new-instance v0, Lc8/qb;

    invoke-direct {v0}, Lc8/qb;-><init>()V

    iput-object v0, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    .line 404
    iput v2, p0, Lc8/S;->mMinWidth:I

    .line 405
    iput v2, p0, Lc8/S;->mMinHeight:I

    .line 406
    iput v3, p0, Lc8/S;->mMaxWidth:I

    .line 407
    iput v3, p0, Lc8/S;->mMaxHeight:I

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/S;->mDirtyHierarchy:Z

    .line 410
    const/4 v0, 0x2

    iput v0, p0, Lc8/S;->mOptimizationLevel:I

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/S;->mConstraintSet:Lc8/V;

    .line 425
    invoke-direct {p0, p2}, Lc8/S;->init(Landroid/util/AttributeSet;)V

    .line 426
    return-void
.end method

.method private final getTargetWidget(I)Lc8/ob;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 862
    if-nez p1, :cond_0

    .line 863
    iget-object v1, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    .line 869
    :goto_0
    return-object v1

    .line 865
    :cond_0
    iget-object v1, p0, Lc8/S;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 866
    .local v0, "view":Landroid/view/View;
    if-ne v0, p0, :cond_1

    .line 867
    iget-object v1, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    goto :goto_0

    .line 869
    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lc8/R;

    iget-object v1, v1, Lc8/R;->widget:Lc8/ob;

    goto :goto_0
.end method

.method private final getViewWidget(Landroid/view/View;)Lc8/ob;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 874
    if-ne p1, p0, :cond_0

    .line 875
    iget-object v0, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    .line 877
    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/R;

    iget-object v0, v0, Lc8/R;->widget:Lc8/ob;

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 436
    iget-object v5, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    invoke-virtual {v5, p0}, Lc8/qb;->setCompanionWidget(Ljava/lang/Object;)V

    .line 437
    iget-object v5, p0, Lc8/S;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lc8/S;->getId()I

    move-result v6

    invoke-virtual {v5, v6, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    const/4 v5, 0x0

    iput-object v5, p0, Lc8/S;->mConstraintSet:Lc8/V;

    .line 439
    if-eqz p1, :cond_7

    .line 440
    invoke-virtual {p0}, Lc8/S;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/youku/phone/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 441
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 442
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 443
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 444
    .local v2, "attr":I
    sget v5, Lcom/youku/phone/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v2, v5, :cond_1

    .line 445
    iget v5, p0, Lc8/S;->mMinWidth:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lc8/S;->mMinWidth:I

    .line 442
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 446
    :cond_1
    sget v5, Lcom/youku/phone/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v2, v5, :cond_2

    .line 447
    iget v5, p0, Lc8/S;->mMinHeight:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lc8/S;->mMinHeight:I

    goto :goto_1

    .line 448
    :cond_2
    sget v5, Lcom/youku/phone/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v2, v5, :cond_3

    .line 449
    iget v5, p0, Lc8/S;->mMaxWidth:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lc8/S;->mMaxWidth:I

    goto :goto_1

    .line 450
    :cond_3
    sget v5, Lcom/youku/phone/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v2, v5, :cond_4

    .line 451
    iget v5, p0, Lc8/S;->mMaxHeight:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lc8/S;->mMaxHeight:I

    goto :goto_1

    .line 452
    :cond_4
    sget v5, Lcom/youku/phone/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v2, v5, :cond_5

    .line 453
    iget v5, p0, Lc8/S;->mOptimizationLevel:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lc8/S;->mOptimizationLevel:I

    goto :goto_1

    .line 454
    :cond_5
    sget v5, Lcom/youku/phone/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v2, v5, :cond_0

    .line 455
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 456
    .local v4, "id":I
    new-instance v5, Lc8/V;

    invoke-direct {v5}, Lc8/V;-><init>()V

    iput-object v5, p0, Lc8/S;->mConstraintSet:Lc8/V;

    .line 457
    iget-object v5, p0, Lc8/S;->mConstraintSet:Lc8/V;

    invoke-virtual {p0}, Lc8/S;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lc8/V;->load(Landroid/content/Context;I)V

    goto :goto_1

    .line 460
    .end local v2    # "attr":I
    .end local v4    # "id":I
    :cond_6
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 462
    .end local v0    # "N":I
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "i":I
    :cond_7
    iget-object v5, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    iget v6, p0, Lc8/S;->mOptimizationLevel:I

    invoke-virtual {v5, v6}, Lc8/qb;->setOptimizationLevel(I)V

    .line 463
    return-void
.end method

.method private internalMeasureChildren(II)V
    .locals 20
    .param p1, "parentWidthSpec"    # I
    .param p2, "parentHeightSpec"    # I

    .prologue
    .line 881
    invoke-virtual/range {p0 .. p0}, Lc8/S;->getPaddingTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lc8/S;->getPaddingBottom()I

    move-result v19

    add-int v11, v18, v19

    .line 882
    .local v11, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Lc8/S;->getPaddingLeft()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lc8/S;->getPaddingRight()I

    move-result v19

    add-int v17, v18, v19

    .line 884
    .local v17, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Lc8/S;->getChildCount()I

    move-result v15

    .line 885
    .local v15, "widgetsCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v15, :cond_b

    .line 886
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lc8/S;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 887
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 890
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lc8/R;

    .line 891
    .local v13, "params":Lc8/R;
    iget-object v14, v13, Lc8/R;->widget:Lc8/ob;

    .line 892
    .local v14, "widget":Lc8/ob;
    iget-boolean v0, v13, Lc8/R;->isGuideline:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 896
    iget v0, v13, Lc8/R;->width:I

    move/from16 v16, v0

    .line 897
    .local v16, "width":I
    iget v10, v13, Lc8/R;->height:I

    .line 901
    .local v10, "height":I
    iget-boolean v0, v13, Lc8/R;->horizontalDimensionFixed:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    iget-boolean v0, v13, Lc8/R;->verticalDimensionFixed:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    iget-boolean v0, v13, Lc8/R;->horizontalDimensionFixed:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    iget v0, v13, Lc8/R;->matchConstraintDefaultWidth:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, v13, Lc8/R;->width:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    iget-boolean v0, v13, Lc8/R;->verticalDimensionFixed:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    iget v0, v13, Lc8/R;->matchConstraintDefaultHeight:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    iget v0, v13, Lc8/R;->height:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    :cond_1
    const/4 v9, 0x1

    .line 911
    .local v9, "doMeasure":Z
    :goto_1
    const/4 v8, 0x0

    .line 912
    .local v8, "didWrapMeasureWidth":Z
    const/4 v7, 0x0

    .line 914
    .local v7, "didWrapMeasureHeight":Z
    if-eqz v9, :cond_4

    .line 918
    if-eqz v16, :cond_2

    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 919
    :cond_2
    const/16 v18, -0x2

    move/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lc8/S;->getChildMeasureSpec(III)I

    move-result v6

    .line 921
    .local v6, "childWidthMeasureSpec":I
    const/4 v8, 0x1

    .line 926
    :goto_2
    if-eqz v10, :cond_3

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_a

    .line 927
    :cond_3
    const/16 v18, -0x2

    move/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v11, v1}, Lc8/S;->getChildMeasureSpec(III)I

    move-result v5

    .line 929
    .local v5, "childHeightMeasureSpec":I
    const/4 v7, 0x1

    .line 934
    :goto_3
    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    .line 936
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 937
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 940
    .end local v5    # "childHeightMeasureSpec":I
    .end local v6    # "childWidthMeasureSpec":I
    :cond_4
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lc8/ob;->setWidth(I)V

    .line 941
    invoke-virtual {v14, v10}, Lc8/ob;->setHeight(I)V

    .line 942
    if-eqz v8, :cond_5

    .line 943
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lc8/ob;->setWrapWidth(I)V

    .line 945
    :cond_5
    if-eqz v7, :cond_6

    .line 946
    invoke-virtual {v14, v10}, Lc8/ob;->setWrapHeight(I)V

    .line 949
    :cond_6
    iget-boolean v0, v13, Lc8/R;->needsBaseline:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 950
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v3

    .line 951
    .local v3, "baseline":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v3, v0, :cond_7

    .line 952
    invoke-virtual {v14, v3}, Lc8/ob;->setBaselineDistance(I)V

    .line 885
    .end local v3    # "baseline":I
    .end local v7    # "didWrapMeasureHeight":Z
    .end local v8    # "didWrapMeasureWidth":Z
    .end local v9    # "doMeasure":Z
    .end local v10    # "height":I
    .end local v13    # "params":Lc8/R;
    .end local v14    # "widget":Lc8/ob;
    .end local v16    # "width":I
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 901
    .restart local v10    # "height":I
    .restart local v13    # "params":Lc8/R;
    .restart local v14    # "widget":Lc8/ob;
    .restart local v16    # "width":I
    :cond_8
    const/4 v9, 0x0

    goto :goto_1

    .line 923
    .restart local v7    # "didWrapMeasureHeight":Z
    .restart local v8    # "didWrapMeasureWidth":Z
    .restart local v9    # "doMeasure":Z
    :cond_9
    move/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lc8/S;->getChildMeasureSpec(III)I

    move-result v6

    .restart local v6    # "childWidthMeasureSpec":I
    goto :goto_2

    .line 931
    :cond_a
    move/from16 v0, p2

    invoke-static {v0, v11, v10}, Lc8/S;->getChildMeasureSpec(III)I

    move-result v5

    .restart local v5    # "childHeightMeasureSpec":I
    goto :goto_3

    .line 956
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeightMeasureSpec":I
    .end local v6    # "childWidthMeasureSpec":I
    .end local v7    # "didWrapMeasureHeight":Z
    .end local v8    # "didWrapMeasureWidth":Z
    .end local v9    # "doMeasure":Z
    .end local v10    # "height":I
    .end local v13    # "params":Lc8/R;
    .end local v14    # "widget":Lc8/ob;
    .end local v16    # "width":I
    :cond_b
    return-void
.end method

.method private setChildrenConstraints()V
    .locals 33

    .prologue
    .line 636
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/S;->mConstraintSet:Lc8/V;

    if-eqz v3, :cond_0

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/S;->mConstraintSet:Lc8/V;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lc8/V;->applyToInternal(Lc8/S;)V

    .line 639
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lc8/S;->getChildCount()I

    move-result v22

    .line 640
    .local v22, "count":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/S;->mLayoutWidget:Lc8/qb;

    invoke-virtual {v3}, Lc8/qb;->removeAllChildren()V

    .line 641
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_1e

    .line 642
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lc8/S;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 643
    .local v21, "child":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lc8/S;->getViewWidget(Landroid/view/View;)Lc8/ob;

    move-result-object v2

    .line 644
    .local v2, "widget":Lc8/ob;
    if-eqz v2, :cond_5

    .line 648
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Lc8/R;

    .line 649
    .local v25, "layoutParams":Lc8/R;
    invoke-virtual {v2}, Lc8/ob;->reset()V

    .line 650
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Lc8/ob;->setVisibility(I)V

    .line 651
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lc8/ob;->setCompanionWidget(Ljava/lang/Object;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/S;->mLayoutWidget:Lc8/qb;

    invoke-virtual {v3, v2}, Lc8/qb;->add(Lc8/ob;)V

    .line 654
    move-object/from16 v0, v25

    iget-boolean v3, v0, Lc8/R;->verticalDimensionFixed:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, v25

    iget-boolean v3, v0, Lc8/R;->horizontalDimensionFixed:Z

    if-nez v3, :cond_2

    .line 655
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/S;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_2
    move-object/from16 v0, v25

    iget-boolean v3, v0, Lc8/R;->isGuideline:Z

    if-eqz v3, :cond_6

    move-object/from16 v23, v2

    .line 659
    check-cast v23, Lc8/sb;

    .line 660
    .local v23, "guideline":Lc8/sb;
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->guideBegin:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    .line 661
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->guideBegin:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lc8/sb;->setGuideBegin(I)V

    .line 663
    :cond_3
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->guideEnd:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    .line 664
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->guideEnd:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lc8/sb;->setGuideEnd(I)V

    .line 666
    :cond_4
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->guidePercent:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_5

    .line 667
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->guidePercent:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lc8/sb;->setGuidePercent(F)V

    .line 641
    .end local v23    # "guideline":Lc8/sb;
    .end local v25    # "layoutParams":Lc8/R;
    :cond_5
    :goto_1
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 669
    .restart local v25    # "layoutParams":Lc8/R;
    :cond_6
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->resolvedLeftToLeft:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_7

    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->resolvedLeftToRight:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_7

    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->resolvedRightToLeft:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_7

    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->resolvedRightToRight:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_7

    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->topToTop:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_7

    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->topToBottom:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_7

    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->bottomToTop:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_7

    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->bottomToBottom:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_7

    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->baselineToBaseline:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_7

    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->editorAbsoluteX:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_7

    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->editorAbsoluteY:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_7

    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->width:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_7

    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->height:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_5

    .line 684
    :cond_7
    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->resolvedLeftToLeft:I

    move/from16 v27, v0

    .line 685
    .local v27, "resolvedLeftToLeft":I
    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->resolvedLeftToRight:I

    move/from16 v28, v0

    .line 686
    .local v28, "resolvedLeftToRight":I
    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->resolvedRightToLeft:I

    move/from16 v29, v0

    .line 687
    .local v29, "resolvedRightToLeft":I
    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->resolvedRightToRight:I

    move/from16 v30, v0

    .line 688
    .local v30, "resolvedRightToRight":I
    move-object/from16 v0, v25

    iget v7, v0, Lc8/R;->resolveGoneLeftMargin:I

    .line 689
    .local v7, "resolveGoneLeftMargin":I
    move-object/from16 v0, v25

    iget v13, v0, Lc8/R;->resolveGoneRightMargin:I

    .line 690
    .local v13, "resolveGoneRightMargin":I
    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->resolvedHorizontalBias:F

    move/from16 v26, v0

    .line 692
    .local v26, "resolvedHorizontalBias":F
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v3, v5, :cond_9

    .line 695
    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->leftToLeft:I

    move/from16 v27, v0

    .line 696
    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->leftToRight:I

    move/from16 v28, v0

    .line 697
    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->rightToLeft:I

    move/from16 v29, v0

    .line 698
    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->rightToRight:I

    move/from16 v30, v0

    .line 699
    move-object/from16 v0, v25

    iget v7, v0, Lc8/R;->goneLeftMargin:I

    .line 700
    move-object/from16 v0, v25

    iget v13, v0, Lc8/R;->goneRightMargin:I

    .line 701
    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->horizontalBias:F

    move/from16 v26, v0

    .line 703
    const/4 v3, -0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_8

    const/4 v3, -0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_8

    .line 704
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->startToStart:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_14

    .line 705
    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->startToStart:I

    move/from16 v27, v0

    .line 710
    :cond_8
    :goto_2
    const/4 v3, -0x1

    move/from16 v0, v29

    if-ne v0, v3, :cond_9

    const/4 v3, -0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_9

    .line 711
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->endToStart:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_15

    .line 712
    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->endToStart:I

    move/from16 v29, v0

    .line 720
    :cond_9
    :goto_3
    const/4 v3, -0x1

    move/from16 v0, v27

    if-eq v0, v3, :cond_16

    .line 721
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lc8/S;->getTargetWidget(I)Lc8/ob;

    move-result-object v4

    .line 722
    .local v4, "target":Lc8/ob;
    if-eqz v4, :cond_a

    .line 723
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v25

    iget v6, v0, Lc8/R;->leftMargin:I

    invoke-virtual/range {v2 .. v7}, Lc8/ob;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Lc8/ob;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 737
    .end local v4    # "target":Lc8/ob;
    :cond_a
    :goto_4
    const/4 v3, -0x1

    move/from16 v0, v29

    if-eq v0, v3, :cond_17

    .line 738
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lc8/S;->getTargetWidget(I)Lc8/ob;

    move-result-object v4

    .line 739
    .restart local v4    # "target":Lc8/ob;
    if-eqz v4, :cond_b

    .line 740
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v25

    iget v12, v0, Lc8/R;->rightMargin:I

    move-object v8, v2

    move-object v10, v4

    invoke-virtual/range {v8 .. v13}, Lc8/ob;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Lc8/ob;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 754
    .end local v4    # "target":Lc8/ob;
    :cond_b
    :goto_5
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->topToTop:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_18

    .line 755
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->topToTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lc8/S;->getTargetWidget(I)Lc8/ob;

    move-result-object v4

    .line 756
    .restart local v4    # "target":Lc8/ob;
    if-eqz v4, :cond_c

    .line 757
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->topMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->goneTopMargin:I

    move/from16 v19, v0

    move-object v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Lc8/ob;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Lc8/ob;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 771
    .end local v4    # "target":Lc8/ob;
    :cond_c
    :goto_6
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->bottomToTop:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_19

    .line 772
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->bottomToTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lc8/S;->getTargetWidget(I)Lc8/ob;

    move-result-object v4

    .line 773
    .restart local v4    # "target":Lc8/ob;
    if-eqz v4, :cond_d

    .line 774
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->bottomMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->goneBottomMargin:I

    move/from16 v19, v0

    move-object v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Lc8/ob;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Lc8/ob;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 788
    .end local v4    # "target":Lc8/ob;
    :cond_d
    :goto_7
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->baselineToBaseline:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_e

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/S;->mChildrenByIds:Landroid/util/SparseArray;

    move-object/from16 v0, v25

    iget v5, v0, Lc8/R;->baselineToBaseline:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/View;

    .line 790
    .local v32, "view":Landroid/view/View;
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->baselineToBaseline:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lc8/S;->getTargetWidget(I)Lc8/ob;

    move-result-object v4

    .line 791
    .restart local v4    # "target":Lc8/ob;
    if-eqz v4, :cond_e

    if-eqz v32, :cond_e

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Lc8/R;

    if-eqz v3, :cond_e

    .line 792
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Lc8/R;

    .line 793
    .local v31, "targetParams":Lc8/R;
    const/4 v3, 0x1

    move-object/from16 v0, v25

    iput-boolean v3, v0, Lc8/R;->needsBaseline:Z

    .line 794
    const/4 v3, 0x1

    move-object/from16 v0, v31

    iput-boolean v3, v0, Lc8/R;->needsBaseline:Z

    .line 795
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v14

    .line 796
    .local v14, "baseline":Lc8/ib;
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 797
    invoke-virtual {v4, v3}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v15

    .line 798
    .local v15, "targetBaseline":Lc8/ib;
    const/16 v16, 0x0

    const/16 v17, -0x1

    sget-object v18, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v14 .. v20}, Lc8/ib;->connect(Lc8/ib;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    .line 801
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v3

    invoke-virtual {v3}, Lc8/ib;->reset()V

    .line 802
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v3

    invoke-virtual {v3}, Lc8/ib;->reset()V

    .line 806
    .end local v4    # "target":Lc8/ob;
    .end local v14    # "baseline":Lc8/ib;
    .end local v15    # "targetBaseline":Lc8/ib;
    .end local v31    # "targetParams":Lc8/R;
    .end local v32    # "view":Landroid/view/View;
    :cond_e
    const/4 v3, 0x0

    cmpl-float v3, v26, v3

    if-ltz v3, :cond_f

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v26, v3

    if-eqz v3, :cond_f

    .line 807
    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lc8/ob;->setHorizontalBiasPercent(F)V

    .line 809
    :cond_f
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->verticalBias:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_10

    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->verticalBias:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_10

    .line 810
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->verticalBias:F

    invoke-virtual {v2, v3}, Lc8/ob;->setVerticalBiasPercent(F)V

    .line 813
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lc8/S;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->editorAbsoluteX:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_11

    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->editorAbsoluteY:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_12

    .line 815
    :cond_11
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->editorAbsoluteX:I

    move-object/from16 v0, v25

    iget v5, v0, Lc8/R;->editorAbsoluteY:I

    invoke-virtual {v2, v3, v5}, Lc8/ob;->setOrigin(II)V

    .line 819
    :cond_12
    move-object/from16 v0, v25

    iget-boolean v3, v0, Lc8/R;->horizontalDimensionFixed:Z

    if-nez v3, :cond_1b

    .line 820
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->width:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1a

    .line 821
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Lc8/ob;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 822
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v3

    move-object/from16 v0, v25

    iget v5, v0, Lc8/R;->leftMargin:I

    iput v5, v3, Lc8/ib;->mMargin:I

    .line 823
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v3

    move-object/from16 v0, v25

    iget v5, v0, Lc8/R;->rightMargin:I

    iput v5, v3, Lc8/ib;->mMargin:I

    .line 832
    :goto_8
    move-object/from16 v0, v25

    iget-boolean v3, v0, Lc8/R;->verticalDimensionFixed:Z

    if-nez v3, :cond_1d

    .line 833
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->height:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1c

    .line 834
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Lc8/ob;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 835
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v3

    move-object/from16 v0, v25

    iget v5, v0, Lc8/R;->topMargin:I

    iput v5, v3, Lc8/ib;->mMargin:I

    .line 836
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v3

    move-object/from16 v0, v25

    iget v5, v0, Lc8/R;->bottomMargin:I

    iput v5, v3, Lc8/ib;->mMargin:I

    .line 846
    :goto_9
    move-object/from16 v0, v25

    iget-object v3, v0, Lc8/R;->dimensionRatio:Ljava/lang/String;

    if-eqz v3, :cond_13

    .line 847
    move-object/from16 v0, v25

    iget-object v3, v0, Lc8/R;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/ob;->setDimensionRatio(Ljava/lang/String;)V

    .line 849
    :cond_13
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->horizontalWeight:F

    invoke-virtual {v2, v3}, Lc8/ob;->setHorizontalWeight(F)V

    .line 850
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->verticalWeight:F

    invoke-virtual {v2, v3}, Lc8/ob;->setVerticalWeight(F)V

    .line 851
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->horizontalChainStyle:I

    invoke-virtual {v2, v3}, Lc8/ob;->setHorizontalChainStyle(I)V

    .line 852
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->verticalChainStyle:I

    invoke-virtual {v2, v3}, Lc8/ob;->setVerticalChainStyle(I)V

    .line 853
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->matchConstraintDefaultWidth:I

    move-object/from16 v0, v25

    iget v5, v0, Lc8/R;->matchConstraintMinWidth:I

    move-object/from16 v0, v25

    iget v6, v0, Lc8/R;->matchConstraintMaxWidth:I

    invoke-virtual {v2, v3, v5, v6}, Lc8/ob;->setHorizontalMatchStyle(III)V

    .line 855
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->matchConstraintDefaultHeight:I

    move-object/from16 v0, v25

    iget v5, v0, Lc8/R;->matchConstraintMinHeight:I

    move-object/from16 v0, v25

    iget v6, v0, Lc8/R;->matchConstraintMaxHeight:I

    invoke-virtual {v2, v3, v5, v6}, Lc8/ob;->setVerticalMatchStyle(III)V

    goto/16 :goto_1

    .line 706
    :cond_14
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->startToEnd:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_8

    .line 707
    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->startToEnd:I

    move/from16 v28, v0

    goto/16 :goto_2

    .line 713
    :cond_15
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->endToEnd:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_9

    .line 714
    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->endToEnd:I

    move/from16 v30, v0

    goto/16 :goto_3

    .line 727
    :cond_16
    const/4 v3, -0x1

    move/from16 v0, v28

    if-eq v0, v3, :cond_a

    .line 728
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lc8/S;->getTargetWidget(I)Lc8/ob;

    move-result-object v4

    .line 729
    .restart local v4    # "target":Lc8/ob;
    if-eqz v4, :cond_a

    .line 730
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v25

    iget v6, v0, Lc8/R;->leftMargin:I

    invoke-virtual/range {v2 .. v7}, Lc8/ob;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Lc8/ob;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_4

    .line 744
    .end local v4    # "target":Lc8/ob;
    :cond_17
    const/4 v3, -0x1

    move/from16 v0, v30

    if-eq v0, v3, :cond_b

    .line 745
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lc8/S;->getTargetWidget(I)Lc8/ob;

    move-result-object v4

    .line 746
    .restart local v4    # "target":Lc8/ob;
    if-eqz v4, :cond_b

    .line 747
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v25

    iget v12, v0, Lc8/R;->rightMargin:I

    move-object v8, v2

    move-object v10, v4

    invoke-virtual/range {v8 .. v13}, Lc8/ob;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Lc8/ob;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_5

    .line 761
    .end local v4    # "target":Lc8/ob;
    :cond_18
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->topToBottom:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_c

    .line 762
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->topToBottom:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lc8/S;->getTargetWidget(I)Lc8/ob;

    move-result-object v4

    .line 763
    .restart local v4    # "target":Lc8/ob;
    if-eqz v4, :cond_c

    .line 764
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->topMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->goneTopMargin:I

    move/from16 v19, v0

    move-object v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Lc8/ob;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Lc8/ob;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_6

    .line 778
    .end local v4    # "target":Lc8/ob;
    :cond_19
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->bottomToBottom:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_d

    .line 779
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->bottomToBottom:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lc8/S;->getTargetWidget(I)Lc8/ob;

    move-result-object v4

    .line 780
    .restart local v4    # "target":Lc8/ob;
    if-eqz v4, :cond_d

    .line 781
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->bottomMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v25

    iget v0, v0, Lc8/R;->goneBottomMargin:I

    move/from16 v19, v0

    move-object v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Lc8/ob;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Lc8/ob;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_7

    .line 825
    .end local v4    # "target":Lc8/ob;
    :cond_1a
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Lc8/ob;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 826
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/ob;->setWidth(I)V

    goto/16 :goto_8

    .line 829
    :cond_1b
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Lc8/ob;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 830
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->width:I

    invoke-virtual {v2, v3}, Lc8/ob;->setWidth(I)V

    goto/16 :goto_8

    .line 838
    :cond_1c
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Lc8/ob;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 839
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/ob;->setHeight(I)V

    goto/16 :goto_9

    .line 842
    :cond_1d
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Lc8/ob;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 843
    move-object/from16 v0, v25

    iget v3, v0, Lc8/R;->height:I

    invoke-virtual {v2, v3}, Lc8/ob;->setHeight(I)V

    goto/16 :goto_9

    .line 859
    .end local v2    # "widget":Lc8/ob;
    .end local v7    # "resolveGoneLeftMargin":I
    .end local v13    # "resolveGoneRightMargin":I
    .end local v21    # "child":Landroid/view/View;
    .end local v25    # "layoutParams":Lc8/R;
    .end local v26    # "resolvedHorizontalBias":F
    .end local v27    # "resolvedLeftToLeft":I
    .end local v28    # "resolvedLeftToRight":I
    .end local v29    # "resolvedRightToLeft":I
    .end local v30    # "resolvedRightToRight":I
    :cond_1e
    return-void
.end method

.method private setSelfDimensionBehaviour(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v12, 0x0

    .line 1091
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1092
    .local v7, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 1093
    .local v9, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1094
    .local v3, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1096
    .local v5, "heightSize":I
    invoke-virtual {p0}, Lc8/S;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Lc8/S;->getPaddingBottom()I

    move-result v11

    add-int v4, v10, v11

    .line 1097
    .local v4, "heightPadding":I
    invoke-virtual {p0}, Lc8/S;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Lc8/S;->getPaddingRight()I

    move-result v11

    add-int v8, v10, v11

    .line 1099
    .local v8, "widthPadding":I
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1100
    .local v6, "widthBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1101
    .local v2, "heightBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v1, 0x0

    .line 1102
    .local v1, "desiredWidth":I
    const/4 v0, 0x0

    .line 1104
    .local v0, "desiredHeight":I
    invoke-virtual {p0}, Lc8/S;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1105
    sparse-switch v7, :sswitch_data_0

    .line 1119
    :goto_0
    sparse-switch v3, :sswitch_data_1

    .line 1134
    :goto_1
    iget-object v10, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    invoke-virtual {v10, v12}, Lc8/qb;->setMinWidth(I)V

    .line 1135
    iget-object v10, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    invoke-virtual {v10, v12}, Lc8/qb;->setMinHeight(I)V

    .line 1136
    iget-object v10, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    invoke-virtual {v10, v6}, Lc8/qb;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1137
    iget-object v10, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    invoke-virtual {v10, v1}, Lc8/qb;->setWidth(I)V

    .line 1138
    iget-object v10, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    invoke-virtual {v10, v2}, Lc8/qb;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1139
    iget-object v10, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    invoke-virtual {v10, v0}, Lc8/qb;->setHeight(I)V

    .line 1140
    iget-object v10, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    iget v11, p0, Lc8/S;->mMinWidth:I

    invoke-virtual {p0}, Lc8/S;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lc8/S;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Lc8/qb;->setMinWidth(I)V

    .line 1141
    iget-object v10, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    iget v11, p0, Lc8/S;->mMinHeight:I

    invoke-virtual {p0}, Lc8/S;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lc8/S;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Lc8/qb;->setMinHeight(I)V

    .line 1142
    return-void

    .line 1107
    :sswitch_0
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1108
    move v1, v9

    .line 1110
    goto :goto_0

    .line 1112
    :sswitch_1
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1114
    goto :goto_0

    .line 1116
    :sswitch_2
    iget v10, p0, Lc8/S;->mMaxWidth:I

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    sub-int v1, v10, v8

    goto :goto_0

    .line 1121
    :sswitch_3
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1122
    move v0, v5

    .line 1124
    goto :goto_1

    .line 1126
    :sswitch_4
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1128
    goto :goto_1

    .line 1130
    :sswitch_5
    iget v10, p0, Lc8/S;->mMaxHeight:I

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    sub-int v0, v10, v4

    goto :goto_1

    .line 1105
    .line 1119
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_4
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private updateHierarchy()V
    .locals 5

    .prologue
    .line 619
    invoke-virtual {p0}, Lc8/S;->getChildCount()I

    move-result v1

    .line 621
    .local v1, "count":I
    const/4 v3, 0x0

    .line 622
    .local v3, "recompute":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 623
    invoke-virtual {p0, v2}, Lc8/S;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 624
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 625
    const/4 v3, 0x1

    .line 629
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    if-eqz v3, :cond_1

    .line 630
    iget-object v4, p0, Lc8/S;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 631
    invoke-direct {p0}, Lc8/S;->setChildrenConstraints()V

    .line 633
    :cond_1
    return-void

    .line 622
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 470
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 471
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 472
    invoke-virtual {p0, p1}, Lc8/S;->onViewAdded(Landroid/view/View;)V

    .line 474
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1247
    instance-of v0, p1, Lc8/R;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lc8/S;->generateDefaultLayoutParams()Lc8/R;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lc8/R;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1231
    new-instance v0, Lc8/R;

    invoke-direct {v0, v1, v1}, Lc8/R;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lc8/S;->generateLayoutParams(Landroid/util/AttributeSet;)Lc8/R;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1239
    new-instance v0, Lc8/R;

    invoke-direct {v0, p1}, Lc8/R;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lc8/R;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1223
    new-instance v0, Lc8/R;

    invoke-virtual {p0}, Lc8/S;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lc8/R;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lc8/S;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lc8/S;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lc8/S;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lc8/S;->mMinWidth:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1163
    invoke-virtual {p0}, Lc8/S;->getChildCount()I

    move-result v9

    .line 1164
    .local v9, "widgetsCount":I
    invoke-virtual {p0}, Lc8/S;->isInEditMode()Z

    move-result v3

    .line 1165
    .local v3, "isInEditMode":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v9, :cond_2

    .line 1166
    invoke-virtual {p0, v2}, Lc8/S;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1167
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lc8/R;

    .line 1168
    .local v5, "params":Lc8/R;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    iget-boolean v10, v5, Lc8/R;->isGuideline:Z

    if-nez v10, :cond_0

    if-eqz v3, :cond_1

    .line 1174
    :cond_0
    iget-object v8, v5, Lc8/R;->widget:Lc8/ob;

    .line 1176
    .local v8, "widget":Lc8/ob;
    invoke-virtual {v8}, Lc8/ob;->getDrawX()I

    move-result v4

    .line 1177
    .local v4, "l":I
    invoke-virtual {v8}, Lc8/ob;->getDrawY()I

    move-result v7

    .line 1178
    .local v7, "t":I
    invoke-virtual {v8}, Lc8/ob;->getWidth()I

    move-result v10

    add-int v6, v4, v10

    .line 1179
    .local v6, "r":I
    invoke-virtual {v8}, Lc8/ob;->getHeight()I

    move-result v10

    add-int v0, v7, v10

    .line 1197
    .local v0, "b":I
    invoke-virtual {v1, v4, v7, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 1165
    .end local v0    # "b":I
    .end local v4    # "l":I
    .end local v6    # "r":I
    .end local v7    # "t":I
    .end local v8    # "widget":Lc8/ob;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1199
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "params":Lc8/R;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 29
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 963
    invoke-virtual/range {p0 .. p0}, Lc8/S;->getPaddingLeft()I

    move-result v17

    .line 964
    .local v17, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lc8/S;->getPaddingTop()I

    move-result v18

    .line 966
    .local v18, "paddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/S;->mLayoutWidget:Lc8/qb;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/qb;->setX(I)V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/S;->mLayoutWidget:Lc8/qb;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/qb;->setY(I)V

    .line 968
    invoke-direct/range {p0 .. p2}, Lc8/S;->setSelfDimensionBehaviour(II)V

    .line 969
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/S;->mDirtyHierarchy:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    .line 970
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/S;->mDirtyHierarchy:Z

    .line 971
    invoke-direct/range {p0 .. p0}, Lc8/S;->updateHierarchy()V

    .line 973
    :cond_0
    invoke-direct/range {p0 .. p2}, Lc8/S;->internalMeasureChildren(II)V

    .line 982
    invoke-virtual/range {p0 .. p0}, Lc8/S;->getChildCount()I

    move-result v27

    if-lez v27, :cond_1

    .line 983
    invoke-virtual/range {p0 .. p0}, Lc8/S;->solveLinearSystem()V

    .line 985
    :cond_1
    const/4 v7, 0x0

    .line 988
    .local v7, "childState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/S;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 990
    .local v22, "sizeDependentWidgetsCount":I
    invoke-virtual/range {p0 .. p0}, Lc8/S;->getPaddingBottom()I

    move-result v27

    add-int v11, v18, v27

    .line 991
    .local v11, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Lc8/S;->getPaddingRight()I

    move-result v27

    add-int v25, v17, v27

    .line 993
    .local v25, "widthPadding":I
    if-lez v22, :cond_d

    .line 994
    const/16 v16, 0x0

    .line 995
    .local v16, "needSolverPass":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/S;->mLayoutWidget:Lc8/qb;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lc8/qb;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v27

    sget-object v28, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_8

    const/4 v9, 0x1

    .line 997
    .local v9, "containerWrapWidth":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/S;->mLayoutWidget:Lc8/qb;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lc8/qb;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v27

    sget-object v28, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_9

    const/4 v8, 0x1

    .line 999
    .local v8, "containerWrapHeight":Z
    :goto_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move/from16 v0, v22

    if-ge v13, v0, :cond_c

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/S;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lc8/ob;

    .line 1001
    .local v24, "widget":Lc8/ob;
    move-object/from16 v0, v24

    instance-of v0, v0, Lc8/sb;

    move/from16 v27, v0

    if-nez v27, :cond_7

    .line 1004
    invoke-virtual/range {v24 .. v24}, Lc8/ob;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1005
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_7

    .line 1008
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    .line 1015
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lc8/R;

    .line 1016
    .local v19, "params":Lc8/R;
    move-object/from16 v0, v19

    iget v0, v0, Lc8/R;->width:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 1017
    move-object/from16 v0, v19

    iget v0, v0, Lc8/R;->width:I

    move/from16 v27, v0

    move/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lc8/S;->getChildMeasureSpec(III)I

    move-result v26

    .line 1021
    .local v26, "widthSpec":I
    :goto_3
    move-object/from16 v0, v19

    iget v0, v0, Lc8/R;->height:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 1022
    move-object/from16 v0, v19

    iget v0, v0, Lc8/R;->height:I

    move/from16 v27, v0

    move/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v11, v1}, Lc8/S;->getChildMeasureSpec(III)I

    move-result v12

    .line 1028
    .local v12, "heightSpec":I
    :goto_4
    move/from16 v0, v26

    invoke-virtual {v6, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1030
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1031
    .local v15, "measuredWidth":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 1032
    .local v14, "measuredHeight":I
    invoke-virtual/range {v24 .. v24}, Lc8/ob;->getWidth()I

    move-result v27

    move/from16 v0, v27

    if-eq v15, v0, :cond_3

    .line 1033
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lc8/ob;->setWidth(I)V

    .line 1034
    if-eqz v9, :cond_2

    invoke-virtual/range {v24 .. v24}, Lc8/ob;->getRight()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/S;->mLayoutWidget:Lc8/qb;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lc8/qb;->getWidth()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_2

    .line 1035
    invoke-virtual/range {v24 .. v24}, Lc8/ob;->getRight()I

    move-result v27

    sget-object v28, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1036
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lc8/ib;->getMargin()I

    move-result v28

    add-int v23, v27, v28

    .line 1037
    .local v23, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/S;->mLayoutWidget:Lc8/qb;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/S;->mMinWidth:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lc8/qb;->setWidth(I)V

    .line 1039
    .end local v23    # "w":I
    :cond_2
    const/16 v16, 0x1

    .line 1041
    :cond_3
    invoke-virtual/range {v24 .. v24}, Lc8/ob;->getHeight()I

    move-result v27

    move/from16 v0, v27

    if-eq v14, v0, :cond_5

    .line 1042
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lc8/ob;->setHeight(I)V

    .line 1043
    if-eqz v8, :cond_4

    invoke-virtual/range {v24 .. v24}, Lc8/ob;->getBottom()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/S;->mLayoutWidget:Lc8/qb;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lc8/qb;->getHeight()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_4

    .line 1044
    invoke-virtual/range {v24 .. v24}, Lc8/ob;->getBottom()I

    move-result v27

    sget-object v28, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1045
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lc8/ib;->getMargin()I

    move-result v28

    add-int v10, v27, v28

    .line 1046
    .local v10, "h":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/S;->mLayoutWidget:Lc8/qb;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/S;->mMinHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lc8/qb;->setHeight(I)V

    .line 1048
    .end local v10    # "h":I
    :cond_4
    const/16 v16, 0x1

    .line 1050
    :cond_5
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lc8/R;->needsBaseline:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 1051
    invoke-virtual {v6}, Landroid/view/View;->getBaseline()I

    move-result v5

    .line 1052
    .local v5, "baseline":I
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v5, v0, :cond_6

    invoke-virtual/range {v24 .. v24}, Lc8/ob;->getBaselineDistance()I

    move-result v27

    move/from16 v0, v27

    if-eq v5, v0, :cond_6

    .line 1053
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lc8/ob;->setBaselineDistance(I)V

    .line 1054
    const/16 v16, 0x1

    .line 1058
    .end local v5    # "baseline":I
    :cond_6
    sget v27, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v28, 0xb

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_7

    .line 1059
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v27

    move/from16 v0, v27

    invoke-static {v7, v0}, Lc8/S;->combineMeasuredStates(II)I

    move-result v7

    .line 999
    .end local v6    # "child":Landroid/view/View;
    .end local v12    # "heightSpec":I
    .end local v14    # "measuredHeight":I
    .end local v15    # "measuredWidth":I
    .end local v19    # "params":Lc8/R;
    .end local v26    # "widthSpec":I
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 995
    .end local v8    # "containerWrapHeight":Z
    .end local v9    # "containerWrapWidth":Z
    .end local v13    # "i":I
    .end local v24    # "widget":Lc8/ob;
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 997
    .restart local v9    # "containerWrapWidth":Z
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1019
    .restart local v6    # "child":Landroid/view/View;
    .restart local v8    # "containerWrapHeight":Z
    .restart local v13    # "i":I
    .restart local v19    # "params":Lc8/R;
    .restart local v24    # "widget":Lc8/ob;
    :cond_a
    invoke-virtual/range {v24 .. v24}, Lc8/ob;->getWidth()I

    move-result v27

    const/high16 v28, 0x40000000    # 2.0f

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .restart local v26    # "widthSpec":I
    goto/16 :goto_3

    .line 1024
    :cond_b
    invoke-virtual/range {v24 .. v24}, Lc8/ob;->getHeight()I

    move-result v27

    const/high16 v28, 0x40000000    # 2.0f

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .restart local v12    # "heightSpec":I
    goto/16 :goto_4

    .line 1062
    .end local v6    # "child":Landroid/view/View;
    .end local v12    # "heightSpec":I
    .end local v19    # "params":Lc8/R;
    .end local v24    # "widget":Lc8/ob;
    .end local v26    # "widthSpec":I
    :cond_c
    if-eqz v16, :cond_d

    .line 1063
    invoke-virtual/range {p0 .. p0}, Lc8/S;->solveLinearSystem()V

    .line 1067
    .end local v8    # "containerWrapHeight":Z
    .end local v9    # "containerWrapWidth":Z
    .end local v13    # "i":I
    .end local v16    # "needSolverPass":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/S;->mLayoutWidget:Lc8/qb;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lc8/qb;->getWidth()I

    move-result v27

    add-int v4, v27, v25

    .line 1068
    .local v4, "androidLayoutWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/S;->mLayoutWidget:Lc8/qb;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lc8/qb;->getHeight()I

    move-result v27

    add-int v3, v27, v11

    .line 1070
    .local v3, "androidLayoutHeight":I
    sget v27, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v28, 0xb

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_10

    .line 1071
    move/from16 v0, p1

    invoke-static {v4, v0, v7}, Lc8/S;->resolveSizeAndState(III)I

    move-result v21

    .line 1072
    .local v21, "resolvedWidthSize":I
    shl-int/lit8 v27, v7, 0x10

    move/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v3, v0, v1}, Lc8/S;->resolveSizeAndState(III)I

    move-result v20

    .line 1074
    .local v20, "resolvedHeightSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/S;->mMaxWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 1075
    move-object/from16 v0, p0

    iget v0, v0, Lc8/S;->mMaxHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 1076
    const v27, 0xffffff

    and-int v21, v21, v27

    .line 1077
    const v27, 0xffffff

    and-int v20, v20, v27

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/S;->mLayoutWidget:Lc8/qb;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lc8/qb;->isWidthMeasuredTooSmall()Z

    move-result v27

    if-eqz v27, :cond_e

    .line 1079
    const/high16 v27, 0x1000000

    or-int v21, v21, v27

    .line 1081
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/S;->mLayoutWidget:Lc8/qb;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lc8/qb;->isHeightMeasuredTooSmall()Z

    move-result v27

    if-eqz v27, :cond_f

    .line 1082
    const/high16 v27, 0x1000000

    or-int v20, v20, v27

    .line 1084
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lc8/S;->setMeasuredDimension(II)V

    .line 1088
    .end local v20    # "resolvedHeightSize":I
    .end local v21    # "resolvedWidthSize":I
    :goto_5
    return-void

    .line 1086
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lc8/S;->setMeasuredDimension(II)V

    goto :goto_5
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 492
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 493
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 495
    :cond_0
    invoke-direct {p0, p1}, Lc8/S;->getViewWidget(Landroid/view/View;)Lc8/ob;

    move-result-object v1

    .line 496
    .local v1, "widget":Lc8/ob;
    instance-of v2, p1, Lc8/W;

    if-eqz v2, :cond_1

    .line 497
    instance-of v2, v1, Lc8/sb;

    if-nez v2, :cond_1

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/R;

    .line 499
    .local v0, "layoutParams":Lc8/R;
    new-instance v2, Lc8/sb;

    invoke-direct {v2}, Lc8/sb;-><init>()V

    iput-object v2, v0, Lc8/R;->widget:Lc8/ob;

    .line 500
    iput-boolean v4, v0, Lc8/R;->isGuideline:Z

    .line 501
    iget-object v2, v0, Lc8/R;->widget:Lc8/ob;

    check-cast v2, Lc8/sb;

    iget v3, v0, Lc8/R;->orientation:I

    invoke-virtual {v2, v3}, Lc8/sb;->setOrientation(I)V

    .line 505
    .end local v0    # "layoutParams":Lc8/R;
    :cond_1
    iget-object v2, p0, Lc8/S;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 506
    iput-boolean v4, p0, Lc8/S;->mDirtyHierarchy:Z

    .line 507
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 514
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 515
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 517
    :cond_0
    iget-object v0, p0, Lc8/S;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 518
    iget-object v0, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    invoke-direct {p0, p1}, Lc8/S;->getViewWidget(Landroid/view/View;)Lc8/ob;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/qb;->remove(Lc8/ob;)V

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/S;->mDirtyHierarchy:Z

    .line 520
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 481
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 482
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 483
    invoke-virtual {p0, p1}, Lc8/S;->onViewRemoved(Landroid/view/View;)V

    .line 485
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1959
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/S;->mDirtyHierarchy:Z

    .line 1961
    return-void
.end method

.method public setConstraintSet(Lc8/V;)V
    .locals 0
    .param p1, "set"    # Lc8/V;

    .prologue
    .line 1255
    iput-object p1, p0, Lc8/S;->mConstraintSet:Lc8/V;

    .line 1256
    return-void
.end method

.method public setId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 430
    iget-object v0, p0, Lc8/S;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lc8/S;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 431
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 432
    iget-object v0, p0, Lc8/S;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lc8/S;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 433
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 589
    iget v0, p0, Lc8/S;->mMaxHeight:I

    if-ne p1, v0, :cond_0

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_0
    iput p1, p0, Lc8/S;->mMaxHeight:I

    .line 593
    invoke-virtual {p0}, Lc8/S;->requestLayout()V

    goto :goto_0
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 576
    iget v0, p0, Lc8/S;->mMaxWidth:I

    if-ne p1, v0, :cond_0

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    iput p1, p0, Lc8/S;->mMaxWidth:I

    .line 580
    invoke-virtual {p0}, Lc8/S;->requestLayout()V

    goto :goto_0
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 541
    iget v0, p0, Lc8/S;->mMinHeight:I

    if-ne p1, v0, :cond_0

    .line 546
    :goto_0
    return-void

    .line 544
    :cond_0
    iput p1, p0, Lc8/S;->mMinHeight:I

    .line 545
    invoke-virtual {p0}, Lc8/S;->requestLayout()V

    goto :goto_0
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 528
    iget v0, p0, Lc8/S;->mMinWidth:I

    if-ne p1, v0, :cond_0

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    iput p1, p0, Lc8/S;->mMinWidth:I

    .line 532
    invoke-virtual {p0}, Lc8/S;->requestLayout()V

    goto :goto_0
.end method

.method public setOptimizationLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1215
    iget-object v0, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    invoke-virtual {v0, p1}, Lc8/qb;->setOptimizationLevel(I)V

    .line 1216
    return-void
.end method

.method protected solveLinearSystem()V
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lc8/S;->mLayoutWidget:Lc8/qb;

    invoke-virtual {v0}, Lc8/qb;->layout()V

    .line 1156
    return-void
.end method
