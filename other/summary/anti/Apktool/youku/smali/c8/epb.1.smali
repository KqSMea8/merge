.class public Lc8/epb;
.super Ljava/lang/Object;
.source "WXHttpAdapter.java"

# interfaces
.implements Lc8/DVf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/dpb;,
        Lc8/bpb;
    }
.end annotation


# static fields
.field public static final GROUP_CACHE_SWITCH:Ljava/lang/String; = "weex_degrade_cache_switch"

.field public static final KEY_CACHE_SWITCH:Ljava/lang/String; = "cache_switch"

.field private static final TAG:Ljava/lang/String; = "TBWXHttpAdapter"


# instance fields
.field private mDebugInterceptor:Lc8/bpb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    return-void
.end method

.method static synthetic access$000(Lc8/epb;Lc8/QXf;Lc8/SXf;)Lc8/uM;
    .locals 1
    .param p0, "x0"    # Lc8/epb;
    .param p1, "x1"    # Lc8/QXf;
    .param p2, "x2"    # Lc8/SXf;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lc8/epb;->assembleRequest(Lc8/QXf;Lc8/SXf;)Lc8/uM;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lc8/epb;)Lc8/bpb;
    .locals 1
    .param p0, "x0"    # Lc8/epb;

    .prologue
    .line 50
    iget-object v0, p0, Lc8/epb;->mDebugInterceptor:Lc8/bpb;

    return-object v0
.end method

.method private assembleRequest(Lc8/QXf;Lc8/SXf;)Lc8/uM;
    .locals 6
    .param p1, "request"    # Lc8/QXf;
    .param p2, "response"    # Lc8/SXf;

    .prologue
    .line 280
    const-string/jumbo v4, "TBWXHttpAdapter"

    const-string/jumbo v5, "into--[assembleRequest]"

    invoke-static {v4, v5}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v0, Lc8/IN;

    iget-object v4, p1, Lc8/QXf;->url:Ljava/lang/String;

    invoke-direct {v0, v4}, Lc8/IN;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "anetReq":Lc8/uM;
    const/16 v4, 0x1006

    invoke-interface {v0, v4}, Lc8/uM;->setBizId(I)V

    .line 284
    iget-object v4, p1, Lc8/QXf;->paramMap:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 285
    iget-object v4, p1, Lc8/QXf;->paramMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 286
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 287
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p1, Lc8/QXf;->paramMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v4, "f-refer"

    const-string/jumbo v5, "weex"

    invoke-interface {v0, v4, v5}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string/jumbo v4, "Accept-Language"

    invoke-direct {p0}, Lc8/epb;->getLanguageString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v3, p1, Lc8/QXf;->method:Ljava/lang/String;

    .line 295
    .local v3, "method":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v3, "GET"

    .line 296
    :cond_1
    invoke-interface {v0, v3}, Lc8/uM;->setMethod(Ljava/lang/String;)V

    .line 297
    const-string/jumbo v4, "UTF-8"

    invoke-interface {v0, v4}, Lc8/uM;->setCharset(Ljava/lang/String;)V

    .line 298
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Lc8/uM;->setRetryTime(I)V

    .line 299
    iget v4, p1, Lc8/QXf;->timeoutMs:I

    invoke-interface {v0, v4}, Lc8/uM;->setConnectTimeout(I)V

    .line 300
    iget-object v4, p1, Lc8/QXf;->body:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 301
    new-instance v4, Lanet/channel/request/ByteArrayEntry;

    iget-object v5, p1, Lc8/QXf;->body:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lanet/channel/request/ByteArrayEntry;-><init>([B)V

    invoke-interface {v0, v4}, Lc8/uM;->setBodyEntry(Lanet/channel/request/BodyEntry;)V

    .line 304
    :cond_2
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lc8/epb;->mDebugInterceptor:Lc8/bpb;

    if-eqz v4, :cond_3

    .line 305
    iget-object v4, p0, Lc8/epb;->mDebugInterceptor:Lc8/bpb;

    iget-object v5, p1, Lc8/QXf;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lc8/bpb;->record(Ljava/lang/String;)V

    .line 308
    :cond_3
    return-object v0
.end method

.method private getAppResInfoFromZcache(Ljava/lang/String;Landroid/net/Uri;)Lc8/YG;
    .locals 8
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "requestUri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 205
    :try_start_0
    const-string/jumbo v6, "wh_weex"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 206
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "host":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".local.weex"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "newHost":Ljava/lang/String;
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "newUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string/jumbo v7, "http"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "newUrlHttpScheme":Ljava/lang/String;
    invoke-static {}, Lc8/cH;->getInstance()Lc8/cH;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Lc8/cH;->getAppResInfo(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;)Lc8/YG;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 215
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "newHost":Ljava/lang/String;
    .end local v3    # "newUrl":Ljava/lang/String;
    .end local v4    # "newUrlHttpScheme":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getLanguageString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 312
    const-string/jumbo v0, ",en-US;q=0.5,en;q=0.3"

    .line 315
    .local v0, "defaultLanguagePostfix":Ljava/lang/String;
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 316
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 320
    .local v2, "locale":Ljava/util/Locale;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "languageCountry":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",zh;q=0.8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    .end local v1    # "languageCountry":Ljava/lang/String;
    .end local v2    # "locale":Ljava/util/Locale;
    :goto_1
    return-object v3

    .line 318
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .restart local v2    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 325
    .restart local v1    # "languageCountry":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";q=0.8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 328
    .end local v1    # "languageCountry":Ljava/lang/String;
    .end local v2    # "locale":Ljava/util/Locale;
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "zh-CN,zh;q=0.8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private getResponseByPackageApp(Lc8/QXf;Lc8/SXf;)Lc8/SXf;
    .locals 10
    .param p1, "request"    # Lc8/QXf;
    .param p2, "response"    # Lc8/SXf;

    .prologue
    .line 227
    const-string/jumbo v7, "-1"

    iput-object v7, p2, Lc8/SXf;->statusCode:Ljava/lang/String;

    .line 228
    const-string/jumbo v4, ""

    .line 229
    .local v4, "template":Ljava/lang/String;
    iget-object v7, p1, Lc8/QXf;->url:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, "url":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 232
    .local v5, "uri":Landroid/net/Uri;
    const-string/jumbo v7, "wh_weex"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 233
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "host":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".local.weex"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "newHost":Ljava/lang/String;
    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "newUrl":Ljava/lang/String;
    invoke-static {v3}, Lc8/fH;->getStreamByUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 244
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "newHost":Ljava/lang/String;
    .end local v3    # "newUrl":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 245
    const-string/jumbo v7, "200"

    iput-object v7, p2, Lc8/SXf;->statusCode:Ljava/lang/String;

    .line 246
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p2, Lc8/SXf;->originalData:[B

    .line 247
    iget-object v7, p2, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v8, "requestType"

    const-string/jumbo v9, "packageApp"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v7, p2, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v8, "connectionType"

    const-string/jumbo v9, "packageApp"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_0
    return-object p2

    .line 238
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_1
    invoke-static {v6}, Lc8/fH;->getStreamByUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    .line 240
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getResponseByPackageApp error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getWeexCacheHeaderFromAppResInfo(Lc8/YG;)Ljava/lang/String;
    .locals 2
    .param p1, "appResInfo"    # Lc8/YG;

    .prologue
    .line 197
    if-eqz p1, :cond_0

    iget-object v0, p1, Lc8/YG;->mHeaders:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p1, Lc8/YG;->mHeaders:Lorg/json/JSONObject;

    const-string/jumbo v1, "weex-cache"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hitZCacheWithWeexCache(Lc8/SXf;Lc8/CVf;Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Lc8/SXf;
    .param p2, "onHttpListener"    # Lc8/CVf;
    .param p3, "requestUrl"    # Ljava/lang/String;

    .prologue
    .line 168
    move-object v1, p1

    .line 169
    .local v1, "responseF":Lc8/SXf;
    move-object v0, p2

    .line 170
    .local v0, "onHttpListenerF":Lc8/CVf;
    invoke-static {}, Lc8/Qwb;->getInstance()Lc8/Qwb;

    move-result-object v2

    iget-object v3, p1, Lc8/SXf;->originalData:[B

    new-instance v4, Lc8/Yob;

    invoke-direct {v4, p0, v1, v0}, Lc8/Yob;-><init>(Lc8/epb;Lc8/SXf;Lc8/CVf;)V

    invoke-virtual {v2, p3, v3, v4}, Lc8/Qwb;->processWeexCache(Ljava/lang/String;[BLc8/Pwb;)V

    .line 186
    return-void
.end method

.method private processHttpWithWeexCache(Ljava/lang/String;Landroid/net/Uri;Lc8/QXf;Lc8/SXf;Lc8/CVf;Lc8/nxb;)V
    .locals 9
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "requestUri"    # Landroid/net/Uri;
    .param p3, "wxRequest"    # Lc8/QXf;
    .param p4, "response"    # Lc8/SXf;
    .param p5, "onHttpListener"    # Lc8/CVf;
    .param p6, "networkTracker"    # Lc8/nxb;

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "path":Ljava/lang/String;
    const-string/jumbo v6, "://"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 111
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    :cond_0
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v6

    invoke-virtual {v6}, Lc8/Fob;->getConfigAdapter()Lc8/Hob;

    move-result-object v0

    .line 114
    .local v0, "configAdapter":Lc8/Hob;
    if-eqz v0, :cond_1

    .line 115
    const-string/jumbo v6, "weexcache"

    const-string/jumbo v7, "-1"

    invoke-interface {v0, v6, v2, v7}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "resMd5Remote":Ljava/lang/String;
    const-string/jumbo v6, "-1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 118
    invoke-static {}, Lc8/Awb;->getInstance()Lc8/Awb;

    move-result-object v6

    invoke-virtual {v6, v3}, Lc8/Awb;->getPageFromAvfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "template":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 120
    const-string/jumbo v6, "200"

    iput-object v6, p4, Lc8/SXf;->statusCode:Ljava/lang/String;

    .line 121
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iput-object v6, p4, Lc8/SXf;->originalData:[B

    .line 122
    iget-object v6, p4, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v7, "requestType"

    const-string/jumbo v8, "avfs"

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v6, p4, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v7, "connectionType"

    const-string/jumbo v8, "avfs"

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    move-object v4, p4

    .line 125
    .local v4, "responseF":Lc8/SXf;
    move-object v1, p5

    .line 126
    .local v1, "onHttpListenerF":Lc8/CVf;
    invoke-static {}, Lc8/Qwb;->getInstance()Lc8/Qwb;

    move-result-object v6

    iget-object v7, p4, Lc8/SXf;->originalData:[B

    new-instance v8, Lc8/Xob;

    invoke-direct {v8, p0, v4, v1}, Lc8/Xob;-><init>(Lc8/epb;Lc8/SXf;Lc8/CVf;)V

    invoke-virtual {v6, p1, v7, v8}, Lc8/Qwb;->processWeexCache(Ljava/lang/String;[BLc8/Pwb;)V

    .line 148
    .end local v1    # "onHttpListenerF":Lc8/CVf;
    .end local v3    # "resMd5Remote":Ljava/lang/String;
    .end local v4    # "responseF":Lc8/SXf;
    .end local v5    # "template":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v6, "200"

    iget-object v7, p4, Lc8/SXf;->statusCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 149
    invoke-direct {p0, p6, p3, p4, p5}, Lc8/epb;->sendRequestByHttp(Lc8/nxb;Lc8/QXf;Lc8/SXf;Lc8/CVf;)V

    .line 151
    :cond_2
    return-void

    .line 144
    .restart local v3    # "resMd5Remote":Ljava/lang/String;
    .restart local v5    # "template":Ljava/lang/String;
    :cond_3
    iget-object v6, p4, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v7, "throughWeexCache"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private processZCacheWithWeexCache(Ljava/lang/String;Landroid/net/Uri;Lc8/SXf;Lc8/CVf;)V
    .locals 4
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "requestUri"    # Landroid/net/Uri;
    .param p3, "response"    # Lc8/SXf;
    .param p4, "onHttpListener"    # Lc8/CVf;

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lc8/epb;->getAppResInfoFromZcache(Ljava/lang/String;Landroid/net/Uri;)Lc8/YG;

    move-result-object v0

    .line 156
    .local v0, "appResInfo":Lc8/YG;
    invoke-direct {p0, v0}, Lc8/epb;->getWeexCacheHeaderFromAppResInfo(Lc8/YG;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "weexCacheHeader":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-direct {p0, p3, p4, p1}, Lc8/epb;->hitZCacheWithWeexCache(Lc8/SXf;Lc8/CVf;Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-interface {p4, p3}, Lc8/CVf;->onHttpFinish(Lc8/SXf;)V

    .line 161
    const-string/jumbo v2, "TBWXHttpAdapter"

    const-string/jumbo v3, "packageAppSuc"

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lc8/cvb;->trackTotalCacheHitRatio(Ljava/lang/String;Z[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendRequestByHttp(Lc8/nxb;Lc8/QXf;Lc8/SXf;Lc8/CVf;)V
    .locals 7
    .param p1, "networkTracker"    # Lc8/nxb;
    .param p2, "request"    # Lc8/QXf;
    .param p3, "response"    # Lc8/SXf;
    .param p4, "onHttpListener"    # Lc8/CVf;

    .prologue
    .line 259
    new-instance v0, Lc8/Zob;

    const-string/jumbo v2, "TBWXHttpAdapter"

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lc8/Zob;-><init>(Lc8/epb;Ljava/lang/String;Lc8/QXf;Lc8/SXf;Lc8/nxb;Lc8/CVf;)V

    invoke-static {v0}, Lc8/Vcf;->postTask(Lc8/Tcf;)V

    .line 273
    return-void
.end method


# virtual methods
.method public sendRequest(Lc8/QXf;Lc8/CVf;)V
    .locals 16
    .param p1, "wxRequest"    # Lc8/QXf;
    .param p2, "onHttpListener"    # Lc8/CVf;

    .prologue
    .line 62
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v8, 0x0

    .line 67
    .local v8, "networkTracker":Lc8/nxb;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    invoke-static {}, Lc8/nxb;->newInstance()Lc8/nxb;

    move-result-object v8

    .line 70
    :cond_2
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/epb;->mDebugInterceptor:Lc8/bpb;

    if-nez v2, :cond_3

    .line 73
    :try_start_0
    new-instance v2, Lc8/bpb;

    invoke-direct {v2}, Lc8/bpb;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/epb;->mDebugInterceptor:Lc8/bpb;

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/epb;->mDebugInterceptor:Lc8/bpb;

    invoke-static {v2}, Lc8/QN;->addInterceptor(Lc8/PN;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_3
    :goto_1
    invoke-interface/range {p2 .. p2}, Lc8/CVf;->onHttpStart()V

    .line 81
    new-instance v6, Lc8/SXf;

    invoke-direct {v6}, Lc8/SXf;-><init>()V

    .line 82
    .local v6, "response":Lc8/SXf;
    iget-object v2, v6, Lc8/SXf;->extendParams:Ljava/util/Map;

    if-nez v2, :cond_4

    .line 83
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v6, Lc8/SXf;->extendParams:Ljava/util/Map;

    .line 86
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/QXf;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 87
    const-string/jumbo v2, "wx_network_error"

    iput-object v2, v6, Lc8/SXf;->statusCode:Ljava/lang/String;

    .line 88
    const-string/jumbo v2, "request url is empty!"

    iput-object v2, v6, Lc8/SXf;->errorMsg:Ljava/lang/String;

    .line 89
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lc8/CVf;->onHttpFinish(Lc8/SXf;)V

    goto :goto_0

    .line 75
    .end local v6    # "response":Lc8/SXf;
    :catch_0
    move-exception v9

    .line 76
    .local v9, "e":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 93
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v6    # "response":Lc8/SXf;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 94
    .local v12, "startTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lc8/epb;->getResponseByPackageApp(Lc8/QXf;Lc8/SXf;)Lc8/SXf;

    move-result-object v6

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v12

    .line 96
    .local v10, "packageSpendTime":J
    iget-object v2, v6, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v5, "packageSpendTime"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/QXf;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "requestUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 100
    .local v4, "requestUri":Landroid/net/Uri;
    const-string/jumbo v2, "200"

    iget-object v5, v6, Lc8/SXf;->statusCode:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 101
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v4, v6, v1}, Lc8/epb;->processZCacheWithWeexCache(Ljava/lang/String;Landroid/net/Uri;Lc8/SXf;Lc8/CVf;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    .line 103
    invoke-direct/range {v2 .. v8}, Lc8/epb;->processHttpWithWeexCache(Ljava/lang/String;Landroid/net/Uri;Lc8/QXf;Lc8/SXf;Lc8/CVf;Lc8/nxb;)V

    goto/16 :goto_0
.end method
