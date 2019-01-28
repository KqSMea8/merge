.class public Lc8/Rdc;
.super Landroid/view/View;
.source "DrawView.java"


# static fields
.field public static final STATUS_END:I = 0x3

.field public static final STATUS_FINISH:I = 0x2

.field public static final STATUS_IN_BOUND:I = 0x1

.field public static final STATUS_START:I


# instance fields
.field private bitmap:[Landroid/graphics/Bitmap;

.field private bitmap1:Landroid/graphics/Bitmap;

.field private bitmap2:Landroid/graphics/Bitmap;

.field private boundaryX:F

.field private boundaryY:F

.field private centerX:F

.field private centerX1:F

.field private centerY:F

.field private centerY1:F

.field private currentX:F

.field private currentY:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private paint:Landroid/graphics/Paint;

.field private radius:F

.field private radiusInner:F

.field private radiusInner1:F

.field private status:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    const/high16 v1, 0x42200000    # 40.0f

    iput v1, p0, Lc8/Rdc;->currentX:F

    .line 13
    const/high16 v1, 0x42480000    # 50.0f

    iput v1, p0, Lc8/Rdc;->currentY:F

    .line 14
    const/high16 v1, 0x42f00000    # 120.0f

    iput v1, p0, Lc8/Rdc;->radius:F

    .line 15
    const/high16 v1, 0x42700000    # 60.0f

    iput v1, p0, Lc8/Rdc;->radiusInner:F

    .line 16
    const/high16 v1, 0x42a00000    # 80.0f

    iput v1, p0, Lc8/Rdc;->radiusInner1:F

    .line 18
    iput v7, p0, Lc8/Rdc;->mScreenWidth:I

    .line 19
    iput v7, p0, Lc8/Rdc;->mScreenHeight:I

    .line 20
    iput-object v3, p0, Lc8/Rdc;->paint:Landroid/graphics/Paint;

    .line 22
    iput-object v3, p0, Lc8/Rdc;->bitmap1:Landroid/graphics/Bitmap;

    .line 23
    iput-object v3, p0, Lc8/Rdc;->bitmap2:Landroid/graphics/Bitmap;

    .line 24
    const/16 v1, 0xa

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lc8/Rdc;->bitmap:[Landroid/graphics/Bitmap;

    .line 26
    iput v2, p0, Lc8/Rdc;->centerX:F

    .line 27
    iput v2, p0, Lc8/Rdc;->centerY:F

    .line 29
    iput v2, p0, Lc8/Rdc;->centerX1:F

    .line 30
    iput v2, p0, Lc8/Rdc;->centerY1:F

    .line 32
    iput v2, p0, Lc8/Rdc;->boundaryX:F

    .line 33
    iput v2, p0, Lc8/Rdc;->boundaryY:F

    .line 136
    iput v7, p0, Lc8/Rdc;->status:I

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 41
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lc8/Rdc;->mScreenWidth:I

    .line 42
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lc8/Rdc;->mScreenHeight:I

    .line 44
    invoke-virtual {p0}, Lc8/Rdc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lc8/Rdc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "ali_vsdk_frame1"

    const-string/jumbo v4, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lc8/Rdc;->bitmap2:Landroid/graphics/Bitmap;

    .line 46
    iget-object v1, p0, Lc8/Rdc;->bitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lc8/Rdc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lc8/Rdc;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "ali_vsdk_frame"

    const-string/jumbo v5, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v7

    .line 57
    iget-object v1, p0, Lc8/Rdc;->bitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v7

    iput-object v1, p0, Lc8/Rdc;->bitmap1:Landroid/graphics/Bitmap;

    .line 58
    iget-object v1, p0, Lc8/Rdc;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lc8/Rdc;->radius:F

    .line 59
    iget-object v1, p0, Lc8/Rdc;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lc8/Rdc;->radiusInner:F

    .line 60
    iget-object v1, p0, Lc8/Rdc;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lc8/Rdc;->radiusInner1:F

    .line 62
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lc8/Rdc;->paint:Landroid/graphics/Paint;

    .line 66
    iget v1, p0, Lc8/Rdc;->mScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lc8/Rdc;->radius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lc8/Rdc;->radius:F

    invoke-virtual {p0, v1, v2}, Lc8/Rdc;->initPostion(FF)V

    .line 67
    return-void
.end method


# virtual methods
.method public getBoundaryBottom()F
    .locals 3

    .prologue
    .line 124
    iget v0, p0, Lc8/Rdc;->boundaryY:F

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lc8/Rdc;->radiusInner:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getBoundaryLeft()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lc8/Rdc;->boundaryX:F

    return v0
.end method

.method public getBoundaryRight()F
    .locals 3

    .prologue
    .line 116
    iget v0, p0, Lc8/Rdc;->boundaryX:F

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lc8/Rdc;->radiusInner:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getBoundaryTop()F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lc8/Rdc;->boundaryY:F

    return v0
.end method

.method public getCenterX()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lc8/Rdc;->centerX:F

    return v0
.end method

.method public getCenterX1()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lc8/Rdc;->centerX1:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lc8/Rdc;->centerY:F

    return v0
.end method

.method public getCenterY1()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lc8/Rdc;->centerY1:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lc8/Rdc;->radius:F

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lc8/Rdc;->status:I

    return v0
.end method

.method public initPostion(FF)V
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v1}, Lc8/Rdc;->setStatus(I)V

    .line 71
    iput p1, p0, Lc8/Rdc;->currentX:F

    .line 72
    iput p2, p0, Lc8/Rdc;->currentY:F

    .line 79
    iget-object v0, p0, Lc8/Rdc;->bitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    iput-object v0, p0, Lc8/Rdc;->bitmap1:Landroid/graphics/Bitmap;

    .line 80
    iget-object v0, p0, Lc8/Rdc;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lc8/Rdc;->currentX:F

    add-float/2addr v0, v1

    iput v0, p0, Lc8/Rdc;->centerX:F

    .line 81
    iget-object v0, p0, Lc8/Rdc;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lc8/Rdc;->currentY:F

    add-float/2addr v0, v1

    iput v0, p0, Lc8/Rdc;->centerY:F

    .line 83
    iget-object v0, p0, Lc8/Rdc;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lc8/Rdc;->currentX:F

    add-float/2addr v0, v1

    iput v0, p0, Lc8/Rdc;->centerX1:F

    .line 84
    iget-object v0, p0, Lc8/Rdc;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lc8/Rdc;->currentY:F

    add-float/2addr v0, v1

    iput v0, p0, Lc8/Rdc;->centerY1:F

    .line 86
    iget v0, p0, Lc8/Rdc;->currentX:F

    iget v1, p0, Lc8/Rdc;->radius:F

    add-float/2addr v0, v1

    iget v1, p0, Lc8/Rdc;->radiusInner:F

    sub-float/2addr v0, v1

    iput v0, p0, Lc8/Rdc;->boundaryX:F

    .line 87
    iget v0, p0, Lc8/Rdc;->currentY:F

    iget v1, p0, Lc8/Rdc;->radius:F

    add-float/2addr v0, v1

    iget v1, p0, Lc8/Rdc;->radiusInner:F

    sub-float/2addr v0, v1

    iput v0, p0, Lc8/Rdc;->boundaryY:F

    .line 93
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    iget v0, p0, Lc8/Rdc;->status:I

    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 143
    :pswitch_0
    iget-object v0, p0, Lc8/Rdc;->bitmap1:Landroid/graphics/Bitmap;

    iget v1, p0, Lc8/Rdc;->currentX:F

    iget v2, p0, Lc8/Rdc;->radius:F

    add-float/2addr v1, v2

    iget v2, p0, Lc8/Rdc;->radiusInner1:F

    sub-float/2addr v1, v2

    iget v2, p0, Lc8/Rdc;->currentY:F

    iget v3, p0, Lc8/Rdc;->radius:F

    add-float/2addr v2, v3

    iget v3, p0, Lc8/Rdc;->radiusInner1:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lc8/Rdc;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v0, p0, Lc8/Rdc;->bitmap2:Landroid/graphics/Bitmap;

    iget v1, p0, Lc8/Rdc;->currentX:F

    iget v2, p0, Lc8/Rdc;->radius:F

    add-float/2addr v1, v2

    iget v2, p0, Lc8/Rdc;->radiusInner:F

    sub-float/2addr v1, v2

    iget v2, p0, Lc8/Rdc;->currentY:F

    iget v3, p0, Lc8/Rdc;->radius:F

    add-float/2addr v2, v3

    iget v3, p0, Lc8/Rdc;->radiusInner:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lc8/Rdc;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 170
    iput p1, p0, Lc8/Rdc;->status:I

    .line 171
    return-void
.end method
