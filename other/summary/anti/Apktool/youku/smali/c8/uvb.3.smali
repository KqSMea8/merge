.class public Lc8/uvb;
.super Ljava/lang/Object;
.source "WXRequestFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRequest(Ljava/lang/String;)Lc8/uM;
    .locals 1
    .param p0, "params"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0}, Lc8/uvb;->generateANetRequest(Ljava/lang/String;)Lc8/uM;

    move-result-object v0

    return-object v0
.end method

.method private static generateANetRequest(Ljava/lang/String;)Lc8/uM;
    .locals 12
    .param p0, "params"    # Ljava/lang/String;

    .prologue
    .line 25
    :try_start_0
    invoke-static {p0}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 26
    .local v6, "paramsObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "method"

    invoke-virtual {v6, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 27
    .local v5, "method":Ljava/lang/String;
    const-string/jumbo v10, "url"

    invoke-virtual {v6, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 28
    .local v9, "url":Ljava/lang/String;
    const-string/jumbo v10, "header"

    invoke-virtual {v6, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 29
    .local v8, "tempStr":Ljava/lang/String;
    invoke-static {v8}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 31
    .local v3, "header":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "body"

    invoke-virtual {v6, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "body":Ljava/lang/String;
    new-instance v7, Lc8/IN;

    invoke-direct {v7, v9}, Lc8/IN;-><init>(Ljava/lang/String;)V

    .line 34
    .local v7, "request":Lc8/uM;
    invoke-interface {v7, v5}, Lc8/uM;->setMethod(Ljava/lang/String;)V

    .line 35
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 36
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 37
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 38
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 39
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v0    # "body":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "header":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v5    # "method":Ljava/lang/String;
    .end local v6    # "paramsObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "request":Lc8/uM;
    .end local v8    # "tempStr":Ljava/lang/String;
    .end local v9    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sendHttp >>>> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 71
    const/4 v7, 0x0

    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v7

    .line 43
    .restart local v0    # "body":Ljava/lang/String;
    .restart local v3    # "header":Lcom/alibaba/fastjson/JSONObject;
    .restart local v5    # "method":Ljava/lang/String;
    .restart local v6    # "paramsObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v7    # "request":Lc8/uM;
    .restart local v8    # "tempStr":Ljava/lang/String;
    .restart local v9    # "url":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 44
    new-instance v10, Lc8/tvb;

    invoke-direct {v10, v0}, Lc8/tvb;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v10}, Lc8/uM;->setBodyHandler(Lc8/gM;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
