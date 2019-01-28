.class public Lc8/Pap;
.super Landroid/widget/ImageView;
.source "TriangleView.java"


# static fields
.field public static BOTTOM_LEFT:I

.field public static BOTTOM_RIGHT:I

.field public static TOP_LEFT:I

.field public static TOP_LEFT_1_3:I

.field public static TOP_LEFT_4_9:I

.field public static TOP_RIGHT:I


# instance fields
.field private color:I

.field private direction:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput v0, Lc8/Pap;->TOP_LEFT:I

    .line 15
    const/4 v0, 0x1

    sput v0, Lc8/Pap;->TOP_RIGHT:I

    .line 16
    const/4 v0, 0x2

    sput v0, Lc8/Pap;->BOTTOM_LEFT:I

    .line 17
    const/4 v0, 0x3

    sput v0, Lc8/Pap;->BOTTOM_RIGHT:I

    .line 18
    const/4 v0, 0x4

    sput v0, Lc8/Pap;->TOP_LEFT_1_3:I

    .line 19
    const/4 v0, 0x5

    sput v0, Lc8/Pap;->TOP_LEFT_4_9:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    const v0, -0xffff01

    iput v0, p0, Lc8/Pap;->color:I

    .line 21
    sget v0, Lc8/Pap;->TOP_LEFT:I

    iput v0, p0, Lc8/Pap;->direction:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const v0, -0xffff01

    iput v0, p0, Lc8/Pap;->color:I

    .line 21
    sget v0, Lc8/Pap;->TOP_LEFT:I

    iput v0, p0, Lc8/Pap;->direction:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const v0, -0xffff01

    iput v0, p0, Lc8/Pap;->color:I

    .line 21
    sget v0, Lc8/Pap;->TOP_LEFT:I

    iput v0, p0, Lc8/Pap;->direction:I

    .line 25
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 43
    iget v2, p0, Lc8/Pap;->color:I

    const v3, -0xffff01

    if-ne v2, v3, :cond_0

    .line 88
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 47
    .local v1, "path":Landroid/graphics/Path;
    iget v2, p0, Lc8/Pap;->direction:I

    sget v3, Lc8/Pap;->TOP_LEFT:I

    if-ne v2, v3, :cond_2

    .line 48
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 49
    invoke-virtual {p0}, Lc8/Pap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 50
    invoke-virtual {p0}, Lc8/Pap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 51
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    :cond_1
    :goto_1
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/PathShape;

    .line 83
    invoke-virtual {p0}, Lc8/Pap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lc8/Pap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v1, v3, v4}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 84
    .local v0, "circle":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget v3, p0, Lc8/Pap;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    invoke-virtual {p0}, Lc8/Pap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lc8/Pap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 86
    const/16 v2, 0xc0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 87
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 52
    .end local v0    # "circle":Landroid/graphics/drawable/ShapeDrawable;
    :cond_2
    iget v2, p0, Lc8/Pap;->direction:I

    sget v3, Lc8/Pap;->TOP_RIGHT:I

    if-ne v2, v3, :cond_3

    .line 53
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 54
    invoke-virtual {p0}, Lc8/Pap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 55
    invoke-virtual {p0}, Lc8/Pap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lc8/Pap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 57
    :cond_3
    iget v2, p0, Lc8/Pap;->direction:I

    sget v3, Lc8/Pap;->BOTTOM_LEFT:I

    if-ne v2, v3, :cond_4

    .line 58
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 59
    invoke-virtual {p0}, Lc8/Pap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 60
    invoke-virtual {p0}, Lc8/Pap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lc8/Pap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 61
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 62
    :cond_4
    iget v2, p0, Lc8/Pap;->direction:I

    sget v3, Lc8/Pap;->BOTTOM_RIGHT:I

    if-ne v2, v3, :cond_5

    .line 63
    invoke-virtual {p0}, Lc8/Pap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 64
    invoke-virtual {p0}, Lc8/Pap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lc8/Pap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 65
    invoke-virtual {p0}, Lc8/Pap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    invoke-virtual {p0}, Lc8/Pap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1

    .line 67
    :cond_5
    iget v2, p0, Lc8/Pap;->direction:I

    sget v3, Lc8/Pap;->TOP_LEFT_1_3:I

    if-ne v2, v3, :cond_6

    .line 68
    invoke-virtual {p0}, Lc8/Pap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 69
    invoke-virtual {p0}, Lc8/Pap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 70
    invoke-virtual {p0}, Lc8/Pap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    invoke-virtual {p0}, Lc8/Pap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    invoke-virtual {p0}, Lc8/Pap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1

    .line 73
    :cond_6
    iget v2, p0, Lc8/Pap;->direction:I

    sget v3, Lc8/Pap;->TOP_LEFT_4_9:I

    if-ne v2, v3, :cond_1

    .line 74
    invoke-virtual {p0}, Lc8/Pap;->getWidth()I

    move-result v2

    shl-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x9

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 75
    invoke-virtual {p0}, Lc8/Pap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    invoke-virtual {p0}, Lc8/Pap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    invoke-virtual {p0}, Lc8/Pap;->getHeight()I

    move-result v2

    shl-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x9

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 78
    invoke-virtual {p0}, Lc8/Pap;->getWidth()I

    move-result v2

    shl-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x9

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 92
    iput p1, p0, Lc8/Pap;->color:I

    .line 93
    invoke-virtual {p0}, Lc8/Pap;->postInvalidate()V

    .line 95
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "dir"    # I

    .prologue
    .line 36
    iput p1, p0, Lc8/Pap;->direction:I

    .line 37
    return-void
.end method
