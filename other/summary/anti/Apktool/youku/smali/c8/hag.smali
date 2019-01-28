.class public Lc8/hag;
.super Lc8/MXf;
.source "WXStreamModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/gag;,
        Lc8/fag;
    }
.end annotation


# static fields
.field static final CHARSET_PATTERN:Ljava/util/regex/Pattern;

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_TEXT:Ljava/lang/String; = "statusText"


# instance fields
.field final mAdapter:Lc8/DVf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "charset=([a-z0-9-]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/hag;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/hag;-><init>(Lc8/DVf;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lc8/DVf;)V
    .locals 0
    .param p1, "adapter"    # Lc8/DVf;

    .prologue
    .line 57
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    .line 58
    iput-object p1, p0, Lc8/hag;->mAdapter:Lc8/DVf;

    .line 59
    return-void
.end method

.method private extractHeaders(Lcom/alibaba/fastjson/JSONObject;Lc8/ZZf;)V
    .locals 5
    .param p1, "headers"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "builder"    # Lc8/ZZf;

    .prologue
    .line 256
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {}, Lc8/UUf;->getConfig()Ljava/util/Map;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/cag;->assembleUserAgent(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "UA":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 258
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 259
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "user-agent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lc8/ZZf;->putHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/ZZf;

    goto :goto_0

    .line 266
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "user-agent"

    invoke-virtual {p2, v3, v0}, Lc8/ZZf;->putHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/ZZf;

    .line 267
    return-void
.end method

.method static getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 226
    :cond_0
    const/4 v0, 0x0

    .line 231
    :goto_0
    return-object v0

    .line 228
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method static readAsString([BLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "cType"    # Ljava/lang/String;

    .prologue
    .line 238
    const-string/jumbo v0, "utf-8"

    .line 239
    .local v0, "charset":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 240
    sget-object v3, Lc8/hag;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 241
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-object v3

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, ""

    invoke-static {v3, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private sendRequest(Lc8/aag;Lc8/fag;Lc8/EWf;)V
    .locals 5
    .param p1, "options"    # Lc8/aag;
    .param p2, "callback"    # Lc8/fag;
    .param p3, "progressCallback"    # Lc8/EWf;

    .prologue
    .line 271
    new-instance v1, Lc8/QXf;

    invoke-direct {v1}, Lc8/QXf;-><init>()V

    .line 272
    .local v1, "wxRequest":Lc8/QXf;
    invoke-virtual {p1}, Lc8/aag;->getMethod()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/QXf;->method:Ljava/lang/String;

    .line 273
    iget-object v2, p0, Lc8/hag;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {p1}, Lc8/aag;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "request"

    invoke-virtual {v2, v3, v4}, Lc8/nVf;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/QXf;->url:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Lc8/aag;->getBody()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/QXf;->body:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Lc8/aag;->getTimeout()I

    move-result v2

    iput v2, v1, Lc8/QXf;->timeoutMs:I

    .line 277
    invoke-virtual {p1}, Lc8/aag;->getHeaders()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, v1, Lc8/QXf;->paramMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 279
    invoke-virtual {p1}, Lc8/aag;->getHeaders()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lc8/QXf;->paramMap:Ljava/util/Map;

    .line 285
    :cond_0
    :goto_0
    iget-object v2, p0, Lc8/hag;->mAdapter:Lc8/DVf;

    if-nez v2, :cond_2

    iget-object v2, p0, Lc8/hag;->mWXSDKInstance:Lc8/nVf;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc8/hag;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getWXHttpAdapter()Lc8/DVf;

    move-result-object v0

    .line 286
    .local v0, "adapter":Lc8/DVf;
    :goto_1
    if-eqz v0, :cond_3

    .line 287
    new-instance v2, Lc8/gag;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p3, v3}, Lc8/gag;-><init>(Lc8/fag;Lc8/EWf;Lc8/dag;)V

    invoke-interface {v0, v1, v2}, Lc8/DVf;->sendRequest(Lc8/QXf;Lc8/CVf;)V

    .line 291
    :goto_2
    return-void

    .line 281
    .end local v0    # "adapter":Lc8/DVf;
    :cond_1
    iget-object v2, v1, Lc8/QXf;->paramMap:Ljava/util/Map;

    invoke-virtual {p1}, Lc8/aag;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 285
    :cond_2
    iget-object v0, p0, Lc8/hag;->mAdapter:Lc8/DVf;

    goto :goto_1

    .line 289
    .restart local v0    # "adapter":Lc8/DVf;
    :cond_3
    const-string/jumbo v2, "WXStreamModule"

    const-string/jumbo v3, "No HttpAdapter found,request failed."

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public fetch(Ljava/lang/String;Lc8/EWf;Lc8/EWf;)V
    .locals 15
    .param p1, "optionsStr"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/EWf;
    .param p3, "progressCallback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 130
    const/4 v8, 0x0

    .line 132
    .local v8, "optionsObj":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 137
    :goto_0
    if-eqz v8, :cond_0

    const-string/jumbo v13, "url"

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2

    :cond_0
    const/4 v5, 0x1

    .line 138
    .local v5, "invaildOption":Z
    :goto_1
    if-eqz v5, :cond_3

    .line 139
    if-eqz p2, :cond_1

    .line 140
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v9, "resp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v13, "ok"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v13, "statusText"

    const-string/jumbo v14, "ERR_INVALID_REQUEST"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 202
    .end local v9    # "resp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_2
    return-void

    .line 133
    .end local v5    # "invaildOption":Z
    :catch_0
    move-exception v3

    .line 134
    .local v3, "e":Lcom/alibaba/fastjson/JSONException;
    const-string/jumbo v13, ""

    invoke-static {v13, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 137
    .end local v3    # "e":Lcom/alibaba/fastjson/JSONException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 147
    .restart local v5    # "invaildOption":Z
    :cond_3
    const-string/jumbo v13, "method"

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "method":Ljava/lang/String;
    const-string/jumbo v13, "url"

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 149
    .local v12, "url":Ljava/lang/String;
    const-string/jumbo v13, "headers"

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 150
    .local v4, "headers":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v13, "body"

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "body":Ljava/lang/String;
    const-string/jumbo v13, "type"

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 152
    .local v11, "type":Ljava/lang/String;
    const-string/jumbo v13, "timeout"

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v10

    .line 154
    .local v10, "timeout":I
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 155
    :cond_4
    new-instance v13, Lc8/ZZf;

    invoke-direct {v13}, Lc8/ZZf;-><init>()V

    const-string/jumbo v14, "GET"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string/jumbo v14, "POST"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string/jumbo v14, "PUT"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string/jumbo v14, "DELETE"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string/jumbo v14, "HEAD"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string/jumbo v14, "PATCH"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string/jumbo v6, "GET"

    .end local v6    # "method":Ljava/lang/String;
    :cond_5
    invoke-virtual {v13, v6}, Lc8/ZZf;->setMethod(Ljava/lang/String;)Lc8/ZZf;

    move-result-object v13

    invoke-virtual {v13, v12}, Lc8/ZZf;->setUrl(Ljava/lang/String;)Lc8/ZZf;

    move-result-object v13

    invoke-virtual {v13, v1}, Lc8/ZZf;->setBody(Ljava/lang/String;)Lc8/ZZf;

    move-result-object v13

    invoke-virtual {v13, v11}, Lc8/ZZf;->setType(Ljava/lang/String;)Lc8/ZZf;

    move-result-object v13

    invoke-virtual {v13, v10}, Lc8/ZZf;->setTimeout(I)Lc8/ZZf;

    move-result-object v2

    .line 167
    .local v2, "builder":Lc8/ZZf;
    invoke-direct {p0, v4, v2}, Lc8/hag;->extractHeaders(Lcom/alibaba/fastjson/JSONObject;Lc8/ZZf;)V

    .line 168
    invoke-virtual {v2}, Lc8/ZZf;->createOptions()Lc8/aag;

    move-result-object v7

    .line 169
    .local v7, "options":Lc8/aag;
    new-instance v13, Lc8/eag;

    move-object/from16 v0, p2

    invoke-direct {v13, p0, v0, v7}, Lc8/eag;-><init>(Lc8/hag;Lc8/EWf;Lc8/aag;)V

    move-object/from16 v0, p3

    invoke-direct {p0, v7, v13, v0}, Lc8/hag;->sendRequest(Lc8/aag;Lc8/fag;Lc8/EWf;)V

    goto/16 :goto_2
.end method

.method parseData(Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;)Ljava/lang/Object;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/taobao/weex/http/Options$Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/fastjson/JSONException;
        }
    .end annotation

    .prologue
    .line 205
    sget-object v2, Lcom/taobao/weex/http/Options$Type;->json:Lcom/taobao/weex/http/Options$Type;

    if-ne p2, v2, :cond_0

    .line 206
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 220
    :goto_0
    return-object v2

    .line 207
    :cond_0
    sget-object v2, Lcom/taobao/weex/http/Options$Type;->jsonp:Lcom/taobao/weex/http/Options$Type;

    if-ne p2, v2, :cond_5

    .line 208
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_0

    .line 211
    :cond_2
    const-string/jumbo v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 212
    .local v0, "b":I
    const-string/jumbo v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 213
    .local v1, "e":I
    if-eqz v0, :cond_3

    if-ge v0, v1, :cond_3

    if-gtz v1, :cond_4

    .line 214
    :cond_3
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_0

    .line 217
    :cond_4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .end local v0    # "b":I
    .end local v1    # "e":I
    :cond_5
    move-object v2, p1

    .line 220
    goto :goto_0
.end method

.method public sendHttp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    invoke-static {p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 73
    .local v4, "paramsObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "method"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "method":Ljava/lang/String;
    const-string/jumbo v7, "url"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "url":Ljava/lang/String;
    const-string/jumbo v7, "header"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 76
    .local v2, "headers":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "body"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "body":Ljava/lang/String;
    const-string/jumbo v7, "timeout"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    .line 79
    .local v5, "timeout":I
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 80
    :cond_0
    new-instance v7, Lc8/ZZf;

    invoke-direct {v7}, Lc8/ZZf;-><init>()V

    const-string/jumbo v8, "GET"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "POST"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "PUT"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "DELETE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "HEAD"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "PATCH"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v3, "GET"

    .end local v3    # "method":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7, v3}, Lc8/ZZf;->setMethod(Ljava/lang/String;)Lc8/ZZf;

    move-result-object v7

    invoke-virtual {v7, v6}, Lc8/ZZf;->setUrl(Ljava/lang/String;)Lc8/ZZf;

    move-result-object v7

    invoke-virtual {v7, v0}, Lc8/ZZf;->setBody(Ljava/lang/String;)Lc8/ZZf;

    move-result-object v7

    invoke-virtual {v7, v5}, Lc8/ZZf;->setTimeout(I)Lc8/ZZf;

    move-result-object v1

    .line 91
    .local v1, "builder":Lc8/ZZf;
    invoke-direct {p0, v2, v1}, Lc8/hag;->extractHeaders(Lcom/alibaba/fastjson/JSONObject;Lc8/ZZf;)V

    .line 92
    invoke-virtual {v1}, Lc8/ZZf;->createOptions()Lc8/aag;

    move-result-object v7

    new-instance v8, Lc8/dag;

    invoke-direct {v8, p0, p2}, Lc8/dag;-><init>(Lc8/hag;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lc8/hag;->sendRequest(Lc8/aag;Lc8/fag;Lc8/EWf;)V

    .line 103
    return-void
.end method
