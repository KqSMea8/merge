.class public Lc8/kL;
.super Ljava/lang/Object;
.source "AmdcRuntimeInfo.java"


# static fields
.field private static volatile amdcLimitLevel:I

.field private static volatile amdcLimitTime:J

.field private static volatile context:Landroid/content/Context;

.field private static iSign:Lc8/vL;

.field public static volatile latitude:D

.field public static volatile longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 17
    const/4 v0, 0x0

    sput v0, Lc8/kL;->amdcLimitLevel:I

    .line 19
    const-wide/16 v0, 0x0

    sput-wide v0, Lc8/kL;->amdcLimitTime:J

    .line 21
    sput-wide v2, Lc8/kL;->latitude:D

    .line 23
    sput-wide v2, Lc8/kL;->longitude:D

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lc8/kL;->iSign:Lc8/vL;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAmdcLimitLevel()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 41
    sget v0, Lc8/kL;->amdcLimitLevel:I

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lc8/kL;->amdcLimitTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 42
    sput-wide v4, Lc8/kL;->amdcLimitTime:J

    .line 43
    const/4 v0, 0x0

    sput v0, Lc8/kL;->amdcLimitLevel:I

    .line 45
    :cond_0
    sget v0, Lc8/kL;->amdcLimitLevel:I

    return v0
.end method

.method public static getSign()Lc8/vL;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lc8/kL;->iSign:Lc8/vL;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sput-object p0, Lc8/kL;->context:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public static setSign(Lc8/vL;)V
    .locals 0
    .param p0, "sign"    # Lc8/vL;

    .prologue
    .line 57
    sput-object p0, Lc8/kL;->iSign:Lc8/vL;

    .line 58
    return-void
.end method

.method public static updateAmdcLimit(II)V
    .locals 6
    .param p0, "level"    # I
    .param p1, "time"    # I

    .prologue
    .line 33
    const-string/jumbo v0, "awcn.AmdcRuntimeInfo"

    const-string/jumbo v1, "set amdc limit"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "level"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "time"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    sget v0, Lc8/kL;->amdcLimitLevel:I

    if-eq v0, p0, :cond_0

    .line 35
    sput p0, Lc8/kL;->amdcLimitLevel:I

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lc8/kL;->amdcLimitTime:J

    .line 38
    :cond_0
    return-void
.end method
