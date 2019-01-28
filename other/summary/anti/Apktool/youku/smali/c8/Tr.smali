.class public Lc8/Tr;
.super Lc8/ru;
.source "ActionMenuView.java"

# interfaces
.implements Lc8/Qq;
.implements Lc8/jr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Qr;,
        Lc8/Or;,
        Lc8/Pr;,
        Lc8/Rr;,
        Lc8/Sr;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Lc8/gr;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Lc8/Rq;

.field mMenuBuilderCallback:Lc8/Pq;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Lc8/Sr;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Lc8/Nr;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Tr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Lc8/ru;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    invoke-virtual {p0, v2}, Lc8/Tr;->setBaselineAligned(Z)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 82
    .local v0, "density":F
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lc8/Tr;->mMinCellSize:I

    .line 83
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lc8/Tr;->mGeneratedItemPadding:I

    .line 84
    iput-object p1, p0, Lc8/Tr;->mPopupContext:Landroid/content/Context;

    .line 85
    iput v2, p0, Lc8/Tr;->mPopupTheme:I

    .line 86
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lc8/Qr;

    .line 405
    .local v8, "lp":Lc8/Qr;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 407
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 408
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 410
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lc8/Aq;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Lc8/Aq;

    move-object v7, v11

    .line 412
    .local v7, "itemView":Lc8/Aq;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lc8/Aq;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 414
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 415
    .local v0, "cellsUsed":I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 416
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 418
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 420
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 421
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 422
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 423
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 426
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    iget-boolean v11, v8, Lc8/Qr;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 427
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Lc8/Qr;->expandable:Z

    .line 429
    iput v0, v8, Lc8/Qr;->cellsUsed:I

    .line 430
    mul-int v10, v0, p1

    .line 431
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 433
    return v0

    .line 410
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lc8/Aq;
    .end local v10    # "targetWidth":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 412
    .restart local v7    # "itemView":Lc8/Aq;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 426
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 42
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 177
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 178
    .local v17, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 179
    .local v37, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 181
    .local v19, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lc8/Tr;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lc8/Tr;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .line 182
    .local v36, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Lc8/Tr;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lc8/Tr;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .line 184
    .local v18, "heightPadding":I
    const/16 v38, -0x2

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Lc8/Tr;->getChildMeasureSpec(III)I

    move-result v22

    .line 187
    .local v22, "itemHeightSpec":I
    sub-int v37, v37, v36

    .line 190
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Tr;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .line 191
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Tr;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .line 193
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_0

    .line 195
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lc8/Tr;->setMeasuredDimension(II)V

    .line 386
    :goto_0
    return-void

    .line 199
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Tr;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .line 201
    .local v5, "cellSize":I
    move v8, v4

    .line 202
    .local v8, "cellsRemaining":I
    const/16 v25, 0x0

    .line 203
    .local v25, "maxChildHeight":I
    const/16 v24, 0x0

    .line 204
    .local v24, "maxCellsUsed":I
    const/4 v14, 0x0

    .line 205
    .local v14, "expandableItemCount":I
    const/16 v34, 0x0

    .line 206
    .local v34, "visibleItemCount":I
    const/16 v16, 0x0

    .line 209
    .local v16, "hasOverflow":Z
    const-wide/16 v32, 0x0

    .line 211
    .local v32, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Lc8/Tr;->getChildCount()I

    move-result v12

    .line 212
    .local v12, "childCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v12, :cond_7

    .line 213
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lc8/Tr;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 214
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_4

    .line 216
    instance-of v0, v11, Lc8/Aq;

    move/from16 v21, v0

    .line 217
    .local v21, "isGeneratedItem":Z
    add-int/lit8 v34, v34, 0x1

    .line 219
    if-eqz v21, :cond_1

    .line 222
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Tr;->mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Tr;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 225
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lc8/Qr;

    .line 226
    .local v23, "lp":Lc8/Qr;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lc8/Qr;->expanded:Z

    .line 227
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lc8/Qr;->extraPixels:I

    .line 228
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lc8/Qr;->cellsUsed:I

    .line 229
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lc8/Qr;->expandable:Z

    .line 230
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lc8/Qr;->leftMargin:I

    .line 231
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lc8/Qr;->rightMargin:I

    .line 232
    if-eqz v21, :cond_5

    move-object/from16 v38, v11

    check-cast v38, Lc8/Aq;

    invoke-virtual/range {v38 .. v38}, Lc8/Aq;->hasText()Z

    move-result v38

    if-eqz v38, :cond_5

    const/16 v38, 0x1

    :goto_2
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lc8/Qr;->preventEdgeOffset:Z

    .line 235
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lc8/Qr;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_6

    const/4 v7, 0x1

    .line 237
    .local v7, "cellsAvailable":I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Lc8/Tr;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 240
    .local v9, "cellsUsed":I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 241
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lc8/Qr;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_2

    add-int/lit8 v14, v14, 0x1

    .line 242
    :cond_2
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lc8/Qr;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_3

    const/16 v16, 0x1

    .line 244
    :cond_3
    sub-int/2addr v8, v9

    .line 245
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 246
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_4

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 212
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    .end local v21    # "isGeneratedItem":Z
    .end local v23    # "lp":Lc8/Qr;
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 232
    .restart local v21    # "isGeneratedItem":Z
    .restart local v23    # "lp":Lc8/Qr;
    :cond_5
    const/16 v38, 0x0

    goto :goto_2

    :cond_6
    move v7, v8

    .line 235
    goto :goto_3

    .line 251
    .end local v11    # "child":Landroid/view/View;
    .end local v21    # "isGeneratedItem":Z
    .end local v23    # "lp":Lc8/Qr;
    :cond_7
    if-eqz v16, :cond_9

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_9

    const/4 v10, 0x1

    .line 256
    .local v10, "centerSingleExpandedItem":Z
    :goto_4
    const/16 v30, 0x0

    .line 257
    .local v30, "needsExpansion":Z
    :goto_5
    if-lez v14, :cond_10

    if-lez v8, :cond_10

    .line 258
    const v26, 0x7fffffff

    .line 259
    .local v26, "minCells":I
    const-wide/16 v28, 0x0

    .line 260
    .local v28, "minCellsAt":J
    const/16 v27, 0x0

    .line 261
    .local v27, "minCellsItemCount":I
    const/16 v20, 0x0

    :goto_6
    move/from16 v0, v20

    if-ge v0, v12, :cond_b

    .line 262
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lc8/Tr;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 263
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lc8/Qr;

    .line 266
    .restart local v23    # "lp":Lc8/Qr;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lc8/Qr;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_8

    .line 269
    move-object/from16 v0, v23

    iget v0, v0, Lc8/Qr;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    .line 270
    move-object/from16 v0, v23

    iget v0, v0, Lc8/Qr;->cellsUsed:I

    move/from16 v26, v0

    .line 271
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 272
    const/16 v27, 0x1

    .line 261
    :cond_8
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 251
    .end local v10    # "centerSingleExpandedItem":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lc8/Qr;
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "needsExpansion":Z
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    .line 273
    .restart local v10    # "centerSingleExpandedItem":Z
    .restart local v11    # "child":Landroid/view/View;
    .restart local v23    # "lp":Lc8/Qr;
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    .restart local v30    # "needsExpansion":Z
    :cond_a
    move-object/from16 v0, v23

    iget v0, v0, Lc8/Qr;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 274
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v28, v28, v38

    .line 275
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .line 280
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lc8/Qr;
    :cond_b
    or-long v32, v32, v28

    .line 282
    move/from16 v0, v27

    if-gt v0, v8, :cond_10

    .line 285
    add-int/lit8 v26, v26, 0x1

    .line 287
    const/16 v20, 0x0

    :goto_8
    move/from16 v0, v20

    if-ge v0, v12, :cond_f

    .line 288
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lc8/Tr;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 289
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lc8/Qr;

    .line 290
    .restart local v23    # "lp":Lc8/Qr;
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v28

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_d

    .line 292
    move-object/from16 v0, v23

    iget v0, v0, Lc8/Qr;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 287
    :cond_c
    :goto_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 296
    :cond_d
    if-eqz v10, :cond_e

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lc8/Qr;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_e

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_e

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Tr;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Tr;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 300
    :cond_e
    move-object/from16 v0, v23

    iget v0, v0, Lc8/Qr;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lc8/Qr;->cellsUsed:I

    .line 301
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lc8/Qr;->expanded:Z

    .line 302
    add-int/lit8 v8, v8, -0x1

    goto :goto_9

    .line 305
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lc8/Qr;
    :cond_f
    const/16 v30, 0x1

    .line 306
    goto/16 :goto_5

    .line 311
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_10
    if-nez v16, :cond_16

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_16

    const/16 v31, 0x1

    .line 312
    .local v31, "singleItem":Z
    :goto_a
    if-lez v8, :cond_1b

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_1b

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_11

    if-nez v31, :cond_11

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_1b

    .line 314
    :cond_11
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .line 316
    .local v13, "expandCount":F
    if-nez v31, :cond_13

    .line 318
    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_12

    .line 319
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lc8/Tr;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lc8/Qr;

    .line 320
    .restart local v23    # "lp":Lc8/Qr;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lc8/Qr;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_12

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 322
    .end local v23    # "lp":Lc8/Qr;
    :cond_12
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_13

    .line 323
    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lc8/Tr;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lc8/Qr;

    .line 324
    .restart local v23    # "lp":Lc8/Qr;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lc8/Qr;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_13

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 328
    .end local v23    # "lp":Lc8/Qr;
    :cond_13
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_17

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .line 331
    .local v15, "extraPixels":I
    :goto_b
    const/16 v20, 0x0

    :goto_c
    move/from16 v0, v20

    if-ge v0, v12, :cond_1b

    .line 332
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_15

    .line 334
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lc8/Tr;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 335
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lc8/Qr;

    .line 336
    .restart local v23    # "lp":Lc8/Qr;
    instance-of v0, v11, Lc8/Aq;

    move/from16 v38, v0

    if-eqz v38, :cond_18

    .line 338
    move-object/from16 v0, v23

    iput v15, v0, Lc8/Qr;->extraPixels:I

    .line 339
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lc8/Qr;->expanded:Z

    .line 340
    if-nez v20, :cond_14

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lc8/Qr;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_14

    .line 343
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lc8/Qr;->leftMargin:I

    .line 345
    :cond_14
    const/16 v30, 0x1

    .line 331
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lc8/Qr;
    :cond_15
    :goto_d
    add-int/lit8 v20, v20, 0x1

    goto :goto_c

    .line 311
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    .end local v31    # "singleItem":Z
    :cond_16
    const/16 v31, 0x0

    goto/16 :goto_a

    .line 328
    .restart local v13    # "expandCount":F
    .restart local v31    # "singleItem":Z
    :cond_17
    const/4 v15, 0x0

    goto :goto_b

    .line 346
    .restart local v11    # "child":Landroid/view/View;
    .restart local v15    # "extraPixels":I
    .restart local v23    # "lp":Lc8/Qr;
    :cond_18
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lc8/Qr;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_19

    .line 347
    move-object/from16 v0, v23

    iput v15, v0, Lc8/Qr;->extraPixels:I

    .line 348
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lc8/Qr;->expanded:Z

    .line 349
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lc8/Qr;->rightMargin:I

    .line 350
    const/16 v30, 0x1

    goto :goto_d

    .line 355
    :cond_19
    if-eqz v20, :cond_1a

    .line 356
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lc8/Qr;->leftMargin:I

    .line 358
    :cond_1a
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v38

    if-eq v0, v1, :cond_15

    .line 359
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lc8/Qr;->rightMargin:I

    goto :goto_d

    .line 368
    .end local v11    # "child":Landroid/view/View;
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    .end local v23    # "lp":Lc8/Qr;
    :cond_1b
    if-eqz v30, :cond_1d

    .line 369
    const/16 v20, 0x0

    :goto_e
    move/from16 v0, v20

    if-ge v0, v12, :cond_1d

    .line 370
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lc8/Tr;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 371
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lc8/Qr;

    .line 373
    .restart local v23    # "lp":Lc8/Qr;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lc8/Qr;->expanded:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1c

    .line 375
    move-object/from16 v0, v23

    iget v0, v0, Lc8/Qr;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Lc8/Qr;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .line 376
    .local v35, "width":I
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    .line 369
    .end local v35    # "width":I
    :cond_1c
    add-int/lit8 v20, v20, 0x1

    goto :goto_e

    .line 381
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lc8/Qr;
    :cond_1d
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_1e

    .line 382
    move/from16 v19, v25

    .line 385
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lc8/Tr;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 609
    if-eqz p1, :cond_0

    instance-of v0, p1, Lc8/Qr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    invoke-virtual {v0}, Lc8/Nr;->dismissPopupMenus()Z

    .line 722
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lc8/Tr;->generateDefaultLayoutParams()Lc8/Qr;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lc8/Qr;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 582
    new-instance v0, Lc8/Qr;

    invoke-direct {v0, v1, v1}, Lc8/Qr;-><init>(II)V

    .line 584
    .local v0, "params":Lc8/Qr;
    const/16 v1, 0x10

    iput v1, v0, Lc8/Qr;->gravity:I

    .line 585
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lc8/pu;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lc8/Tr;->generateDefaultLayoutParams()Lc8/Qr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lc8/Tr;->generateLayoutParams(Landroid/util/AttributeSet;)Lc8/Qr;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lc8/Tr;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lc8/Qr;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lc8/Qr;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 590
    new-instance v0, Lc8/Qr;

    invoke-virtual {p0}, Lc8/Tr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lc8/Qr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lc8/Qr;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 595
    if-eqz p1, :cond_2

    .line 596
    instance-of v1, p1, Lc8/Qr;

    if-eqz v1, :cond_1

    new-instance v0, Lc8/Qr;

    check-cast p1, Lc8/Qr;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lc8/Qr;-><init>(Lc8/Qr;)V

    .line 599
    .local v0, "result":Lc8/Qr;
    :goto_0
    iget v1, v0, Lc8/Qr;->gravity:I

    if-gtz v1, :cond_0

    .line 600
    const/16 v1, 0x10

    iput v1, v0, Lc8/Qr;->gravity:I

    .line 604
    .end local v0    # "result":Lc8/Qr;
    :cond_0
    :goto_1
    return-object v0

    .line 596
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lc8/Qr;

    invoke-direct {v0, p1}, Lc8/Qr;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 604
    :cond_2
    invoke-virtual {p0}, Lc8/Tr;->generateDefaultLayoutParams()Lc8/Qr;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lc8/pu;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lc8/Tr;->generateLayoutParams(Landroid/util/AttributeSet;)Lc8/Qr;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lc8/pu;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lc8/Tr;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lc8/Qr;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Lc8/Qr;
    .locals 2
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 615
    invoke-virtual {p0}, Lc8/Tr;->generateDefaultLayoutParams()Lc8/Qr;

    move-result-object v0

    .line 616
    .local v0, "result":Lc8/Qr;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Qr;->isOverflowButton:Z

    .line 617
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    .line 647
    iget-object v1, p0, Lc8/Tr;->mMenu:Lc8/Rq;

    if-nez v1, :cond_0

    .line 648
    invoke-virtual {p0}, Lc8/Tr;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 649
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lc8/Rq;

    invoke-direct {v1, v0}, Lc8/Rq;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc8/Tr;->mMenu:Lc8/Rq;

    .line 650
    iget-object v1, p0, Lc8/Tr;->mMenu:Lc8/Rq;

    new-instance v2, Lc8/Rr;

    invoke-direct {v2, p0}, Lc8/Rr;-><init>(Lc8/Tr;)V

    invoke-virtual {v1, v2}, Lc8/Rq;->setCallback(Lc8/Pq;)V

    .line 651
    new-instance v1, Lc8/Nr;

    invoke-direct {v1, v0}, Lc8/Nr;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    .line 652
    iget-object v1, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lc8/Nr;->setReserveOverflow(Z)V

    .line 653
    iget-object v2, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    iget-object v1, p0, Lc8/Tr;->mActionMenuPresenterCallback:Lc8/gr;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/Tr;->mActionMenuPresenterCallback:Lc8/gr;

    :goto_0
    invoke-virtual {v2, v1}, Lc8/Nr;->setCallback(Lc8/gr;)V

    .line 655
    iget-object v1, p0, Lc8/Tr;->mMenu:Lc8/Rq;

    iget-object v2, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    iget-object v3, p0, Lc8/Tr;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lc8/Rq;->addMenuPresenter(Lc8/hr;Landroid/content/Context;)V

    .line 656
    iget-object v1, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    invoke-virtual {v1, p0}, Lc8/Nr;->setMenuView(Lc8/Tr;)V

    .line 659
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lc8/Tr;->mMenu:Lc8/Rq;

    return-object v1

    .line 653
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Lc8/Pr;

    invoke-direct {v1, p0}, Lc8/Pr;-><init>(Lc8/Tr;)V

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 564
    invoke-virtual {p0}, Lc8/Tr;->getMenu()Landroid/view/Menu;

    .line 565
    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    invoke-virtual {v0}, Lc8/Nr;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lc8/Tr;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 729
    if-nez p1, :cond_1

    .line 730
    const/4 v2, 0x0

    .line 741
    :cond_0
    :goto_0
    return v2

    .line 732
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lc8/Tr;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 733
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Lc8/Tr;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 734
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 735
    .local v2, "result":Z
    invoke-virtual {p0}, Lc8/Tr;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Lc8/Or;

    if-eqz v3, :cond_2

    .line 736
    check-cast v1, Lc8/Or;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Lc8/Or;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 738
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Lc8/Or;

    if-eqz v3, :cond_0

    .line 739
    check-cast v0, Lc8/Or;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Lc8/Or;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    invoke-virtual {v0}, Lc8/Nr;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lc8/Rq;)V
    .locals 0
    .param p1, "menu"    # Lc8/Rq;
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 635
    iput-object p1, p0, Lc8/Tr;->mMenu:Lc8/Rq;

    .line 636
    return-void
.end method

.method public invokeItem(Lc8/Vq;)Z
    .locals 2
    .param p1, "item"    # Lc8/Vq;
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Lc8/Tr;->mMenu:Lc8/Rq;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lc8/Rq;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    invoke-virtual {v0}, Lc8/Nr;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    invoke-virtual {v0}, Lc8/Nr;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 571
    iget-boolean v0, p0, Lc8/Tr;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lc8/ru;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Nr;->updateMenuView(Z)V

    .line 132
    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    invoke-virtual {v0}, Lc8/Nr;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    invoke-virtual {v0}, Lc8/Nr;->hideOverflowMenu()Z

    .line 134
    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    invoke-virtual {v0}, Lc8/Nr;->showOverflowMenu()Z

    .line 137
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 543
    invoke-super {p0}, Lc8/ru;->onDetachedFromWindow()V

    .line 544
    invoke-virtual {p0}, Lc8/Tr;->dismissPopupMenus()V

    .line 545
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 31
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 438
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Tr;->mFormatItems:Z

    move/from16 v29, v0

    if-nez v29, :cond_1

    .line 439
    invoke-super/range {p0 .. p5}, Lc8/ru;->onLayout(ZIIII)V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lc8/Tr;->getChildCount()I

    move-result v6

    .line 444
    .local v6, "childCount":I
    sub-int v29, p5, p3

    div-int/lit8 v15, v29, 0x2

    .line 445
    .local v15, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Lc8/Tr;->getDividerWidth()I

    move-result v7

    .line 448
    .local v7, "dividerWidth":I
    const/16 v16, 0x0

    .line 449
    .local v16, "nonOverflowCount":I
    sub-int v29, p4, p2

    invoke-virtual/range {p0 .. p0}, Lc8/Tr;->getPaddingRight()I

    move-result v30

    sub-int v29, v29, v30

    invoke-virtual/range {p0 .. p0}, Lc8/Tr;->getPaddingLeft()I

    move-result v30

    sub-int v28, v29, v30

    .line 450
    .local v28, "widthRemaining":I
    const/4 v8, 0x0

    .line 451
    .local v8, "hasOverflow":Z
    invoke-static/range {p0 .. p0}, Lc8/yx;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    .line 452
    .local v11, "isLayoutRtl":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_6

    .line 453
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lc8/Tr;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 454
    .local v26, "v":Landroid/view/View;
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_3

    .line 458
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lc8/Qr;

    .line 459
    .local v18, "p":Lc8/Qr;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lc8/Qr;->isOverflowButton:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 460
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 461
    .local v17, "overflowWidth":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lc8/Tr;->hasSupportDividerBeforeChildAt(I)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 462
    add-int v17, v17, v7

    .line 464
    :cond_2
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 467
    .local v9, "height":I
    if-eqz v11, :cond_4

    .line 468
    invoke-virtual/range {p0 .. p0}, Lc8/Tr;->getPaddingLeft()I

    move-result v29

    move-object/from16 v0, v18

    iget v0, v0, Lc8/Qr;->leftMargin:I

    move/from16 v30, v0

    add-int v12, v29, v30

    .line 469
    .local v12, "l":I
    add-int v19, v12, v17

    .line 474
    .local v19, "r":I
    :goto_2
    div-int/lit8 v29, v9, 0x2

    sub-int v25, v15, v29

    .line 475
    .local v25, "t":I
    add-int v5, v25, v9

    .line 476
    .local v5, "b":I
    move-object/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 478
    sub-int v28, v28, v17

    .line 479
    const/4 v8, 0x1

    .line 452
    .end local v5    # "b":I
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v17    # "overflowWidth":I
    .end local v18    # "p":Lc8/Qr;
    .end local v19    # "r":I
    .end local v25    # "t":I
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 471
    .restart local v9    # "height":I
    .restart local v17    # "overflowWidth":I
    .restart local v18    # "p":Lc8/Qr;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lc8/Tr;->getWidth()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lc8/Tr;->getPaddingRight()I

    move-result v30

    sub-int v29, v29, v30

    move-object/from16 v0, v18

    iget v0, v0, Lc8/Qr;->rightMargin:I

    move/from16 v30, v0

    sub-int v19, v29, v30

    .line 472
    .restart local v19    # "r":I
    sub-int v12, v19, v17

    .restart local v12    # "l":I
    goto :goto_2

    .line 481
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v17    # "overflowWidth":I
    .end local v19    # "r":I
    :cond_5
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    move-object/from16 v0, v18

    iget v0, v0, Lc8/Qr;->leftMargin:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move-object/from16 v0, v18

    iget v0, v0, Lc8/Qr;->rightMargin:I

    move/from16 v30, v0

    add-int v20, v29, v30

    .line 483
    .local v20, "size":I
    sub-int v28, v28, v20

    .line 484
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lc8/Tr;->hasSupportDividerBeforeChildAt(I)Z

    .line 487
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 491
    .end local v18    # "p":Lc8/Qr;
    .end local v20    # "size":I
    .end local v26    # "v":Landroid/view/View;
    :cond_6
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v6, v0, :cond_7

    if-nez v8, :cond_7

    .line 493
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lc8/Tr;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 494
    .restart local v26    # "v":Landroid/view/View;
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    .line 495
    .local v27, "width":I
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 496
    .restart local v9    # "height":I
    sub-int v29, p4, p2

    div-int/lit8 v14, v29, 0x2

    .line 497
    .local v14, "midHorizontal":I
    div-int/lit8 v29, v27, 0x2

    sub-int v12, v14, v29

    .line 498
    .restart local v12    # "l":I
    div-int/lit8 v29, v9, 0x2

    sub-int v25, v15, v29

    .line 499
    .restart local v25    # "t":I
    add-int v29, v12, v27

    add-int v30, v25, v9

    move-object/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 503
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v14    # "midHorizontal":I
    .end local v25    # "t":I
    .end local v26    # "v":Landroid/view/View;
    .end local v27    # "width":I
    :cond_7
    if-eqz v8, :cond_9

    const/16 v29, 0x0

    :goto_4
    sub-int v21, v16, v29

    .line 504
    .local v21, "spacerCount":I
    const/16 v30, 0x0

    if-lez v21, :cond_a

    div-int v29, v28, v21

    :goto_5
    move/from16 v0, v30

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 506
    .local v22, "spacerSize":I
    if-eqz v11, :cond_b

    .line 507
    invoke-virtual/range {p0 .. p0}, Lc8/Tr;->getWidth()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lc8/Tr;->getPaddingRight()I

    move-result v30

    sub-int v24, v29, v30

    .line 508
    .local v24, "startRight":I
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v6, :cond_0

    .line 509
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lc8/Tr;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 510
    .restart local v26    # "v":Landroid/view/View;
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lc8/Qr;

    .line 511
    .local v13, "lp":Lc8/Qr;
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_8

    iget-boolean v0, v13, Lc8/Qr;->isOverflowButton:Z

    move/from16 v29, v0

    if-nez v29, :cond_8

    .line 515
    iget v0, v13, Lc8/Qr;->rightMargin:I

    move/from16 v29, v0

    sub-int v24, v24, v29

    .line 516
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    .line 517
    .restart local v27    # "width":I
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 518
    .restart local v9    # "height":I
    div-int/lit8 v29, v9, 0x2

    sub-int v25, v15, v29

    .line 519
    .restart local v25    # "t":I
    sub-int v29, v24, v27

    add-int v30, v25, v9

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v25

    move/from16 v3, v24

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 520
    iget v0, v13, Lc8/Qr;->leftMargin:I

    move/from16 v29, v0

    add-int v29, v29, v27

    add-int v29, v29, v22

    sub-int v24, v24, v29

    .line 508
    .end local v9    # "height":I
    .end local v25    # "t":I
    .end local v27    # "width":I
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 503
    .end local v13    # "lp":Lc8/Qr;
    .end local v21    # "spacerCount":I
    .end local v22    # "spacerSize":I
    .end local v24    # "startRight":I
    .end local v26    # "v":Landroid/view/View;
    :cond_9
    const/16 v29, 0x1

    goto :goto_4

    .line 504
    .restart local v21    # "spacerCount":I
    :cond_a
    const/16 v29, 0x0

    goto :goto_5

    .line 523
    .restart local v22    # "spacerSize":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lc8/Tr;->getPaddingLeft()I

    move-result v23

    .line 524
    .local v23, "startLeft":I
    const/4 v10, 0x0

    :goto_7
    if-ge v10, v6, :cond_0

    .line 525
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lc8/Tr;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 526
    .restart local v26    # "v":Landroid/view/View;
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lc8/Qr;

    .line 527
    .restart local v13    # "lp":Lc8/Qr;
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_c

    iget-boolean v0, v13, Lc8/Qr;->isOverflowButton:Z

    move/from16 v29, v0

    if-nez v29, :cond_c

    .line 531
    iget v0, v13, Lc8/Qr;->leftMargin:I

    move/from16 v29, v0

    add-int v23, v23, v29

    .line 532
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    .line 533
    .restart local v27    # "width":I
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 534
    .restart local v9    # "height":I
    div-int/lit8 v29, v9, 0x2

    sub-int v25, v15, v29

    .line 535
    .restart local v25    # "t":I
    add-int v29, v23, v27

    add-int v30, v25, v9

    move-object/from16 v0, v26

    move/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 536
    iget v0, v13, Lc8/Qr;->rightMargin:I

    move/from16 v29, v0

    add-int v29, v29, v27

    add-int v29, v29, v22

    add-int v23, v23, v29

    .line 524
    .end local v9    # "height":I
    .end local v25    # "t":I
    .end local v27    # "width":I
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_7
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 146
    iget-boolean v4, p0, Lc8/Tr;->mFormatItems:Z

    .line 147
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lc8/Tr;->mFormatItems:Z

    .line 149
    iget-boolean v6, p0, Lc8/Tr;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 150
    iput v8, p0, Lc8/Tr;->mFormatItemsWidth:I

    .line 155
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 156
    .local v5, "widthSize":I
    iget-boolean v6, p0, Lc8/Tr;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lc8/Tr;->mMenu:Lc8/Rq;

    if-eqz v6, :cond_1

    iget v6, p0, Lc8/Tr;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 157
    iput v5, p0, Lc8/Tr;->mFormatItemsWidth:I

    .line 158
    iget-object v6, p0, Lc8/Tr;->mMenu:Lc8/Rq;

    invoke-virtual {v6, v7}, Lc8/Rq;->onItemsChanged(Z)V

    .line 161
    :cond_1
    invoke-virtual {p0}, Lc8/Tr;->getChildCount()I

    move-result v1

    .line 162
    .local v1, "childCount":I
    iget-boolean v6, p0, Lc8/Tr;->mFormatItems:Z

    if-eqz v6, :cond_3

    if-lez v1, :cond_3

    .line 163
    invoke-direct {p0, p1, p2}, Lc8/Tr;->onMeasureExactFormat(II)V

    .line 173
    :goto_1
    return-void

    .end local v1    # "childCount":I
    .end local v5    # "widthSize":I
    :cond_2
    move v6, v8

    .line 147
    goto :goto_0

    .line 166
    .restart local v1    # "childCount":I
    .restart local v5    # "widthSize":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 167
    invoke-virtual {p0, v2}, Lc8/Tr;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 168
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lc8/Qr;

    .line 169
    .local v3, "lp":Lc8/Qr;
    iput v8, v3, Lc8/Qr;->rightMargin:I

    iput v8, v3, Lc8/Qr;->leftMargin:I

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 171
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lc8/Qr;
    :cond_4
    invoke-super {p0, p1, p2}, Lc8/ru;->onMeasure(II)V

    goto :goto_1
.end method

.method public peekMenu()Lc8/Rq;
    .locals 1
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 678
    iget-object v0, p0, Lc8/Tr;->mMenu:Lc8/Rq;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 751
    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    invoke-virtual {v0, p1}, Lc8/Nr;->setExpandedActionViewsExclusive(Z)V

    .line 752
    return-void
.end method

.method public setMenuCallbacks(Lc8/gr;Lc8/Pq;)V
    .locals 0
    .param p1, "pcb"    # Lc8/gr;
    .param p2, "mcb"    # Lc8/Pq;
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 668
    iput-object p1, p0, Lc8/Tr;->mActionMenuPresenterCallback:Lc8/gr;

    .line 669
    iput-object p2, p0, Lc8/Tr;->mMenuBuilderCallback:Lc8/Pq;

    .line 670
    return-void
.end method

.method public setOnMenuItemClickListener(Lc8/Sr;)V
    .locals 0
    .param p1, "listener"    # Lc8/Sr;

    .prologue
    .line 140
    iput-object p1, p0, Lc8/Tr;->mOnMenuItemClickListener:Lc8/Sr;

    .line 141
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 553
    invoke-virtual {p0}, Lc8/Tr;->getMenu()Landroid/view/Menu;

    .line 554
    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    invoke-virtual {v0, p1}, Lc8/Nr;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 555
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 577
    iput-boolean p1, p0, Lc8/Tr;->mReserveOverflow:Z

    .line 578
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 96
    iget v0, p0, Lc8/Tr;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 97
    iput p1, p0, Lc8/Tr;->mPopupTheme:I

    .line 98
    if-nez p1, :cond_1

    .line 99
    invoke-virtual {p0}, Lc8/Tr;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/Tr;->mPopupContext:Landroid/content/Context;

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lc8/Tr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lc8/Tr;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Lc8/Nr;)V
    .locals 1
    .param p1, "presenter"    # Lc8/Nr;
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 121
    iput-object p1, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    .line 122
    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    invoke-virtual {v0, p0}, Lc8/Nr;->setMenuView(Lc8/Tr;)V

    .line 123
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Tr;->mPresenter:Lc8/Nr;

    invoke-virtual {v0}, Lc8/Nr;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
