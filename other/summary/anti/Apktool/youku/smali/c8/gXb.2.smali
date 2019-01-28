.class public Lc8/gXb;
.super Landroid/widget/FrameLayout;
.source "PenetrateFrame.java"


# static fields
.field private static final DEFAULT_PENETRATE_ALPHA:I = 0xcc


# instance fields
.field private mBitmapCacheUpdated:Z

.field private mPenetrateAlpha:I

.field private mUseCacheMark:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/16 v0, 0xcc

    iput v0, p0, Lc8/gXb;->mPenetrateAlpha:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/gXb;->mUseCacheMark:Z

    .line 39
    invoke-direct {p0, p1}, Lc8/gXb;->initialize(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/16 v0, 0xcc

    iput v0, p0, Lc8/gXb;->mPenetrateAlpha:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/gXb;->mUseCacheMark:Z

    .line 34
    invoke-direct {p0, p1}, Lc8/gXb;->initialize(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/16 v0, 0xcc

    iput v0, p0, Lc8/gXb;->mPenetrateAlpha:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/gXb;->mUseCacheMark:Z

    .line 29
    invoke-direct {p0, p1}, Lc8/gXb;->initialize(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/gXb;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 44
    return-void
.end method

.method private updateBitmapCacheIfNeed()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lc8/gXb;->mUseCacheMark:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/gXb;->mBitmapCacheUpdated:Z

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lc8/gXb;->destroyDrawingCache()V

    .line 92
    invoke-virtual {p0}, Lc8/gXb;->buildDrawingCache()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/gXb;->mBitmapCacheUpdated:Z

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0}, Lc8/gXb;->removeAllViews()V

    .line 48
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 103
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/gXb;->mBitmapCacheUpdated:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "PenetrateFrame.dispatchDraw.error"

    invoke-static {v1, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getPenetrateAlpha()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lc8/gXb;->mPenetrateAlpha:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 62
    const/16 v8, 0xff

    :try_start_0
    iget v9, p0, Lc8/gXb;->mPenetrateAlpha:I

    if-ne v8, v9, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v6

    .line 64
    :cond_1
    iget v8, p0, Lc8/gXb;->mPenetrateAlpha:I

    if-nez v8, :cond_2

    move v6, v7

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 68
    .local v5, "y":I
    if-ltz v4, :cond_3

    if-gez v5, :cond_4

    :cond_3
    move v6, v7

    .line 69
    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_5

    .line 71
    invoke-direct {p0}, Lc8/gXb;->updateBitmapCacheIfNeed()V

    .line 73
    :cond_5
    invoke-virtual {p0}, Lc8/gXb;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 74
    .local v1, "drawingCache":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-gt v4, v8, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-le v5, v8, :cond_7

    :cond_6
    move v6, v7

    .line 75
    goto :goto_0

    .line 77
    :cond_7
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 78
    .local v3, "pixel":I
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    rsub-int v0, v8, 0xff

    .line 79
    .local v0, "alpha":I
    iget v8, p0, Lc8/gXb;->mPenetrateAlpha:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-le v0, v8, :cond_0

    move v6, v7

    .line 80
    goto :goto_0

    .line 82
    .end local v0    # "alpha":I
    .end local v1    # "drawingCache":Landroid/graphics/Bitmap;
    .end local v3    # "pixel":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "PenetrateFrame.onInterceptTouchEvent.error"

    invoke-static {v6, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v6, v7

    .line 84
    goto :goto_0
.end method

.method public final setPenetrateAlpha(I)V
    .locals 4
    .param p1, "penetrateAlpha"    # I

    .prologue
    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 51
    if-le p1, v0, :cond_1

    move p1, v0

    .end local p1    # "penetrateAlpha":I
    :cond_0
    :goto_0
    iput p1, p0, Lc8/gXb;->mPenetrateAlpha:I

    .line 52
    const-string/jumbo v0, "PenetrateFrame.setPenetrateAlpha.penetrateAlpha{%s}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lc8/gXb;->mPenetrateAlpha:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    return-void

    .line 51
    .restart local p1    # "penetrateAlpha":I
    :cond_1
    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method public setUseCacheMark(Z)V
    .locals 0
    .param p1, "useCacheMark"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lc8/gXb;->mUseCacheMark:Z

    .line 98
    return-void
.end method
