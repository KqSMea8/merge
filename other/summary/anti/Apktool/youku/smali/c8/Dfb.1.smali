.class public Lc8/Dfb;
.super Lc8/rfb;
.source "TextLayer.java"


# instance fields
.field private colorAnimation:Lc8/cdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final composition:Lc8/kcb;

.field private final contentsForCharacter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/Fdb;",
            "Ljava/util/List",
            "<",
            "Lc8/Jcb;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fillPaint:Landroid/graphics/Paint;

.field private final lottieDrawable:Lc8/tcb;

.field private final matrix:Landroid/graphics/Matrix;

.field private final rectF:Landroid/graphics/RectF;

.field private strokeAnimation:Lc8/cdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final strokePaint:Landroid/graphics/Paint;

.field private strokeWidthAnimation:Lc8/cdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final tempCharArray:[C

.field private final textAnimation:Lc8/sdb;

.field private trackingAnimation:Lc8/cdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/tcb;Lc8/xfb;)V
    .locals 3
    .param p1, "lottieDrawable"    # Lc8/tcb;
    .param p2, "layerModel"    # Lc8/xfb;

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-direct {p0, p1, p2}, Lc8/rfb;-><init>(Lc8/tcb;Lc8/xfb;)V

    .line 31
    new-array v1, v2, [C

    iput-object v1, p0, Lc8/Dfb;->tempCharArray:[C

    .line 32
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lc8/Dfb;->rectF:Landroid/graphics/RectF;

    .line 33
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lc8/Dfb;->matrix:Landroid/graphics/Matrix;

    .line 34
    new-instance v1, Lc8/Bfb;

    invoke-direct {v1, p0, v2}, Lc8/Bfb;-><init>(Lc8/Dfb;I)V

    iput-object v1, p0, Lc8/Dfb;->fillPaint:Landroid/graphics/Paint;

    .line 37
    new-instance v1, Lc8/Cfb;

    invoke-direct {v1, p0, v2}, Lc8/Cfb;-><init>(Lc8/Dfb;I)V

    iput-object v1, p0, Lc8/Dfb;->strokePaint:Landroid/graphics/Paint;

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lc8/Dfb;->contentsForCharacter:Ljava/util/Map;

    .line 51
    iput-object p1, p0, Lc8/Dfb;->lottieDrawable:Lc8/tcb;

    .line 52
    invoke-virtual {p2}, Lc8/xfb;->getComposition()Lc8/kcb;

    move-result-object v1

    iput-object v1, p0, Lc8/Dfb;->composition:Lc8/kcb;

    .line 54
    invoke-virtual {p2}, Lc8/xfb;->getText()Lc8/oeb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/oeb;->createAnimation()Lc8/sdb;

    move-result-object v1

    iput-object v1, p0, Lc8/Dfb;->textAnimation:Lc8/sdb;

    .line 55
    iget-object v1, p0, Lc8/Dfb;->textAnimation:Lc8/sdb;

    invoke-virtual {v1, p0}, Lc8/sdb;->addUpdateListener(Lc8/bdb;)V

    .line 56
    iget-object v1, p0, Lc8/Dfb;->textAnimation:Lc8/sdb;

    invoke-virtual {p0, v1}, Lc8/Dfb;->addAnimation(Lc8/cdb;)V

    .line 58
    invoke-virtual {p2}, Lc8/xfb;->getTextProperties()Lc8/qeb;

    move-result-object v0

    .line 59
    .local v0, "textProperties":Lc8/qeb;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lc8/qeb;->color:Lc8/Ndb;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, v0, Lc8/qeb;->color:Lc8/Ndb;

    invoke-virtual {v1}, Lc8/Ndb;->createAnimation()Lc8/cdb;

    move-result-object v1

    iput-object v1, p0, Lc8/Dfb;->colorAnimation:Lc8/cdb;

    .line 61
    iget-object v1, p0, Lc8/Dfb;->colorAnimation:Lc8/cdb;

    invoke-virtual {v1, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 62
    iget-object v1, p0, Lc8/Dfb;->colorAnimation:Lc8/cdb;

    invoke-virtual {p0, v1}, Lc8/Dfb;->addAnimation(Lc8/cdb;)V

    .line 66
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lc8/qeb;->stroke:Lc8/Ndb;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, v0, Lc8/qeb;->stroke:Lc8/Ndb;

    invoke-virtual {v1}, Lc8/Ndb;->createAnimation()Lc8/cdb;

    move-result-object v1

    iput-object v1, p0, Lc8/Dfb;->strokeAnimation:Lc8/cdb;

    .line 68
    iget-object v1, p0, Lc8/Dfb;->strokeAnimation:Lc8/cdb;

    invoke-virtual {v1, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 69
    iget-object v1, p0, Lc8/Dfb;->strokeAnimation:Lc8/cdb;

    invoke-virtual {p0, v1}, Lc8/Dfb;->addAnimation(Lc8/cdb;)V

    .line 72
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lc8/qeb;->strokeWidth:Lc8/Rdb;

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, v0, Lc8/qeb;->strokeWidth:Lc8/Rdb;

    invoke-virtual {v1}, Lc8/Rdb;->createAnimation()Lc8/cdb;

    move-result-object v1

    iput-object v1, p0, Lc8/Dfb;->strokeWidthAnimation:Lc8/cdb;

    .line 74
    iget-object v1, p0, Lc8/Dfb;->strokeWidthAnimation:Lc8/cdb;

    invoke-virtual {v1, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 75
    iget-object v1, p0, Lc8/Dfb;->strokeWidthAnimation:Lc8/cdb;

    invoke-virtual {p0, v1}, Lc8/Dfb;->addAnimation(Lc8/cdb;)V

    .line 78
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, v0, Lc8/qeb;->tracking:Lc8/Rdb;

    if-eqz v1, :cond_3

    .line 79
    iget-object v1, v0, Lc8/qeb;->tracking:Lc8/Rdb;

    invoke-virtual {v1}, Lc8/Rdb;->createAnimation()Lc8/cdb;

    move-result-object v1

    iput-object v1, p0, Lc8/Dfb;->trackingAnimation:Lc8/cdb;

    .line 80
    iget-object v1, p0, Lc8/Dfb;->trackingAnimation:Lc8/cdb;

    invoke-virtual {v1, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 81
    iget-object v1, p0, Lc8/Dfb;->trackingAnimation:Lc8/cdb;

    invoke-virtual {p0, v1}, Lc8/Dfb;->addAnimation(Lc8/cdb;)V

    .line 83
    :cond_3
    return-void
.end method

.method private drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "character"    # [C
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 232
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    .line 238
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p3

    move-object v1, p1

    move v5, v4

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawCharacterAsGlyph(Lc8/Fdb;Landroid/graphics/Matrix;FLc8/Adb;Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "character"    # Lc8/Fdb;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "fontScale"    # F
    .param p4, "documentData"    # Lc8/Adb;
    .param p5, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lc8/Dfb;->getContentsForCharacter(Lc8/Fdb;)Ljava/util/List;

    move-result-object v0

    .line 194
    .local v0, "contentGroups":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/ContentGroup;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 195
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Jcb;

    invoke-virtual {v3}, Lc8/Jcb;->getPath()Landroid/graphics/Path;

    move-result-object v2

    .line 196
    .local v2, "path":Landroid/graphics/Path;
    iget-object v3, p0, Lc8/Dfb;->rectF:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 197
    iget-object v3, p0, Lc8/Dfb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 198
    iget-object v3, p0, Lc8/Dfb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 199
    iget-object v3, p0, Lc8/Dfb;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 200
    iget-boolean v3, p4, Lc8/Adb;->strokeOverFill:Z

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p0, Lc8/Dfb;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lc8/Dfb;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 202
    iget-object v3, p0, Lc8/Dfb;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lc8/Dfb;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 194
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_0
    iget-object v3, p0, Lc8/Dfb;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lc8/Dfb;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 205
    iget-object v3, p0, Lc8/Dfb;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lc8/Dfb;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 208
    .end local v2    # "path":Landroid/graphics/Path;
    :cond_1
    return-void
.end method

.method private drawCharacterFromFont(CLc8/Adb;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "documentData"    # Lc8/Adb;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 221
    iget-object v0, p0, Lc8/Dfb;->tempCharArray:[C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    .line 222
    iget-boolean v0, p2, Lc8/Adb;->strokeOverFill:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lc8/Dfb;->tempCharArray:[C

    iget-object v1, p0, Lc8/Dfb;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lc8/Dfb;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 224
    iget-object v0, p0, Lc8/Dfb;->tempCharArray:[C

    iget-object v1, p0, Lc8/Dfb;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lc8/Dfb;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lc8/Dfb;->tempCharArray:[C

    iget-object v1, p0, Lc8/Dfb;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lc8/Dfb;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 227
    iget-object v0, p0, Lc8/Dfb;->tempCharArray:[C

    iget-object v1, p0, Lc8/Dfb;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lc8/Dfb;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 211
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 217
    :cond_2
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawTextGlyphs(Lc8/Adb;Landroid/graphics/Matrix;Lc8/Ddb;Landroid/graphics/Canvas;)V
    .locals 15
    .param p1, "documentData"    # Lc8/Adb;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "font"    # Lc8/Ddb;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 131
    move-object/from16 v0, p1

    iget v2, v0, Lc8/Adb;->size:I

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v5, v2, v4

    .line 132
    .local v5, "fontScale":F
    invoke-static/range {p2 .. p2}, Lc8/Kfb;->getScale(Landroid/graphics/Matrix;)F

    move-result v11

    .line 133
    .local v11, "parentScale":F
    move-object/from16 v0, p1

    iget-object v12, v0, Lc8/Adb;->text:Ljava/lang/String;

    .line 136
    .local v12, "text":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v10, v2, :cond_2

    .line 137
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 138
    .local v8, "c":C
    invoke-virtual/range {p3 .. p3}, Lc8/Ddb;->getFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lc8/Ddb;->getStyle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v2, v4}, Lc8/Fdb;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 139
    .local v9, "characterHash":I
    iget-object v2, p0, Lc8/Dfb;->composition:Lc8/kcb;

    invoke-virtual {v2}, Lc8/kcb;->getCharacters()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Fdb;

    .line 140
    .local v3, "character":Lc8/Fdb;
    if-eqz v3, :cond_1

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    .line 144
    invoke-direct/range {v2 .. v7}, Lc8/Dfb;->drawCharacterAsGlyph(Lc8/Fdb;Landroid/graphics/Matrix;FLc8/Adb;Landroid/graphics/Canvas;)V

    .line 145
    invoke-virtual {v3}, Lc8/Fdb;->getWidth()D

    move-result-wide v6

    double-to-float v2, v6

    mul-float/2addr v2, v5

    iget-object v4, p0, Lc8/Dfb;->composition:Lc8/kcb;

    invoke-virtual {v4}, Lc8/kcb;->getDpScale()F

    move-result v4

    mul-float/2addr v2, v4

    mul-float v14, v2, v11

    .line 147
    .local v14, "tx":F
    move-object/from16 v0, p1

    iget v2, v0, Lc8/Adb;->tracking:I

    int-to-float v2, v2

    const/high16 v4, 0x41200000    # 10.0f

    div-float v13, v2, v4

    .line 148
    .local v13, "tracking":F
    iget-object v2, p0, Lc8/Dfb;->trackingAnimation:Lc8/cdb;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lc8/Dfb;->trackingAnimation:Lc8/cdb;

    invoke-virtual {v2}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v13, v2

    .line 151
    :cond_0
    mul-float v2, v13, v11

    add-float/2addr v14, v2

    .line 152
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 136
    .end local v13    # "tracking":F
    .end local v14    # "tx":F
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 154
    .end local v3    # "character":Lc8/Fdb;
    .end local v8    # "c":C
    .end local v9    # "characterHash":I
    :cond_2
    return-void
.end method

.method private drawTextWithFont(Lc8/Adb;Lc8/Ddb;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "documentData"    # Lc8/Adb;
    .param p2, "font"    # Lc8/Ddb;
    .param p3, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 158
    invoke-static/range {p3 .. p3}, Lc8/Kfb;->getScale(Landroid/graphics/Matrix;)F

    move-result v4

    .line 159
    .local v4, "parentScale":F
    iget-object v10, p0, Lc8/Dfb;->lottieDrawable:Lc8/tcb;

    invoke-virtual/range {p2 .. p2}, Lc8/Ddb;->getFamily()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lc8/Ddb;->getStyle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lc8/tcb;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 160
    .local v9, "typeface":Landroid/graphics/Typeface;
    if-nez v9, :cond_1

    .line 185
    :cond_0
    return-void

    .line 163
    :cond_1
    iget-object v5, p1, Lc8/Adb;->text:Ljava/lang/String;

    .line 164
    .local v5, "text":Ljava/lang/String;
    iget-object v10, p0, Lc8/Dfb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v10}, Lc8/tcb;->getTextDelegate()Lc8/Ccb;

    move-result-object v6

    .line 165
    .local v6, "textDelegate":Lc8/Ccb;
    if-eqz v6, :cond_2

    .line 166
    invoke-virtual {v6, v5}, Lc8/Ccb;->getTextInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    :cond_2
    iget-object v10, p0, Lc8/Dfb;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 169
    iget-object v10, p0, Lc8/Dfb;->fillPaint:Landroid/graphics/Paint;

    iget v11, p1, Lc8/Adb;->size:I

    int-to-float v11, v11

    iget-object v12, p0, Lc8/Dfb;->composition:Lc8/kcb;

    invoke-virtual {v12}, Lc8/kcb;->getDpScale()F

    move-result v12

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 170
    iget-object v10, p0, Lc8/Dfb;->strokePaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lc8/Dfb;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 171
    iget-object v10, p0, Lc8/Dfb;->strokePaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lc8/Dfb;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTextSize()F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 172
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_0

    .line 173
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 174
    .local v2, "character":C
    move-object/from16 v0, p4

    invoke-direct {p0, v2, p1, v0}, Lc8/Dfb;->drawCharacterFromFont(CLc8/Adb;Landroid/graphics/Canvas;)V

    .line 175
    iget-object v10, p0, Lc8/Dfb;->tempCharArray:[C

    const/4 v11, 0x0

    aput-char v2, v10, v11

    .line 176
    iget-object v10, p0, Lc8/Dfb;->fillPaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lc8/Dfb;->tempCharArray:[C

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 178
    .local v1, "charWidth":F
    iget v10, p1, Lc8/Adb;->tracking:I

    int-to-float v10, v10

    const/high16 v11, 0x41200000    # 10.0f

    div-float v7, v10, v11

    .line 179
    .local v7, "tracking":F
    iget-object v10, p0, Lc8/Dfb;->trackingAnimation:Lc8/cdb;

    if-eqz v10, :cond_3

    .line 180
    iget-object v10, p0, Lc8/Dfb;->trackingAnimation:Lc8/cdb;

    invoke-virtual {v10}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v7, v10

    .line 182
    :cond_3
    mul-float v10, v7, v4

    add-float v8, v1, v10

    .line 183
    .local v8, "tx":F
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getContentsForCharacter(Lc8/Fdb;)Ljava/util/List;
    .locals 7
    .param p1, "character"    # Lc8/Fdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Fdb;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/Jcb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v5, p0, Lc8/Dfb;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 243
    iget-object v5, p0, Lc8/Dfb;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 253
    :goto_0
    return-object v5

    .line 245
    :cond_0
    invoke-virtual {p1}, Lc8/Fdb;->getShapes()Ljava/util/List;

    move-result-object v3

    .line 246
    .local v3, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ShapeGroup;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 247
    .local v4, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/ContentGroup;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 249
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/ffb;

    .line 250
    .local v2, "sg":Lc8/ffb;
    new-instance v5, Lc8/Jcb;

    iget-object v6, p0, Lc8/Dfb;->lottieDrawable:Lc8/tcb;

    invoke-direct {v5, v6, p0, v2}, Lc8/Jcb;-><init>(Lc8/tcb;Lc8/rfb;Lc8/ffb;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 252
    .end local v2    # "sg":Lc8/ffb;
    :cond_1
    iget-object v5, p0, Lc8/Dfb;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v0

    .line 253
    goto :goto_0
.end method


# virtual methods
.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 87
    iget-object v4, p0, Lc8/Dfb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v4}, Lc8/tcb;->useTextGlyphs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 90
    :cond_0
    iget-object v4, p0, Lc8/Dfb;->textAnimation:Lc8/sdb;

    invoke-virtual {v4}, Lc8/sdb;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Adb;

    .line 91
    .local v1, "documentData":Lc8/Adb;
    iget-object v4, p0, Lc8/Dfb;->composition:Lc8/kcb;

    invoke-virtual {v4}, Lc8/kcb;->getFonts()Ljava/util/Map;

    move-result-object v4

    iget-object v5, v1, Lc8/Adb;->fontName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Ddb;

    .line 92
    .local v2, "font":Lc8/Ddb;
    if-nez v2, :cond_1

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 127
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v4, p0, Lc8/Dfb;->colorAnimation:Lc8/cdb;

    if-eqz v4, :cond_2

    .line 99
    iget-object v5, p0, Lc8/Dfb;->fillPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lc8/Dfb;->colorAnimation:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    :goto_1
    iget-object v4, p0, Lc8/Dfb;->strokeAnimation:Lc8/cdb;

    if-eqz v4, :cond_3

    .line 105
    iget-object v5, p0, Lc8/Dfb;->strokePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lc8/Dfb;->strokeAnimation:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    :goto_2
    iget-object v4, p0, Lc8/Dfb;->transform:Lc8/tdb;

    invoke-virtual {v4}, Lc8/tdb;->getOpacity()Lc8/cdb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0xff

    div-int/lit8 v0, v4, 0x64

    .line 110
    .local v0, "alpha":I
    iget-object v4, p0, Lc8/Dfb;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 111
    iget-object v4, p0, Lc8/Dfb;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget-object v4, p0, Lc8/Dfb;->strokeWidthAnimation:Lc8/cdb;

    if-eqz v4, :cond_4

    .line 114
    iget-object v5, p0, Lc8/Dfb;->strokePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lc8/Dfb;->strokeWidthAnimation:Lc8/cdb;

    invoke-virtual {v4}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    :goto_3
    iget-object v4, p0, Lc8/Dfb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v4}, Lc8/tcb;->useTextGlyphs()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 121
    invoke-direct {p0, v1, p2, v2, p1}, Lc8/Dfb;->drawTextGlyphs(Lc8/Adb;Landroid/graphics/Matrix;Lc8/Ddb;Landroid/graphics/Canvas;)V

    .line 126
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 101
    .end local v0    # "alpha":I
    :cond_2
    iget-object v4, p0, Lc8/Dfb;->fillPaint:Landroid/graphics/Paint;

    iget v5, v1, Lc8/Adb;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 107
    :cond_3
    iget-object v4, p0, Lc8/Dfb;->strokePaint:Landroid/graphics/Paint;

    iget v5, v1, Lc8/Adb;->strokeColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 116
    .restart local v0    # "alpha":I
    :cond_4
    invoke-static {p2}, Lc8/Kfb;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    .line 117
    .local v3, "parentScale":F
    iget-object v4, p0, Lc8/Dfb;->strokePaint:Landroid/graphics/Paint;

    iget v5, v1, Lc8/Adb;->strokeWidth:I

    int-to-float v5, v5

    iget-object v6, p0, Lc8/Dfb;->composition:Lc8/kcb;

    invoke-virtual {v6}, Lc8/kcb;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    mul-float/2addr v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 123
    .end local v3    # "parentScale":F
    :cond_5
    invoke-direct {p0, v1, v2, p2, p1}, Lc8/Dfb;->drawTextWithFont(Lc8/Adb;Lc8/Ddb;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    goto :goto_4
.end method
