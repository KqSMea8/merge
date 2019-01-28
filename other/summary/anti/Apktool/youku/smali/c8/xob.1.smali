.class public Lc8/xob;
.super Ljava/lang/Object;
.source "ALPTimeUtil.java"


# static fields
.field private static final DAY_TIME_STAMP:J = 0x5265c00L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDayTime()J
    .locals 4

    .prologue
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    return-wide v0
.end method
