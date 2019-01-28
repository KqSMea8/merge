.class public Lc8/RYm;
.super Ljava/lang/Object;
.source "NetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/QYm;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static getAppConfig(Lc8/QYm;)V
    .locals 1
    .param p0, "callBack"    # Lc8/QYm;

    .prologue
    .line 25
    invoke-static {}, Lc8/UYm;->getAppTriggerConfigUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lc8/RYm;->getConfig(Ljava/lang/String;Lc8/QYm;)V

    .line 26
    return-void
.end method

.method private static getConfig(Ljava/lang/String;Lc8/QYm;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "callBack"    # Lc8/QYm;

    .prologue
    .line 34
    :try_start_0
    new-instance v4, Lc8/bJj;

    invoke-direct {v4}, Lc8/bJj;-><init>()V

    invoke-virtual {v4, p0}, Lc8/bJj;->url(Ljava/lang/String;)Lc8/bJj;

    move-result-object v4

    invoke-virtual {v4}, Lc8/bJj;->build()Lc8/cJj;

    move-result-object v1

    .line 35
    .local v1, "network":Lc8/cJj;
    invoke-virtual {v1}, Lc8/cJj;->syncCall()Lc8/eJj;

    move-result-object v2

    .line 37
    .local v2, "response":Lc8/eJj;
    invoke-virtual {v2}, Lc8/eJj;->isCallSuccess()Z

    move-result v4

    if-nez v4, :cond_0

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "net.getConfig.call.failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .end local v1    # "network":Lc8/cJj;
    .end local v2    # "response":Lc8/eJj;
    :goto_0
    return-void

    .line 42
    .restart local v1    # "network":Lc8/cJj;
    .restart local v2    # "response":Lc8/eJj;
    :cond_0
    invoke-virtual {v2}, Lc8/eJj;->getBytedata()[B

    move-result-object v0

    .line 43
    .local v0, "datas":[B
    if-nez v0, :cond_1

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "net.getConfig.bateData.null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v0    # "datas":[B
    .end local v1    # "network":Lc8/cJj;
    .end local v2    # "response":Lc8/eJj;
    :catch_0
    move-exception v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "net.getConfig.exception."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 48
    .restart local v0    # "datas":[B
    .restart local v1    # "network":Lc8/cJj;
    .restart local v2    # "response":Lc8/eJj;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 49
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "net.getConfig.result.null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_2
    invoke-interface {p1, v3}, Lc8/QYm;->onSuccess(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getLayerConfig(Lc8/QYm;)V
    .locals 1
    .param p0, "callBack"    # Lc8/QYm;

    .prologue
    .line 29
    invoke-static {}, Lc8/UYm;->getLayerConfigUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lc8/RYm;->getConfig(Ljava/lang/String;Lc8/QYm;)V

    .line 30
    return-void
.end method

.method public static getPageConfig(Lc8/QYm;)V
    .locals 1
    .param p0, "callBack"    # Lc8/QYm;

    .prologue
    .line 17
    invoke-static {}, Lc8/UYm;->getPageTriggerConfigUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lc8/RYm;->getConfig(Ljava/lang/String;Lc8/QYm;)V

    .line 18
    return-void
.end method

.method public static getViewConfig(Lc8/QYm;)V
    .locals 1
    .param p0, "callBack"    # Lc8/QYm;

    .prologue
    .line 21
    invoke-static {}, Lc8/UYm;->getViewConfigUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lc8/RYm;->getConfig(Ljava/lang/String;Lc8/QYm;)V

    .line 22
    return-void
.end method
