.class public Lc8/Pvk;
.super Lc8/ovk;
.source "TelecomMgr.java"


# instance fields
.field private mId:Ljava/lang/String;

.field private mProduct:Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lc8/ovk;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lc8/Pvk;Ljava/lang/String;Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;)V
    .locals 0
    .param p0, "x0"    # Lc8/Pvk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lc8/Pvk;->savaCache(Ljava/lang/String;Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;)V

    return-void
.end method

.method static synthetic access$100(Lc8/Pvk;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Pvk;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/Pvk;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Pvk;)Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;
    .locals 1
    .param p0, "x0"    # Lc8/Pvk;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/Pvk;->mProduct:Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;

    return-object v0
.end method

.method private getCacheDate()Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 127
    const-string/jumbo v2, "getCacheDate"

    invoke-virtual {p0, v2}, Lc8/Pvk;->debugLog(Ljava/lang/String;)V

    .line 129
    :try_start_0
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v2

    const-string/jumbo v4, "youku.free.flow.telecom.cache.date.key"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lc8/nvk;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const-string/jumbo v2, "getCacheDate.json.null"

    invoke-virtual {p0, v2}, Lc8/Pvk;->debugLog(Ljava/lang/String;)V

    move-object v2, v3

    .line 138
    .end local v1    # "json":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 134
    .restart local v1    # "json":Ljava/lang/String;
    :cond_0
    const-class v2, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;

    invoke-static {v1, v2}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1    # "json":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    const-string/jumbo v2, "getCacheDate.json.exception"

    invoke-virtual {p0, v2}, Lc8/Pvk;->debugLog(Ljava/lang/String;)V

    move-object v2, v3

    .line 138
    goto :goto_0
.end method

.method private getCacheID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v0

    const-string/jumbo v1, "youku.free.flow.telecom.cache.id.key"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lc8/nvk;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private savaCache(Ljava/lang/String;Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "product"    # Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;

    .prologue
    .line 88
    :try_start_0
    const-string/jumbo v1, "savaCache \u7f13\u5b58\u8054\u901a\u624b\u673a\u53f7\u548c\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f"

    invoke-virtual {p0, v1}, Lc8/Pvk;->debugLog(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v1

    const-string/jumbo v2, "youku.free.flow.telecom.cache.id.key"

    invoke-virtual {v1, v2, p1}, Lc8/nvk;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lc8/Pvk;->mId:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lc8/Pvk;->mProduct:Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;

    .line 92
    if-eqz p2, :cond_0

    .line 93
    invoke-static {p2}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "json":Ljava/lang/String;
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v1

    const-string/jumbo v2, "youku.free.flow.telecom.cache.date.key"

    invoke-virtual {v1, v2, v0}, Lc8/nvk;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "savaCache \u7f13\u5b58\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f"

    invoke-virtual {p0, v1}, Lc8/Pvk;->debugLog(Ljava/lang/String;)V

    .line 104
    .end local v0    # "json":Ljava/lang/String;
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v1

    const-string/jumbo v2, "youku.free.flow.telecom.cache.date.key"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lc8/nvk;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v1, "savaCache \u6e05\u7a7a\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f"

    invoke-virtual {p0, v1}, Lc8/Pvk;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "Telcom"

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lc8/Pvk;->update()V

    .line 37
    return-void
.end method

.method protected initCache()V
    .locals 4

    .prologue
    .line 114
    :try_start_0
    const-string/jumbo v0, "initCache \u79fb\u52a8\u521d\u59cb\u5316\u7f13\u5b58"

    invoke-virtual {p0, v0}, Lc8/Pvk;->debugLog(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lc8/Pvk;->getCacheID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Pvk;->mId:Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Lc8/Pvk;->getCacheDate()Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;

    move-result-object v0

    iput-object v0, p0, Lc8/Pvk;->mProduct:Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;

    .line 118
    iget-object v0, p0, Lc8/Pvk;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-static {}, Lc8/tvk;->getInstance()Lc8/tvk;

    move-result-object v0

    iget-object v1, p0, Lc8/Pvk;->mId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Pvk;->mProduct:Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lc8/tvk;->sycTelecomData(Ljava/lang/String;Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public update()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lc8/ovk;->update()V

    .line 42
    invoke-virtual {p0}, Lc8/Pvk;->initCache()V

    .line 43
    new-instance v0, Lc8/Ovk;

    invoke-direct {v0, p0}, Lc8/Ovk;-><init>(Lc8/Pvk;)V

    invoke-static {v0}, Lc8/jwk;->getTelecomResult(Lc8/Ivk;)V

    .line 76
    return-void
.end method
