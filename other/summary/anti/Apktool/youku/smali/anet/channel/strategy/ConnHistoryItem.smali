.class public Lanet/channel/strategy/ConnHistoryItem;
.super Ljava/lang/Object;
.source "ConnHistoryItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final BAN_THRESHOLD:I = 0x3

.field private static final BAN_TIME:I = 0x493e0

.field private static final UPDATE_INTERVAL:J = 0x2710L

.field private static final VALID_PERIOD:J = 0x5265c00L

.field private static final serialVersionUID:J = 0x48cc9d77388d12dbL


# instance fields
.field history:B

.field lastFail:J

.field lastSuccess:J


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-byte v0, p0, Lanet/channel/strategy/ConnHistoryItem;->history:B

    .line 17
    iput-wide v2, p0, Lanet/channel/strategy/ConnHistoryItem;->lastSuccess:J

    .line 18
    iput-wide v2, p0, Lanet/channel/strategy/ConnHistoryItem;->lastFail:J

    return-void
.end method


# virtual methods
.method public countFail()I
    .locals 3
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "count":I
    iget-byte v1, p0, Lanet/channel/strategy/ConnHistoryItem;->history:B

    .local v1, "tmp":I
    :goto_0
    if-lez v1, :cond_0

    .line 36
    and-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v2

    .line 35
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return v0
.end method

.method isExpire()Z
    .locals 6

    .prologue
    .line 55
    iget-wide v2, p0, Lanet/channel/strategy/ConnHistoryItem;->lastSuccess:J

    iget-wide v4, p0, Lanet/channel/strategy/ConnHistoryItem;->lastFail:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v0, p0, Lanet/channel/strategy/ConnHistoryItem;->lastSuccess:J

    .line 56
    .local v0, "tmp":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 55
    .end local v0    # "tmp":J
    :cond_0
    iget-wide v0, p0, Lanet/channel/strategy/ConnHistoryItem;->lastFail:J

    goto :goto_0

    .line 56
    .restart local v0    # "tmp":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method latestFail()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 43
    iget-byte v1, p0, Lanet/channel/strategy/ConnHistoryItem;->history:B

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldBan()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0}, Lanet/channel/strategy/ConnHistoryItem;->countFail()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lanet/channel/strategy/ConnHistoryItem;->lastFail:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method update(Z)V
    .locals 8
    .param p1, "isSuccess"    # Z

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 22
    .local v2, "now":J
    if-eqz p1, :cond_1

    iget-wide v0, p0, Lanet/channel/strategy/ConnHistoryItem;->lastSuccess:J

    .line 23
    .local v0, "last":J
    :goto_0
    sub-long v4, v2, v0

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 24
    iget-byte v4, p0, Lanet/channel/strategy/ConnHistoryItem;->history:B

    shl-int/lit8 v5, v4, 0x1

    if-eqz p1, :cond_2

    const/4 v4, 0x0

    :goto_1
    or-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, p0, Lanet/channel/strategy/ConnHistoryItem;->history:B

    .line 25
    if-eqz p1, :cond_3

    .line 26
    iput-wide v2, p0, Lanet/channel/strategy/ConnHistoryItem;->lastSuccess:J

    .line 31
    :cond_0
    :goto_2
    return-void

    .line 22
    .end local v0    # "last":J
    :cond_1
    iget-wide v0, p0, Lanet/channel/strategy/ConnHistoryItem;->lastFail:J

    goto :goto_0

    .line 24
    .restart local v0    # "last":J
    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    .line 28
    :cond_3
    iput-wide v2, p0, Lanet/channel/strategy/ConnHistoryItem;->lastFail:J

    goto :goto_2
.end method
