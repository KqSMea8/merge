.class public Lc8/nOp;
.super Ljava/lang/Object;
.source "SDKUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.SDKUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCorrectionTime()J
    .locals 6

    .prologue
    .line 25
    invoke-static {}, Lc8/nOp;->getTimeOffset()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getCorrectionTimeMillis()J
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Lc8/nOp;->getCorrectionTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getTimeOffset()J
    .locals 5

    .prologue
    .line 45
    invoke-static {}, Lc8/rQp;->getTimeOffset()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "t_offset":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 47
    .local v2, "time_offset":J
    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 56
    :goto_0
    return-wide v2

    .line 51
    :catch_0
    move-exception v1

    const-string/jumbo v1, "mtopsdk.SDKUtils"

    const-string/jumbo v4, "[getTimeOffset]parse t_offset failed"

    invoke-static {v1, v4}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    const-string/jumbo v1, "t_offset"

    const-string/jumbo v4, "0"

    invoke-static {v1, v4}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static logOut()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    const-string/jumbo v0, "INNER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/AOp;->logout()Lc8/AOp;

    .line 93
    return-void
.end method

.method public static registerMtopSdkProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    const-string/jumbo v0, "INNER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc8/kOp;->registerMtopSdkProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    const-string/jumbo v0, "INNER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc8/AOp;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)Lc8/AOp;

    .line 69
    return-void
.end method

.method public static registerSessionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "ecode"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    const-string/jumbo v0, "INNER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lc8/AOp;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)Lc8/AOp;

    .line 82
    return-void
.end method

.method public static registerTtid(Ljava/lang/String;)V
    .locals 2
    .param p0, "ttid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    const-string/jumbo v0, "INNER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/AOp;->registerTtid(Ljava/lang/String;)Lc8/AOp;

    .line 104
    return-void
.end method

.method public static removeCacheBlock(Ljava/lang/String;)Z
    .locals 2
    .param p0, "blockName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    const-string/jumbo v0, "INNER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/AOp;->removeCacheBlock(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static removeCacheItem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "blockName"    # Ljava/lang/String;
    .param p1, "cacheKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    const-string/jumbo v0, "INNER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc8/AOp;->removeCacheItem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static unintallCacheBlock(Ljava/lang/String;)Z
    .locals 2
    .param p0, "blockName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    const-string/jumbo v0, "INNER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/AOp;->unintallCacheBlock(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
