.class public Lc8/sb;
.super Lc8/ob;
.source "Guideline.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final RELATIVE_BEGIN:I = 0x1

.field public static final RELATIVE_END:I = 0x2

.field public static final RELATIVE_PERCENT:I = 0x0

.field public static final RELATIVE_UNKNWON:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAnchor:Lc8/ib;

.field private mHead:Lc8/ub;

.field private mHeadSize:I

.field private mIsPositionRelaxed:Z

.field private mMinimumPosition:I

.field private mOrientation:I

.field protected mRelativeBegin:I

.field protected mRelativeEnd:I

.field protected mRelativePercent:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lc8/ob;-><init>()V

    .line 32
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lc8/sb;->mRelativePercent:F

    .line 33
    iput v2, p0, Lc8/sb;->mRelativeBegin:I

    .line 34
    iput v2, p0, Lc8/sb;->mRelativeEnd:I

    .line 36
    iget-object v0, p0, Lc8/sb;->mTop:Lc8/ib;

    iput-object v0, p0, Lc8/sb;->mAnchor:Lc8/ib;

    .line 37
    iput v1, p0, Lc8/sb;->mOrientation:I

    .line 38
    iput-boolean v1, p0, Lc8/sb;->mIsPositionRelaxed:Z

    .line 39
    iput v1, p0, Lc8/sb;->mMinimumPosition:I

    .line 41
    new-instance v0, Lc8/ub;

    invoke-direct {v0}, Lc8/ub;-><init>()V

    iput-object v0, p0, Lc8/sb;->mHead:Lc8/ub;

    .line 42
    const/16 v0, 0x8

    iput v0, p0, Lc8/sb;->mHeadSize:I

    .line 45
    iget-object v0, p0, Lc8/sb;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    iget-object v0, p0, Lc8/sb;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Lc8/sb;->mAnchor:Lc8/ib;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method


# virtual methods
.method public addToSolver(Lc8/bb;I)V
    .locals 9
    .param p1, "system"    # Lc8/bb;
    .param p2, "group"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 184
    invoke-virtual {p0}, Lc8/sb;->getParent()Lc8/ob;

    move-result-object v8

    check-cast v8, Lc8/qb;

    .line 185
    .local v8, "parent":Lc8/qb;
    if-nez v8, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Lc8/qb;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v6

    .line 189
    .local v6, "begin":Lc8/ib;
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Lc8/qb;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v7

    .line 190
    .local v7, "end":Lc8/ib;
    iget v0, p0, Lc8/sb;->mOrientation:I

    if-nez v0, :cond_2

    .line 191
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Lc8/qb;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v6

    .line 192
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Lc8/qb;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v7

    .line 194
    :cond_2
    iget v0, p0, Lc8/sb;->mRelativeBegin:I

    if-eq v0, v4, :cond_3

    .line 195
    iget-object v0, p0, Lc8/sb;->mAnchor:Lc8/ib;

    invoke-virtual {p1, v0}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v1

    .line 196
    .local v1, "guide":Lc8/gb;
    invoke-virtual {p1, v6}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v2

    .line 197
    .local v2, "parentLeft":Lc8/gb;
    iget v0, p0, Lc8/sb;->mRelativeBegin:I

    .line 199
    invoke-static {p1, v1, v2, v0, v5}, Lc8/bb;->createRowEquals(Lc8/bb;Lc8/gb;Lc8/gb;IZ)Lc8/Y;

    move-result-object v0

    .line 197
    invoke-virtual {p1, v0}, Lc8/bb;->addConstraint(Lc8/Y;)V

    goto :goto_0

    .line 200
    .end local v1    # "guide":Lc8/gb;
    .end local v2    # "parentLeft":Lc8/gb;
    :cond_3
    iget v0, p0, Lc8/sb;->mRelativeEnd:I

    if-eq v0, v4, :cond_4

    .line 201
    iget-object v0, p0, Lc8/sb;->mAnchor:Lc8/ib;

    invoke-virtual {p1, v0}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v1

    .line 202
    .restart local v1    # "guide":Lc8/gb;
    invoke-virtual {p1, v7}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v3

    .line 203
    .local v3, "parentRight":Lc8/gb;
    iget v0, p0, Lc8/sb;->mRelativeEnd:I

    neg-int v0, v0

    .line 205
    invoke-static {p1, v1, v3, v0, v5}, Lc8/bb;->createRowEquals(Lc8/bb;Lc8/gb;Lc8/gb;IZ)Lc8/Y;

    move-result-object v0

    .line 203
    invoke-virtual {p1, v0}, Lc8/bb;->addConstraint(Lc8/Y;)V

    goto :goto_0

    .line 206
    .end local v1    # "guide":Lc8/gb;
    .end local v3    # "parentRight":Lc8/gb;
    :cond_4
    iget v0, p0, Lc8/sb;->mRelativePercent:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lc8/sb;->mAnchor:Lc8/ib;

    invoke-virtual {p1, v0}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v1

    .line 208
    .restart local v1    # "guide":Lc8/gb;
    invoke-virtual {p1, v6}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v2

    .line 209
    .restart local v2    # "parentLeft":Lc8/gb;
    invoke-virtual {p1, v7}, Lc8/bb;->createObjectVariable(Ljava/lang/Object;)Lc8/gb;

    move-result-object v3

    .line 210
    .restart local v3    # "parentRight":Lc8/gb;
    iget v4, p0, Lc8/sb;->mRelativePercent:F

    iget-boolean v5, p0, Lc8/sb;->mIsPositionRelaxed:Z

    move-object v0, p1

    .line 211
    invoke-static/range {v0 .. v5}, Lc8/bb;->createRowDimensionPercent(Lc8/bb;Lc8/gb;Lc8/gb;Lc8/gb;FZ)Lc8/Y;

    move-result-object v0

    .line 210
    invoke-virtual {p1, v0}, Lc8/bb;->addConstraint(Lc8/Y;)V

    goto :goto_0
.end method

.method public cyclePosition()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 285
    iget v0, p0, Lc8/sb;->mRelativeBegin:I

    if-eq v0, v2, :cond_1

    .line 287
    invoke-virtual {p0}, Lc8/sb;->inferRelativePercentPosition()V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget v0, p0, Lc8/sb;->mRelativePercent:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {p0}, Lc8/sb;->inferRelativeEndPosition()V

    goto :goto_0

    .line 291
    :cond_2
    iget v0, p0, Lc8/sb;->mRelativeEnd:I

    if-eq v0, v2, :cond_0

    .line 293
    invoke-virtual {p0}, Lc8/sb;->inferRelativeBeginPosition()V

    goto :goto_0
.end method

.method public getAnchor()Lc8/ib;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lc8/sb;->mAnchor:Lc8/ib;

    return-object v0
.end method

.method public getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;
    .locals 2
    .param p1, "anchorType"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .prologue
    .line 118
    sget-object v0, Lc8/rb;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 134
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 121
    :pswitch_0
    iget v0, p0, Lc8/sb;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lc8/sb;->mAnchor:Lc8/ib;

    goto :goto_0

    .line 128
    :pswitch_1
    iget v0, p0, Lc8/sb;->mOrientation:I

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lc8/sb;->mAnchor:Lc8/ib;

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/ib;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lc8/sb;->mAnchors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHead()Lc8/ub;
    .locals 5

    .prologue
    .line 63
    iget-object v0, p0, Lc8/sb;->mHead:Lc8/ub;

    invoke-virtual {p0}, Lc8/sb;->getDrawX()I

    move-result v1

    iget v2, p0, Lc8/sb;->mHeadSize:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lc8/sb;->getDrawY()I

    move-result v2

    iget v3, p0, Lc8/sb;->mHeadSize:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lc8/sb;->mHeadSize:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lc8/sb;->mHeadSize:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/ub;->setBounds(IIII)V

    .line 65
    invoke-virtual {p0}, Lc8/sb;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lc8/sb;->mHead:Lc8/ub;

    invoke-virtual {p0}, Lc8/sb;->getDrawX()I

    move-result v1

    iget v2, p0, Lc8/sb;->mHeadSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 67
    invoke-virtual {p0}, Lc8/sb;->getDrawY()I

    move-result v2

    iget v3, p0, Lc8/sb;->mHeadSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Lc8/sb;->mHeadSize:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lc8/sb;->mHeadSize:I

    mul-int/lit8 v4, v4, 0x2

    .line 66
    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/ub;->setBounds(IIII)V

    .line 70
    :cond_0
    iget-object v0, p0, Lc8/sb;->mHead:Lc8/ub;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lc8/sb;->mOrientation:I

    return v0
.end method

.method public getRelativeBegin()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lc8/sb;->mRelativeBegin:I

    return v0
.end method

.method public getRelativeBehaviour()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 50
    iget v1, p0, Lc8/sb;->mRelativePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 51
    const/4 v0, 0x0

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    iget v1, p0, Lc8/sb;->mRelativeBegin:I

    if-eq v1, v0, :cond_2

    .line 54
    const/4 v0, 0x1

    goto :goto_0

    .line 56
    :cond_2
    iget v1, p0, Lc8/sb;->mRelativeEnd:I

    if-eq v1, v0, :cond_0

    .line 57
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getRelativeEnd()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lc8/sb;->mRelativeEnd:I

    return v0
.end method

.method public getRelativePercent()F
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lc8/sb;->mRelativePercent:F

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string/jumbo v0, "Guideline"

    return-object v0
.end method

.method inferRelativeBeginPosition()V
    .locals 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lc8/sb;->getX()I

    move-result v0

    .line 270
    .local v0, "position":I
    iget v1, p0, Lc8/sb;->mOrientation:I

    if-nez v1, :cond_0

    .line 271
    invoke-virtual {p0}, Lc8/sb;->getY()I

    move-result v0

    .line 273
    :cond_0
    invoke-virtual {p0, v0}, Lc8/sb;->setGuideBegin(I)V

    .line 274
    return-void
.end method

.method inferRelativeEndPosition()V
    .locals 3

    .prologue
    .line 277
    invoke-virtual {p0}, Lc8/sb;->getParent()Lc8/ob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ob;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lc8/sb;->getX()I

    move-result v2

    sub-int v0, v1, v2

    .line 278
    .local v0, "position":I
    iget v1, p0, Lc8/sb;->mOrientation:I

    if-nez v1, :cond_0

    .line 279
    invoke-virtual {p0}, Lc8/sb;->getParent()Lc8/ob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ob;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lc8/sb;->getY()I

    move-result v2

    sub-int v0, v1, v2

    .line 281
    :cond_0
    invoke-virtual {p0, v0}, Lc8/sb;->setGuideEnd(I)V

    .line 282
    return-void
.end method

.method inferRelativePercentPosition()V
    .locals 3

    .prologue
    .line 261
    invoke-virtual {p0}, Lc8/sb;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lc8/sb;->getParent()Lc8/ob;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ob;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 262
    .local v0, "percent":F
    iget v1, p0, Lc8/sb;->mOrientation:I

    if-nez v1, :cond_0

    .line 263
    invoke-virtual {p0}, Lc8/sb;->getY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lc8/sb;->getParent()Lc8/ob;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ob;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 265
    :cond_0
    invoke-virtual {p0, v0}, Lc8/sb;->setGuidePercent(F)V

    .line 266
    return-void
.end method

.method public setDrawOrigin(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, -0x1

    .line 237
    iget v2, p0, Lc8/sb;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 238
    iget v2, p0, Lc8/sb;->mOffsetX:I

    sub-int v1, p1, v2

    .line 239
    .local v1, "position":I
    iget v2, p0, Lc8/sb;->mRelativeBegin:I

    if-eq v2, v4, :cond_1

    .line 240
    invoke-virtual {p0, v1}, Lc8/sb;->setGuideBegin(I)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget v2, p0, Lc8/sb;->mRelativeEnd:I

    if-eq v2, v4, :cond_2

    .line 242
    invoke-virtual {p0}, Lc8/sb;->getParent()Lc8/ob;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ob;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lc8/sb;->setGuideEnd(I)V

    goto :goto_0

    .line 243
    :cond_2
    iget v2, p0, Lc8/sb;->mRelativePercent:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_0

    .line 244
    int-to-float v2, v1

    invoke-virtual {p0}, Lc8/sb;->getParent()Lc8/ob;

    move-result-object v3

    invoke-virtual {v3}, Lc8/ob;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 245
    .local v0, "percent":F
    invoke-virtual {p0, v0}, Lc8/sb;->setGuidePercent(F)V

    goto :goto_0

    .line 248
    .end local v0    # "percent":F
    .end local v1    # "position":I
    :cond_3
    iget v2, p0, Lc8/sb;->mOffsetY:I

    sub-int v1, p2, v2

    .line 249
    .restart local v1    # "position":I
    iget v2, p0, Lc8/sb;->mRelativeBegin:I

    if-eq v2, v4, :cond_4

    .line 250
    invoke-virtual {p0, v1}, Lc8/sb;->setGuideBegin(I)V

    goto :goto_0

    .line 251
    :cond_4
    iget v2, p0, Lc8/sb;->mRelativeEnd:I

    if-eq v2, v4, :cond_5

    .line 252
    invoke-virtual {p0}, Lc8/sb;->getParent()Lc8/ob;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ob;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lc8/sb;->setGuideEnd(I)V

    goto :goto_0

    .line 253
    :cond_5
    iget v2, p0, Lc8/sb;->mRelativePercent:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_0

    .line 254
    int-to-float v2, v1

    invoke-virtual {p0}, Lc8/sb;->getParent()Lc8/ob;

    move-result-object v3

    invoke-virtual {v3}, Lc8/ob;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 255
    .restart local v0    # "percent":F
    invoke-virtual {p0, v0}, Lc8/sb;->setGuidePercent(F)V

    goto :goto_0
.end method

.method public setGuideBegin(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 155
    if-ltz p1, :cond_0

    .line 156
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lc8/sb;->mRelativePercent:F

    .line 157
    iput p1, p0, Lc8/sb;->mRelativeBegin:I

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lc8/sb;->mRelativeEnd:I

    .line 160
    :cond_0
    return-void
.end method

.method public setGuideEnd(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 163
    if-ltz p1, :cond_0

    .line 164
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lc8/sb;->mRelativePercent:F

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lc8/sb;->mRelativeBegin:I

    .line 166
    iput p1, p0, Lc8/sb;->mRelativeEnd:I

    .line 168
    :cond_0
    return-void
.end method

.method public setGuidePercent(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    const/4 v1, -0x1

    .line 147
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 148
    iput p1, p0, Lc8/sb;->mRelativePercent:F

    .line 149
    iput v1, p0, Lc8/sb;->mRelativeBegin:I

    .line 150
    iput v1, p0, Lc8/sb;->mRelativeEnd:I

    .line 152
    :cond_0
    return-void
.end method

.method public setGuidePercent(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 143
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lc8/sb;->setGuidePercent(F)V

    .line 144
    return-void
.end method

.method public setMinimumPosition(I)V
    .locals 0
    .param p1, "minimum"    # I

    .prologue
    .line 106
    iput p1, p0, Lc8/sb;->mMinimumPosition:I

    .line 107
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 74
    iget v0, p0, Lc8/sb;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 77
    :cond_0
    iput p1, p0, Lc8/sb;->mOrientation:I

    .line 78
    iget-object v0, p0, Lc8/sb;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    iget v0, p0, Lc8/sb;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 80
    iget-object v0, p0, Lc8/sb;->mLeft:Lc8/ib;

    iput-object v0, p0, Lc8/sb;->mAnchor:Lc8/ib;

    .line 84
    :goto_1
    iget-object v0, p0, Lc8/sb;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Lc8/sb;->mAnchor:Lc8/ib;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lc8/sb;->mTop:Lc8/ib;

    iput-object v0, p0, Lc8/sb;->mAnchor:Lc8/ib;

    goto :goto_1
.end method

.method public setPositionRelaxed(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 110
    iget-boolean v0, p0, Lc8/sb;->mIsPositionRelaxed:Z

    if-ne v0, p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iput-boolean p1, p0, Lc8/sb;->mIsPositionRelaxed:Z

    goto :goto_0
.end method

.method public updateFromSolver(Lc8/bb;I)V
    .locals 4
    .param p1, "system"    # Lc8/bb;
    .param p2, "group"    # I

    .prologue
    const/4 v3, 0x0

    .line 218
    invoke-virtual {p0}, Lc8/sb;->getParent()Lc8/ob;

    move-result-object v1

    if-nez v1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lc8/sb;->mAnchor:Lc8/ib;

    invoke-virtual {p1, v1}, Lc8/bb;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    .line 222
    .local v0, "value":I
    iget v1, p0, Lc8/sb;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 223
    invoke-virtual {p0, v0}, Lc8/sb;->setX(I)V

    .line 224
    invoke-virtual {p0, v3}, Lc8/sb;->setY(I)V

    .line 225
    invoke-virtual {p0}, Lc8/sb;->getParent()Lc8/ob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ob;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lc8/sb;->setHeight(I)V

    .line 226
    invoke-virtual {p0, v3}, Lc8/sb;->setWidth(I)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0, v3}, Lc8/sb;->setX(I)V

    .line 229
    invoke-virtual {p0, v0}, Lc8/sb;->setY(I)V

    .line 230
    invoke-virtual {p0}, Lc8/sb;->getParent()Lc8/ob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ob;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Lc8/sb;->setWidth(I)V

    .line 231
    invoke-virtual {p0, v3}, Lc8/sb;->setHeight(I)V

    goto :goto_0
.end method
