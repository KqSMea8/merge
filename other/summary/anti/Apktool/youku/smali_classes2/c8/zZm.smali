.class public Lc8/zZm;
.super Ljava/lang/Object;
.source "MotuReportTools.java"


# static fields
.field private static uploadTime:J

.field private static uploadTimeInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lc8/zZm;->uploadTimeInterval:J

    .line 17
    const-wide/16 v0, 0x0

    sput-wide v0, Lc8/zZm;->uploadTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canReport()Z
    .locals 8

    .prologue
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 24
    .local v0, "currentTime":J
    :try_start_0
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v3

    const-string/jumbo v4, "motu_reporter_retry_policy"

    const-string/jumbo v5, "time_interval"

    const-wide/32 v6, 0x36ee80

    .line 25
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-virtual {v3, v4, v5, v6}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sput-wide v4, Lc8/zZm;->uploadTimeInterval:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    sget-wide v4, Lc8/zZm;->uploadTime:J

    sub-long v4, v0, v4

    sget-wide v6, Lc8/zZm;->uploadTimeInterval:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 31
    sput-wide v0, Lc8/zZm;->uploadTime:J

    .line 32
    const/4 v3, 0x1

    .line 35
    :goto_1
    return v3

    .line 26
    :catch_0
    move-exception v2

    .line 27
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method
