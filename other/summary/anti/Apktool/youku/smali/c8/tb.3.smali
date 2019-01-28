.class public Lc8/tb;
.super Ljava/lang/Object;
.source "Optimizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyDirectResolutionHorizontalChain(Lc8/qb;Lc8/bb;ILc8/ob;)V
    .locals 21
    .param p0, "container"    # Lc8/qb;
    .param p1, "system"    # Lc8/bb;
    .param p2, "numMatchConstraints"    # I
    .param p3, "widget"    # Lc8/ob;

    .prologue
    .line 35
    move-object/from16 v7, p3

    .line 37
    .local v7, "firstWidget":Lc8/ob;
    const/16 v18, 0x0

    .line 38
    .local v18, "widgetSize":I
    const/4 v6, 0x0

    .line 39
    .local v6, "firstPosition":I
    const/4 v12, 0x0

    .line 40
    .local v12, "previous":Lc8/ob;
    const/4 v3, 0x0

    .line 41
    .local v3, "count":I
    const/16 v17, 0x0

    .line 44
    .local v17, "totalWeights":F
    :cond_0
    :goto_0
    if-eqz p3, :cond_8

    .line 45
    invoke-virtual/range {p3 .. p3}, Lc8/ob;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/4 v8, 0x1

    .line 46
    .local v8, "isGone":Z
    :goto_1
    if-nez v8, :cond_1

    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v19, v0

    sget-object v20, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 49
    invoke-virtual/range {p3 .. p3}, Lc8/ob;->getWidth()I

    move-result v19

    add-int v18, v18, v19

    .line 50
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/ib;->getMargin()I

    move-result v19

    :goto_2
    add-int v18, v18, v19

    .line 51
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/ib;->getMargin()I

    move-result v19

    :goto_3
    add-int v18, v18, v19

    .line 56
    :cond_1
    :goto_4
    move-object/from16 v12, p3

    .line 57
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 p3, v0

    .line 58
    :goto_5
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v12, :cond_0

    .line 61
    :cond_2
    const/16 p3, 0x0

    goto/16 :goto_0

    .line 45
    .end local v8    # "isGone":Z
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 50
    .restart local v8    # "isGone":Z
    :cond_4
    const/16 v19, 0x0

    goto :goto_2

    .line 51
    :cond_5
    const/16 v19, 0x0

    goto :goto_3

    .line 53
    :cond_6
    move-object/from16 v0, p3

    iget v0, v0, Lc8/ob;->mHorizontalWeight:F

    move/from16 v19, v0

    add-float v17, v17, v19

    goto :goto_4

    .line 57
    :cond_7
    const/16 p3, 0x0

    goto :goto_5

    .line 66
    .end local v8    # "isGone":Z
    :cond_8
    const/4 v9, 0x0

    .line 67
    .local v9, "lastPosition":I
    if-eqz v12, :cond_9

    .line 68
    iget-object v0, v12, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    iget-object v0, v12, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/ob;->getX()I

    move-result v9

    .line 69
    :goto_6
    iget-object v0, v12, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 70
    iget-object v0, v12, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v5, v0, Lc8/ib;->mOwner:Lc8/ob;

    .line 71
    .local v5, "endTarget":Lc8/ob;
    move-object/from16 v0, p0

    if-ne v5, v0, :cond_9

    .line 72
    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getRight()I

    move-result v9

    .line 76
    .end local v5    # "endTarget":Lc8/ob;
    :cond_9
    sub-int v19, v9, v6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v16, v0

    .line 77
    .local v16, "total":F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v15, v16, v19

    .line 78
    .local v15, "spreadSpace":F
    add-int/lit8 v19, v3, 0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v15, v19

    .line 79
    .local v14, "split":F
    move-object/from16 p3, v7

    .line 80
    const/4 v4, 0x0

    .line 81
    .local v4, "currentPosition":F
    if-nez p2, :cond_e

    .line 82
    move v4, v14

    .line 88
    :cond_a
    :goto_7
    if-eqz p3, :cond_15

    .line 89
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/ib;->getMargin()I

    move-result v10

    .line 90
    .local v10, "left":I
    :goto_8
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/ib;->getMargin()I

    move-result v13

    .line 91
    .local v13, "right":I
    :goto_9
    invoke-virtual/range {p3 .. p3}, Lc8/ob;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_13

    .line 92
    int-to-float v0, v10

    move/from16 v19, v0

    add-float v4, v4, v19

    .line 93
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v20, v20, v4

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 94
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v19, v0

    sget-object v20, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 95
    const/16 v19, 0x0

    cmpl-float v19, v17, v19

    if-nez v19, :cond_11

    .line 96
    int-to-float v0, v10

    move/from16 v19, v0

    sub-float v19, v14, v19

    int-to-float v0, v13

    move/from16 v20, v0

    sub-float v19, v19, v20

    add-float v4, v4, v19

    .line 103
    :goto_a
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v20, v20, v4

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 104
    if-nez p2, :cond_b

    .line 105
    add-float/2addr v4, v14

    .line 107
    :cond_b
    int-to-float v0, v13

    move/from16 v19, v0

    add-float v4, v4, v19

    .line 113
    :goto_b
    move-object/from16 v12, p3

    .line 114
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_14

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 p3, v0

    .line 115
    :goto_c
    if-eqz p3, :cond_c

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v12, :cond_c

    .line 117
    const/16 p3, 0x0

    .line 119
    :cond_c
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_a

    .line 120
    const/16 p3, 0x0

    goto/16 :goto_7

    .line 68
    .end local v4    # "currentPosition":F
    .end local v10    # "left":I
    .end local v13    # "right":I
    .end local v14    # "split":F
    .end local v15    # "spreadSpace":F
    .end local v16    # "total":F
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 84
    .restart local v4    # "currentPosition":F
    .restart local v14    # "split":F
    .restart local v15    # "spreadSpace":F
    .restart local v16    # "total":F
    :cond_e
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v15, v19

    goto/16 :goto_7

    .line 89
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 90
    .restart local v10    # "left":I
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 98
    .restart local v13    # "right":I
    :cond_11
    move-object/from16 v0, p3

    iget v0, v0, Lc8/ob;->mHorizontalWeight:F

    move/from16 v19, v0

    mul-float v19, v19, v15

    div-float v19, v19, v17

    int-to-float v0, v10

    move/from16 v20, v0

    sub-float v19, v19, v20

    int-to-float v0, v13

    move/from16 v20, v0

    sub-float v19, v19, v20

    add-float v4, v4, v19

    goto/16 :goto_a

    .line 101
    :cond_12
    invoke-virtual/range {p3 .. p3}, Lc8/ob;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v4, v4, v19

    goto/16 :goto_a

    .line 109
    :cond_13
    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v14, v19

    sub-float v11, v4, v19

    .line 110
    .local v11, "position":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v20, v20, v11

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 111
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v20, v20, v11

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lc8/bb;->addEquality(Lc8/gb;I)V

    goto/16 :goto_b

    .line 114
    .end local v11    # "position":F
    :cond_14
    const/16 p3, 0x0

    goto/16 :goto_c

    .line 123
    .end local v10    # "left":I
    .end local v13    # "right":I
    :cond_15
    return-void
.end method

.method static applyDirectResolutionVerticalChain(Lc8/qb;Lc8/bb;ILc8/ob;)V
    .locals 21
    .param p0, "container"    # Lc8/qb;
    .param p1, "system"    # Lc8/bb;
    .param p2, "numMatchConstraints"    # I
    .param p3, "widget"    # Lc8/ob;

    .prologue
    .line 134
    move-object/from16 v8, p3

    .line 136
    .local v8, "firstWidget":Lc8/ob;
    const/16 v18, 0x0

    .line 137
    .local v18, "widgetSize":I
    const/4 v7, 0x0

    .line 138
    .local v7, "firstPosition":I
    const/4 v12, 0x0

    .line 139
    .local v12, "previous":Lc8/ob;
    const/4 v4, 0x0

    .line 140
    .local v4, "count":I
    const/16 v17, 0x0

    .line 143
    .local v17, "totalWeights":F
    :cond_0
    :goto_0
    if-eqz p3, :cond_8

    .line 144
    invoke-virtual/range {p3 .. p3}, Lc8/ob;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/4 v9, 0x1

    .line 145
    .local v9, "isGone":Z
    :goto_1
    if-nez v9, :cond_1

    .line 146
    add-int/lit8 v4, v4, 0x1

    .line 147
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v19, v0

    sget-object v20, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 148
    invoke-virtual/range {p3 .. p3}, Lc8/ob;->getHeight()I

    move-result v19

    add-int v18, v18, v19

    .line 149
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/ib;->getMargin()I

    move-result v19

    :goto_2
    add-int v18, v18, v19

    .line 150
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/ib;->getMargin()I

    move-result v19

    :goto_3
    add-int v18, v18, v19

    .line 155
    :cond_1
    :goto_4
    move-object/from16 v12, p3

    .line 156
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 p3, v0

    .line 157
    :goto_5
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v12, :cond_0

    .line 160
    :cond_2
    const/16 p3, 0x0

    goto/16 :goto_0

    .line 144
    .end local v9    # "isGone":Z
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 149
    .restart local v9    # "isGone":Z
    :cond_4
    const/16 v19, 0x0

    goto :goto_2

    .line 150
    :cond_5
    const/16 v19, 0x0

    goto :goto_3

    .line 152
    :cond_6
    move-object/from16 v0, p3

    iget v0, v0, Lc8/ob;->mVerticalWeight:F

    move/from16 v19, v0

    add-float v17, v17, v19

    goto :goto_4

    .line 156
    :cond_7
    const/16 p3, 0x0

    goto :goto_5

    .line 165
    .end local v9    # "isGone":Z
    :cond_8
    const/4 v10, 0x0

    .line 166
    .local v10, "lastPosition":I
    if-eqz v12, :cond_9

    .line 167
    iget-object v0, v12, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    iget-object v0, v12, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/ob;->getX()I

    move-result v10

    .line 168
    :goto_6
    iget-object v0, v12, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 169
    iget-object v0, v12, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v6, v0, Lc8/ib;->mOwner:Lc8/ob;

    .line 170
    .local v6, "endTarget":Lc8/ob;
    move-object/from16 v0, p0

    if-ne v6, v0, :cond_9

    .line 171
    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getBottom()I

    move-result v10

    .line 175
    .end local v6    # "endTarget":Lc8/ob;
    :cond_9
    sub-int v19, v10, v7

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v16, v0

    .line 176
    .local v16, "total":F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v14, v16, v19

    .line 177
    .local v14, "spreadSpace":F
    add-int/lit8 v19, v4, 0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v13, v14, v19

    .line 178
    .local v13, "split":F
    move-object/from16 p3, v8

    .line 179
    const/4 v5, 0x0

    .line 180
    .local v5, "currentPosition":F
    if-nez p2, :cond_e

    .line 181
    move v5, v13

    .line 187
    :cond_a
    :goto_7
    if-eqz p3, :cond_15

    .line 188
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/ib;->getMargin()I

    move-result v15

    .line 189
    .local v15, "top":I
    :goto_8
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/ib;->getMargin()I

    move-result v3

    .line 190
    .local v3, "bottom":I
    :goto_9
    invoke-virtual/range {p3 .. p3}, Lc8/ob;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_13

    .line 191
    int-to-float v0, v15

    move/from16 v19, v0

    add-float v5, v5, v19

    .line 192
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v20, v20, v5

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 193
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v19, v0

    sget-object v20, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 194
    const/16 v19, 0x0

    cmpl-float v19, v17, v19

    if-nez v19, :cond_11

    .line 195
    int-to-float v0, v15

    move/from16 v19, v0

    sub-float v19, v13, v19

    int-to-float v0, v3

    move/from16 v20, v0

    sub-float v19, v19, v20

    add-float v5, v5, v19

    .line 202
    :goto_a
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v20, v20, v5

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 203
    if-nez p2, :cond_b

    .line 204
    add-float/2addr v5, v13

    .line 206
    :cond_b
    int-to-float v0, v3

    move/from16 v19, v0

    add-float v5, v5, v19

    .line 212
    :goto_b
    move-object/from16 v12, p3

    .line 213
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_14

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 p3, v0

    .line 214
    :goto_c
    if-eqz p3, :cond_c

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mTarget:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v12, :cond_c

    .line 216
    const/16 p3, 0x0

    .line 218
    :cond_c
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_a

    .line 219
    const/16 p3, 0x0

    goto/16 :goto_7

    .line 167
    .end local v3    # "bottom":I
    .end local v5    # "currentPosition":F
    .end local v13    # "split":F
    .end local v14    # "spreadSpace":F
    .end local v15    # "top":I
    .end local v16    # "total":F
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 183
    .restart local v5    # "currentPosition":F
    .restart local v13    # "split":F
    .restart local v14    # "spreadSpace":F
    .restart local v16    # "total":F
    :cond_e
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v13, v14, v19

    goto/16 :goto_7

    .line 188
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 189
    .restart local v15    # "top":I
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 197
    .restart local v3    # "bottom":I
    :cond_11
    move-object/from16 v0, p3

    iget v0, v0, Lc8/ob;->mVerticalWeight:F

    move/from16 v19, v0

    mul-float v19, v19, v14

    div-float v19, v19, v17

    int-to-float v0, v15

    move/from16 v20, v0

    sub-float v19, v19, v20

    int-to-float v0, v3

    move/from16 v20, v0

    sub-float v19, v19, v20

    add-float v5, v5, v19

    goto/16 :goto_a

    .line 200
    :cond_12
    invoke-virtual/range {p3 .. p3}, Lc8/ob;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v5, v5, v19

    goto/16 :goto_a

    .line 208
    :cond_13
    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v13, v19

    sub-float v11, v5, v19

    .line 209
    .local v11, "position":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v20, v20, v11

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 210
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v20, v20, v11

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lc8/bb;->addEquality(Lc8/gb;I)V

    goto/16 :goto_b

    .line 213
    .end local v11    # "position":F
    :cond_14
    const/16 p3, 0x0

    goto/16 :goto_c

    .line 222
    .end local v3    # "bottom":I
    .end local v15    # "top":I
    :cond_15
    return-void
.end method

.method static checkHorizontalSimpleDependency(Lc8/qb;Lc8/bb;Lc8/ob;)V
    .locals 15
    .param p0, "container"    # Lc8/qb;
    .param p1, "system"    # Lc8/bb;
    .param p2, "widget"    # Lc8/ob;

    .prologue
    .line 260
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v14, :cond_1

    .line 261
    const/4 v13, 0x1

    move-object/from16 v0, p2

    iput v13, v0, Lc8/ob;->mHorizontalResolution:I

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v13, p0, Lc8/qb;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v13, v14, :cond_2

    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v14, :cond_2

    .line 266
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v14

    iput-object v14, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 267
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v14

    iput-object v14, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 268
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget v5, v13, Lc8/ib;->mMargin:I

    .line 269
    .local v5, "left":I
    invoke-virtual {p0}, Lc8/qb;->getWidth()I

    move-result v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mRight:Lc8/ib;

    iget v14, v14, Lc8/ib;->mMargin:I

    sub-int v8, v13, v14

    .line 270
    .local v8, "right":I
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 271
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v8}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 272
    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Lc8/ob;->setHorizontalDimension(II)V

    .line 273
    const/4 v13, 0x2

    move-object/from16 v0, p2

    iput v13, v0, Lc8/ob;->mHorizontalResolution:I

    goto :goto_0

    .line 276
    .end local v5    # "left":I
    .end local v8    # "right":I
    :cond_2
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v13, :cond_5

    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v13, :cond_5

    .line 277
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mOwner:Lc8/ob;

    if-ne v13, p0, :cond_4

    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mOwner:Lc8/ob;

    if-ne v13, p0, :cond_4

    .line 280
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    invoke-virtual {v13}, Lc8/ib;->getMargin()I

    move-result v6

    .line 281
    .local v6, "leftMargin":I
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    invoke-virtual {v13}, Lc8/ib;->getMargin()I

    move-result v9

    .line 282
    .local v9, "rightMargin":I
    iget-object v13, p0, Lc8/qb;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v14, :cond_3

    .line 283
    move v5, v6

    .line 284
    .restart local v5    # "left":I
    invoke-virtual {p0}, Lc8/qb;->getWidth()I

    move-result v13

    sub-int v8, v13, v9

    .line 291
    .restart local v8    # "right":I
    :goto_1
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v14

    iput-object v14, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 292
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v14

    iput-object v14, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 293
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 294
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v8}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 295
    const/4 v13, 0x2

    move-object/from16 v0, p2

    iput v13, v0, Lc8/ob;->mHorizontalResolution:I

    .line 296
    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Lc8/ob;->setHorizontalDimension(II)V

    goto/16 :goto_0

    .line 286
    .end local v5    # "left":I
    .end local v8    # "right":I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getWidth()I

    move-result v12

    .line 287
    .local v12, "w":I
    invoke-virtual {p0}, Lc8/qb;->getWidth()I

    move-result v13

    sub-int/2addr v13, v6

    sub-int/2addr v13, v9

    sub-int v1, v13, v12

    .line 288
    .local v1, "dim":I
    int-to-float v13, v1

    move-object/from16 v0, p2

    iget v14, v0, Lc8/ob;->mHorizontalBiasPercent:F

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    add-int v5, v6, v13

    .line 289
    .restart local v5    # "left":I
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getWidth()I

    move-result v13

    add-int v8, v5, v13

    .restart local v8    # "right":I
    goto :goto_1

    .line 299
    .end local v1    # "dim":I
    .end local v5    # "left":I
    .end local v6    # "leftMargin":I
    .end local v8    # "right":I
    .end local v9    # "rightMargin":I
    .end local v12    # "w":I
    :cond_4
    const/4 v13, 0x1

    move-object/from16 v0, p2

    iput v13, v0, Lc8/ob;->mHorizontalResolution:I

    goto/16 :goto_0

    .line 302
    :cond_5
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v13, :cond_6

    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mOwner:Lc8/ob;

    if-ne v13, p0, :cond_6

    .line 304
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    invoke-virtual {v13}, Lc8/ib;->getMargin()I

    move-result v5

    .line 305
    .restart local v5    # "left":I
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getWidth()I

    move-result v13

    add-int v8, v5, v13

    .line 306
    .restart local v8    # "right":I
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v14

    iput-object v14, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 307
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v14

    iput-object v14, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 308
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 309
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v8}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 310
    const/4 v13, 0x2

    move-object/from16 v0, p2

    iput v13, v0, Lc8/ob;->mHorizontalResolution:I

    .line 311
    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Lc8/ob;->setHorizontalDimension(II)V

    goto/16 :goto_0

    .line 312
    .end local v5    # "left":I
    .end local v8    # "right":I
    :cond_6
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v13, :cond_7

    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mOwner:Lc8/ob;

    if-ne v13, p0, :cond_7

    .line 314
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v14

    iput-object v14, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 315
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v14

    iput-object v14, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 316
    invoke-virtual {p0}, Lc8/qb;->getWidth()I

    move-result v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mRight:Lc8/ib;

    invoke-virtual {v14}, Lc8/ib;->getMargin()I

    move-result v14

    sub-int v8, v13, v14

    .line 317
    .restart local v8    # "right":I
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getWidth()I

    move-result v13

    sub-int v5, v8, v13

    .line 318
    .restart local v5    # "left":I
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 319
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v8}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 320
    const/4 v13, 0x2

    move-object/from16 v0, p2

    iput v13, v0, Lc8/ob;->mHorizontalResolution:I

    .line 321
    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Lc8/ob;->setHorizontalDimension(II)V

    goto/16 :goto_0

    .line 322
    .end local v5    # "left":I
    .end local v8    # "right":I
    :cond_7
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v13, :cond_8

    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mOwner:Lc8/ob;

    iget v13, v13, Lc8/ob;->mHorizontalResolution:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    .line 323
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v10, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 324
    .local v10, "target":Lc8/gb;
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v14

    iput-object v14, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 325
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v14

    iput-object v14, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 326
    iget v13, v10, Lc8/gb;->computedValue:F

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mLeft:Lc8/ib;

    invoke-virtual {v14}, Lc8/ib;->getMargin()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v5, v13

    .line 327
    .restart local v5    # "left":I
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getWidth()I

    move-result v13

    add-int v8, v5, v13

    .line 328
    .restart local v8    # "right":I
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 329
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v8}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 330
    const/4 v13, 0x2

    move-object/from16 v0, p2

    iput v13, v0, Lc8/ob;->mHorizontalResolution:I

    .line 331
    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Lc8/ob;->setHorizontalDimension(II)V

    goto/16 :goto_0

    .line 332
    .end local v5    # "left":I
    .end local v8    # "right":I
    .end local v10    # "target":Lc8/gb;
    :cond_8
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v13, :cond_9

    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mOwner:Lc8/ob;

    iget v13, v13, Lc8/ob;->mHorizontalResolution:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_9

    .line 333
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v10, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 334
    .restart local v10    # "target":Lc8/gb;
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v14

    iput-object v14, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 335
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v14

    iput-object v14, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 336
    iget v13, v10, Lc8/gb;->computedValue:F

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mRight:Lc8/ib;

    invoke-virtual {v14}, Lc8/ib;->getMargin()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v8, v13

    .line 337
    .restart local v8    # "right":I
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getWidth()I

    move-result v13

    sub-int v5, v8, v13

    .line 338
    .restart local v5    # "left":I
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 339
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v8}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 340
    const/4 v13, 0x2

    move-object/from16 v0, p2

    iput v13, v0, Lc8/ob;->mHorizontalResolution:I

    .line 341
    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Lc8/ob;->setHorizontalDimension(II)V

    goto/16 :goto_0

    .line 343
    .end local v5    # "left":I
    .end local v8    # "right":I
    .end local v10    # "target":Lc8/gb;
    :cond_9
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v13, :cond_a

    const/4 v3, 0x1

    .line 344
    .local v3, "hasLeft":Z
    :goto_2
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v13, :cond_b

    const/4 v4, 0x1

    .line 345
    .local v4, "hasRight":Z
    :goto_3
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 346
    move-object/from16 v0, p2

    instance-of v13, v0, Lc8/sb;

    if-eqz v13, :cond_e

    move-object/from16 v2, p2

    .line 347
    check-cast v2, Lc8/sb;

    .line 348
    .local v2, "guideline":Lc8/sb;
    invoke-virtual {v2}, Lc8/sb;->getOrientation()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 349
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v14

    iput-object v14, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 350
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v14

    iput-object v14, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 352
    invoke-virtual {v2}, Lc8/sb;->getRelativeBegin()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_c

    .line 353
    invoke-virtual {v2}, Lc8/sb;->getRelativeBegin()I

    move-result v13

    int-to-float v7, v13

    .line 359
    .local v7, "position":F
    :goto_4
    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v13, v7

    float-to-int v11, v13

    .line 360
    .local v11, "value":I
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 361
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 362
    const/4 v13, 0x2

    move-object/from16 v0, p2

    iput v13, v0, Lc8/ob;->mHorizontalResolution:I

    .line 363
    const/4 v13, 0x2

    move-object/from16 v0, p2

    iput v13, v0, Lc8/ob;->mVerticalResolution:I

    .line 364
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v11}, Lc8/ob;->setHorizontalDimension(II)V

    .line 365
    const/4 v13, 0x0

    invoke-virtual {p0}, Lc8/qb;->getHeight()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Lc8/ob;->setVerticalDimension(II)V

    goto/16 :goto_0

    .line 343
    .end local v2    # "guideline":Lc8/sb;
    .end local v3    # "hasLeft":Z
    .end local v4    # "hasRight":Z
    .end local v7    # "position":F
    .end local v11    # "value":I
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 344
    .restart local v3    # "hasLeft":Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_3

    .line 354
    .restart local v2    # "guideline":Lc8/sb;
    .restart local v4    # "hasRight":Z
    :cond_c
    invoke-virtual {v2}, Lc8/sb;->getRelativeEnd()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_d

    .line 355
    invoke-virtual {p0}, Lc8/qb;->getWidth()I

    move-result v13

    invoke-virtual {v2}, Lc8/sb;->getRelativeEnd()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v7, v13

    .restart local v7    # "position":F
    goto :goto_4

    .line 357
    .end local v7    # "position":F
    :cond_d
    invoke-virtual {p0}, Lc8/qb;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2}, Lc8/sb;->getRelativePercent()F

    move-result v14

    mul-float v7, v13, v14

    .restart local v7    # "position":F
    goto :goto_4

    .line 368
    .end local v2    # "guideline":Lc8/sb;
    .end local v7    # "position":F
    :cond_e
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mLeft:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v14

    iput-object v14, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 369
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mRight:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v14

    iput-object v14, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 370
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getX()I

    move-result v5

    .line 371
    .restart local v5    # "left":I
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getWidth()I

    move-result v13

    add-int v8, v5, v13

    .line 372
    .restart local v8    # "right":I
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 373
    move-object/from16 v0, p2

    iget-object v13, v0, Lc8/ob;->mRight:Lc8/ib;

    iget-object v13, v13, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v8}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 374
    const/4 v13, 0x2

    move-object/from16 v0, p2

    iput v13, v0, Lc8/ob;->mHorizontalResolution:I

    goto/16 :goto_0
.end method

.method static checkMatchParent(Lc8/qb;Lc8/bb;Lc8/ob;)V
    .locals 7
    .param p0, "container"    # Lc8/qb;
    .param p1, "system"    # Lc8/bb;
    .param p2, "widget"    # Lc8/ob;

    .prologue
    const/4 v6, 0x2

    .line 225
    iget-object v4, p0, Lc8/qb;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_0

    iget-object v4, p2, Lc8/ob;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_0

    .line 227
    iget-object v4, p2, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v5, p2, Lc8/ob;->mLeft:Lc8/ib;

    invoke-virtual {p1, v5}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v5

    iput-object v5, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 228
    iget-object v4, p2, Lc8/ob;->mRight:Lc8/ib;

    iget-object v5, p2, Lc8/ob;->mRight:Lc8/ib;

    invoke-virtual {p1, v5}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v5

    iput-object v5, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 229
    iget-object v4, p2, Lc8/ob;->mLeft:Lc8/ib;

    iget v1, v4, Lc8/ib;->mMargin:I

    .line 230
    .local v1, "left":I
    invoke-virtual {p0}, Lc8/qb;->getWidth()I

    move-result v4

    iget-object v5, p2, Lc8/ob;->mRight:Lc8/ib;

    iget v5, v5, Lc8/ib;->mMargin:I

    sub-int v2, v4, v5

    .line 231
    .local v2, "right":I
    iget-object v4, p2, Lc8/ob;->mLeft:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    invoke-virtual {p1, v4, v1}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 232
    iget-object v4, p2, Lc8/ob;->mRight:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    invoke-virtual {p1, v4, v2}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 233
    invoke-virtual {p2, v1, v2}, Lc8/ob;->setHorizontalDimension(II)V

    .line 234
    iput v6, p2, Lc8/ob;->mHorizontalResolution:I

    .line 236
    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_0
    iget-object v4, p0, Lc8/qb;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_3

    iget-object v4, p2, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_3

    .line 238
    iget-object v4, p2, Lc8/ob;->mTop:Lc8/ib;

    iget-object v5, p2, Lc8/ob;->mTop:Lc8/ib;

    invoke-virtual {p1, v5}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v5

    iput-object v5, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 239
    iget-object v4, p2, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v5, p2, Lc8/ob;->mBottom:Lc8/ib;

    invoke-virtual {p1, v5}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v5

    iput-object v5, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 240
    iget-object v4, p2, Lc8/ob;->mTop:Lc8/ib;

    iget v3, v4, Lc8/ib;->mMargin:I

    .line 241
    .local v3, "top":I
    invoke-virtual {p0}, Lc8/qb;->getHeight()I

    move-result v4

    iget-object v5, p2, Lc8/ob;->mBottom:Lc8/ib;

    iget v5, v5, Lc8/ib;->mMargin:I

    sub-int v0, v4, v5

    .line 242
    .local v0, "bottom":I
    iget-object v4, p2, Lc8/ob;->mTop:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    invoke-virtual {p1, v4, v3}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 243
    iget-object v4, p2, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    invoke-virtual {p1, v4, v0}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 244
    iget v4, p2, Lc8/ob;->mBaselineDistance:I

    if-gtz v4, :cond_1

    invoke-virtual {p2}, Lc8/ob;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 245
    :cond_1
    iget-object v4, p2, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v5, p2, Lc8/ob;->mBaseline:Lc8/ib;

    invoke-virtual {p1, v5}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v5

    iput-object v5, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 246
    iget-object v4, p2, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v4, v4, Lc8/ib;->mSolverVariable:Lc8/gb;

    iget v5, p2, Lc8/ob;->mBaselineDistance:I

    add-int/2addr v5, v3

    invoke-virtual {p1, v4, v5}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 248
    :cond_2
    invoke-virtual {p2, v3, v0}, Lc8/ob;->setVerticalDimension(II)V

    .line 249
    iput v6, p2, Lc8/ob;->mVerticalResolution:I

    .line 251
    .end local v0    # "bottom":I
    .end local v3    # "top":I
    :cond_3
    return-void
.end method

.method static checkVerticalSimpleDependency(Lc8/qb;Lc8/bb;Lc8/ob;)V
    .locals 17
    .param p0, "container"    # Lc8/qb;
    .param p1, "system"    # Lc8/bb;
    .param p2, "widget"    # Lc8/ob;

    .prologue
    .line 388
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_1

    .line 389
    const/4 v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Lc8/ob;->mVerticalResolution:I

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/qb;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v14, v15, :cond_4

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_4

    .line 394
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 395
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 396
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget v11, v14, Lc8/ib;->mMargin:I

    .line 397
    .local v11, "top":I
    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getHeight()I

    move-result v14

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget v15, v15, Lc8/ib;->mMargin:I

    sub-int v1, v14, v15

    .line 398
    .local v1, "bottom":I
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v11}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 399
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 400
    move-object/from16 v0, p2

    iget v14, v0, Lc8/ob;->mBaselineDistance:I

    if-gtz v14, :cond_2

    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_3

    .line 401
    :cond_2
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBaseline:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 402
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p2

    iget v15, v0, Lc8/ob;->mBaselineDistance:I

    add-int/2addr v15, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 404
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v1}, Lc8/ob;->setVerticalDimension(II)V

    .line 405
    const/4 v14, 0x2

    move-object/from16 v0, p2

    iput v14, v0, Lc8/ob;->mVerticalResolution:I

    goto/16 :goto_0

    .line 408
    .end local v1    # "bottom":I
    .end local v11    # "top":I
    :cond_4
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v14, :cond_9

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v14, :cond_9

    .line 409
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v0, p0

    if-ne v14, v0, :cond_8

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v0, p0

    if-ne v14, v0, :cond_8

    .line 412
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    invoke-virtual {v14}, Lc8/ib;->getMargin()I

    move-result v12

    .line 413
    .local v12, "topMargin":I
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    invoke-virtual {v14}, Lc8/ib;->getMargin()I

    move-result v2

    .line 414
    .local v2, "bottomMargin":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/qb;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_7

    .line 416
    move v11, v12

    .restart local v11    # "top":I
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getHeight()I

    move-result v14

    add-int v1, v12, v14

    .line 423
    .restart local v1    # "bottom":I
    :goto_1
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 424
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 425
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v11}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 426
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 427
    move-object/from16 v0, p2

    iget v14, v0, Lc8/ob;->mBaselineDistance:I

    if-gtz v14, :cond_5

    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_6

    .line 428
    :cond_5
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBaseline:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 429
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p2

    iget v15, v0, Lc8/ob;->mBaselineDistance:I

    add-int/2addr v15, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 431
    :cond_6
    const/4 v14, 0x2

    move-object/from16 v0, p2

    iput v14, v0, Lc8/ob;->mVerticalResolution:I

    .line 432
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v1}, Lc8/ob;->setVerticalDimension(II)V

    goto/16 :goto_0

    .line 418
    .end local v1    # "bottom":I
    .end local v11    # "top":I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getHeight()I

    move-result v5

    .line 419
    .local v5, "h":I
    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getHeight()I

    move-result v14

    sub-int/2addr v14, v12

    sub-int/2addr v14, v2

    sub-int v3, v14, v5

    .line 420
    .local v3, "dim":I
    int-to-float v14, v12

    int-to-float v15, v3

    move-object/from16 v0, p2

    iget v0, v0, Lc8/ob;->mVerticalBiasPercent:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v11, v14

    .line 421
    .restart local v11    # "top":I
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getHeight()I

    move-result v14

    add-int v1, v11, v14

    .restart local v1    # "bottom":I
    goto/16 :goto_1

    .line 435
    .end local v1    # "bottom":I
    .end local v2    # "bottomMargin":I
    .end local v3    # "dim":I
    .end local v5    # "h":I
    .end local v11    # "top":I
    .end local v12    # "topMargin":I
    :cond_8
    const/4 v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Lc8/ob;->mVerticalResolution:I

    goto/16 :goto_0

    .line 438
    :cond_9
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v14, :cond_c

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v0, p0

    if-ne v14, v0, :cond_c

    .line 440
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    invoke-virtual {v14}, Lc8/ib;->getMargin()I

    move-result v11

    .line 441
    .restart local v11    # "top":I
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getHeight()I

    move-result v14

    add-int v1, v11, v14

    .line 442
    .restart local v1    # "bottom":I
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 443
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 444
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v11}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 445
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 446
    move-object/from16 v0, p2

    iget v14, v0, Lc8/ob;->mBaselineDistance:I

    if-gtz v14, :cond_a

    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_b

    .line 447
    :cond_a
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBaseline:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 448
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p2

    iget v15, v0, Lc8/ob;->mBaselineDistance:I

    add-int/2addr v15, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 450
    :cond_b
    const/4 v14, 0x2

    move-object/from16 v0, p2

    iput v14, v0, Lc8/ob;->mVerticalResolution:I

    .line 451
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v1}, Lc8/ob;->setVerticalDimension(II)V

    goto/16 :goto_0

    .line 452
    .end local v1    # "bottom":I
    .end local v11    # "top":I
    :cond_c
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v14, :cond_f

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mOwner:Lc8/ob;

    move-object/from16 v0, p0

    if-ne v14, v0, :cond_f

    .line 454
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 455
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 456
    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getHeight()I

    move-result v14

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBottom:Lc8/ib;

    invoke-virtual {v15}, Lc8/ib;->getMargin()I

    move-result v15

    sub-int v1, v14, v15

    .line 457
    .restart local v1    # "bottom":I
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getHeight()I

    move-result v14

    sub-int v11, v1, v14

    .line 458
    .restart local v11    # "top":I
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v11}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 459
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 460
    move-object/from16 v0, p2

    iget v14, v0, Lc8/ob;->mBaselineDistance:I

    if-gtz v14, :cond_d

    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_e

    .line 461
    :cond_d
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBaseline:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 462
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p2

    iget v15, v0, Lc8/ob;->mBaselineDistance:I

    add-int/2addr v15, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 464
    :cond_e
    const/4 v14, 0x2

    move-object/from16 v0, p2

    iput v14, v0, Lc8/ob;->mVerticalResolution:I

    .line 465
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v1}, Lc8/ob;->setVerticalDimension(II)V

    goto/16 :goto_0

    .line 466
    .end local v1    # "bottom":I
    .end local v11    # "top":I
    :cond_f
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v14, :cond_12

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mOwner:Lc8/ob;

    iget v14, v14, Lc8/ob;->mVerticalResolution:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_12

    .line 467
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v10, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 468
    .local v10, "target":Lc8/gb;
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 469
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 470
    iget v14, v10, Lc8/gb;->computedValue:F

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mTop:Lc8/ib;

    invoke-virtual {v15}, Lc8/ib;->getMargin()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v11, v14

    .line 471
    .restart local v11    # "top":I
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getHeight()I

    move-result v14

    add-int v1, v11, v14

    .line 472
    .restart local v1    # "bottom":I
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v11}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 473
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 474
    move-object/from16 v0, p2

    iget v14, v0, Lc8/ob;->mBaselineDistance:I

    if-gtz v14, :cond_10

    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_11

    .line 475
    :cond_10
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBaseline:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 476
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p2

    iget v15, v0, Lc8/ob;->mBaselineDistance:I

    add-int/2addr v15, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 478
    :cond_11
    const/4 v14, 0x2

    move-object/from16 v0, p2

    iput v14, v0, Lc8/ob;->mVerticalResolution:I

    .line 479
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v1}, Lc8/ob;->setVerticalDimension(II)V

    goto/16 :goto_0

    .line 480
    .end local v1    # "bottom":I
    .end local v10    # "target":Lc8/gb;
    .end local v11    # "top":I
    :cond_12
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v14, :cond_15

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mOwner:Lc8/ob;

    iget v14, v14, Lc8/ob;->mVerticalResolution:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_15

    .line 481
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v10, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 482
    .restart local v10    # "target":Lc8/gb;
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 483
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 484
    iget v14, v10, Lc8/gb;->computedValue:F

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBottom:Lc8/ib;

    invoke-virtual {v15}, Lc8/ib;->getMargin()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v1, v14

    .line 485
    .restart local v1    # "bottom":I
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getHeight()I

    move-result v14

    sub-int v11, v1, v14

    .line 486
    .restart local v11    # "top":I
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v11}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 487
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 488
    move-object/from16 v0, p2

    iget v14, v0, Lc8/ob;->mBaselineDistance:I

    if-gtz v14, :cond_13

    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_14

    .line 489
    :cond_13
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBaseline:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 490
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p2

    iget v15, v0, Lc8/ob;->mBaselineDistance:I

    add-int/2addr v15, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 492
    :cond_14
    const/4 v14, 0x2

    move-object/from16 v0, p2

    iput v14, v0, Lc8/ob;->mVerticalResolution:I

    .line 493
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v1}, Lc8/ob;->setVerticalDimension(II)V

    goto/16 :goto_0

    .line 494
    .end local v1    # "bottom":I
    .end local v10    # "target":Lc8/gb;
    .end local v11    # "top":I
    :cond_15
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v14, :cond_16

    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mOwner:Lc8/ob;

    iget v14, v14, Lc8/ob;->mVerticalResolution:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_16

    .line 495
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v10, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 496
    .restart local v10    # "target":Lc8/gb;
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 497
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 498
    iget v14, v10, Lc8/gb;->computedValue:F

    move-object/from16 v0, p2

    iget v15, v0, Lc8/ob;->mBaselineDistance:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v11, v14

    .line 499
    .restart local v11    # "top":I
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getHeight()I

    move-result v14

    add-int v1, v11, v14

    .line 500
    .restart local v1    # "bottom":I
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v11}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 501
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 502
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBaseline:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 503
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p2

    iget v15, v0, Lc8/ob;->mBaselineDistance:I

    add-int/2addr v15, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 504
    const/4 v14, 0x2

    move-object/from16 v0, p2

    iput v14, v0, Lc8/ob;->mVerticalResolution:I

    .line 505
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v1}, Lc8/ob;->setVerticalDimension(II)V

    goto/16 :goto_0

    .line 507
    .end local v1    # "bottom":I
    .end local v10    # "target":Lc8/gb;
    .end local v11    # "top":I
    :cond_16
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v14, :cond_17

    const/4 v6, 0x1

    .line 508
    .local v6, "hasBaseline":Z
    :goto_2
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v14, :cond_18

    const/4 v8, 0x1

    .line 509
    .local v8, "hasTop":Z
    :goto_3
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v14, :cond_19

    const/4 v7, 0x1

    .line 510
    .local v7, "hasBottom":Z
    :goto_4
    if-nez v6, :cond_0

    if-nez v8, :cond_0

    if-nez v7, :cond_0

    .line 511
    move-object/from16 v0, p2

    instance-of v14, v0, Lc8/sb;

    if-eqz v14, :cond_1c

    move-object/from16 v4, p2

    .line 512
    check-cast v4, Lc8/sb;

    .line 513
    .local v4, "guideline":Lc8/sb;
    invoke-virtual {v4}, Lc8/sb;->getOrientation()I

    move-result v14

    if-nez v14, :cond_0

    .line 514
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 515
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 517
    invoke-virtual {v4}, Lc8/sb;->getRelativeBegin()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1a

    .line 518
    invoke-virtual {v4}, Lc8/sb;->getRelativeBegin()I

    move-result v14

    int-to-float v9, v14

    .line 524
    .local v9, "position":F
    :goto_5
    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v14, v9

    float-to-int v13, v14

    .line 525
    .local v13, "value":I
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 526
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 527
    const/4 v14, 0x2

    move-object/from16 v0, p2

    iput v14, v0, Lc8/ob;->mVerticalResolution:I

    .line 528
    const/4 v14, 0x2

    move-object/from16 v0, p2

    iput v14, v0, Lc8/ob;->mHorizontalResolution:I

    .line 529
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v13}, Lc8/ob;->setVerticalDimension(II)V

    .line 530
    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getWidth()I

    move-result v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Lc8/ob;->setHorizontalDimension(II)V

    goto/16 :goto_0

    .line 507
    .end local v4    # "guideline":Lc8/sb;
    .end local v6    # "hasBaseline":Z
    .end local v7    # "hasBottom":Z
    .end local v8    # "hasTop":Z
    .end local v9    # "position":F
    .end local v13    # "value":I
    :cond_17
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 508
    .restart local v6    # "hasBaseline":Z
    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 509
    .restart local v8    # "hasTop":Z
    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 519
    .restart local v4    # "guideline":Lc8/sb;
    .restart local v7    # "hasBottom":Z
    :cond_1a
    invoke-virtual {v4}, Lc8/sb;->getRelativeEnd()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1b

    .line 520
    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getHeight()I

    move-result v14

    invoke-virtual {v4}, Lc8/sb;->getRelativeEnd()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v9, v14

    .restart local v9    # "position":F
    goto :goto_5

    .line 522
    .end local v9    # "position":F
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lc8/qb;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v4}, Lc8/sb;->getRelativePercent()F

    move-result v15

    mul-float v9, v14, v15

    .restart local v9    # "position":F
    goto :goto_5

    .line 533
    .end local v4    # "guideline":Lc8/sb;
    .end local v9    # "position":F
    :cond_1c
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mTop:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 534
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBottom:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 535
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getY()I

    move-result v11

    .line 536
    .restart local v11    # "top":I
    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getHeight()I

    move-result v14

    add-int v1, v11, v14

    .line 537
    .restart local v1    # "bottom":I
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mTop:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v11}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 538
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBottom:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 539
    move-object/from16 v0, p2

    iget v14, v0, Lc8/ob;->mBaselineDistance:I

    if-gtz v14, :cond_1d

    invoke-virtual/range {p2 .. p2}, Lc8/ob;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_1e

    .line 540
    :cond_1d
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    move-object/from16 v0, p2

    iget-object v15, v0, Lc8/ob;->mBaseline:Lc8/ib;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v15

    iput-object v15, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 541
    move-object/from16 v0, p2

    iget-object v14, v0, Lc8/ob;->mBaseline:Lc8/ib;

    iget-object v14, v14, Lc8/ib;->mSolverVariable:Lc8/gb;

    move-object/from16 v0, p2

    iget v15, v0, Lc8/ob;->mBaselineDistance:I

    add-int/2addr v15, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lc8/bb;->addEquality(Lc8/gb;I)V

    .line 543
    :cond_1e
    const/4 v14, 0x2

    move-object/from16 v0, p2

    iput v14, v0, Lc8/ob;->mVerticalResolution:I

    goto/16 :goto_0
.end method
