.class public Lc8/Zcb;
.super Lc8/Hcb;
.source "StrokeContent.java"


# instance fields
.field private final colorAnimation:Lc8/cdb;
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

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/tcb;Lc8/rfb;Lc8/lfb;)V
    .locals 9
    .param p1, "lottieDrawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;
    .param p3, "stroke"    # Lc8/lfb;

    .prologue
    .line 19
    invoke-virtual {p3}, Lc8/lfb;->getCapType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v3

    .line 20
    invoke-virtual {p3}, Lc8/lfb;->getJoinType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v4

    invoke-virtual {p3}, Lc8/lfb;->getOpacity()Lc8/Zdb;

    move-result-object v5

    invoke-virtual {p3}, Lc8/lfb;->getWidth()Lc8/Rdb;

    move-result-object v6

    .line 21
    invoke-virtual {p3}, Lc8/lfb;->getLineDashPattern()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Lc8/lfb;->getDashOffset()Lc8/Rdb;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 19
    invoke-direct/range {v0 .. v8}, Lc8/Hcb;-><init>(Lc8/tcb;Lc8/rfb;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lc8/Zdb;Lc8/Rdb;Ljava/util/List;Lc8/Rdb;)V

    .line 22
    invoke-virtual {p3}, Lc8/lfb;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Zcb;->name:Ljava/lang/String;

    .line 23
    invoke-virtual {p3}, Lc8/lfb;->getColor()Lc8/Ndb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Ndb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/Zcb;->colorAnimation:Lc8/cdb;

    .line 24
    iget-object v0, p0, Lc8/Zcb;->colorAnimation:Lc8/cdb;

    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 25
    iget-object v0, p0, Lc8/Zcb;->colorAnimation:Lc8/cdb;

    invoke-virtual {p2, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 26
    return-void
.end method


# virtual methods
.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "layerName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contentName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    iget-object v0, p0, Lc8/Zcb;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 32
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .prologue
    .line 35
    iget-object v1, p0, Lc8/Zcb;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lc8/Zcb;->colorAnimation:Lc8/cdb;

    invoke-virtual {v0}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    invoke-super {p0, p1, p2, p3}, Lc8/Hcb;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 37
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lc8/Zcb;->name:Ljava/lang/String;

    return-object v0
.end method
