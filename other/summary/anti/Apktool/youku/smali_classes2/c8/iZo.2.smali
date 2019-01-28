.class public Lc8/iZo;
.super Landroid/widget/ProgressBar;
.source "DownloadingProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final MAX_SLEEP_TIME:J

.field private defaultSleepTime:J

.field private flickThread:Ljava/lang/Thread;

.field private flickerLeft:F

.field private flikerBitmap:Landroid/graphics/Bitmap;

.field private isStop:Z

.field private isTaskInited:Z

.field private openAnimation:Z

.field private pgPaint:Landroid/graphics/Paint;

.field private xfermode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lc8/iZo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/iZo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lc8/iZo;->xfermode:Landroid/graphics/PorterDuffXfermode;

    .line 37
    iput-boolean v2, p0, Lc8/iZo;->isStop:Z

    .line 38
    iput-boolean v2, p0, Lc8/iZo;->isTaskInited:Z

    .line 42
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lc8/iZo;->defaultSleepTime:J

    .line 44
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lc8/iZo;->MAX_SLEEP_TIME:J

    .line 45
    iput-boolean v2, p0, Lc8/iZo;->openAnimation:Z

    .line 58
    invoke-direct {p0}, Lc8/iZo;->init()V

    .line 59
    return-void
.end method

.method private dp2px(I)I
    .locals 2
    .param p1, "dp"    # I

    .prologue
    .line 106
    invoke-virtual {p0}, Lc8/iZo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 107
    .local v0, "density":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private init()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lc8/iZo;->initFlikerView()V

    .line 64
    return-void
.end method

.method private initFlikerView()V
    .locals 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lc8/iZo;->openAnimation:Z

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lc8/iZo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$drawable;->downloading_flicker:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lc8/iZo;->flikerBitmap:Landroid/graphics/Bitmap;

    .line 71
    iget-object v0, p0, Lc8/iZo;->flikerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lc8/iZo;->flickerLeft:F

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lc8/iZo;->pgPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lc8/iZo;->pgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method private startFlickThread()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lc8/iZo;->flickThread:Ljava/lang/Thread;

    .line 80
    iget-object v0, p0, Lc8/iZo;->flickThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 114
    :try_start_0
    iget-boolean v1, p0, Lc8/iZo;->isStop:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lc8/iZo;->openAnimation:Z

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lc8/iZo;->pgPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lc8/iZo;->xfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 116
    iget-object v1, p0, Lc8/iZo;->flikerBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lc8/iZo;->flickerLeft:F

    const/4 v3, 0x0

    iget-object v4, p0, Lc8/iZo;->pgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 117
    iget-object v1, p0, Lc8/iZo;->pgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onWindowVisibilityChanged(I)V

    .line 152
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lc8/iZo;->stopFlick()V

    .line 155
    :cond_0
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    .line 84
    iget-object v6, p0, Lc8/iZo;->flikerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 86
    .local v3, "width":I
    :goto_0
    :try_start_0
    iget-boolean v6, p0, Lc8/iZo;->isStop:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lc8/iZo;->flickThread:Ljava/lang/Thread;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lc8/iZo;->flickThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_2

    .line 87
    iget v6, p0, Lc8/iZo;->flickerLeft:F

    const/4 v7, 0x5

    invoke-direct {p0, v7}, Lc8/iZo;->dp2px(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, p0, Lc8/iZo;->flickerLeft:F

    .line 88
    invoke-virtual {p0}, Lc8/iZo;->getProgress()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lc8/iZo;->getMax()I

    move-result v7

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 89
    .local v2, "ratio":F
    invoke-virtual {p0}, Lc8/iZo;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v1, v2, v6

    .line 90
    .local v1, "progressWidth":F
    iget v6, p0, Lc8/iZo;->flickerLeft:F

    int-to-float v7, v3

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    cmpl-float v6, v6, v1

    if-ltz v6, :cond_0

    .line 91
    neg-int v6, v3

    int-to-float v6, v6

    iput v6, p0, Lc8/iZo;->flickerLeft:F

    .line 94
    :cond_0
    invoke-virtual {p0}, Lc8/iZo;->postInvalidate()V

    .line 95
    iget-wide v6, p0, Lc8/iZo;->defaultSleepTime:J

    long-to-float v6, v6

    div-float/2addr v6, v2

    float-to-long v4, v6

    .line 96
    .local v4, "sleep":J
    const-wide/16 v6, 0x7d0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    .line 97
    const-wide/16 v4, 0x7d0

    .line 99
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v1    # "progressWidth":F
    .end local v2    # "ratio":F
    .end local v4    # "sleep":J
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public startFlick()V
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lc8/iZo;->openAnimation:Z

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-boolean v0, p0, Lc8/iZo;->isStop:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lc8/iZo;->isTaskInited:Z

    if-nez v0, :cond_0

    .line 131
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/iZo;->isStop:Z

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/iZo;->isTaskInited:Z

    .line 133
    invoke-direct {p0}, Lc8/iZo;->startFlickThread()V

    goto :goto_0
.end method

.method public stopFlick()V
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lc8/iZo;->openAnimation:Z

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-boolean v0, p0, Lc8/iZo;->isStop:Z

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/iZo;->isStop:Z

    .line 143
    iget-object v0, p0, Lc8/iZo;->flickThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/iZo;->flickThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lc8/iZo;->flickThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/iZo;->flickThread:Ljava/lang/Thread;

    goto :goto_0
.end method
