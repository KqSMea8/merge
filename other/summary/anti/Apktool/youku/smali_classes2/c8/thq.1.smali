.class public Lc8/thq;
.super Ljava/lang/Object;
.source "RestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/nhq;,
        Lc8/shq;,
        Lretrofit/RestAdapter$LogLevel;,
        Lc8/phq;
    }
.end annotation


# static fields
.field static final IDLE_THREAD_NAME:Ljava/lang/String; = "Retrofit-Idle"

.field static final THREAD_PREFIX:Ljava/lang/String; = "Retrofit-"


# instance fields
.field final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final clientProvider:Lc8/Ohq;

.field final converter:Lc8/aiq;

.field final errorHandler:Lc8/Hgq;

.field final httpExecutor:Ljava/util/concurrent/Executor;

.field final log:Lc8/phq;

.field volatile logLevel:Lretrofit/RestAdapter$LogLevel;

.field private final profiler:Lc8/Zgq;

.field final requestInterceptor:Lc8/fhq;

.field private rxSupport:Lc8/zhq;

.field final server:Lc8/Dgq;

.field private final serviceMethodInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lc8/vhq;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lc8/Dgq;Lc8/Ohq;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lc8/fhq;Lc8/aiq;Lc8/Zgq;Lc8/Hgq;Lc8/phq;Lretrofit/RestAdapter$LogLevel;)V
    .locals 1
    .param p1, "server"    # Lc8/Dgq;
    .param p2, "clientProvider"    # Lc8/Ohq;
    .param p3, "httpExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "requestInterceptor"    # Lc8/fhq;
    .param p6, "converter"    # Lc8/aiq;
    .param p7, "profiler"    # Lc8/Zgq;
    .param p8, "errorHandler"    # Lc8/Hgq;
    .param p9, "log"    # Lc8/phq;
    .param p10, "logLevel"    # Lretrofit/RestAdapter$LogLevel;

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lc8/thq;->serviceMethodInfoCache:Ljava/util/Map;

    .line 165
    iput-object p1, p0, Lc8/thq;->server:Lc8/Dgq;

    .line 166
    iput-object p2, p0, Lc8/thq;->clientProvider:Lc8/Ohq;

    .line 167
    iput-object p3, p0, Lc8/thq;->httpExecutor:Ljava/util/concurrent/Executor;

    .line 168
    iput-object p4, p0, Lc8/thq;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 169
    iput-object p5, p0, Lc8/thq;->requestInterceptor:Lc8/fhq;

    .line 170
    iput-object p6, p0, Lc8/thq;->converter:Lc8/aiq;

    .line 171
    iput-object p7, p0, Lc8/thq;->profiler:Lc8/Zgq;

    .line 172
    iput-object p8, p0, Lc8/thq;->errorHandler:Lc8/Hgq;

    .line 173
    iput-object p9, p0, Lc8/thq;->log:Lc8/phq;

    .line 174
    iput-object p10, p0, Lc8/thq;->logLevel:Lretrofit/RestAdapter$LogLevel;

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Lc8/Dgq;Lc8/Ohq;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lc8/fhq;Lc8/aiq;Lc8/Zgq;Lc8/Hgq;Lc8/phq;Lretrofit/RestAdapter$LogLevel;Lc8/lhq;)V
    .locals 0
    .param p1, "x0"    # Lc8/Dgq;
    .param p2, "x1"    # Lc8/Ohq;
    .param p3, "x2"    # Ljava/util/concurrent/Executor;
    .param p4, "x3"    # Ljava/util/concurrent/Executor;
    .param p5, "x4"    # Lc8/fhq;
    .param p6, "x5"    # Lc8/aiq;
    .param p7, "x6"    # Lc8/Zgq;
    .param p8, "x7"    # Lc8/Hgq;
    .param p9, "x8"    # Lc8/phq;
    .param p10, "x9"    # Lretrofit/RestAdapter$LogLevel;
    .param p11, "x10"    # Lc8/lhq;

    .prologue
    .line 107
    invoke-direct/range {p0 .. p10}, Lc8/thq;-><init>(Lc8/Dgq;Lc8/Ohq;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lc8/fhq;Lc8/aiq;Lc8/Zgq;Lc8/Hgq;Lc8/phq;Lretrofit/RestAdapter$LogLevel;)V

    return-void
.end method

.method static synthetic access$000(Lc8/thq;)Lc8/zhq;
    .locals 1
    .param p0, "x0"    # Lc8/thq;

    .prologue
    .line 107
    iget-object v0, p0, Lc8/thq;->rxSupport:Lc8/zhq;

    return-object v0
.end method

.method static synthetic access$002(Lc8/thq;Lc8/zhq;)Lc8/zhq;
    .locals 0
    .param p0, "x0"    # Lc8/thq;
    .param p1, "x1"    # Lc8/zhq;

    .prologue
    .line 107
    iput-object p1, p0, Lc8/thq;->rxSupport:Lc8/zhq;

    return-object p1
.end method

.method static synthetic access$200(Lc8/thq;)Lc8/Zgq;
    .locals 1
    .param p0, "x0"    # Lc8/thq;

    .prologue
    .line 107
    iget-object v0, p0, Lc8/thq;->profiler:Lc8/Zgq;

    return-object v0
.end method

.method static synthetic access$300(Lc8/thq;)Lc8/Ohq;
    .locals 1
    .param p0, "x0"    # Lc8/thq;

    .prologue
    .line 107
    iget-object v0, p0, Lc8/thq;->clientProvider:Lc8/Ohq;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Lc8/vhq;Lc8/Vhq;)Lc8/Ygq;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lc8/vhq;
    .param p2, "x2"    # Lc8/Vhq;

    .prologue
    .line 107
    invoke-static {p0, p1, p2}, Lc8/thq;->getRequestInfo(Ljava/lang/String;Lc8/vhq;Lc8/Vhq;)Lc8/Ygq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lc8/thq;Ljava/lang/String;Lc8/Whq;J)Lc8/Whq;
    .locals 1
    .param p0, "x0"    # Lc8/thq;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lc8/Whq;
    .param p3, "x3"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/thq;->logAndReplaceResponse(Ljava/lang/String;Lc8/Whq;J)Lc8/Whq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lc8/thq;Lc8/Giq;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lc8/thq;
    .param p1, "x1"    # Lc8/Giq;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lc8/thq;->logResponseBody(Lc8/Giq;Ljava/lang/Object;)V

    return-void
.end method

.method static getMethodInfo(Ljava/util/Map;Ljava/lang/reflect/Method;)Lc8/vhq;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lc8/vhq;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lc8/vhq;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    monitor-enter p0

    .line 211
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vhq;

    .line 212
    .local v0, "methodInfo":Lc8/vhq;
    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lc8/vhq;

    .end local v0    # "methodInfo":Lc8/vhq;
    invoke-direct {v0, p1}, Lc8/vhq;-><init>(Ljava/lang/reflect/Method;)V

    .line 214
    .restart local v0    # "methodInfo":Lc8/vhq;
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_0
    monitor-exit p0

    return-object v0

    .line 217
    .end local v0    # "methodInfo":Lc8/vhq;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getRequestInfo(Ljava/lang/String;Lc8/vhq;Lc8/Vhq;)Lc8/Ygq;
    .locals 8
    .param p0, "serverUrl"    # Ljava/lang/String;
    .param p1, "methodDetails"    # Lc8/vhq;
    .param p2, "request"    # Lc8/Vhq;

    .prologue
    .line 519
    const-wide/16 v4, 0x0

    .line 520
    .local v4, "contentLength":J
    const/4 v6, 0x0

    .line 522
    .local v6, "contentType":Ljava/lang/String;
    invoke-virtual {p2}, Lc8/Vhq;->getBody()Lc8/Hiq;

    move-result-object v7

    .line 523
    .local v7, "body":Lc8/Hiq;
    if-eqz v7, :cond_0

    .line 524
    invoke-interface {v7}, Lc8/Hiq;->length()J

    move-result-wide v4

    .line 525
    invoke-interface {v7}, Lc8/Hiq;->mimeType()Ljava/lang/String;

    move-result-object v6

    .line 528
    :cond_0
    new-instance v0, Lc8/Ygq;

    iget-object v1, p1, Lc8/vhq;->requestMethod:Ljava/lang/String;

    iget-object v3, p1, Lc8/vhq;->requestUrl:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lc8/Ygq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method private logAndReplaceResponse(Ljava/lang/String;Lc8/Whq;J)Lc8/Whq;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "response"    # Lc8/Whq;
    .param p3, "elapsedTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    iget-object v7, p0, Lc8/thq;->log:Lc8/phq;

    const-string/jumbo v8, "<--- HTTP %s %s (%sms)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p2}, Lc8/Whq;->getStatus()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lc8/phq;->log(Ljava/lang/String;)V

    .line 466
    iget-object v7, p0, Lc8/thq;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v7}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v7

    sget-object v8, Lretrofit/RestAdapter$LogLevel;->HEADERS:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v8}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v8

    if-lt v7, v8, :cond_4

    .line 467
    invoke-virtual {p2}, Lc8/Whq;->getHeaders()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/Rhq;

    .line 468
    .local v6, "header":Lc8/Rhq;
    iget-object v8, p0, Lc8/thq;->log:Lc8/phq;

    invoke-virtual {v6}, Lc8/Rhq;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lc8/phq;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    .end local v6    # "header":Lc8/Rhq;
    :cond_0
    const-wide/16 v4, 0x0

    .line 472
    .local v4, "bodySize":J
    invoke-virtual {p2}, Lc8/Whq;->getBody()Lc8/Giq;

    move-result-object v0

    .line 473
    .local v0, "body":Lc8/Giq;
    if-eqz v0, :cond_3

    .line 474
    invoke-interface {v0}, Lc8/Giq;->length()J

    move-result-wide v4

    .line 476
    iget-object v7, p0, Lc8/thq;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v7}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v7

    sget-object v8, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v8}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 477
    invoke-virtual {p2}, Lc8/Whq;->getHeaders()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 478
    iget-object v7, p0, Lc8/thq;->log:Lc8/phq;

    const-string/jumbo v8, ""

    invoke-interface {v7, v8}, Lc8/phq;->log(Ljava/lang/String;)V

    .line 481
    :cond_1
    instance-of v7, v0, Lc8/Eiq;

    if-nez v7, :cond_2

    .line 483
    invoke-static {p2}, Lc8/Fhq;->readBodyToBytesIfNecessary(Lc8/Whq;)Lc8/Whq;

    move-result-object p2

    .line 484
    invoke-virtual {p2}, Lc8/Whq;->getBody()Lc8/Giq;

    move-result-object v0

    :cond_2
    move-object v7, v0

    .line 487
    check-cast v7, Lc8/Eiq;

    invoke-virtual {v7}, Lc8/Eiq;->getBytes()[B

    move-result-object v1

    .line 488
    .local v1, "bodyBytes":[B
    array-length v7, v1

    int-to-long v4, v7

    .line 489
    invoke-interface {v0}, Lc8/Giq;->mimeType()Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, "bodyMime":Ljava/lang/String;
    const-string/jumbo v7, "UTF-8"

    invoke-static {v3, v7}, Lc8/Biq;->parseCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "bodyCharset":Ljava/lang/String;
    iget-object v7, p0, Lc8/thq;->log:Lc8/phq;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v7, v8}, Lc8/phq;->log(Ljava/lang/String;)V

    .line 495
    .end local v1    # "bodyBytes":[B
    .end local v2    # "bodyCharset":Ljava/lang/String;
    .end local v3    # "bodyMime":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lc8/thq;->log:Lc8/phq;

    const-string/jumbo v8, "<--- END HTTP (%s-byte body)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lc8/phq;->log(Ljava/lang/String;)V

    .line 498
    .end local v0    # "body":Lc8/Giq;
    .end local v4    # "bodySize":J
    :cond_4
    return-object p2
.end method

.method private logResponseBody(Lc8/Giq;Ljava/lang/Object;)V
    .locals 2
    .param p1, "body"    # Lc8/Giq;
    .param p2, "convert"    # Ljava/lang/Object;

    .prologue
    .line 502
    iget-object v0, p0, Lc8/thq;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->HEADERS_AND_ARGS:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v1}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 503
    iget-object v0, p0, Lc8/thq;->log:Lc8/phq;

    const-string/jumbo v1, "<--- BODY:"

    invoke-interface {v0, v1}, Lc8/phq;->log(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lc8/thq;->log:Lc8/phq;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/phq;->log(Ljava/lang/String;)V

    .line 506
    :cond_0
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lc8/Fhq;->validateServiceClass(Ljava/lang/Class;)V

    .line 194
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lc8/shq;

    .line 195
    invoke-virtual {p0, p1}, Lc8/thq;->getMethodInfoCache(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lc8/shq;-><init>(Lc8/thq;Ljava/util/Map;)V

    .line 194
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLogLevel()Lretrofit/RestAdapter$LogLevel;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lc8/thq;->logLevel:Lretrofit/RestAdapter$LogLevel;

    return-object v0
.end method

.method getMethodInfoCache(Ljava/lang/Class;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lc8/vhq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lc8/thq;->serviceMethodInfoCache:Ljava/util/Map;

    monitor-enter v2

    .line 200
    :try_start_0
    iget-object v1, p0, Lc8/thq;->serviceMethodInfoCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 201
    .local v0, "methodInfoCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/util/LinkedHashMap;

    .end local v0    # "methodInfoCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 203
    .restart local v0    # "methodInfoCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    iget-object v1, p0, Lc8/thq;->serviceMethodInfoCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    monitor-exit v2

    return-object v0

    .line 206
    .end local v0    # "methodInfoCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method logAndReplaceRequest(Ljava/lang/String;Lc8/Vhq;[Ljava/lang/Object;)Lc8/Vhq;
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "request"    # Lc8/Vhq;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/thq;->log:Lc8/phq;

    const-string/jumbo v12, "---> %s %s %s"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    invoke-virtual/range {p2 .. p2}, Lc8/Vhq;->getMethod()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-virtual/range {p2 .. p2}, Lc8/Vhq;->getUrl()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lc8/phq;->log(Ljava/lang/String;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/thq;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v11}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v11

    sget-object v12, Lretrofit/RestAdapter$LogLevel;->HEADERS:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v12}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v12

    if-lt v11, v12, :cond_6

    .line 414
    invoke-virtual/range {p2 .. p2}, Lc8/Vhq;->getHeaders()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/Rhq;

    .line 415
    .local v9, "header":Lc8/Rhq;
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/thq;->log:Lc8/phq;

    invoke-virtual {v9}, Lc8/Rhq;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lc8/phq;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 418
    .end local v9    # "header":Lc8/Rhq;
    :cond_0
    const-string/jumbo v8, "no"

    .line 419
    .local v8, "bodySize":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lc8/Vhq;->getBody()Lc8/Hiq;

    move-result-object v2

    .line 420
    .local v2, "body":Lc8/Hiq;
    if-eqz v2, :cond_5

    .line 421
    invoke-interface {v2}, Lc8/Hiq;->mimeType()Ljava/lang/String;

    move-result-object v5

    .line 422
    .local v5, "bodyMime":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 423
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/thq;->log:Lc8/phq;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Content-Type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lc8/phq;->log(Ljava/lang/String;)V

    .line 426
    :cond_1
    invoke-interface {v2}, Lc8/Hiq;->length()J

    move-result-wide v6

    .line 427
    .local v6, "bodyLength":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "-byte"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 428
    const-wide/16 v12, -0x1

    cmp-long v11, v6, v12

    if-eqz v11, :cond_2

    .line 429
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/thq;->log:Lc8/phq;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Content-Length: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lc8/phq;->log(Ljava/lang/String;)V

    .line 432
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/thq;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v11}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v11

    sget-object v12, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v12}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v12

    if-lt v11, v12, :cond_7

    .line 433
    invoke-virtual/range {p2 .. p2}, Lc8/Vhq;->getHeaders()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 434
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/thq;->log:Lc8/phq;

    const-string/jumbo v12, ""

    invoke-interface {v11, v12}, Lc8/phq;->log(Ljava/lang/String;)V

    .line 436
    :cond_3
    instance-of v11, v2, Lc8/Eiq;

    if-nez v11, :cond_4

    .line 438
    invoke-static/range {p2 .. p2}, Lc8/Fhq;->readBodyToBytesIfNecessary(Lc8/Vhq;)Lc8/Vhq;

    move-result-object p2

    .line 439
    invoke-virtual/range {p2 .. p2}, Lc8/Vhq;->getBody()Lc8/Hiq;

    move-result-object v2

    :cond_4
    move-object v11, v2

    .line 442
    check-cast v11, Lc8/Eiq;

    invoke-virtual {v11}, Lc8/Eiq;->getBytes()[B

    move-result-object v3

    .line 443
    .local v3, "bodyBytes":[B
    invoke-interface {v2}, Lc8/Hiq;->mimeType()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "UTF-8"

    invoke-static {v11, v12}, Lc8/Biq;->parseCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "bodyCharset":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/thq;->log:Lc8/phq;

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v11, v12}, Lc8/phq;->log(Ljava/lang/String;)V

    .line 455
    .end local v3    # "bodyBytes":[B
    .end local v4    # "bodyCharset":Ljava/lang/String;
    .end local v5    # "bodyMime":Ljava/lang/String;
    .end local v6    # "bodyLength":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/thq;->log:Lc8/phq;

    const-string/jumbo v12, "---> END %s (%s body)"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    aput-object v8, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lc8/phq;->log(Ljava/lang/String;)V

    .line 458
    .end local v2    # "body":Lc8/Hiq;
    .end local v8    # "bodySize":Ljava/lang/String;
    :cond_6
    return-object p2

    .line 445
    .restart local v2    # "body":Lc8/Hiq;
    .restart local v5    # "bodyMime":Ljava/lang/String;
    .restart local v6    # "bodyLength":J
    .restart local v8    # "bodySize":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/thq;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v11}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v11

    sget-object v12, Lretrofit/RestAdapter$LogLevel;->HEADERS_AND_ARGS:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v12}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v12

    if-lt v11, v12, :cond_5

    .line 446
    invoke-virtual/range {p2 .. p2}, Lc8/Vhq;->getHeaders()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 447
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/thq;->log:Lc8/phq;

    const-string/jumbo v12, "---> REQUEST:"

    invoke-interface {v11, v12}, Lc8/phq;->log(Ljava/lang/String;)V

    .line 449
    :cond_8
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move-object/from16 v0, p3

    array-length v11, v0

    if-ge v10, v11, :cond_5

    .line 450
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/thq;->log:Lc8/phq;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, p3, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lc8/phq;->log(Ljava/lang/String;)V

    .line 449
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method logException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-object v1, p0, Lc8/thq;->log:Lc8/phq;

    const-string/jumbo v2, "---- ERROR %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    .end local p2    # "url":Ljava/lang/String;
    :goto_0
    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/phq;->log(Ljava/lang/String;)V

    .line 511
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 512
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 513
    iget-object v1, p0, Lc8/thq;->log:Lc8/phq;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/phq;->log(Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lc8/thq;->log:Lc8/phq;

    const-string/jumbo v2, "---- END ERROR"

    invoke-interface {v1, v2}, Lc8/phq;->log(Ljava/lang/String;)V

    .line 515
    return-void

    .line 510
    .end local v0    # "sw":Ljava/io/StringWriter;
    .restart local p2    # "url":Ljava/lang/String;
    :cond_0
    const-string/jumbo p2, ""

    goto :goto_0
.end method

.method public setLogLevel(Lretrofit/RestAdapter$LogLevel;)V
    .locals 2
    .param p1, "loglevel"    # Lretrofit/RestAdapter$LogLevel;

    .prologue
    .line 179
    iget-object v0, p0, Lc8/thq;->logLevel:Lretrofit/RestAdapter$LogLevel;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Log level may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iput-object p1, p0, Lc8/thq;->logLevel:Lretrofit/RestAdapter$LogLevel;

    .line 183
    return-void
.end method
