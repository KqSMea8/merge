.class public Lc8/Rfg;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "BoxShadowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Sfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverflowBitmapDrawable"
.end annotation


# instance fields
.field private options:Lc8/Pfg;

.field private paddingX:I

.field private paddingY:I


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lc8/Pfg;)V
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "options"    # Lc8/Pfg;

    .prologue
    .line 305
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 306
    iget v0, p3, Lc8/Pfg;->blur:F

    iget v1, p3, Lc8/Pfg;->hShadow:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p3, Lc8/Pfg;->spread:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lc8/Rfg;->paddingX:I

    .line 307
    iget v0, p3, Lc8/Pfg;->blur:F

    iget v1, p3, Lc8/Pfg;->vShadow:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p3, Lc8/Pfg;->spread:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lc8/Rfg;->paddingY:I

    .line 308
    iput-object p3, p0, Lc8/Rfg;->options:Lc8/Pfg;

    .line 310
    iget v0, p0, Lc8/Rfg;->paddingX:I

    neg-int v0, v0

    iget v1, p0, Lc8/Rfg;->paddingY:I

    neg-int v1, v1

    iget v2, p3, Lc8/Pfg;->viewWidth:I

    iget v3, p0, Lc8/Rfg;->paddingX:I

    add-int/2addr v2, v3

    iget v3, p3, Lc8/Pfg;->viewHeight:I

    iget v4, p0, Lc8/Rfg;->paddingY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lc8/Rfg;->setBounds(IIII)V

    .line 311
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lc8/Pfg;Lc8/Lfg;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/Resources;
    .param p2, "x1"    # Landroid/graphics/Bitmap;
    .param p3, "x2"    # Lc8/Pfg;
    .param p4, "x3"    # Lc8/Lfg;

    .prologue
    .line 299
    invoke-direct {p0, p1, p2, p3}, Lc8/Rfg;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lc8/Pfg;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 315
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 317
    .local v1, "newRect":Landroid/graphics/Rect;
    iget v3, p0, Lc8/Rfg;->paddingX:I

    neg-int v3, v3

    shl-int/lit8 v3, v3, 0x1

    iget v4, p0, Lc8/Rfg;->paddingY:I

    neg-int v4, v4

    shl-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 318
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 320
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 321
    .local v0, "contentPath":Landroid/graphics/Path;
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lc8/Rfg;->options:Lc8/Pfg;

    iget v3, v3, Lc8/Pfg;->viewWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lc8/Rfg;->options:Lc8/Pfg;

    iget v4, v4, Lc8/Pfg;->viewHeight:I

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 322
    .local v2, "rectF":Landroid/graphics/RectF;
    iget-object v3, p0, Lc8/Rfg;->options:Lc8/Pfg;

    iget-object v3, v3, Lc8/Pfg;->radii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 324
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 326
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 327
    return-void
.end method
