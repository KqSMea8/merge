.class public Lc8/Qdc;
.super Landroid/view/View;
.source "BallView.java"


# static fields
.field public static final STATUS_END:I = 0x2

.field public static final STATUS_FINISH:I = 0x1

.field public static final STATUS_INIT:I = -0x1

.field public static final STATUS_START:I


# instance fields
.field private bitmap1:Landroid/graphics/Bitmap;

.field private bitmap2:Landroid/graphics/Bitmap;

.field private currentX:F

.field private currentY:F

.field private frame:Landroid/graphics/Bitmap;

.field private initX:F

.field private initY:F

.field is:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field paint:Landroid/graphics/Paint;

.field private radius:F

.field private radiusTouch:F

.field private status:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v4, 0x42200000    # 40.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 11
    iput v4, p0, Lc8/Qdc;->currentX:F

    .line 12
    iput v5, p0, Lc8/Qdc;->currentY:F

    .line 13
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lc8/Qdc;->radius:F

    .line 14
    const/high16 v1, 0x42f00000    # 120.0f

    iput v1, p0, Lc8/Qdc;->radiusTouch:F

    .line 16
    iput v3, p0, Lc8/Qdc;->mScreenWidth:I

    .line 17
    iput v3, p0, Lc8/Qdc;->mScreenHeight:I

    .line 19
    iput-object v2, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    .line 20
    iput-object v2, p0, Lc8/Qdc;->bitmap2:Landroid/graphics/Bitmap;

    .line 24
    iput-object v2, p0, Lc8/Qdc;->frame:Landroid/graphics/Bitmap;

    .line 26
    iput-object v2, p0, Lc8/Qdc;->paint:Landroid/graphics/Paint;

    .line 28
    iput-boolean v3, p0, Lc8/Qdc;->is:Z

    .line 39
    iput v4, p0, Lc8/Qdc;->initX:F

    .line 40
    iput v5, p0, Lc8/Qdc;->initY:F

    .line 105
    const/4 v1, -0x1

    iput v1, p0, Lc8/Qdc;->status:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 34
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lc8/Qdc;->mScreenWidth:I

    .line 35
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lc8/Qdc;->mScreenHeight:I

    .line 36
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lc8/Qdc;->paint:Landroid/graphics/Paint;

    .line 37
    return-void
.end method


# virtual methods
.method public getInitBottom()F
    .locals 3

    .prologue
    .line 55
    iget v0, p0, Lc8/Qdc;->initY:F

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lc8/Qdc;->radius:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getInitLeft()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lc8/Qdc;->initX:F

    return v0
.end method

.method public getInitRight()F
    .locals 3

    .prologue
    .line 47
    iget v0, p0, Lc8/Qdc;->initX:F

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lc8/Qdc;->radius:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getInitTop()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lc8/Qdc;->initY:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lc8/Qdc;->radius:F

    return v0
.end method

.method public getRadiusTouch()F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lc8/Qdc;->radiusTouch:F

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lc8/Qdc;->status:I

    return v0
.end method

.method public init(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "ballBmp"    # Landroid/graphics/Bitmap;
    .param p2, "frameBmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x1

    .line 59
    iput-object p1, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    .line 60
    iput-object p2, p0, Lc8/Qdc;->frame:Landroid/graphics/Bitmap;

    .line 65
    iget-object v0, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lc8/Qdc;->frame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lc8/Qdc;->frame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lc8/Qdc;->frame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lc8/Qdc;->frame:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    .line 69
    :cond_1
    iget-object v0, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lc8/Qdc;->radius:F

    .line 71
    iget-object v0, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0x5

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lc8/Qdc;->bitmap2:Landroid/graphics/Bitmap;

    .line 72
    iget-object v0, p0, Lc8/Qdc;->bitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lc8/Qdc;->radiusTouch:F

    .line 75
    return-void
.end method

.method public initPostion(FF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    .line 78
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lc8/Qdc;->setStatus(I)V

    .line 79
    iput p1, p0, Lc8/Qdc;->initX:F

    iput p1, p0, Lc8/Qdc;->currentX:F

    .line 80
    iput p2, p0, Lc8/Qdc;->initY:F

    iput p2, p0, Lc8/Qdc;->currentY:F

    .line 82
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    iget v0, p0, Lc8/Qdc;->status:I

    packed-switch v0, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    iget v1, p0, Lc8/Qdc;->initX:F

    iget v2, p0, Lc8/Qdc;->initY:F

    iget-object v3, p0, Lc8/Qdc;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lc8/Qdc;->bitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lc8/Qdc;->bitmap2:Landroid/graphics/Bitmap;

    iget v1, p0, Lc8/Qdc;->currentX:F

    iget-object v2, p0, Lc8/Qdc;->bitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lc8/Qdc;->currentY:F

    iget-object v3, p0, Lc8/Qdc;->bitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lc8/Qdc;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 130
    :pswitch_2
    iget-object v0, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    iget v1, p0, Lc8/Qdc;->currentX:F

    iget-object v2, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lc8/Qdc;->currentY:F

    iget-object v3, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lc8/Qdc;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 135
    :pswitch_3
    iget-object v0, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    iget v1, p0, Lc8/Qdc;->currentX:F

    iget-object v2, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lc8/Qdc;->currentY:F

    iget-object v3, p0, Lc8/Qdc;->bitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lc8/Qdc;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public resetPostion()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lc8/Qdc;->setStatus(I)V

    .line 86
    iget v0, p0, Lc8/Qdc;->initX:F

    iput v0, p0, Lc8/Qdc;->currentX:F

    .line 87
    iget v0, p0, Lc8/Qdc;->initY:F

    iput v0, p0, Lc8/Qdc;->currentY:F

    .line 88
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Qdc;->setStatus(I)V

    .line 92
    iput p1, p0, Lc8/Qdc;->currentX:F

    .line 93
    iput p2, p0, Lc8/Qdc;->currentY:F

    .line 94
    return-void
.end method

.method public setPositionEnd(FF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    .line 148
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lc8/Qdc;->setStatus(I)V

    .line 149
    iput p1, p0, Lc8/Qdc;->currentX:F

    .line 150
    iput p2, p0, Lc8/Qdc;->currentY:F

    .line 151
    return-void
.end method

.method public setPositionFinish(FF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/Qdc;->setStatus(I)V

    .line 143
    iput p1, p0, Lc8/Qdc;->currentX:F

    .line 144
    iput p2, p0, Lc8/Qdc;->currentY:F

    .line 145
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 112
    iput p1, p0, Lc8/Qdc;->status:I

    .line 113
    return-void
.end method
