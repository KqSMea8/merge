.class public Lc8/ARf;
.super Ljava/lang/Object;
.source "UpdateStrategy.java"


# instance fields
.field private receiving:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishReceivePush()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/ARf;->receiving:Z

    .line 21
    return-void
.end method

.method public isLocalDataValid(Lcom/taobao/update/datasource/local/UpdateInfo;)Z
    .locals 10
    .param p1, "localUpdateInfo"    # Lcom/taobao/update/datasource/local/UpdateInfo;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 29
    sget-object v4, Lc8/yRf;->sUpdateAdapter:Lc8/aQf;

    sget-object v5, Lc8/rRf;->UPDATE_CACHE_HOUR:Ljava/lang/String;

    const-string/jumbo v6, "24"

    invoke-virtual {v4, v5, v6}, Lc8/aQf;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "cacheTime":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 31
    .local v2, "cacheTimeMs":J
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v2, v4

    .line 35
    :cond_0
    cmp-long v4, v8, v2

    if-nez v4, :cond_2

    .line 48
    :cond_1
    :goto_0
    return v1

    .line 41
    :cond_2
    if-eqz p1, :cond_1

    iget-wide v4, p1, Lcom/taobao/update/datasource/local/UpdateInfo;->lastUpdateTime:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    invoke-static {}, Lc8/BRf;->getVersionName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/taobao/update/datasource/local/UpdateInfo;->appVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/taobao/update/datasource/local/UpdateInfo;->lastUpdateTime:J

    sub-long/2addr v4, v6

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUpdating()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lc8/ARf;->receiving:Z

    return v0
.end method

.method public startReceivePush()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/ARf;->receiving:Z

    .line 17
    return-void
.end method
