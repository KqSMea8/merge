.class public Lc8/WJj;
.super Lc8/SJj;
.source "OkHttpConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lc8/VSe;",
        "O:",
        "Lc8/cTe;",
        ">",
        "Lc8/SJj",
        "<TI;TO;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lc8/WJj;, "Lcom/youku/network/converter/OkHttpConverter<TI;TO;>;"
    invoke-direct {p0}, Lc8/SJj;-><init>()V

    return-void
.end method

.method private buildRequest(Lc8/dJj;)Lc8/VSe;
    .locals 11
    .param p1, "ykRequest"    # Lc8/dJj;

    .prologue
    .line 42
    .local p0, "this":Lc8/WJj;, "Lcom/youku/network/converter/OkHttpConverter<TI;TO;>;"
    const/4 v8, 0x0

    .line 44
    .local v8, "requestBody":Lc8/ZSe;
    invoke-virtual {p1}, Lc8/dJj;->getMethod()Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "method":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/dJj;->getParams()Ljava/util/Map;

    move-result-object v2

    .line 46
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lc8/dJj;->getCharset()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "charset":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/dJj;->getJsonBody()Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, "jsonBody":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/dJj;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/WJj;->createRequestHeaders(Ljava/util/Map;)Lc8/GSe;

    move-result-object v6

    .line 51
    .local v6, "headers":Lc8/GSe;
    invoke-virtual {p1}, Lc8/dJj;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lc8/WJj;->formatUrl(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 52
    .local v10, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "application/json; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lc8/MSe;->parse(Ljava/lang/String;)Lc8/MSe;

    move-result-object v0

    .line 53
    invoke-static {v0, v5}, Lc8/ZSe;->create(Lc8/MSe;Ljava/lang/String;)Lc8/ZSe;

    move-result-object v8

    .line 61
    :cond_0
    :goto_0
    new-instance v0, Lc8/USe;

    invoke-direct {v0}, Lc8/USe;-><init>()V

    .line 62
    invoke-virtual {v0, v10}, Lc8/USe;->url(Ljava/lang/String;)Lc8/USe;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v4, v8}, Lc8/USe;->method(Ljava/lang/String;Lc8/ZSe;)Lc8/USe;

    move-result-object v0

    .line 64
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/USe;->tag(Ljava/lang/Object;)Lc8/USe;

    move-result-object v9

    .line 66
    .local v9, "requestBuilder":Lc8/USe;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lc8/GSe;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 67
    invoke-virtual {v9, v6}, Lc8/USe;->headers(Lc8/GSe;)Lc8/USe;

    .line 70
    :cond_1
    invoke-virtual {v9}, Lc8/USe;->build()Lc8/VSe;

    move-result-object v0

    return-object v0

    .line 55
    .end local v9    # "requestBuilder":Lc8/USe;
    :cond_2
    const-string/jumbo v0, "GET"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-static {v2, v3}, Lc8/IDj;->encodeQueryParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "paramString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lc8/MSe;->parse(Ljava/lang/String;)Lc8/MSe;

    move-result-object v0

    .line 57
    invoke-static {v0, v7}, Lc8/ZSe;->create(Lc8/MSe;Ljava/lang/String;)Lc8/ZSe;

    move-result-object v8

    goto :goto_0
.end method

.method private buildResponse(Lc8/cTe;)Lc8/eJj;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)",
            "Lc8/eJj;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lc8/WJj;, "Lcom/youku/network/converter/OkHttpConverter<TI;TO;>;"
    .local p1, "response":Lc8/cTe;, "TO;"
    invoke-static {}, Lc8/eJj;->newInstance()Lc8/eJj;

    move-result-object v3

    .line 114
    .local v3, "ykResponse":Lc8/eJj;
    invoke-virtual {p1}, Lc8/cTe;->code()I

    move-result v4

    invoke-virtual {v3, v4}, Lc8/eJj;->setResponseCode(I)V

    .line 116
    :try_start_0
    invoke-virtual {p1}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v2

    .line 117
    .local v2, "responseBody":Lc8/dTe;
    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v2}, Lc8/dTe;->bytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/eJj;->setBytedata([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v2    # "responseBody":Lc8/dTe;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v1

    .line 126
    .local v1, "headers":Lc8/GSe;
    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {v1}, Lc8/GSe;->toMultimap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/eJj;->setConnHeadFields(Ljava/util/Map;)V

    .line 129
    :cond_1
    invoke-virtual {p1}, Lc8/cTe;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/eJj;->setDesc(Ljava/lang/String;)V

    .line 130
    return-object v3

    .line 120
    .end local v1    # "headers":Lc8/GSe;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 122
    const/16 v4, -0xbbb

    invoke-virtual {v3, v4}, Lc8/eJj;->setYkErrorCode(I)V

    .line 123
    invoke-virtual {v3, v0}, Lc8/eJj;->setError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private createRequestHeaders(Ljava/util/Map;)Lc8/GSe;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/GSe;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lc8/WJj;, "Lcom/youku/network/converter/OkHttpConverter<TI;TO;>;"
    .local p1, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    :cond_0
    const/4 v4, 0x0

    .line 109
    :goto_0
    return-object v4

    .line 101
    :cond_1
    new-instance v1, Lc8/FSe;

    invoke-direct {v1}, Lc8/FSe;-><init>()V

    .line 102
    .local v1, "headersBuilder":Lc8/FSe;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lc8/aCb;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "User-Agent"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Lc8/WJj;->getEncodedUA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v2, v3}, Lc8/FSe;->add(Ljava/lang/String;Ljava/lang/String;)Lc8/FSe;

    goto :goto_1

    .line 109
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lc8/FSe;->build()Lc8/GSe;

    move-result-object v4

    goto :goto_0
.end method

.method private formatUrl(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "encode"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/WJj;, "Lcom/youku/network/converter/OkHttpConverter<TI;TO;>;"
    .local p2, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v5, 0x26

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v2, p1

    .line 93
    :cond_1
    :goto_0
    return-object v2

    .line 79
    :cond_2
    move-object v2, p1

    .line 80
    .local v2, "urlStr":Ljava/lang/String;
    invoke-static {p2, p3}, Lc8/IDj;->encodeQueryParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "paramString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    const-string/jumbo v3, "GET"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "POST"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p5, :cond_1

    .line 83
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 85
    const/16 v3, 0x3f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    :cond_4
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 86
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_4

    .line 87
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public requestConvert(Lc8/dJj;)Lc8/VSe;
    .locals 1
    .param p1, "ykRequest"    # Lc8/dJj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/dJj;",
            ")TI;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lc8/WJj;, "Lcom/youku/network/converter/OkHttpConverter<TI;TO;>;"
    invoke-direct {p0, p1}, Lc8/WJj;->buildRequest(Lc8/dJj;)Lc8/VSe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic requestConvert(Lc8/dJj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lc8/WJj;, "Lcom/youku/network/converter/OkHttpConverter<TI;TO;>;"
    invoke-virtual {p0, p1}, Lc8/WJj;->requestConvert(Lc8/dJj;)Lc8/VSe;

    move-result-object v0

    return-object v0
.end method

.method public responseConvert(Lc8/cTe;)Lc8/eJj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)",
            "Lc8/eJj;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lc8/WJj;, "Lcom/youku/network/converter/OkHttpConverter<TI;TO;>;"
    .local p1, "response":Lc8/cTe;, "TO;"
    invoke-direct {p0, p1}, Lc8/WJj;->buildResponse(Lc8/cTe;)Lc8/eJj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic responseConvert(Ljava/lang/Object;)Lc8/eJj;
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lc8/WJj;, "Lcom/youku/network/converter/OkHttpConverter<TI;TO;>;"
    check-cast p1, Lc8/cTe;

    invoke-virtual {p0, p1}, Lc8/WJj;->responseConvert(Lc8/cTe;)Lc8/eJj;

    move-result-object v0

    return-object v0
.end method
