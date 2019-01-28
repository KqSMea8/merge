.class public Lcom/youku/phone/detail/data/BaseSeriesVideo;
.super Lcom/youku/phone/detail/data/Video;
.source "BaseSeriesVideo.java"


# instance fields
.field public isCached:Z

.field protected isPlaying:Z

.field protected play_percent:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Lcom/youku/phone/detail/data/Video;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/phone/detail/data/BaseSeriesVideo;->play_percent:F

    .line 11
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/BaseSeriesVideo;->isPlaying:Z

    .line 13
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/BaseSeriesVideo;->isCached:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/youku/phone/detail/data/Video;->clear()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/phone/detail/data/BaseSeriesVideo;->play_percent:F

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/data/BaseSeriesVideo;->isPlaying:Z

    .line 20
    return-void
.end method

.method public getPlay_percent()F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/youku/phone/detail/data/BaseSeriesVideo;->play_percent:F

    return v0
.end method

.method public isCached()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/youku/phone/detail/data/BaseSeriesVideo;->isCached:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/youku/phone/detail/data/BaseSeriesVideo;->isPlaying:Z

    return v0
.end method

.method public setCached(Z)V
    .locals 0
    .param p1, "isCached"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/youku/phone/detail/data/BaseSeriesVideo;->isCached:Z

    .line 45
    return-void
.end method

.method public setPlay_percent(F)V
    .locals 0
    .param p1, "play_percent"    # F

    .prologue
    .line 27
    iput p1, p0, Lcom/youku/phone/detail/data/BaseSeriesVideo;->play_percent:F

    .line 28
    return-void
.end method

.method public setPlaying(Z)V
    .locals 0
    .param p1, "isPlaying"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/youku/phone/detail/data/BaseSeriesVideo;->isPlaying:Z

    .line 36
    return-void
.end method
