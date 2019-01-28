.class public Lc8/Mvk;
.super Lc8/ovk;
.source "MobileMgr.java"


# instance fields
.field private mId:Ljava/lang/String;

.field private mProduct:Lcom/youku/phone/freeflow/mobile/bean/Product;

.field private sInit:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lc8/ovk;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Mvk;->sInit:Z

    .line 49
    return-void
.end method

.method static synthetic access$000(Lc8/Mvk;Ljava/util/List;)Lcom/youku/phone/freeflow/mobile/bean/Product;
    .locals 1
    .param p0, "x0"    # Lc8/Mvk;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc8/Mvk;->getEffectiveProduct(Ljava/util/List;)Lcom/youku/phone/freeflow/mobile/bean/Product;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lc8/Mvk;Ljava/lang/String;Lcom/youku/phone/freeflow/mobile/bean/Product;)V
    .locals 0
    .param p0, "x0"    # Lc8/Mvk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/youku/phone/freeflow/mobile/bean/Product;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lc8/Mvk;->syc(Ljava/lang/String;Lcom/youku/phone/freeflow/mobile/bean/Product;)V

    return-void
.end method

.method static synthetic access$202(Lc8/Mvk;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/Mvk;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lc8/Mvk;->sInit:Z

    return p1
.end method

.method static synthetic access$300(Lc8/Mvk;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Mvk;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/Mvk;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lc8/Mvk;)Lcom/youku/phone/freeflow/mobile/bean/Product;
    .locals 1
    .param p0, "x0"    # Lc8/Mvk;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/Mvk;->mProduct:Lcom/youku/phone/freeflow/mobile/bean/Product;

    return-object v0
.end method

.method static synthetic access$500(Lc8/Mvk;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/Mvk;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc8/Mvk;->savaCacheID(Ljava/lang/String;)V

    return-void
.end method

.method private getCacheDate()Lcom/youku/phone/freeflow/mobile/bean/Product;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 259
    const-string/jumbo v2, "getCacheDate \u83b7\u53d6\u79fb\u52a8\u7f13\u5b58\u8ba2\u8d2d\u5173\u7cfb..."

    invoke-virtual {p0, v2}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    .line 261
    :try_start_0
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v2

    const-string/jumbo v4, "youku.free.flow.mobile.cache.date.key"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lc8/nvk;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    const-string/jumbo v2, "getCacheDate.json.null \u79fb\u52a8\u6ca1\u6709\u7f13\u5b58\u8ba2\u8d2d\u5173\u7cfb"

    invoke-virtual {p0, v2}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    move-object v2, v3

    .line 270
    .end local v1    # "json":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 266
    .restart local v1    # "json":Ljava/lang/String;
    :cond_0
    const-class v2, Lcom/youku/phone/freeflow/mobile/bean/Product;

    invoke-static {v1, v2}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/freeflow/mobile/bean/Product;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    .end local v1    # "json":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    const-string/jumbo v2, "getCacheDate.json.exception"

    invoke-virtual {p0, v2}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    move-object v2, v3

    .line 270
    goto :goto_0
.end method

.method private getEffectiveProduct(Ljava/util/List;)Lcom/youku/phone/freeflow/mobile/bean/Product;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/freeflow/mobile/bean/Product;",
            ">;)",
            "Lcom/youku/phone/freeflow/mobile/bean/Product;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/freeflow/mobile/bean/Product;>;"
    const-string/jumbo v3, "getEffectiveProduct"

    invoke-virtual {p0, v3}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    .line 124
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 125
    :cond_0
    const/4 v2, 0x0

    .line 138
    :goto_0
    return-object v2

    .line 127
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEffectiveProduct.products.size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "effectiveProduct":Lcom/youku/phone/freeflow/mobile/bean/Product;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/freeflow/mobile/bean/Product;

    .line 130
    .local v2, "product":Lcom/youku/phone/freeflow/mobile/bean/Product;
    invoke-direct {p0, v2}, Lc8/Mvk;->isEffectiveProduct(Lcom/youku/phone/freeflow/mobile/bean/Product;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    const-string/jumbo v3, "100000000018"

    iget-object v4, v2, Lcom/youku/phone/freeflow/mobile/bean/Product;->opProductCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 132
    const-string/jumbo v3, "getEffectiveProduct.24.success"

    invoke-virtual {p0, v3}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_3
    move-object v0, v2

    goto :goto_1

    .end local v2    # "product":Lcom/youku/phone/freeflow/mobile/bean/Product;
    :cond_4
    move-object v2, v0

    .line 138
    goto :goto_0
.end method

.method private isEffectiveProduct(Lcom/youku/phone/freeflow/mobile/bean/Product;)Z
    .locals 7
    .param p1, "product"    # Lcom/youku/phone/freeflow/mobile/bean/Product;

    .prologue
    const/4 v4, 0x0

    .line 142
    const-string/jumbo v5, "isEffectiveProduct"

    invoke-virtual {p0, v5}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    .line 143
    if-nez p1, :cond_0

    .line 144
    const-string/jumbo v5, "isEffectiveProduct.product.null"

    invoke-virtual {p0, v5}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    .line 159
    :goto_0
    return v4

    .line 148
    :cond_0
    const-string/jumbo v5, "1"

    iget-object v6, p1, Lcom/youku/phone/freeflow/mobile/bean/Product;->status:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 149
    const-string/jumbo v5, "isEffectiveProduct.status.!1"

    invoke-virtual {p0, v5}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v5, p1, Lcom/youku/phone/freeflow/mobile/bean/Product;->expiredTime:Ljava/lang/String;

    invoke-static {v5}, Lc8/pwk;->formatDateToLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 154
    .local v0, "endDate":J
    invoke-static {}, Lc8/pwk;->getServiceDateToLong()J

    move-result-wide v2

    .line 155
    .local v2, "serviceTime":J
    cmp-long v5, v0, v2

    if-gtz v5, :cond_2

    .line 156
    const-string/jumbo v5, "isEffectiveProduct.timeout"

    invoke-virtual {p0, v5}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private savaCache(Ljava/lang/String;Lcom/youku/phone/freeflow/mobile/bean/Product;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "product"    # Lcom/youku/phone/freeflow/mobile/bean/Product;

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lc8/Mvk;->savaCacheID(Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, p2}, Lc8/Mvk;->savaCacheProduct(Lcom/youku/phone/freeflow/mobile/bean/Product;)V

    .line 251
    return-void
.end method

.method private savaCacheID(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 290
    const-string/jumbo v0, "savaCacheID \u7f13\u5b58\u79fb\u52a8\u4f2a\u7801\u6210\u529f"

    invoke-virtual {p0, v0}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v0

    const-string/jumbo v1, "youku.free.flow.mobile.cache.id.key"

    invoke-virtual {v0, v1, p1}, Lc8/nvk;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method private savaCacheProduct(Lcom/youku/phone/freeflow/mobile/bean/Product;)V
    .locals 5
    .param p1, "product"    # Lcom/youku/phone/freeflow/mobile/bean/Product;

    .prologue
    .line 301
    if-eqz p1, :cond_0

    .line 302
    :try_start_0
    invoke-static {p1}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "json":Ljava/lang/String;
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v2

    const-string/jumbo v3, "youku.free.flow.mobile.cache.date.key"

    invoke-virtual {v2, v3, v1}, Lc8/nvk;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .end local v1    # "json":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "savaCacheID \u7f13\u5b58\u79fb\u52a8\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f"

    invoke-virtual {p0, v2}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    .line 313
    :goto_1
    return-void

    .line 305
    :cond_0
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v2

    const-string/jumbo v3, "youku.free.flow.mobile.cache.date.key"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lc8/nvk;->savePreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v2

    const-string/jumbo v3, "youku.free.flow.mobile.cache.date.key"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lc8/nvk;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string/jumbo v2, "savaCacheID \u6e05\u9664\u7f13\u5b58\u79fb\u52a8\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f"

    invoke-virtual {p0, v2}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private syc(Ljava/lang/String;Lcom/youku/phone/freeflow/mobile/bean/Product;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "product"    # Lcom/youku/phone/freeflow/mobile/bean/Product;

    .prologue
    .line 198
    const-string/jumbo v0, "syc \u540c\u6b65\u79fb\u52a8\u8ba2\u8d2d\u5173\u7cfb\u548c\u4f2a\u7801"

    invoke-virtual {p0, v0}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    .line 199
    iput-object p1, p0, Lc8/Mvk;->mId:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lc8/Mvk;->mProduct:Lcom/youku/phone/freeflow/mobile/bean/Product;

    .line 202
    invoke-direct {p0, p1, p2}, Lc8/Mvk;->savaCache(Ljava/lang/String;Lcom/youku/phone/freeflow/mobile/bean/Product;)V

    .line 204
    invoke-static {}, Lc8/tvk;->getInstance()Lc8/tvk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lc8/tvk;->sycMobileDate(Ljava/lang/String;Lcom/youku/phone/freeflow/mobile/bean/Product;I)V

    .line 205
    return-void
.end method


# virtual methods
.method public getCacheID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 280
    const-string/jumbo v0, "getCacheID \u83b7\u53d6\u79fb\u52a8\u7f13\u5b58\u4f2a\u7801..."

    invoke-virtual {p0, v0}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v0

    const-string/jumbo v1, "youku.free.flow.mobile.cache.id.key"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lc8/nvk;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const-string/jumbo v0, "Mobile"

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "init \u79fb\u52a8\u521d\u59cb\u5316..."

    invoke-virtual {p0, v0}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    .line 54
    iget-boolean v0, p0, Lc8/Mvk;->sInit:Z

    if-eqz v0, :cond_0

    .line 55
    const-string/jumbo v0, "init.startIng... \u79fb\u52a8\u6b63\u5728\u521d\u59cb\u5316\u4e2d\uff0c\u62d2\u7edd\u540c\u65f6\u8fdb\u884c\u591a\u6b21\u521d\u59cb\u5316..."

    invoke-virtual {p0, v0}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Mvk;->sInit:Z

    .line 59
    invoke-virtual {p0}, Lc8/Mvk;->initCache()V

    .line 60
    invoke-virtual {p0}, Lc8/Mvk;->requestChinaMobileSatisfyFreeFlow()V

    goto :goto_0
.end method

.method protected initCache()V
    .locals 4

    .prologue
    .line 184
    const-string/jumbo v0, "initCache \u79fb\u52a8\u521d\u59cb\u5316\u7f13\u5b58"

    invoke-virtual {p0, v0}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lc8/Mvk;->getCacheID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Mvk;->mId:Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Lc8/Mvk;->getCacheDate()Lcom/youku/phone/freeflow/mobile/bean/Product;

    move-result-object v0

    iput-object v0, p0, Lc8/Mvk;->mProduct:Lcom/youku/phone/freeflow/mobile/bean/Product;

    .line 188
    iget-object v0, p0, Lc8/Mvk;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-static {}, Lc8/tvk;->getInstance()Lc8/tvk;

    move-result-object v0

    iget-object v1, p0, Lc8/Mvk;->mId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Mvk;->mProduct:Lcom/youku/phone/freeflow/mobile/bean/Product;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lc8/tvk;->sycMobileDate(Ljava/lang/String;Lcom/youku/phone/freeflow/mobile/bean/Product;I)V

    .line 192
    :cond_0
    return-void
.end method

.method public requestChinaMobileSatisfyFreeFlow()V
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "requestChinaMobileSatisfyFreeFlow \u51c6\u5907\u8bf7\u6c42\u79fb\u52a8\u7684\u4e00\u7cfb\u5217\u63a5\u53e3..."

    invoke-virtual {p0, v0}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    .line 73
    new-instance v0, Lc8/Lvk;

    invoke-direct {v0, p0}, Lc8/Lvk;-><init>(Lc8/Mvk;)V

    invoke-static {v0}, Lc8/jwk;->getMobilePcidToRestData(Lc8/Hvk;)V

    .line 120
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
