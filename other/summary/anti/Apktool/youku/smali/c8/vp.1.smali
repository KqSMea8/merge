.class public final Lc8/vp;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/sp;,
        Lc8/rp;,
        Lc8/up;,
        Lc8/tp;
    }
.end annotation


# static fields
.field static final DEFAULT_CALCULATE_NUMBER_COLORS:I = 0x10

.field static final DEFAULT_FILTER:Lc8/sp;

.field static final DEFAULT_RESIZE_BITMAP_AREA:I = 0x6400

.field static final LOG_TAG:Ljava/lang/String; = "Palette"

.field static final LOG_TIMINGS:Z = false

.field static final MIN_CONTRAST_BODY_TEXT:F = 4.5f

.field static final MIN_CONTRAST_TITLE_TEXT:F = 3.0f


# instance fields
.field private final mDominantSwatch:Lc8/up;

.field private final mSelectedSwatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/xp;",
            "Lc8/up;",
            ">;"
        }
    .end annotation
.end field

.field private final mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/up;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/xp;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsedColors:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 954
    new-instance v0, Lc8/pp;

    invoke-direct {v0}, Lc8/pp;-><init>()V

    sput-object v0, Lc8/vp;->DEFAULT_FILTER:Lc8/sp;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/up;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lc8/xp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Target;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lc8/vp;->mSwatches:Ljava/util/List;

    .line 156
    iput-object p2, p0, Lc8/vp;->mTargets:Ljava/util/List;

    .line 158
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lc8/vp;->mUsedColors:Landroid/util/SparseBooleanArray;

    .line 159
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/vp;->mSelectedSwatches:Ljava/util/Map;

    .line 161
    invoke-direct {p0}, Lc8/vp;->findDominantSwatch()Lc8/up;

    move-result-object v0

    iput-object v0, p0, Lc8/vp;->mDominantSwatch:Lc8/up;

    .line 162
    return-void
.end method

.method private static copyHslValues(Lc8/up;)[F
    .locals 4
    .param p0, "color"    # Lc8/up;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 433
    new-array v0, v3, [F

    .line 434
    .local v0, "newHsl":[F
    invoke-virtual {p0}, Lc8/up;->getHsl()[F

    move-result-object v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    return-object v0
.end method

.method private findDominantSwatch()Lc8/up;
    .locals 6

    .prologue
    .line 420
    const/high16 v2, -0x80000000

    .line 421
    .local v2, "maxPop":I
    const/4 v3, 0x0

    .line 422
    .local v3, "maxSwatch":Lc8/up;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lc8/vp;->mSwatches:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 423
    iget-object v5, p0, Lc8/vp;->mSwatches:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/up;

    .line 424
    .local v4, "swatch":Lc8/up;
    invoke-virtual {v4}, Lc8/up;->getPopulation()I

    move-result v5

    if-le v5, v2, :cond_0

    .line 425
    move-object v3, v4

    .line 426
    invoke-virtual {v4}, Lc8/up;->getPopulation()I

    move-result v2

    .line 422
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v4    # "swatch":Lc8/up;
    :cond_1
    return-object v3
.end method

.method public static from(Landroid/graphics/Bitmap;)Lc8/rp;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 100
    new-instance v0, Lc8/rp;

    invoke-direct {v0, p0}, Lc8/rp;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static from(Ljava/util/List;)Lc8/vp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/up;",
            ">;)",
            "Lc8/vp;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    new-instance v0, Lc8/rp;

    invoke-direct {v0, p0}, Lc8/rp;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lc8/rp;->generate()Lc8/vp;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Landroid/graphics/Bitmap;)Lc8/vp;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    invoke-static {p0}, Lc8/vp;->from(Landroid/graphics/Bitmap;)Lc8/rp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/rp;->generate()Lc8/vp;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Landroid/graphics/Bitmap;I)Lc8/vp;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "numColors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    invoke-static {p0}, Lc8/vp;->from(Landroid/graphics/Bitmap;)Lc8/rp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/rp;->maximumColorCount(I)Lc8/rp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/rp;->generate()Lc8/vp;

    move-result-object v0

    return-object v0
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;ILc8/tp;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "numColors"    # I
    .param p2, "listener"    # Lc8/tp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I",
            "Lc8/tp;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Lc8/vp;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    invoke-static {p0}, Lc8/vp;->from(Landroid/graphics/Bitmap;)Lc8/rp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/rp;->maximumColorCount(I)Lc8/rp;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc8/rp;->generate(Lc8/tp;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;Lc8/tp;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "listener"    # Lc8/tp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lc8/tp;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Lc8/vp;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    invoke-static {p0}, Lc8/vp;->from(Landroid/graphics/Bitmap;)Lc8/rp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/rp;->generate(Lc8/tp;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private generateScore(Lc8/up;Lc8/xp;)F
    .locals 10
    .param p1, "swatch"    # Lc8/up;
    .param p2, "target"    # Lc8/xp;

    .prologue
    const/4 v5, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 395
    invoke-virtual {p1}, Lc8/up;->getHsl()[F

    move-result-object v0

    .line 397
    .local v0, "hsl":[F
    const/4 v4, 0x0

    .line 398
    .local v4, "saturationScore":F
    const/4 v1, 0x0

    .line 399
    .local v1, "luminanceScore":F
    const/4 v3, 0x0

    .line 401
    .local v3, "populationScore":F
    iget-object v6, p0, Lc8/vp;->mDominantSwatch:Lc8/up;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lc8/vp;->mDominantSwatch:Lc8/up;

    invoke-virtual {v6}, Lc8/up;->getPopulation()I

    move-result v2

    .line 403
    .local v2, "maxPopulation":I
    :goto_0
    invoke-virtual {p2}, Lc8/xp;->getSaturationWeight()F

    move-result v6

    cmpl-float v6, v6, v8

    if-lez v6, :cond_0

    .line 404
    invoke-virtual {p2}, Lc8/xp;->getSaturationWeight()F

    move-result v6

    aget v5, v0, v5

    .line 405
    invoke-virtual {p2}, Lc8/xp;->getTargetSaturation()F

    move-result v7

    sub-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v9, v5

    mul-float v4, v6, v5

    .line 407
    :cond_0
    invoke-virtual {p2}, Lc8/xp;->getLightnessWeight()F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1

    .line 408
    invoke-virtual {p2}, Lc8/xp;->getLightnessWeight()F

    move-result v5

    const/4 v6, 0x2

    aget v6, v0, v6

    .line 409
    invoke-virtual {p2}, Lc8/xp;->getTargetLightness()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v9, v6

    mul-float v1, v5, v6

    .line 411
    :cond_1
    invoke-virtual {p2}, Lc8/xp;->getPopulationWeight()F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_2

    .line 412
    invoke-virtual {p2}, Lc8/xp;->getPopulationWeight()F

    move-result v5

    .line 413
    invoke-virtual {p1}, Lc8/up;->getPopulation()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    mul-float v3, v5, v6

    .line 416
    :cond_2
    add-float v5, v4, v1

    add-float/2addr v5, v3

    return v5

    .end local v2    # "maxPopulation":I
    :cond_3
    move v2, v5

    .line 401
    goto :goto_0
.end method

.method private generateScoredTarget(Lc8/xp;)Lc8/up;
    .locals 4
    .param p1, "target"    # Lc8/xp;

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lc8/vp;->getMaxScoredSwatchForTarget(Lc8/xp;)Lc8/up;

    move-result-object v0

    .line 362
    .local v0, "maxScoreSwatch":Lc8/up;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc8/xp;->isExclusive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lc8/vp;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Lc8/up;->getRgb()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 366
    :cond_0
    return-object v0
.end method

.method private getMaxScoredSwatchForTarget(Lc8/xp;)Lc8/up;
    .locals 7
    .param p1, "target"    # Lc8/xp;

    .prologue
    .line 370
    const/4 v2, 0x0

    .line 371
    .local v2, "maxScore":F
    const/4 v3, 0x0

    .line 372
    .local v3, "maxScoreSwatch":Lc8/up;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v6, p0, Lc8/vp;->mSwatches:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 373
    iget-object v6, p0, Lc8/vp;->mSwatches:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/up;

    .line 374
    .local v5, "swatch":Lc8/up;
    invoke-direct {p0, v5, p1}, Lc8/vp;->shouldBeScoredForTarget(Lc8/up;Lc8/xp;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 375
    invoke-direct {p0, v5, p1}, Lc8/vp;->generateScore(Lc8/up;Lc8/xp;)F

    move-result v4

    .line 376
    .local v4, "score":F
    if-eqz v3, :cond_0

    cmpl-float v6, v4, v2

    if-lez v6, :cond_1

    .line 377
    :cond_0
    move-object v3, v5

    .line 378
    move v2, v4

    .line 372
    .end local v4    # "score":F
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v5    # "swatch":Lc8/up;
    :cond_2
    return-object v3
.end method

.method private shouldBeScoredForTarget(Lc8/up;Lc8/xp;)Z
    .locals 5
    .param p1, "swatch"    # Lc8/up;
    .param p2, "target"    # Lc8/xp;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 388
    invoke-virtual {p1}, Lc8/up;->getHsl()[F

    move-result-object v0

    .line 389
    .local v0, "hsl":[F
    aget v2, v0, v1

    invoke-virtual {p2}, Lc8/xp;->getMinimumSaturation()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    aget v2, v0, v1

    invoke-virtual {p2}, Lc8/xp;->getMaximumSaturation()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    aget v2, v0, v4

    .line 390
    invoke-virtual {p2}, Lc8/xp;->getMinimumLightness()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    aget v2, v0, v4

    invoke-virtual {p2}, Lc8/xp;->getMaximumLightness()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    iget-object v2, p0, Lc8/vp;->mUsedColors:Landroid/util/SparseBooleanArray;

    .line 391
    invoke-virtual {p1}, Lc8/up;->getRgb()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method generate()V
    .locals 5

    .prologue
    .line 351
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lc8/vp;->mTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 352
    iget-object v3, p0, Lc8/vp;->mTargets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/xp;

    .line 353
    .local v2, "target":Lc8/xp;
    invoke-virtual {v2}, Lc8/xp;->normalizeWeights()V

    .line 354
    iget-object v3, p0, Lc8/vp;->mSelectedSwatches:Ljava/util/Map;

    invoke-direct {p0, v2}, Lc8/vp;->generateScoredTarget(Lc8/xp;)Lc8/up;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v2    # "target":Lc8/xp;
    :cond_0
    iget-object v3, p0, Lc8/vp;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 358
    return-void
.end method

.method public getColorForTarget(Lc8/xp;I)I
    .locals 1
    .param p1, "target"    # Lc8/xp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lc8/vp;->getSwatchForTarget(Lc8/xp;)Lc8/up;

    move-result-object v0

    .line 323
    .local v0, "swatch":Lc8/up;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/up;->getRgb()I

    move-result p2

    .end local p2    # "defaultColor":I
    :cond_0
    return p2
.end method

.method public getDarkMutedColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 303
    sget-object v0, Lc8/xp;->DARK_MUTED:Lc8/xp;

    invoke-virtual {p0, v0, p1}, Lc8/vp;->getColorForTarget(Lc8/xp;I)I

    move-result v0

    return v0
.end method

.method public getDarkMutedSwatch()Lc8/up;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 237
    sget-object v0, Lc8/xp;->DARK_MUTED:Lc8/xp;

    invoke-virtual {p0, v0}, Lc8/vp;->getSwatchForTarget(Lc8/xp;)Lc8/up;

    move-result-object v0

    return-object v0
.end method

.method public getDarkVibrantColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 270
    sget-object v0, Lc8/xp;->DARK_VIBRANT:Lc8/xp;

    invoke-virtual {p0, v0, p1}, Lc8/vp;->getColorForTarget(Lc8/xp;I)I

    move-result v0

    return v0
.end method

.method public getDarkVibrantSwatch()Lc8/up;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 207
    sget-object v0, Lc8/xp;->DARK_VIBRANT:Lc8/xp;

    invoke-virtual {p0, v0}, Lc8/vp;->getSwatchForTarget(Lc8/xp;)Lc8/up;

    move-result-object v0

    return-object v0
.end method

.method public getDominantColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lc8/vp;->mDominantSwatch:Lc8/up;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/vp;->mDominantSwatch:Lc8/up;

    invoke-virtual {v0}, Lc8/up;->getRgb()I

    move-result p1

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getDominantSwatch()Lc8/up;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lc8/vp;->mDominantSwatch:Lc8/up;

    return-object v0
.end method

.method public getLightMutedColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 292
    sget-object v0, Lc8/xp;->LIGHT_MUTED:Lc8/xp;

    invoke-virtual {p0, v0, p1}, Lc8/vp;->getColorForTarget(Lc8/xp;I)I

    move-result v0

    return v0
.end method

.method public getLightMutedSwatch()Lc8/up;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 227
    sget-object v0, Lc8/xp;->LIGHT_MUTED:Lc8/xp;

    invoke-virtual {p0, v0}, Lc8/vp;->getSwatchForTarget(Lc8/xp;)Lc8/up;

    move-result-object v0

    return-object v0
.end method

.method public getLightVibrantColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 259
    sget-object v0, Lc8/xp;->LIGHT_VIBRANT:Lc8/xp;

    invoke-virtual {p0, v0, p1}, Lc8/vp;->getColorForTarget(Lc8/xp;I)I

    move-result v0

    return v0
.end method

.method public getLightVibrantSwatch()Lc8/up;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 197
    sget-object v0, Lc8/xp;->LIGHT_VIBRANT:Lc8/xp;

    invoke-virtual {p0, v0}, Lc8/vp;->getSwatchForTarget(Lc8/xp;)Lc8/up;

    move-result-object v0

    return-object v0
.end method

.method public getMutedColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 281
    sget-object v0, Lc8/xp;->MUTED:Lc8/xp;

    invoke-virtual {p0, v0, p1}, Lc8/vp;->getColorForTarget(Lc8/xp;I)I

    move-result v0

    return v0
.end method

.method public getMutedSwatch()Lc8/up;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 217
    sget-object v0, Lc8/xp;->MUTED:Lc8/xp;

    invoke-virtual {p0, v0}, Lc8/vp;->getSwatchForTarget(Lc8/xp;)Lc8/up;

    move-result-object v0

    return-object v0
.end method

.method public getSwatchForTarget(Lc8/xp;)Lc8/up;
    .locals 1
    .param p1, "target"    # Lc8/xp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lc8/vp;->mSelectedSwatches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/up;

    return-object v0
.end method

.method public getSwatches()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/up;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lc8/vp;->mSwatches:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/xp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lc8/vp;->mTargets:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVibrantColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 248
    sget-object v0, Lc8/xp;->VIBRANT:Lc8/xp;

    invoke-virtual {p0, v0, p1}, Lc8/vp;->getColorForTarget(Lc8/xp;I)I

    move-result v0

    return v0
.end method

.method public getVibrantSwatch()Lc8/up;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 187
    sget-object v0, Lc8/xp;->VIBRANT:Lc8/xp;

    invoke-virtual {p0, v0}, Lc8/vp;->getSwatchForTarget(Lc8/xp;)Lc8/up;

    move-result-object v0

    return-object v0
.end method
