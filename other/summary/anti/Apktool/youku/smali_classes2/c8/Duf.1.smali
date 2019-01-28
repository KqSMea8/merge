.class public Lc8/Duf;
.super Ljava/lang/Object;
.source "GifFrame.java"

# interfaces
.implements Lc8/suf;


# instance fields
.field private mFrameNumber:I

.field private mNativeContext:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "nativeContext"    # J

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lc8/Duf;->mNativeContext:J

    .line 25
    return-void
.end method

.method private static fromGifDisposalMethod(I)Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;
    .locals 1
    .param p0, "disposalMode"    # I

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    sget-object v0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_DO_NOT:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    .line 37
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 31
    sget-object v0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_DO_NOT:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 33
    sget-object v0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_BACKGROUND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 35
    sget-object v0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_PREVIOUS:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    goto :goto_0

    .line 37
    :cond_3
    sget-object v0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_DO_NOT:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    goto :goto_0
.end method

.method private native nativeDispose()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetDisposalMode()I
.end method

.method private native nativeGetDurationMs()I
.end method

.method private native nativeGetHeight()I
.end method

.method private native nativeGetWidth()I
.end method

.method private native nativeGetXOffset()I
.end method

.method private native nativeGetYOffset()I
.end method

.method private native nativeHasTransparency()Z
.end method

.method private native nativeRenderFrame(IILandroid/graphics/Bitmap;)V
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lc8/Duf;->nativeDispose()V

    .line 53
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lc8/Duf;->nativeFinalize()V

    .line 48
    return-void
.end method

.method public getDisposalMode()I
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lc8/Duf;->nativeGetDisposalMode()I

    move-result v0

    return v0
.end method

.method public getDurationMs()I
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lc8/Duf;->nativeGetDurationMs()I

    move-result v0

    return v0
.end method

.method public getFrameInfo()Lc8/quf;
    .locals 8

    .prologue
    .line 95
    new-instance v0, Lc8/quf;

    iget v1, p0, Lc8/Duf;->mFrameNumber:I

    .line 97
    invoke-virtual {p0}, Lc8/Duf;->getXOffset()I

    move-result v2

    .line 98
    invoke-virtual {p0}, Lc8/Duf;->getYOffset()I

    move-result v3

    .line 99
    invoke-virtual {p0}, Lc8/Duf;->getWidth()I

    move-result v4

    .line 100
    invoke-virtual {p0}, Lc8/Duf;->getHeight()I

    move-result v5

    sget-object v6, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;->BLEND_WITH_PREVIOUS:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;

    .line 102
    invoke-virtual {p0}, Lc8/Duf;->getDisposalMode()I

    move-result v7

    invoke-static {v7}, Lc8/Duf;->fromGifDisposalMethod(I)Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lc8/quf;-><init>(IIIIILcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lc8/Duf;->nativeGetHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lc8/Duf;->nativeGetWidth()I

    move-result v0

    return v0
.end method

.method public getXOffset()I
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lc8/Duf;->nativeGetXOffset()I

    move-result v0

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lc8/Duf;->nativeGetYOffset()I

    move-result v0

    return v0
.end method

.method public hasTransparency()Z
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lc8/Duf;->nativeHasTransparency()Z

    move-result v0

    return v0
.end method

.method public renderFrame(IILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lc8/Duf;->nativeRenderFrame(IILandroid/graphics/Bitmap;)V

    .line 58
    return-void
.end method

.method public setFrameNumber(I)V
    .locals 0
    .param p1, "frameNumber"    # I

    .prologue
    .line 42
    iput p1, p0, Lc8/Duf;->mFrameNumber:I

    .line 43
    return-void
.end method
