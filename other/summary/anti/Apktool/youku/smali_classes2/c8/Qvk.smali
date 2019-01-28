.class public Lc8/Qvk;
.super Ljava/lang/Object;
.source "TelecomUrlUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dealWithJsonEmptyValue(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p0, "jsonObj"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 120
    if-nez p0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    const-string/jumbo v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 127
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getJsonFromResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0}, Lc8/Qvk;->isJsonp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    .end local p0    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "result":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getParamKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "aesKey"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string/jumbo v1, ""

    .line 27
    .local v1, "paramKey":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lc8/kwk;->getPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v2

    .line 28
    .local v2, "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-static {v2, p0}, Lc8/kwk;->encrypt(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 32
    .end local v2    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    :goto_0
    return-object v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getParamStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "paramStrParam"    # Ljava/lang/String;
    .param p1, "aesKey"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string/jumbo v1, ""

    .line 38
    .local v1, "paramStr":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lc8/Nvk;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, ""

    .end local v1    # "paramStr":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 39
    .restart local v1    # "paramStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isJsonp(Ljava/lang/String;)Z
    .locals 5
    .param p0, "jsonp"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v3

    .line 74
    :cond_1
    const-string/jumbo v2, "([\\s\\S]*)\\(\\{([\\s\\S]*)\\}\\)"

    .line 75
    .local v2, "regEx":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 76
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 77
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static json2UrlParam(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "isUrlEncoding"    # Z
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 93
    const-string/jumbo v6, ""

    .line 115
    :goto_0
    return-object v6

    .line 96
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    .local v4, "urlParamStrBuffer":Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 98
    .local v2, "jsonObj":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v2}, Lc8/Qvk;->dealWithJsonEmptyValue(Lcom/alibaba/fastjson/JSONObject;)V

    .line 99
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 100
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "value":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 102
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v5, ""

    .line 107
    :cond_1
    :goto_2
    const-string/jumbo v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    const-string/jumbo v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "jsonObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "urlParamStrBuffer":Ljava/lang/StringBuffer;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    const-string/jumbo v6, ""

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "jsonObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "urlParamStrBuffer":Ljava/lang/StringBuffer;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "UTF-8"

    :goto_3
    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v6, p2

    goto :goto_3

    .line 112
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0
.end method

.method public static sign(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7
    .param p0, "reqJsonObj"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string/jumbo v3, "sign"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v3, "appId"

    const-string/jumbo v4, "8138110063"

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v3, "clientType"

    const-string/jumbo v4, "1"

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v3, "format"

    const-string/jumbo v4, "json"

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v3, "version"

    const-string/jumbo v4, "v1.5"

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    .local v1, "signParamKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 60
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .local v2, "signParamStrBuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 62
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    :cond_1
    const-string/jumbo v3, "clientId"

    const-string/jumbo v4, "appId"

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string/jumbo v3, "appId"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v3, "sign"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "4ASoTFGPHBCep9OY2uogpNbIuWSkhZI9"

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6}, Lc8/Zvk;->encryptHmacSha1_UpperCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
