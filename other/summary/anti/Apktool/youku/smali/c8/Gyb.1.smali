.class public Lc8/Gyb;
.super Ljava/lang/Object;
.source "WXPrefetchUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lc8/Gyb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Gyb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowPreload()Z
    .locals 5

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "onSwitch":Ljava/lang/String;
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Fob;->getConfigAdapter()Lc8/Hob;

    move-result-object v0

    .line 77
    .local v0, "configAdapter":Lc8/Hob;
    if-eqz v0, :cond_0

    .line 78
    const-string/jumbo v2, "weex_adaper_url_intercept"

    const-string/jumbo v3, "weex_prefetch_mtop_switch"

    const-string/jumbo v4, "true"

    invoke-interface {v0, v2, v3, v4}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    :cond_0
    if-eqz v1, :cond_1

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    const/4 v2, 0x1

    .line 85
    :goto_0
    return v2

    .line 84
    :cond_1
    const-string/jumbo v2, "orange config is close"

    const-string/jumbo v3, "preload is disabled"

    invoke-static {v2, v3}, Lc8/Gyb;->commitFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static commitFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string/jumbo v0, "tbweex"

    const-string/jumbo v1, "MtopPrefetch"

    invoke-static {v0, v1, p0, p1}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public static commitSuccess()V
    .locals 2

    .prologue
    .line 191
    const-string/jumbo v0, "tbweex"

    const-string/jumbo v1, "MtopPrefetch"

    invoke-static {v0, v1}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public static getMtopApiAndParams(Lc8/nVf;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "instance"    # Lc8/nVf;
    .param p1, "prefechStr"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 252
    :try_start_0
    invoke-static {p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 259
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    sget-object v3, Lc8/Gyb;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "get mtop api and params"

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    if-nez v2, :cond_0

    .line 270
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-object v1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "-1"

    invoke-static {p0, p1, v3}, Lc8/Gyb;->handResults(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v3, Lc8/Gyb;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mtop params parse to json failed,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string/jumbo v3, "mtop params parse failed"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Gyb;->commitFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 265
    const-string/jumbo v3, "param"

    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "json":Ljava/lang/String;
    sget-object v3, Lc8/Gyb;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resolve mtop params success:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMtopApiFromZcache(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "pageId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-object v0

    .line 234
    :cond_1
    const-string/jumbo v3, "http://h5.m.taobao.com/app/prefetchmap/prefetch.js"

    invoke-static {v3}, Lc8/fH;->getStreamByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "params":Ljava/lang/String;
    sget-object v3, Lc8/Gyb;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "zcahe\u4e2d\u7684parmas"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 241
    :try_start_0
    invoke-static {v2}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 242
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "json":Ljava/lang/String;
    goto :goto_0

    .line 244
    .end local v0    # "json":Ljava/lang/String;
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getNetworkType(Lc8/nVf;)Ljava/lang/String;
    .locals 2
    .param p0, "instance"    # Lc8/nVf;

    .prologue
    .line 136
    if-nez p0, :cond_0

    .line 137
    const-string/jumbo v1, ""

    .line 143
    :goto_0
    return-object v1

    .line 139
    :cond_0
    invoke-virtual {p0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/Jub;->createDefault(Landroid/content/Context;)Lc8/Iub;

    move-result-object v0

    .line 140
    .local v0, "WXConnection":Lc8/Iub;
    if-nez v0, :cond_1

    .line 141
    const-string/jumbo v1, ""

    goto :goto_0

    .line 143
    :cond_1
    invoke-interface {v0}, Lc8/Iub;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p0, "URL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 305
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 309
    .local v2, "mapRequest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lc8/Gyb;->truncateUrlPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "strUrlParam":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 329
    :cond_0
    return-object v2

    .line 314
    :cond_1
    const-string/jumbo v5, "[&]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "arrSplit":[Ljava/lang/String;
    array-length v7, v0

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v3, v0, v5

    .line 317
    .local v3, "strSplit":Ljava/lang/String;
    const-string/jumbo v8, "[=]"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "arrSplitEqual":[Ljava/lang/String;
    array-length v8, v1

    if-le v8, v10, :cond_3

    .line 322
    aget-object v8, v1, v6

    aget-object v9, v1, v10

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 323
    :cond_3
    array-length v8, v1

    if-ne v8, v10, :cond_2

    aget-object v8, v1, v6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 325
    aget-object v8, v1, v6

    const-string/jumbo v9, ""

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static getRealPrefetchIdUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 39
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 40
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static handResults(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "instance"    # Lc8/nVf;
    .param p1, "prefetch"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lc8/Gyb;->handResults(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static handResults(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "instance"    # Lc8/nVf;
    .param p1, "prefetch"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string/jumbo v3, "-1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-static {p0, p1, p3}, Lc8/Gyb;->readStorageAndSetData(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 56
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "data"

    invoke-static {p2}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v3, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lc8/AIb;->toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "jsonResult":Ljava/lang/String;
    sget-object v3, Lc8/Gyb;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "received mtop result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {p0, p1, v1}, Lc8/Gyb;->saveToStorage(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v1    # "jsonResult":Ljava/lang/String;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static readStorageAndSetData(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "instance"    # Lc8/nVf;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    sget-object v2, Lc8/Gyb;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mtop\u9884\u52a0\u8f7d mtop\u8bf7\u6c42\u9519\u8bef,\u5c1d\u8bd5\u8bfb\u53d6storage\u6570\u636e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :try_start_0
    invoke-static {}, Lc8/bVf;->getIWXStorageAdapter()Lc8/oWf;

    move-result-object v1

    .line 99
    .local v1, "storageAdapter":Lc8/oWf;
    if-eqz v1, :cond_0

    .line 102
    new-instance v2, Lc8/Eyb;

    invoke-direct {v2, p2, p0, p1}, Lc8/Eyb;-><init>(Ljava/lang/String;Lc8/nVf;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Lc8/oWf;->getItem(Ljava/lang/String;Lc8/nWf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v1    # "storageAdapter":Lc8/oWf;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "mtop\u9884\u52a0\u8f7d mtop\u5931\u8d25\u573a\u666f\u4e0b\uff0c\u8bfb\u53d6storage\u51fa\u9519"

    invoke-static {v2, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static replaceUrlParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "preUrl"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string/jumbo v0, "wh_needlogin=1"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceUrlParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 195
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-object p0

    .line 198
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 204
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 205
    .local v2, "index":I
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 206
    if-eq v2, v7, :cond_3

    .line 207
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 208
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string/jumbo v4, "&"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 210
    .local v1, "idx":I
    if-eq v1, v7, :cond_2

    .line 211
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 214
    goto :goto_0

    .line 215
    .end local v1    # "idx":I
    :cond_3
    const-string/jumbo v4, "?"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 216
    .restart local v1    # "idx":I
    if-eq v1, v7, :cond_4

    .line 217
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 219
    :cond_4
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    .line 222
    .end local v1    # "idx":I
    .end local v2    # "index":I
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "replace url error"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "replace url error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/Gyb;->commitFail(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static saveToStorage(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "instance"    # Lc8/nVf;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 148
    :try_start_0
    invoke-static {}, Lc8/bVf;->getIWXStorageAdapter()Lc8/oWf;

    move-result-object v1

    .line 149
    .local v1, "storageAdapter":Lc8/oWf;
    if-nez v1, :cond_0

    .line 178
    .end local v1    # "storageAdapter":Lc8/oWf;
    :goto_0
    return-void

    .line 152
    .restart local v1    # "storageAdapter":Lc8/oWf;
    :cond_0
    new-instance v2, Lc8/Fyb;

    invoke-direct {v2, p1, p2, p0}, Lc8/Fyb;-><init>(Ljava/lang/String;Ljava/lang/String;Lc8/nVf;)V

    invoke-interface {v1, p1, p2, v2}, Lc8/oWf;->setItem(Ljava/lang/String;Ljava/lang/String;Lc8/nWf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v1    # "storageAdapter":Lc8/oWf;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const-string/jumbo v2, "save to storage error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Gyb;->commitFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static truncateUrlPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "strURL"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 280
    const/4 v1, 0x0

    .line 282
    .local v1, "strAllParam":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 294
    .end local v1    # "strAllParam":Ljava/lang/String;
    .local v2, "strAllParam":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 286
    .end local v2    # "strAllParam":Ljava/lang/String;
    .restart local v1    # "strAllParam":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "[?]"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "arrSplit":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 288
    array-length v3, v0

    if-le v3, v4, :cond_1

    .line 289
    aget-object v3, v0, v4

    if-eqz v3, :cond_1

    .line 290
    aget-object v1, v0, v4

    :cond_1
    move-object v2, v1

    .line 294
    .end local v1    # "strAllParam":Ljava/lang/String;
    .restart local v2    # "strAllParam":Ljava/lang/String;
    goto :goto_0
.end method
