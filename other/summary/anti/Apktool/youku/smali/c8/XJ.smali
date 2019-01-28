.class public Lc8/XJ;
.super Ljava/lang/Object;
.source "QualityChangeFilter.java"


# instance fields
.field private final DEFAULT_SPEED_THRESHOLD:D

.field protected filterAddTime:J

.field private isNetSpeedSlow:Z

.field private shouldCheck:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    iput-wide v0, p0, Lc8/XJ;->DEFAULT_SPEED_THRESHOLD:D

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/XJ;->isNetSpeedSlow:Z

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/XJ;->shouldCheck:Z

    return-void
.end method


# virtual methods
.method protected final checkShouldDelay()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 44
    iget-boolean v1, p0, Lc8/XJ;->shouldCheck:Z

    if-eqz v1, :cond_0

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lc8/XJ;->filterAddTime:J

    sub-long/2addr v2, v4

    invoke-virtual {p0}, Lc8/XJ;->getDelay()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 46
    iput-boolean v0, p0, Lc8/XJ;->shouldCheck:Z

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public detectNetSpeedSlow(D)Z
    .locals 3
    .param p1, "speed"    # D

    .prologue
    .line 34
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDelay()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method final isNetSpeedSlow()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lc8/XJ;->isNetSpeedSlow:Z

    return v0
.end method

.method final setNetSpeedSlow(Z)V
    .locals 0
    .param p1, "netSpeedSlow"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lc8/XJ;->isNetSpeedSlow:Z

    .line 18
    return-void
.end method
