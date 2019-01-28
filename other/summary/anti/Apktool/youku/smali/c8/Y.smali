.class public Lc8/Y;
.super Ljava/lang/Object;
.source "ArrayRow.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field constantValue:F

.field isSimpleDefinition:Z

.field used:Z

.field variable:Lc8/gb;

.field final variables:Lc8/X;


# direct methods
.method public constructor <init>(Lc8/Z;)V
    .locals 2
    .param p1, "cache"    # Lc8/Z;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Y;->variable:Lc8/gb;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lc8/Y;->constantValue:F

    .line 24
    iput-boolean v1, p0, Lc8/Y;->used:Z

    .line 28
    iput-boolean v1, p0, Lc8/Y;->isSimpleDefinition:Z

    .line 31
    new-instance v0, Lc8/X;

    invoke-direct {v0, p0, p1}, Lc8/X;-><init>(Lc8/Y;Lc8/Z;)V

    iput-object v0, p0, Lc8/Y;->variables:Lc8/X;

    .line 32
    return-void
.end method


# virtual methods
.method public addError(Lc8/gb;Lc8/gb;)Lc8/Y;
    .locals 2
    .param p1, "error1"    # Lc8/gb;
    .param p2, "error2"    # Lc8/gb;

    .prologue
    .line 284
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Lc8/X;->put(Lc8/gb;F)V

    .line 285
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p2, v1}, Lc8/X;->put(Lc8/gb;F)V

    .line 286
    return-object p0
.end method

.method addSingleError(Lc8/gb;I)Lc8/Y;
    .locals 2
    .param p1, "error"    # Lc8/gb;
    .param p2, "sign"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Lc8/X;->put(Lc8/gb;F)V

    .line 156
    return-object p0
.end method

.method createRowCentering(Lc8/gb;Lc8/gb;IFLc8/gb;Lc8/gb;I)Lc8/Y;
    .locals 4
    .param p1, "variableA"    # Lc8/gb;
    .param p2, "variableB"    # Lc8/gb;
    .param p3, "marginA"    # I
    .param p4, "bias"    # F
    .param p5, "variableC"    # Lc8/gb;
    .param p6, "variableD"    # Lc8/gb;
    .param p7, "marginB"    # I

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 238
    if-ne p2, p5, :cond_1

    .line 242
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0, p1, v2}, Lc8/X;->put(Lc8/gb;F)V

    .line 243
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0, p6, v2}, Lc8/X;->put(Lc8/gb;F)V

    .line 244
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {v0, p2, v1}, Lc8/X;->put(Lc8/gb;F)V

    .line 280
    :cond_0
    :goto_0
    return-object p0

    .line 247
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p4, v0

    if-nez v0, :cond_3

    .line 254
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0, p1, v2}, Lc8/X;->put(Lc8/gb;F)V

    .line 255
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0, p2, v3}, Lc8/X;->put(Lc8/gb;F)V

    .line 256
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0, p5, v3}, Lc8/X;->put(Lc8/gb;F)V

    .line 257
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0, p6, v2}, Lc8/X;->put(Lc8/gb;F)V

    .line 258
    if-gtz p3, :cond_2

    if-lez p7, :cond_0

    .line 259
    :cond_2
    neg-int v0, p3

    add-int/2addr v0, p7

    int-to-float v0, v0

    iput v0, p0, Lc8/Y;->constantValue:F

    goto :goto_0

    .line 261
    :cond_3
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_4

    .line 263
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0, p1, v3}, Lc8/X;->put(Lc8/gb;F)V

    .line 264
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0, p2, v2}, Lc8/X;->put(Lc8/gb;F)V

    .line 265
    int-to-float v0, p3

    iput v0, p0, Lc8/Y;->constantValue:F

    goto :goto_0

    .line 266
    :cond_4
    cmpl-float v0, p4, v2

    if-ltz v0, :cond_5

    .line 268
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0, p5, v3}, Lc8/X;->put(Lc8/gb;F)V

    .line 269
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0, p6, v2}, Lc8/X;->put(Lc8/gb;F)V

    .line 270
    int-to-float v0, p7

    iput v0, p0, Lc8/Y;->constantValue:F

    goto :goto_0

    .line 272
    :cond_5
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    sub-float v1, v2, p4

    mul-float/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lc8/X;->put(Lc8/gb;F)V

    .line 273
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    sub-float v1, v2, p4

    mul-float/2addr v1, v3

    invoke-virtual {v0, p2, v1}, Lc8/X;->put(Lc8/gb;F)V

    .line 274
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    mul-float v1, v3, p4

    invoke-virtual {v0, p5, v1}, Lc8/X;->put(Lc8/gb;F)V

    .line 275
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    mul-float v1, p4, v2

    invoke-virtual {v0, p6, v1}, Lc8/X;->put(Lc8/gb;F)V

    .line 276
    if-gtz p3, :cond_6

    if-lez p7, :cond_0

    .line 277
    :cond_6
    neg-int v0, p3

    int-to-float v0, v0

    sub-float v1, v2, p4

    mul-float/2addr v0, v1

    int-to-float v1, p7

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    iput v0, p0, Lc8/Y;->constantValue:F

    goto :goto_0
.end method

.method createRowDefinition(Lc8/gb;I)Lc8/Y;
    .locals 1
    .param p1, "variable"    # Lc8/gb;
    .param p2, "value"    # I

    .prologue
    .line 116
    iput-object p1, p0, Lc8/Y;->variable:Lc8/gb;

    .line 117
    int-to-float v0, p2

    iput v0, p1, Lc8/gb;->computedValue:F

    .line 118
    int-to-float v0, p2

    iput v0, p0, Lc8/Y;->constantValue:F

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Y;->isSimpleDefinition:Z

    .line 120
    return-object p0
.end method

.method createRowDimensionPercent(Lc8/gb;Lc8/gb;Lc8/gb;F)Lc8/Y;
    .locals 2
    .param p1, "variableA"    # Lc8/gb;
    .param p2, "variableB"    # Lc8/gb;
    .param p3, "variableC"    # Lc8/gb;
    .param p4, "percent"    # F

    .prologue
    .line 291
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Lc8/X;->put(Lc8/gb;F)V

    .line 292
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p4

    invoke-virtual {v0, p2, v1}, Lc8/X;->put(Lc8/gb;F)V

    .line 293
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0, p3, p4}, Lc8/X;->put(Lc8/gb;F)V

    .line 294
    return-object p0
.end method

.method public createRowDimensionRatio(Lc8/gb;Lc8/gb;Lc8/gb;Lc8/gb;F)Lc8/Y;
    .locals 2
    .param p1, "variableA"    # Lc8/gb;
    .param p2, "variableB"    # Lc8/gb;
    .param p3, "variableC"    # Lc8/gb;
    .param p4, "variableD"    # Lc8/gb;
    .param p5, "ratio"    # F

    .prologue
    .line 311
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Lc8/X;->put(Lc8/gb;F)V

    .line 312
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Lc8/X;->put(Lc8/gb;F)V

    .line 313
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0, p3, p5}, Lc8/X;->put(Lc8/gb;F)V

    .line 314
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    neg-float v1, p5

    invoke-virtual {v0, p4, v1}, Lc8/X;->put(Lc8/gb;F)V

    .line 315
    return-object p0
.end method

.method public createRowEqualDimension(FFFLc8/gb;ILc8/gb;ILc8/gb;ILc8/gb;I)Lc8/Y;
    .locals 6
    .param p1, "currentWeight"    # F
    .param p2, "totalWeights"    # F
    .param p3, "nextWeight"    # F
    .param p4, "variableStartA"    # Lc8/gb;
    .param p5, "marginStartA"    # I
    .param p6, "variableEndA"    # Lc8/gb;
    .param p7, "marginEndA"    # I
    .param p8, "variableStartB"    # Lc8/gb;
    .param p9, "marginStartB"    # I
    .param p10, "variableEndB"    # Lc8/gb;
    .param p11, "marginEndB"    # I

    .prologue
    .line 211
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_0

    cmpl-float v4, p1, p3

    if-nez v4, :cond_1

    .line 215
    :cond_0
    neg-int v4, p5

    sub-int/2addr v4, p7

    add-int/2addr v4, p9

    add-int v4, v4, p11

    int-to-float v4, v4

    iput v4, p0, Lc8/Y;->constantValue:F

    .line 216
    iget-object v4, p0, Lc8/Y;->variables:Lc8/X;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, p4, v5}, Lc8/X;->put(Lc8/gb;F)V

    .line 217
    iget-object v4, p0, Lc8/Y;->variables:Lc8/X;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, p6, v5}, Lc8/X;->put(Lc8/gb;F)V

    .line 218
    iget-object v4, p0, Lc8/Y;->variables:Lc8/X;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p10

    invoke-virtual {v4, v0, v5}, Lc8/X;->put(Lc8/gb;F)V

    .line 219
    iget-object v4, p0, Lc8/Y;->variables:Lc8/X;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, p8, v5}, Lc8/X;->put(Lc8/gb;F)V

    .line 233
    :goto_0
    return-object p0

    .line 221
    :cond_1
    div-float v1, p1, p2

    .line 222
    .local v1, "cw":F
    div-float v2, p3, p2

    .line 223
    .local v2, "nw":F
    div-float v3, v1, v2

    .line 227
    .local v3, "w":F
    neg-int v4, p5

    sub-int/2addr v4, p7

    int-to-float v4, v4

    int-to-float v5, p9

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    move/from16 v0, p11

    int-to-float v5, v0

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lc8/Y;->constantValue:F

    .line 228
    iget-object v4, p0, Lc8/Y;->variables:Lc8/X;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, p4, v5}, Lc8/X;->put(Lc8/gb;F)V

    .line 229
    iget-object v4, p0, Lc8/Y;->variables:Lc8/X;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, p6, v5}, Lc8/X;->put(Lc8/gb;F)V

    .line 230
    iget-object v4, p0, Lc8/Y;->variables:Lc8/X;

    move-object/from16 v0, p10

    invoke-virtual {v4, v0, v3}, Lc8/X;->put(Lc8/gb;F)V

    .line 231
    iget-object v4, p0, Lc8/Y;->variables:Lc8/X;

    neg-float v5, v3

    invoke-virtual {v4, p8, v5}, Lc8/X;->put(Lc8/gb;F)V

    goto :goto_0
.end method

.method public createRowEquals(Lc8/gb;I)Lc8/Y;
    .locals 2
    .param p1, "variable"    # Lc8/gb;
    .param p2, "value"    # I

    .prologue
    .line 124
    if-gez p2, :cond_0

    .line 125
    mul-int/lit8 v0, p2, -0x1

    int-to-float v0, v0

    iput v0, p0, Lc8/Y;->constantValue:F

    .line 126
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Lc8/X;->put(Lc8/gb;F)V

    .line 131
    :goto_0
    return-object p0

    .line 128
    :cond_0
    int-to-float v0, p2

    iput v0, p0, Lc8/Y;->constantValue:F

    .line 129
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Lc8/X;->put(Lc8/gb;F)V

    goto :goto_0
.end method

.method public createRowEquals(Lc8/gb;Lc8/gb;I)Lc8/Y;
    .locals 5
    .param p1, "variableA"    # Lc8/gb;
    .param p2, "variableB"    # Lc8/gb;
    .param p3, "margin"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "inverse":Z
    if-eqz p3, :cond_1

    .line 138
    move v1, p3

    .local v1, "m":I
    if-gez p3, :cond_0

    .line 139
    mul-int/lit8 v1, v1, -0x1

    .line 140
    const/4 v0, 0x1

    .line 142
    :cond_0
    int-to-float v2, v1

    iput v2, p0, Lc8/Y;->constantValue:F

    .line 144
    .end local v1    # "m":I
    :cond_1
    if-nez v0, :cond_2

    .line 145
    iget-object v2, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v2, p1, v3}, Lc8/X;->put(Lc8/gb;F)V

    .line 146
    iget-object v2, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v2, p2, v4}, Lc8/X;->put(Lc8/gb;F)V

    .line 151
    :goto_0
    return-object p0

    .line 148
    :cond_2
    iget-object v2, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v2, p1, v4}, Lc8/X;->put(Lc8/gb;F)V

    .line 149
    iget-object v2, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v2, p2, v3}, Lc8/X;->put(Lc8/gb;F)V

    goto :goto_0
.end method

.method public createRowGreaterThan(Lc8/gb;Lc8/gb;Lc8/gb;I)Lc8/Y;
    .locals 5
    .param p1, "variableA"    # Lc8/gb;
    .param p2, "variableB"    # Lc8/gb;
    .param p3, "slack"    # Lc8/gb;
    .param p4, "margin"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "inverse":Z
    if-eqz p4, :cond_1

    .line 165
    move v1, p4

    .local v1, "m":I
    if-gez p4, :cond_0

    .line 166
    mul-int/lit8 v1, v1, -0x1

    .line 167
    const/4 v0, 0x1

    .line 169
    :cond_0
    int-to-float v2, v1

    iput v2, p0, Lc8/Y;->constantValue:F

    .line 171
    .end local v1    # "m":I
    :cond_1
    if-nez v0, :cond_2

    .line 172
    iget-object v2, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v2, p1, v3}, Lc8/X;->put(Lc8/gb;F)V

    .line 173
    iget-object v2, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v2, p2, v4}, Lc8/X;->put(Lc8/gb;F)V

    .line 174
    iget-object v2, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v2, p3, v4}, Lc8/X;->put(Lc8/gb;F)V

    .line 180
    :goto_0
    return-object p0

    .line 176
    :cond_2
    iget-object v2, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v2, p1, v4}, Lc8/X;->put(Lc8/gb;F)V

    .line 177
    iget-object v2, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v2, p2, v3}, Lc8/X;->put(Lc8/gb;F)V

    .line 178
    iget-object v2, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v2, p3, v3}, Lc8/X;->put(Lc8/gb;F)V

    goto :goto_0
.end method

.method public createRowLowerThan(Lc8/gb;Lc8/gb;Lc8/gb;I)Lc8/Y;
    .locals 5
    .param p1, "variableA"    # Lc8/gb;
    .param p2, "variableB"    # Lc8/gb;
    .param p3, "slack"    # Lc8/gb;
    .param p4, "margin"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "inverse":Z
    if-eqz p4, :cond_1

    .line 188
    move v1, p4

    .local v1, "m":I
    if-gez p4, :cond_0

    .line 189
    mul-int/lit8 v1, v1, -0x1

    .line 190
    const/4 v0, 0x1

    .line 192
    :cond_0
    int-to-float v2, v1

    iput v2, p0, Lc8/Y;->constantValue:F

    .line 194
    .end local v1    # "m":I
    :cond_1
    if-nez v0, :cond_2

    .line 195
    iget-object v2, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v2, p1, v3}, Lc8/X;->put(Lc8/gb;F)V

    .line 196
    iget-object v2, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v2, p2, v4}, Lc8/X;->put(Lc8/gb;F)V

    .line 197
    iget-object v2, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v2, p3, v3}, Lc8/X;->put(Lc8/gb;F)V

    .line 203
    :goto_0
    return-object p0

    .line 199
    :cond_2
    iget-object v2, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v2, p1, v4}, Lc8/X;->put(Lc8/gb;F)V

    .line 200
    iget-object v2, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v2, p2, v3}, Lc8/X;->put(Lc8/gb;F)V

    .line 201
    iget-object v2, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v2, p3, v4}, Lc8/X;->put(Lc8/gb;F)V

    goto :goto_0
.end method

.method ensurePositiveConstant()V
    .locals 2

    .prologue
    .line 337
    iget v0, p0, Lc8/Y;->constantValue:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 339
    iget v0, p0, Lc8/Y;->constantValue:F

    neg-float v0, v0

    iput v0, p0, Lc8/Y;->constantValue:F

    .line 340
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0}, Lc8/X;->invert()V

    .line 342
    :cond_0
    return-void
.end method

.method hasAtLeastOnePositiveVariable()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0}, Lc8/X;->hasAtLeastOnePositiveVariable()Z

    move-result v0

    return v0
.end method

.method hasKeyVariable()Z
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lc8/Y;->variable:Lc8/gb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Y;->variable:Lc8/gb;

    iget-object v0, v0, Lc8/gb;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-eq v0, v1, :cond_0

    iget v0, p0, Lc8/Y;->constantValue:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasVariable(Lc8/gb;)Z
    .locals 1
    .param p1, "v"    # Lc8/gb;

    .prologue
    .line 112
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0, p1}, Lc8/X;->containsKey(Lc8/gb;)Z

    move-result v0

    return v0
.end method

.method pickRowVariable()V
    .locals 2

    .prologue
    .line 345
    iget-object v1, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v1}, Lc8/X;->pickPivotCandidate()Lc8/gb;

    move-result-object v0

    .line 346
    .local v0, "pivotCandidate":Lc8/gb;
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p0, v0}, Lc8/Y;->pivot(Lc8/gb;)V

    .line 349
    :cond_0
    iget-object v1, p0, Lc8/Y;->variables:Lc8/X;

    iget v1, v1, Lc8/X;->currentSize:I

    if-nez v1, :cond_1

    .line 350
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/Y;->isSimpleDefinition:Z

    .line 352
    :cond_1
    return-void
.end method

.method pivot(Lc8/gb;)V
    .locals 4
    .param p1, "v"    # Lc8/gb;

    .prologue
    .line 355
    iget-object v1, p0, Lc8/Y;->variable:Lc8/gb;

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lc8/Y;->variables:Lc8/X;

    iget-object v2, p0, Lc8/Y;->variable:Lc8/gb;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3}, Lc8/X;->put(Lc8/gb;F)V

    .line 358
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/Y;->variable:Lc8/gb;

    .line 361
    :cond_0
    iget-object v1, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v1, p1}, Lc8/X;->remove(Lc8/gb;)F

    move-result v1

    neg-float v0, v1

    .line 362
    .local v0, "amount":F
    iput-object p1, p0, Lc8/Y;->variable:Lc8/gb;

    .line 363
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_1
    iget v1, p0, Lc8/Y;->constantValue:F

    div-float/2addr v1, v0

    iput v1, p0, Lc8/Y;->constantValue:F

    .line 367
    iget-object v1, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v1, v0}, Lc8/X;->divideByAmount(F)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Y;->variable:Lc8/gb;

    .line 106
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0}, Lc8/X;->clear()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lc8/Y;->constantValue:F

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Y;->isSimpleDefinition:Z

    .line 109
    return-void
.end method

.method sizeInBytes()I
    .locals 2

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "size":I
    iget-object v1, p0, Lc8/Y;->variable:Lc8/gb;

    if-eqz v1, :cond_0

    .line 321
    add-int/lit8 v0, v0, 0x4

    .line 323
    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 324
    add-int/lit8 v0, v0, 0x4

    .line 326
    iget-object v1, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v1}, Lc8/X;->sizeInBytes()I

    move-result v1

    add-int/2addr v0, v1

    .line 327
    return v0
.end method

.method toReadableString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 55
    const-string/jumbo v5, ""

    .line 56
    .local v5, "s":Ljava/lang/String;
    iget-object v7, p0, Lc8/Y;->variable:Lc8/gb;

    if-nez v7, :cond_3

    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "addedVariable":Z
    iget v7, p0, Lc8/Y;->constantValue:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_0

    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lc8/Y;->constantValue:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 65
    const/4 v0, 0x1

    .line 67
    :cond_0
    iget-object v7, p0, Lc8/Y;->variables:Lc8/X;

    iget v2, v7, Lc8/X;->currentSize:I

    .line 68
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_7

    .line 69
    iget-object v7, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v7, v3}, Lc8/X;->getVariable(I)Lc8/gb;

    move-result-object v6

    .line 70
    .local v6, "v":Lc8/gb;
    if-eqz v6, :cond_2

    .line 73
    iget-object v7, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v7, v3}, Lc8/X;->getVariableValue(I)F

    move-result v1

    .line 74
    .local v1, "amount":F
    invoke-virtual {v6}, Lc8/gb;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "name":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 76
    cmpg-float v7, v1, v9

    if-gez v7, :cond_1

    .line 77
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    neg-float v1, v1

    .line 88
    :cond_1
    :goto_2
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v1, v7

    if-nez v7, :cond_6

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 93
    :goto_3
    const/4 v0, 0x1

    .line 68
    .end local v1    # "amount":F
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 59
    .end local v0    # "addedVariable":Z
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v6    # "v":Lc8/gb;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lc8/Y;->variable:Lc8/gb;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 81
    .restart local v0    # "addedVariable":Z
    .restart local v1    # "amount":F
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "v":Lc8/gb;
    :cond_4
    cmpl-float v7, v1, v9

    if-lez v7, :cond_5

    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 84
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    neg-float v1, v1

    goto :goto_2

    .line 91
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 95
    .end local v1    # "amount":F
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "v":Lc8/gb;
    :cond_7
    if-nez v0, :cond_8

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "0.0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 101
    :cond_8
    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lc8/Y;->toReadableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateClientEquations()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0, p0}, Lc8/X;->updateClientEquations(Lc8/Y;)V

    .line 36
    return-void
.end method

.method updateRowWithEquation(Lc8/Y;)Z
    .locals 1
    .param p1, "definition"    # Lc8/Y;

    .prologue
    .line 331
    iget-object v0, p0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v0, p0, p1}, Lc8/X;->updateFromRow(Lc8/Y;Lc8/Y;)V

    .line 332
    const/4 v0, 0x1

    return v0
.end method
