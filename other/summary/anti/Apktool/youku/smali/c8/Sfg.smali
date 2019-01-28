.class public Lc8/Sfg;
.super Ljava/lang/Object;
.source "BoxShadowUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Pfg;,
        Lc8/Qfg;,
        Lc8/Rfg;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BoxShadowUtil"

.field private static sBoxShadowEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Sfg;->sBoxShadowEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Lc8/Pfg;F)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Lc8/Pfg;
    .param p2, "x2"    # F

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lc8/Sfg;->setInsetBoxShadow(Landroid/view/View;Lc8/Pfg;F)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;Lc8/Pfg;F)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Lc8/Pfg;
    .param p2, "x2"    # F

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lc8/Sfg;->setNormalBoxShadow(Landroid/view/View;Lc8/Pfg;F)V

    return-void
.end method

.method private static createShadowBitmap(II[FFFFFI)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "viewWidth"    # I
    .param p1, "viewHeight"    # I
    .param p2, "radii"    # [F
    .param p3, "shadowRadius"    # F
    .param p4, "shadowSpread"    # F
    .param p5, "dx"    # F
    .param p6, "dy"    # F
    .param p7, "shadowColor"    # I

    .prologue
    .line 127
    add-float v13, p3, p4

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v13, v14

    float-to-int v13, v13

    mul-int/lit8 v13, v13, 0x2

    add-int v3, p0, v13

    .line 128
    .local v3, "canvasWidth":I
    add-float v13, p3, p4

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v13, v14

    float-to-int v13, v13

    mul-int/lit8 v13, v13, 0x2

    add-int v2, p1, v13

    .line 130
    .local v2, "canvasHeight":I
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 131
    .local v6, "output":Landroid/graphics/Bitmap;
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x13

    if-lt v13, v14, :cond_0

    .line 132
    const-string/jumbo v13, "BoxShadowUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Allocation memory for box-shadow: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v15

    div-int/lit16 v15, v15, 0x400

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " KB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 145
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p0

    int-to-float v15, v0

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v16, v16, p4

    add-float v15, v15, v16

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v17, v17, p4

    add-float v16, v16, v17

    invoke-direct/range {v12 .. v16}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 150
    .local v12, "shadowRect":Landroid/graphics/RectF;
    move/from16 v7, p3

    .line 151
    .local v7, "shadowDx":F
    move/from16 v8, p3

    .line 152
    .local v8, "shadowDy":F
    const/4 v13, 0x0

    cmpl-float v13, p5, v13

    if-lez v13, :cond_1

    .line 153
    const/high16 v13, 0x40000000    # 2.0f

    mul-float v13, v13, p5

    add-float/2addr v7, v13

    .line 155
    :cond_1
    const/4 v13, 0x0

    cmpl-float v13, p6, v13

    if-lez v13, :cond_2

    .line 156
    const/high16 v13, 0x40000000    # 2.0f

    mul-float v13, v13, p6

    add-float/2addr v8, v13

    .line 158
    :cond_2
    invoke-virtual {v12, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 160
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 161
    .local v9, "shadowPaint":Landroid/graphics/Paint;
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    move/from16 v0, p7

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    const/4 v13, 0x0

    cmpl-float v13, p3, v13

    if-lez v13, :cond_3

    .line 166
    new-instance v13, Landroid/graphics/BlurMaskFilter;

    sget-object v14, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    move/from16 v0, p3

    invoke-direct {v13, v0, v14}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 169
    :cond_3
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 170
    .local v10, "shadowPath":Landroid/graphics/Path;
    const/16 v13, 0x8

    new-array v11, v13, [F

    .line 171
    .local v11, "shadowRadii":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v13, v0

    if-ge v5, v13, :cond_5

    .line 172
    aget v4, p2, v5

    .line 173
    .local v4, "contentRadius":F
    const/4 v13, 0x0

    cmpl-float v13, v4, v13

    if-nez v13, :cond_4

    .line 174
    const/4 v13, 0x0

    aput v13, v11, v5

    .line 171
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 176
    :cond_4
    aget v13, p2, v5

    add-float v13, v13, p4

    aput v13, v11, v5

    goto :goto_1

    .line 179
    .end local v4    # "contentRadius":F
    :cond_5
    sget-object v13, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v10, v12, v11, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 180
    invoke-virtual {v1, v10, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 181
    return-object v6
.end method

.method public static isBoxShadowEnabled()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lc8/Sfg;->sBoxShadowEnabled:Z

    return v0
.end method

.method public static parseBoxShadow(Ljava/lang/String;I)Lc8/Pfg;
    .locals 13
    .param p0, "boxShadow"    # Ljava/lang/String;
    .param p1, "viewport"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 244
    new-instance v7, Lc8/Pfg;

    invoke-direct {v7, p1, v9}, Lc8/Pfg;-><init>(ILc8/Lfg;)V

    .line 245
    .local v7, "result":Lc8/Pfg;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 246
    iput-boolean v12, v7, Lc8/Pfg;->isClear:Z

    .line 296
    .end local v7    # "result":Lc8/Pfg;
    :cond_0
    :goto_0
    return-object v7

    .line 253
    .restart local v7    # "result":Lc8/Pfg;
    :cond_1
    move-object v0, p0

    .local v0, "boxShadowCopy":Ljava/lang/String;
    const-string/jumbo v10, "\\s*,\\s+"

    const-string/jumbo v11, ","

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    const-string/jumbo v10, "inset"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 257
    iput-boolean v12, v7, Lc8/Pfg;->isInset:Z

    .line 258
    const-string/jumbo v10, "inset"

    const-string/jumbo v11, ""

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    const-string/jumbo v10, "\\s+"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 264
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 265
    .local v2, "maybeColor":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 266
    const-string/jumbo v10, "#"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "rgb"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v2}, Lc8/Bgg;->isNamedColor(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 267
    :cond_3
    const/high16 v10, -0x1000000

    invoke-static {v2, v10}, Lc8/Bgg;->getColor(Ljava/lang/String;I)I

    move-result v10

    iput v10, v7, Lc8/Pfg;->color:I

    .line 268
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v3, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 273
    :cond_4
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_5

    move-object v7, v9

    .line 275
    goto :goto_0

    .line 277
    :cond_5
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 278
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/Dgg;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 279
    .local v6, "px":F
    invoke-static {v6, p1}, Lc8/Jgg;->getRealSubPxByWidth(FI)F

    move-result v9

    iput v9, v7, Lc8/Pfg;->hShadow:F

    .line 282
    .end local v6    # "px":F
    :cond_6
    const/4 v9, 0x1

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 283
    const/4 v9, 0x1

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/Dgg;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 284
    .restart local v6    # "px":F
    invoke-static {v6, p1}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v9

    iput v9, v7, Lc8/Pfg;->vShadow:F

    .line 287
    .end local v6    # "px":F
    :cond_7
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_0

    .line 288
    add-int/lit8 v5, v1, -0x2

    .line 289
    .local v5, "parserIndex":I
    invoke-static {v7}, Lc8/Pfg;->access$500(Lc8/Pfg;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Ofg;

    .line 290
    .local v4, "parser":Lc8/Ofg;
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4, v9}, Lc8/Ofg;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 293
    .end local v1    # "i":I
    .end local v4    # "parser":Lc8/Ofg;
    .end local v5    # "parserIndex":I
    :catch_0
    move-exception v8

    .line 294
    .local v8, "t":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static setBoxShadow(Landroid/view/View;Ljava/lang/String;[FIF)V
    .locals 6
    .param p0, "target"    # Landroid/view/View;
    .param p1, "style"    # Ljava/lang/String;
    .param p2, "radii"    # [F
    .param p3, "viewPort"    # I
    .param p4, "quality"    # F

    .prologue
    .line 75
    sget-boolean v3, Lc8/Sfg;->sBoxShadowEnabled:Z

    if-nez v3, :cond_0

    .line 76
    const-string/jumbo v3, "BoxShadowUtil"

    const-string/jumbo v4, "box-shadow was disabled by config"

    invoke-static {v3, v4}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {p1, p3}, Lc8/Sfg;->parseBoxShadow(Ljava/lang/String;I)Lc8/Pfg;

    move-result-object v1

    .line 81
    .local v1, "options":Lc8/Pfg;
    if-nez v1, :cond_1

    .line 82
    const-string/jumbo v3, "BoxShadowUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to parse box-shadow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_1
    if-nez p0, :cond_2

    .line 87
    const-string/jumbo v3, "BoxShadowUtil"

    const-string/jumbo v4, "Target view is null!"

    invoke-static {v3, v4}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    iget-boolean v3, v1, Lc8/Pfg;->isClear:Z

    if-eqz v3, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_3

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewOverlay;->clear()V

    .line 93
    const-string/jumbo v3, "BoxShadowUtil"

    const-string/jumbo v4, "Remove box-shadow"

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_3
    if-eqz p2, :cond_4

    .line 98
    array-length v3, p2

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    .line 99
    const-string/jumbo v3, "BoxShadowUtil"

    const-string/jumbo v4, "Length of radii must be 8"

    invoke-static {v3, v4}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_4
    :goto_1
    const-string/jumbo v3, "BoxShadowUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Set box-shadow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lc8/Pfg;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v3, Lc8/Lfg;

    invoke-direct {v3, v1, p0, p4}, Lc8/Lfg;-><init>(Lc8/Pfg;Landroid/view/View;F)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 101
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v3, p2

    if-ge v0, v3, :cond_6

    .line 102
    aget v3, p2, v0

    invoke-static {v3, p3}, Lc8/Jgg;->getRealSubPxByWidth(FI)F

    move-result v2

    .line 103
    .local v2, "realRadius":F
    aput v2, p2, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 105
    .end local v2    # "realRadius":F
    :cond_6
    iput-object p2, v1, Lc8/Pfg;->radii:[F

    goto :goto_1
.end method

.method public static setBoxShadowEnabled(Z)V
    .locals 3
    .param p0, "enabled"    # Z

    .prologue
    .line 66
    sput-boolean p0, Lc8/Sfg;->sBoxShadowEnabled:Z

    .line 67
    const-string/jumbo v0, "BoxShadowUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Switch box-shadow status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private static setInsetBoxShadow(Landroid/view/View;Lc8/Pfg;F)V
    .locals 10
    .param p0, "target"    # Landroid/view/View;
    .param p1, "options"    # Lc8/Pfg;
    .param p2, "quality"    # F

    .prologue
    .line 220
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 221
    :cond_0
    const-string/jumbo v1, "BoxShadowUtil"

    const-string/jumbo v2, "Illegal arguments"

    invoke-static {v1, v2}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_1
    :goto_0
    return-void

    .line 225
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_4

    .line 226
    :cond_3
    const-string/jumbo v1, "BoxShadowUtil"

    const-string/jumbo v2, "Target view is invisible, ignore set shadow."

    invoke-static {v1, v2}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    .line 231
    new-instance v0, Lc8/Qfg;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p1, Lc8/Pfg;->hShadow:F

    iget v4, p1, Lc8/Pfg;->vShadow:F

    iget v5, p1, Lc8/Pfg;->blur:F

    iget v6, p1, Lc8/Pfg;->spread:F

    iget v7, p1, Lc8/Pfg;->color:I

    iget-object v8, p1, Lc8/Pfg;->radii:[F

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lc8/Qfg;-><init>(IIFFFFI[FLc8/Lfg;)V

    .line 235
    .local v0, "shadow":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewOverlay;->clear()V

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method private static setNormalBoxShadow(Landroid/view/View;Lc8/Pfg;F)V
    .locals 14
    .param p0, "target"    # Landroid/view/View;
    .param p1, "options"    # Lc8/Pfg;
    .param p2, "quality"    # F

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 186
    .local v8, "h":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v13

    .line 188
    .local v13, "w":I
    if-eqz v8, :cond_0

    if-nez v13, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 194
    iput v13, p1, Lc8/Pfg;->viewWidth:I

    .line 195
    iput v8, p1, Lc8/Pfg;->viewHeight:I

    .line 197
    invoke-virtual/range {p1 .. p2}, Lc8/Pfg;->scale(F)Lc8/Pfg;

    move-result-object v10

    .line 198
    .local v10, "scaleOptions":Lc8/Pfg;
    iget v0, v10, Lc8/Pfg;->viewWidth:I

    iget v1, v10, Lc8/Pfg;->viewHeight:I

    iget-object v2, v10, Lc8/Pfg;->radii:[F

    iget v3, v10, Lc8/Pfg;->blur:F

    iget v4, v10, Lc8/Pfg;->spread:F

    iget v5, v10, Lc8/Pfg;->hShadow:F

    iget v6, v10, Lc8/Pfg;->vShadow:F

    iget v7, v10, Lc8/Pfg;->color:I

    invoke-static/range {v0 .. v7}, Lc8/Sfg;->createShadowBitmap(II[FFFFFI)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 201
    .local v11, "shadowBitmap":Landroid/graphics/Bitmap;
    new-instance v12, Lc8/Rfg;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v12, v0, v11, p1, v1}, Lc8/Rfg;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lc8/Pfg;Lc8/Lfg;)V

    .line 203
    .local v12, "shadowDrawable":Lc8/Rfg;
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->clear()V

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 207
    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_0

    .line 208
    invoke-interface {v9}, Landroid/view/ViewParent;->requestLayout()V

    .line 209
    instance-of v0, v9, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 210
    check-cast v9, Landroid/view/ViewGroup;

    .end local v9    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v12}, Lc8/Rfg;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
