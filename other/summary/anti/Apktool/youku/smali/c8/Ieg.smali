.class public Lc8/Ieg;
.super Landroid/graphics/drawable/Drawable;
.source "BorderDrawable.java"


# static fields
.field public static final BORDER_BOTTOM_LEFT_RADIUS:I = 0x3

.field public static final BORDER_BOTTOM_RIGHT_RADIUS:I = 0x2

.field public static final BORDER_RADIUS_ALL:I = 0x8

.field public static final BORDER_TOP_LEFT_RADIUS:I = 0x0

.field public static final BORDER_TOP_RIGHT_RADIUS:I = 0x1

.field static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_RADIUS:F = 0.0f

.field private static final DEFAULT_BORDER_STYLE:Lcom/taobao/weex/ui/view/border/BorderStyle;

.field static final DEFAULT_BORDER_WIDTH:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "Border"


# instance fields
.field private mAlpha:I

.field private mBorderColor:Landroid/util/SparseIntArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mBorderRadius:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mBorderStyle:Landroid/util/SparseIntArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mBorderWidth:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mColor:I

.field private mNeedUpdatePath:Z

.field private mOverlappingBorderRadius:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mPaint:Landroid/graphics/Paint;

.field private mPathForBorderOutline:Landroid/graphics/Path;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mShader:Landroid/graphics/Shader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/taobao/weex/ui/view/border/BorderStyle;->SOLID:Lcom/taobao/weex/ui/view/border/BorderStyle;

    sput-object v0, Lc8/Ieg;->DEFAULT_BORDER_STYLE:Lcom/taobao/weex/ui/view/border/BorderStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lc8/Ieg;->mPaint:Landroid/graphics/Paint;

    .line 92
    iput-boolean v2, p0, Lc8/Ieg;->mNeedUpdatePath:Z

    .line 93
    iput v2, p0, Lc8/Ieg;->mColor:I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Ieg;->mShader:Landroid/graphics/Shader;

    .line 98
    const/16 v0, 0xff

    iput v0, p0, Lc8/Ieg;->mAlpha:I

    .line 101
    return-void
.end method

.method private drawBorders(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 406
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lc8/Ieg;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 407
    .local v2, "rectBounds":Landroid/graphics/RectF;
    new-instance v3, Lc8/Qeg;

    iget-object v5, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v5, v8}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v5

    invoke-virtual {p0, v8}, Lc8/Ieg;->getBorderWidth(I)F

    move-result v6

    invoke-virtual {p0, v9}, Lc8/Ieg;->getBorderWidth(I)F

    move-result v7

    invoke-direct {v3, v5, v6, v7, v2}, Lc8/Qeg;-><init>(FFFLandroid/graphics/RectF;)V

    .line 412
    .local v3, "topLeft":Lc8/Heg;
    new-instance v4, Lc8/Reg;

    iget-object v5, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v5, v9}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v5

    invoke-virtual {p0, v9}, Lc8/Ieg;->getBorderWidth(I)F

    move-result v6

    invoke-virtual {p0, v10}, Lc8/Ieg;->getBorderWidth(I)F

    move-result v7

    invoke-direct {v4, v5, v6, v7, v2}, Lc8/Reg;-><init>(FFFLandroid/graphics/RectF;)V

    .line 417
    .local v4, "topRight":Lc8/Heg;
    new-instance v1, Lc8/Peg;

    iget-object v5, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v5, v10}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v5

    invoke-virtual {p0, v10}, Lc8/Ieg;->getBorderWidth(I)F

    move-result v6

    invoke-virtual {p0, v11}, Lc8/Ieg;->getBorderWidth(I)F

    move-result v7

    invoke-direct {v1, v5, v6, v7, v2}, Lc8/Peg;-><init>(FFFLandroid/graphics/RectF;)V

    .line 422
    .local v1, "bottomRight":Lc8/Heg;
    new-instance v0, Lc8/Oeg;

    iget-object v5, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v5, v11}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v5

    invoke-virtual {p0, v11}, Lc8/Ieg;->getBorderWidth(I)F

    move-result v6

    invoke-virtual {p0, v8}, Lc8/Ieg;->getBorderWidth(I)F

    move-result v7

    invoke-direct {v0, v5, v6, v7, v2}, Lc8/Oeg;-><init>(FFFLandroid/graphics/RectF;)V

    .line 427
    .local v0, "bottomLeft":Lc8/Heg;
    new-instance v5, Lc8/Jeg;

    invoke-virtual {p0, v9}, Lc8/Ieg;->getBorderWidth(I)F

    move-result v6

    invoke-direct {v5, v3, v4, v9, v6}, Lc8/Jeg;-><init>(Lc8/Heg;Lc8/Heg;IF)V

    invoke-direct {p0, p1, v5}, Lc8/Ieg;->drawOneSide(Landroid/graphics/Canvas;Lc8/Jeg;)V

    .line 429
    new-instance v5, Lc8/Jeg;

    invoke-virtual {p0, v10}, Lc8/Ieg;->getBorderWidth(I)F

    move-result v6

    invoke-direct {v5, v4, v1, v10, v6}, Lc8/Jeg;-><init>(Lc8/Heg;Lc8/Heg;IF)V

    invoke-direct {p0, p1, v5}, Lc8/Ieg;->drawOneSide(Landroid/graphics/Canvas;Lc8/Jeg;)V

    .line 431
    new-instance v5, Lc8/Jeg;

    invoke-virtual {p0, v11}, Lc8/Ieg;->getBorderWidth(I)F

    move-result v6

    invoke-direct {v5, v1, v0, v11, v6}, Lc8/Jeg;-><init>(Lc8/Heg;Lc8/Heg;IF)V

    invoke-direct {p0, p1, v5}, Lc8/Ieg;->drawOneSide(Landroid/graphics/Canvas;Lc8/Jeg;)V

    .line 433
    new-instance v5, Lc8/Jeg;

    invoke-virtual {p0, v8}, Lc8/Ieg;->getBorderWidth(I)F

    move-result v6

    invoke-direct {v5, v0, v3, v8, v6}, Lc8/Jeg;-><init>(Lc8/Heg;Lc8/Heg;IF)V

    invoke-direct {p0, p1, v5}, Lc8/Ieg;->drawOneSide(Landroid/graphics/Canvas;Lc8/Jeg;)V

    .line 435
    return-void
.end method

.method private drawOneSide(Landroid/graphics/Canvas;Lc8/Jeg;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "borderEdge"    # Lc8/Jeg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-virtual {p2}, Lc8/Jeg;->getEdge()I

    move-result v1

    invoke-virtual {p0, v1}, Lc8/Ieg;->getBorderWidth(I)F

    move-result v1

    invoke-static {v0, v1}, Lc8/FZf;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    invoke-virtual {p2}, Lc8/Jeg;->getEdge()I

    move-result v0

    invoke-direct {p0, v0}, Lc8/Ieg;->preparePaint(I)V

    .line 440
    iget-object v0, p0, Lc8/Ieg;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0}, Lc8/Jeg;->drawEdge(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 442
    :cond_0
    return-void
.end method

.method private getBorderRadius(Landroid/util/SparseArray;I)F
    .locals 1
    .param p1    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;I)F"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "borderRadius":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lc8/Meg;->fetchFromSparseArray(Landroid/util/SparseArray;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private getScaleFactor(Landroid/graphics/RectF;)F
    .locals 12
    .param p1, "borderBox"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 377
    iget-object v6, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v6, v8}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v6

    iget-object v7, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v7, v9}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v7

    add-float v5, v6, v7

    .line 379
    .local v5, "topRadius":F
    iget-object v6, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v6, v9}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v6

    iget-object v7, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v7, v10}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v7

    add-float v4, v6, v7

    .line 381
    .local v4, "rightRadius":F
    iget-object v6, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v6, v10}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v6

    iget-object v7, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v7, v11}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v7

    add-float v0, v6, v7

    .line 383
    .local v0, "bottomRadius":F
    iget-object v6, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v6, v11}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v6

    iget-object v7, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v7, v8}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v7

    add-float v3, v6, v7

    .line 385
    .local v3, "leftRadius":F
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 386
    .local v2, "factors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-direct {p0, v2, v6, v5}, Lc8/Ieg;->updateFactor(Ljava/util/List;FF)V

    .line 387
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-direct {p0, v2, v6, v4}, Lc8/Ieg;->updateFactor(Ljava/util/List;FF)V

    .line 388
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-direct {p0, v2, v6, v0}, Lc8/Ieg;->updateFactor(Ljava/util/List;FF)V

    .line 389
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-direct {p0, v2, v6, v3}, Lc8/Ieg;->updateFactor(Ljava/util/List;FF)V

    .line 391
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 392
    const/high16 v1, 0x7fc00000    # NaNf

    .line 396
    .local v1, "factor":F
    :goto_0
    return v1

    .line 394
    .end local v1    # "factor":F
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .restart local v1    # "factor":F
    goto :goto_0
.end method

.method private prepareBorderPath(IIIILandroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 7
    .param p1, "topPadding"    # I
    .param p2, "rightPadding"    # I
    .param p3, "bottomPadding"    # I
    .param p4, "leftPadding"    # I
    .param p5, "rectF"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "path"    # Landroid/graphics/Path;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 314
    iget-object v4, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    if-eqz v4, :cond_0

    .line 315
    invoke-direct {p0, p5}, Lc8/Ieg;->prepareBorderRadius(Landroid/graphics/RectF;)V

    .line 316
    iget-object v4, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v2

    .line 317
    .local v2, "topLeftRadius":F
    iget-object v4, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v3

    .line 318
    .local v3, "topRightRadius":F
    iget-object v4, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v1

    .line 320
    .local v1, "bottomRightRadius":F
    iget-object v4, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v0

    .line 322
    .local v0, "bottomLeftRadius":F
    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    int-to-float v6, p4

    sub-float v6, v2, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    int-to-float v6, p1

    sub-float v6, v2, v6

    aput v6, v4, v5

    const/4 v5, 0x2

    int-to-float v6, p2

    sub-float v6, v3, v6

    aput v6, v4, v5

    const/4 v5, 0x3

    int-to-float v6, p1

    sub-float v6, v3, v6

    aput v6, v4, v5

    const/4 v5, 0x4

    int-to-float v6, p2

    sub-float v6, v1, v6

    aput v6, v4, v5

    const/4 v5, 0x5

    int-to-float v6, p3

    sub-float v6, v1, v6

    aput v6, v4, v5

    const/4 v5, 0x6

    int-to-float v6, p4

    sub-float v6, v0, v6

    aput v6, v4, v5

    const/4 v5, 0x7

    int-to-float v6, p3

    sub-float v6, v0, v6

    aput v6, v4, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p6, p5, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 338
    .end local v0    # "bottomLeftRadius":F
    .end local v1    # "bottomRightRadius":F
    .end local v2    # "topLeftRadius":F
    .end local v3    # "topRightRadius":F
    :goto_0
    return-void

    .line 336
    :cond_0
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p6, p5, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_0
.end method

.method private prepareBorderRadius(Landroid/graphics/RectF;)V
    .locals 8
    .param p1, "borderBox"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 344
    iget-object v1, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    .line 345
    invoke-direct {p0, p1}, Lc8/Ieg;->getScaleFactor(Landroid/graphics/RectF;)F

    move-result v0

    .line 346
    .local v0, "factor":F
    iget-object v1, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 347
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    .line 348
    iget-object v1, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 351
    iget-object v1, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    iget-object v2, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v2, v4}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    iget-object v1, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    iget-object v2, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v2, v5}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    iget-object v1, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    iget-object v2, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v2, v6}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    iget-object v1, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    iget-object v2, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v2, v7}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    .end local v0    # "factor":F
    :cond_1
    :goto_0
    return-void

    .line 364
    .restart local v0    # "factor":F
    :cond_2
    iget-object v1, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    iget-object v2, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v2, v4}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 366
    iget-object v1, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    iget-object v2, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v2, v5}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    iget-object v1, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    iget-object v2, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v2, v6}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    iget-object v1, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    iget-object v2, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v2, v7}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private preparePaint(I)V
    .locals 6
    .param p1, "side"    # I

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lc8/Ieg;->getBorderWidth(I)F

    move-result v1

    .line 446
    .local v1, "borderWidth":F
    invoke-virtual {p0, p1}, Lc8/Ieg;->getBorderColor(I)I

    move-result v4

    iget v5, p0, Lc8/Ieg;->mAlpha:I

    invoke-static {v4, v5}, Lc8/Jgg;->multiplyColorAlpha(II)I

    move-result v2

    .line 447
    .local v2, "color":I
    invoke-static {}, Lcom/taobao/weex/ui/view/border/BorderStyle;->values()[Lcom/taobao/weex/ui/view/border/BorderStyle;

    move-result-object v4

    invoke-virtual {p0, p1}, Lc8/Ieg;->getBorderStyle(I)I

    move-result v5

    aget-object v0, v4, v5

    .line 448
    .local v0, "borderStyle":Lcom/taobao/weex/ui/view/border/BorderStyle;
    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/weex/ui/view/border/BorderStyle;->getLineShader(FII)Landroid/graphics/Shader;

    move-result-object v3

    .line 449
    .local v3, "shader":Landroid/graphics/Shader;
    iget-object v4, p0, Lc8/Ieg;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 450
    iget-object v4, p0, Lc8/Ieg;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 451
    iget-object v4, p0, Lc8/Ieg;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 452
    return-void
.end method

.method private updateBorderOutline()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-boolean v0, p0, Lc8/Ieg;->mNeedUpdatePath:Z

    if-eqz v0, :cond_1

    .line 299
    iput-boolean v1, p0, Lc8/Ieg;->mNeedUpdatePath:Z

    .line 300
    iget-object v0, p0, Lc8/Ieg;->mPathForBorderOutline:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc8/Ieg;->mPathForBorderOutline:Landroid/graphics/Path;

    .line 303
    :cond_0
    iget-object v0, p0, Lc8/Ieg;->mPathForBorderOutline:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 304
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lc8/Ieg;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lc8/Ieg;->mPathForBorderOutline:Landroid/graphics/Path;

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lc8/Ieg;->prepareBorderPath(IIIILandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 306
    :cond_1
    return-void
.end method

.method private updateFactor(Ljava/util/List;FF)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "numerator"    # F
    .param p3, "denominator"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;FF)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v0, 0x0

    invoke-static {p3, v0}, Lc8/FZf;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    div-float v0, p2, p3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    invoke-direct {p0}, Lc8/Ieg;->updateBorderOutline()V

    .line 108
    iget-object v1, p0, Lc8/Ieg;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 109
    iget-object v1, p0, Lc8/Ieg;->mPathForBorderOutline:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    .line 110
    iget v1, p0, Lc8/Ieg;->mColor:I

    iget v2, p0, Lc8/Ieg;->mAlpha:I

    invoke-static {v1, v2}, Lc8/Jgg;->multiplyColorAlpha(II)I

    move-result v0

    .line 111
    .local v0, "useColor":I
    iget-object v1, p0, Lc8/Ieg;->mShader:Landroid/graphics/Shader;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lc8/Ieg;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lc8/Ieg;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 113
    iget-object v1, p0, Lc8/Ieg;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object v1, p0, Lc8/Ieg;->mPathForBorderOutline:Landroid/graphics/Path;

    iget-object v2, p0, Lc8/Ieg;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 115
    iget-object v1, p0, Lc8/Ieg;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 123
    .end local v0    # "useColor":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lc8/Ieg;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object v1, p0, Lc8/Ieg;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 125
    invoke-direct {p0, p1}, Lc8/Ieg;->drawBorders(Landroid/graphics/Canvas;)V

    .line 126
    iget-object v1, p0, Lc8/Ieg;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 128
    return-void

    .line 116
    .restart local v0    # "useColor":I
    :cond_1
    ushr-int/lit8 v1, v0, 0x18

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lc8/Ieg;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v1, p0, Lc8/Ieg;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v1, p0, Lc8/Ieg;->mPathForBorderOutline:Landroid/graphics/Path;

    iget-object v2, p0, Lc8/Ieg;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 120
    iget-object v1, p0, Lc8/Ieg;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lc8/Ieg;->mAlpha:I

    return v0
.end method

.method getBorderColor(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lc8/Ieg;->mBorderColor:Landroid/util/SparseIntArray;

    const/high16 v1, -0x1000000

    invoke-static {v0, p1, v1}, Lc8/Meg;->fetchFromSparseArray(Landroid/util/SparseIntArray;II)I

    move-result v0

    return v0
.end method

.method getBorderRadius(I)F
    .locals 1
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v0, p1}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v0

    return v0
.end method

.method public getBorderRadius(Landroid/graphics/RectF;)[F
    .locals 9
    .param p1, "borderBox"    # Landroid/graphics/RectF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 213
    invoke-direct {p0, p1}, Lc8/Ieg;->prepareBorderRadius(Landroid/graphics/RectF;)V

    .line 214
    iget-object v4, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v4, v5}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v2

    .line 215
    .local v2, "topLeftRadius":F
    iget-object v4, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v4, v6}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v3

    .line 216
    .local v3, "topRightRadius":F
    iget-object v4, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v4, v7}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v1

    .line 217
    .local v1, "bottomRightRadius":F
    iget-object v4, p0, Lc8/Ieg;->mOverlappingBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v4, v8}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v0

    .line 218
    .local v0, "bottomLeftRadius":F
    const/16 v4, 0x8

    new-array v4, v4, [F

    aput v2, v4, v5

    aput v2, v4, v6

    aput v3, v4, v7

    aput v3, v4, v8

    const/4 v5, 0x4

    aput v1, v4, v5

    const/4 v5, 0x5

    aput v1, v4, v5

    const/4 v5, 0x6

    aput v0, v4, v5

    const/4 v5, 0x7

    aput v0, v4, v5

    return-object v4
.end method

.method getBorderStyle(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lc8/Ieg;->mBorderStyle:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/taobao/weex/ui/view/border/BorderStyle;->SOLID:Lcom/taobao/weex/ui/view/border/BorderStyle;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/border/BorderStyle;->ordinal()I

    move-result v1

    invoke-static {v0, p1, v1}, Lc8/Meg;->fetchFromSparseArray(Landroid/util/SparseIntArray;II)I

    move-result v0

    return v0
.end method

.method getBorderWidth(I)F
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lc8/Ieg;->mBorderWidth:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lc8/Meg;->fetchFromSparseArray(Landroid/util/SparseArray;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lc8/Ieg;->mColor:I

    return v0
.end method

.method public getContentPath(Landroid/graphics/RectF;)Landroid/graphics/Path;
    .locals 7
    .param p1, "borderBox"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 288
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .local v6, "contentClip":Landroid/graphics/Path;
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move-object v5, p1

    .line 289
    invoke-direct/range {v0 .. v6}, Lc8/Ieg;->prepareBorderPath(IIIILandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 290
    return-object v6
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lc8/Ieg;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lc8/Ieg;->mColor:I

    iget v1, p0, Lc8/Ieg;->mAlpha:I

    invoke-static {v0, v1}, Lc8/Jgg;->multiplyColorAlpha(II)I

    move-result v0

    invoke-static {v0}, Lc8/Jgg;->getOpacityFromColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "outline"    # Landroid/graphics/Outline;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 168
    iget-object v0, p0, Lc8/Ieg;->mPathForBorderOutline:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ieg;->mNeedUpdatePath:Z

    .line 171
    :cond_0
    invoke-direct {p0}, Lc8/Ieg;->updateBorderOutline()V

    .line 172
    iget-object v0, p0, Lc8/Ieg;->mPathForBorderOutline:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 174
    :cond_1
    return-void
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lc8/Ieg;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRounded()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 278
    iget-object v2, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v2, v1}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v2

    invoke-static {v2, v4}, Lc8/FZf;->floatsEqual(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v2, v0}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v2

    invoke-static {v2, v4}, Lc8/FZf;->floatsEqual(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v2

    invoke-static {v2, v4}, Lc8/FZf;->floatsEqual(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v2

    invoke-static {v2, v4}, Lc8/FZf;->floatsEqual(FF)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ieg;->mNeedUpdatePath:Z

    .line 134
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 138
    iget v0, p0, Lc8/Ieg;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 139
    iput p1, p0, Lc8/Ieg;->mAlpha:I

    .line 140
    invoke-virtual {p0}, Lc8/Ieg;->invalidateSelf()V

    .line 142
    :cond_0
    return-void
.end method

.method public setBorderColor(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "color"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lc8/Ieg;->mBorderColor:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lc8/Ieg;->mBorderColor:Landroid/util/SparseIntArray;

    .line 227
    iget-object v0, p0, Lc8/Ieg;->mBorderColor:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 229
    :cond_0
    invoke-virtual {p0, p1}, Lc8/Ieg;->getBorderColor(I)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 230
    iget-object v0, p0, Lc8/Ieg;->mBorderColor:Landroid/util/SparseIntArray;

    invoke-static {v0, p1, p2}, Lc8/Meg;->updateSparseArray(Landroid/util/SparseIntArray;II)V

    .line 231
    invoke-virtual {p0}, Lc8/Ieg;->invalidateSelf()V

    .line 233
    :cond_1
    return-void
.end method

.method public setBorderRadius(IF)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "radius"    # F

    .prologue
    const/4 v3, 0x1

    .line 194
    iget-object v0, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    .line 196
    iget-object v0, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-direct {p0, v0, p1}, Lc8/Ieg;->getBorderRadius(Landroid/util/SparseArray;I)F

    move-result v0

    invoke-static {v0, p2}, Lc8/FZf;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lc8/Ieg;->mBorderRadius:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, p1, v1, v3}, Lc8/Meg;->updateSparseArray(Landroid/util/SparseArray;ILjava/lang/Object;Z)V

    .line 200
    iput-boolean v3, p0, Lc8/Ieg;->mNeedUpdatePath:Z

    .line 201
    invoke-virtual {p0}, Lc8/Ieg;->invalidateSelf()V

    .line 203
    :cond_1
    return-void
.end method

.method public setBorderStyle(ILjava/lang/String;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "style"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    iget-object v2, p0, Lc8/Ieg;->mBorderStyle:Landroid/util/SparseIntArray;

    if-nez v2, :cond_0

    .line 241
    new-instance v2, Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v2, p0, Lc8/Ieg;->mBorderStyle:Landroid/util/SparseIntArray;

    .line 242
    iget-object v2, p0, Lc8/Ieg;->mBorderStyle:Landroid/util/SparseIntArray;

    const/16 v3, 0x8

    sget-object v4, Lc8/Ieg;->DEFAULT_BORDER_STYLE:Lcom/taobao/weex/ui/view/border/BorderStyle;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/border/BorderStyle;->ordinal()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 245
    :cond_0
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/ui/view/border/BorderStyle;->valueOf(Ljava/lang/String;)Lcom/taobao/weex/ui/view/border/BorderStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/border/BorderStyle;->ordinal()I

    move-result v0

    .line 246
    .local v0, "borderStyle":I
    invoke-virtual {p0, p1}, Lc8/Ieg;->getBorderStyle(I)I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 247
    iget-object v2, p0, Lc8/Ieg;->mBorderStyle:Landroid/util/SparseIntArray;

    invoke-static {v2, p1, v0}, Lc8/Meg;->updateSparseArray(Landroid/util/SparseIntArray;II)V

    .line 248
    invoke-virtual {p0}, Lc8/Ieg;->invalidateSelf()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v0    # "borderStyle":I
    :cond_1
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "Border"

    invoke-static {v1}, Lc8/xgg;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBorderWidth(IF)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "width"    # F

    .prologue
    .line 177
    iget-object v0, p0, Lc8/Ieg;->mBorderWidth:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lc8/Ieg;->mBorderWidth:Landroid/util/SparseArray;

    .line 179
    iget-object v0, p0, Lc8/Ieg;->mBorderWidth:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    :cond_0
    invoke-virtual {p0, p1}, Lc8/Ieg;->getBorderWidth(I)F

    move-result v0

    invoke-static {v0, p2}, Lc8/FZf;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lc8/Ieg;->mBorderWidth:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lc8/Meg;->updateSparseArray(Landroid/util/SparseArray;ILjava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lc8/Ieg;->mBorderWidth:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ieg;->mNeedUpdatePath:Z

    .line 185
    invoke-virtual {p0}, Lc8/Ieg;->invalidateSelf()V

    .line 187
    :cond_1
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 264
    iput p1, p0, Lc8/Ieg;->mColor:I

    .line 265
    invoke-virtual {p0}, Lc8/Ieg;->invalidateSelf()V

    .line 266
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 155
    return-void
.end method

.method public setImage(Landroid/graphics/Shader;)V
    .locals 0
    .param p1, "shader"    # Landroid/graphics/Shader;

    .prologue
    .line 269
    iput-object p1, p0, Lc8/Ieg;->mShader:Landroid/graphics/Shader;

    .line 270
    invoke-virtual {p0}, Lc8/Ieg;->invalidateSelf()V

    .line 271
    return-void
.end method
