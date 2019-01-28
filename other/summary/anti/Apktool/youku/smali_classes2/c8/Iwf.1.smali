.class public Lc8/Iwf;
.super Ljava/lang/Object;
.source "RoundedCornersBitmapProcessor.java"

# interfaces
.implements Lc8/ovf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;
    }
.end annotation


# instance fields
.field private final mCornerType:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

.field private final mMargin:I

.field private final mRadius:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "radius"    # I
    .param p2, "margin"    # I

    .prologue
    .line 28
    sget-object v0, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;->ALL:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    invoke-direct {p0, p1, p2, v0}, Lc8/Iwf;-><init>(IILcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;)V

    .line 29
    return-void
.end method

.method public constructor <init>(IILcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;)V
    .locals 0
    .param p1, "radius"    # I
    .param p2, "margin"    # I
    .param p3, "cornerType"    # Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lc8/Iwf;->mRadius:I

    .line 33
    iput p2, p0, Lc8/Iwf;->mMargin:I

    .line 34
    iput-object p3, p0, Lc8/Iwf;->mCornerType:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    .line 35
    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 61
    iget v4, p0, Lc8/Iwf;->mMargin:I

    int-to-float v4, v4

    sub-float v2, p3, v4

    .line 62
    .local v2, "right":F
    iget v4, p0, Lc8/Iwf;->mMargin:I

    int-to-float v4, v4

    sub-float v0, p4, v4

    .line 63
    .local v0, "bottom":F
    const/4 v1, 0x0

    .line 64
    .local v1, "rect":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .line 65
    .local v3, "roundRect":Landroid/graphics/RectF;
    sget-object v4, Lc8/Hwf;->$SwitchMap$com$taobao$phenix$compat$effects$RoundedCornersBitmapProcessor$CornerType:[I

    iget-object v5, p0, Lc8/Iwf;->mCornerType:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    invoke-virtual {v5}, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 86
    :goto_0
    iget v4, p0, Lc8/Iwf;->mRadius:I

    int-to-float v4, v4

    iget v5, p0, Lc8/Iwf;->mRadius:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 87
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 90
    :cond_0
    return-void

    .line 67
    :pswitch_0
    new-instance v3, Landroid/graphics/RectF;

    .end local v3    # "roundRect":Landroid/graphics/RectF;
    iget v4, p0, Lc8/Iwf;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Lc8/Iwf;->mMargin:I

    int-to-float v5, v5

    invoke-direct {v3, v4, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 68
    .restart local v3    # "roundRect":Landroid/graphics/RectF;
    goto :goto_0

    .line 70
    :pswitch_1
    new-instance v3, Landroid/graphics/RectF;

    .end local v3    # "roundRect":Landroid/graphics/RectF;
    iget v4, p0, Lc8/Iwf;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Lc8/Iwf;->mMargin:I

    int-to-float v5, v5

    iget v6, p0, Lc8/Iwf;->mMargin:I

    iget v7, p0, Lc8/Iwf;->mRadius:I

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v3, v4, v5, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 71
    .restart local v3    # "roundRect":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    .end local v1    # "rect":Landroid/graphics/RectF;
    iget v4, p0, Lc8/Iwf;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Lc8/Iwf;->mMargin:I

    iget v6, p0, Lc8/Iwf;->mRadius:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v4, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 72
    .restart local v1    # "rect":Landroid/graphics/RectF;
    goto :goto_0

    .line 74
    :pswitch_2
    new-instance v3, Landroid/graphics/RectF;

    .end local v3    # "roundRect":Landroid/graphics/RectF;
    iget v4, p0, Lc8/Iwf;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Lc8/Iwf;->mRadius:I

    shl-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-direct {v3, v4, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 75
    .restart local v3    # "roundRect":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    .end local v1    # "rect":Landroid/graphics/RectF;
    iget v4, p0, Lc8/Iwf;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Lc8/Iwf;->mMargin:I

    int-to-float v5, v5

    iget v6, p0, Lc8/Iwf;->mRadius:I

    int-to-float v6, v6

    sub-float v6, v0, v6

    invoke-direct {v1, v4, v5, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 76
    .restart local v1    # "rect":Landroid/graphics/RectF;
    goto :goto_0

    .line 78
    :pswitch_3
    new-instance v3, Landroid/graphics/RectF;

    .end local v3    # "roundRect":Landroid/graphics/RectF;
    iget v4, p0, Lc8/Iwf;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Lc8/Iwf;->mMargin:I

    int-to-float v5, v5

    iget v6, p0, Lc8/Iwf;->mMargin:I

    iget v7, p0, Lc8/Iwf;->mRadius:I

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 79
    .restart local v3    # "roundRect":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    .end local v1    # "rect":Landroid/graphics/RectF;
    iget v4, p0, Lc8/Iwf;->mMargin:I

    iget v5, p0, Lc8/Iwf;->mRadius:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lc8/Iwf;->mMargin:I

    int-to-float v5, v5

    invoke-direct {v1, v4, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 80
    .restart local v1    # "rect":Landroid/graphics/RectF;
    goto/16 :goto_0

    .line 82
    :pswitch_4
    new-instance v3, Landroid/graphics/RectF;

    .end local v3    # "roundRect":Landroid/graphics/RectF;
    iget v4, p0, Lc8/Iwf;->mRadius:I

    shl-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget v5, p0, Lc8/Iwf;->mMargin:I

    int-to-float v5, v5

    invoke-direct {v3, v4, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 83
    .restart local v3    # "roundRect":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    .end local v1    # "rect":Landroid/graphics/RectF;
    iget v4, p0, Lc8/Iwf;->mMargin:I

    int-to-float v4, v4

    iget v5, p0, Lc8/Iwf;->mMargin:I

    int-to-float v5, v5

    iget v6, p0, Lc8/Iwf;->mRadius:I

    int-to-float v6, v6

    sub-float v6, v2, v6

    invoke-direct {v1, v4, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v1    # "rect":Landroid/graphics/RectF;
    goto/16 :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Iwf;->mRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Iwf;->mMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Iwf;->mCornerType:Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;

    invoke-virtual {v1}, Lcom/taobao/phenix/compat/effects/RoundedCornersBitmapProcessor$CornerType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/lang/String;Lc8/nvf;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bitmapSupplier"    # Lc8/nvf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "source"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 45
    .local v4, "width":I
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 49
    .local v1, "height":I
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 46
    :goto_0
    invoke-interface {p2, v4, v1, v5}, Lc8/nvf;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 52
    .local v3, "target":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 53
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 54
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, p3, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 56
    int-to-float v5, v4

    int-to-float v6, v1

    invoke-direct {p0, v0, v2, v5, v6}, Lc8/Iwf;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 57
    return-object v3

    .line 49
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v3    # "target":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v5, Lc8/ouf;->CONFIG:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method
