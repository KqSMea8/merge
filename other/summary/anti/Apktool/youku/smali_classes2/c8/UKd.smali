.class public abstract Lc8/UKd;
.super Ljava/lang/Object;
.source "Emitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/TKd;
    }
.end annotation


# instance fields
.field protected final JSON:Lc8/xId;

.field protected POST_STM_BYTES:I

.field protected POST_WRAPPER_BYTES:I

.field private final TAG:Ljava/lang/String;

.field protected bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

.field protected byteLimitGet:J

.field protected byteLimitPost:J

.field protected context:Landroid/content/Context;

.field protected emitterTick:I

.field protected emptyLimit:I

.field protected hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field protected httpMethod:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

.field protected isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected requestCallback:Lc8/WKd;

.field protected requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

.field protected sendLimit:I

.field protected sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field protected timeUnit:Ljava/util/concurrent/TimeUnit;

.field protected uri:Ljava/lang/String;

.field protected uriBuilder:Landroid/net/Uri$Builder;


# direct methods
.method public constructor <init>(Lc8/TKd;)V
    .locals 3
    .param p1, "builder"    # Lc8/TKd;

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x58

    iput v0, p0, Lc8/UKd;->POST_WRAPPER_BYTES:I

    .line 36
    const/16 v0, 0x16

    iput v0, p0, Lc8/UKd;->POST_STM_BYTES:I

    .line 38
    const-class v0, Lc8/UKd;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/UKd;->TAG:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lc8/xId;->parse(Ljava/lang/String;)Lc8/xId;

    move-result-object v0

    iput-object v0, p0, Lc8/UKd;->JSON:Lc8/xId;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/UKd;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 223
    iget-object v0, p1, Lc8/TKd;->httpMethod:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    iput-object v0, p0, Lc8/UKd;->httpMethod:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    .line 224
    iget-object v0, p1, Lc8/TKd;->requestCallback:Lc8/WKd;

    iput-object v0, p0, Lc8/UKd;->requestCallback:Lc8/WKd;

    .line 225
    iget-object v0, p1, Lc8/TKd;->context:Landroid/content/Context;

    iput-object v0, p0, Lc8/UKd;->context:Landroid/content/Context;

    .line 226
    iget-object v0, p1, Lc8/TKd;->bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    iput-object v0, p0, Lc8/UKd;->bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    .line 227
    iget-object v0, p1, Lc8/TKd;->requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    iput-object v0, p0, Lc8/UKd;->requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    .line 228
    iget-object v0, p1, Lc8/TKd;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lc8/UKd;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 229
    iget-object v0, p1, Lc8/TKd;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lc8/UKd;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 230
    iget v0, p1, Lc8/TKd;->emitterTick:I

    iput v0, p0, Lc8/UKd;->emitterTick:I

    .line 231
    iget v0, p1, Lc8/TKd;->emptyLimit:I

    iput v0, p0, Lc8/UKd;->emptyLimit:I

    .line 232
    iget v0, p1, Lc8/TKd;->sendLimit:I

    iput v0, p0, Lc8/UKd;->sendLimit:I

    .line 233
    iget-wide v0, p1, Lc8/TKd;->byteLimitGet:J

    iput-wide v0, p0, Lc8/UKd;->byteLimitGet:J

    .line 234
    iget-wide v0, p1, Lc8/TKd;->byteLimitPost:J

    iput-wide v0, p0, Lc8/UKd;->byteLimitPost:J

    .line 235
    iget-object v0, p1, Lc8/TKd;->uri:Ljava/lang/String;

    iput-object v0, p0, Lc8/UKd;->uri:Ljava/lang/String;

    .line 236
    iget-object v0, p1, Lc8/TKd;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lc8/UKd;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 237
    invoke-direct {p0}, Lc8/UKd;->buildEmitterUri()V

    .line 240
    iget-object v0, p0, Lc8/UKd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Emitter created successfully!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/yLd;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method private addStmToEvent(Lc8/PKd;Ljava/lang/String;)V
    .locals 2
    .param p1, "dataLoad"    # Lc8/PKd;
    .param p2, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 504
    const-string/jumbo v0, "stm"

    const-string/jumbo v1, ""

    .line 505
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lc8/ALd;->getTimestamp()Ljava/lang/String;

    move-result-object p2

    .line 504
    .end local p2    # "timestamp":Ljava/lang/String;
    :cond_0
    invoke-interface {p1, v0, p2}, Lc8/PKd;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method private buildEmitterUri()V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lc8/UKd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "security "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/UKd;->requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lc8/UKd;->requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    sget-object v1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;->HTTP:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    if-ne v0, v1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/UKd;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lc8/UKd;->uriBuilder:Landroid/net/Uri$Builder;

    .line 253
    :goto_0
    iget-object v0, p0, Lc8/UKd;->httpMethod:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    sget-object v1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;->GET:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    if-ne v0, v1, :cond_1

    .line 254
    iget-object v0, p0, Lc8/UKd;->uriBuilder:Landroid/net/Uri$Builder;

    const-string/jumbo v1, "i"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 259
    :goto_1
    return-void

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/UKd;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lc8/UKd;->uriBuilder:Landroid/net/Uri$Builder;

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lc8/UKd;->uriBuilder:Landroid/net/Uri$Builder;

    const-string/jumbo v1, "push_data_report/mobile"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1
.end method

.method private requestBuilderGet(Lc8/PKd;)Lc8/DId;
    .locals 6
    .param p1, "dataLoad"    # Lc8/PKd;

    .prologue
    .line 448
    const-string/jumbo v4, ""

    invoke-direct {p0, p1, v4}, Lc8/UKd;->addStmToEvent(Lc8/PKd;Ljava/lang/String;)V

    .line 451
    iget-object v4, p0, Lc8/UKd;->uriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 454
    invoke-interface {p1}, Lc8/PKd;->getMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 456
    .local v0, "hashMap":Ljava/util/HashMap;
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 457
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 458
    .local v3, "value":Ljava/lang/String;
    iget-object v5, p0, Lc8/UKd;->uriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v5, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 462
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lc8/UKd;->uriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "reqUrl":Ljava/lang/String;
    new-instance v4, Lc8/CId;

    invoke-direct {v4}, Lc8/CId;-><init>()V

    .line 464
    invoke-virtual {v4, v2}, Lc8/CId;->url(Ljava/lang/String;)Lc8/CId;

    move-result-object v4

    .line 465
    invoke-virtual {v4}, Lc8/CId;->get()Lc8/CId;

    move-result-object v4

    .line 466
    invoke-virtual {v4}, Lc8/CId;->build()Lc8/DId;

    move-result-object v4

    .line 463
    return-object v4
.end method

.method private requestBuilderPost(Ljava/util/ArrayList;)Lc8/DId;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/PKd;",
            ">;)",
            "Lc8/DId;"
        }
    .end annotation

    .prologue
    .line 477
    .local p1, "dataLoads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v1, "finalPayloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 479
    .local v0, "dataloadbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/PKd;

    .line 480
    .local v2, "payload":Lc8/PKd;
    invoke-interface {v2}, Lc8/PKd;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    invoke-interface {v2}, Lc8/PKd;->getMap()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    .end local v2    # "payload":Lc8/PKd;
    :cond_0
    new-instance v3, Lc8/QKd;

    const-string/jumbo v6, "push_group_data"

    invoke-direct {v3, v6, v1}, Lc8/QKd;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    .local v3, "postPayload":Lc8/QKd;
    iget-object v6, p0, Lc8/UKd;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "final SelfDescribingJson "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    iget-object v6, p0, Lc8/UKd;->uriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 489
    .local v5, "reqUrl":Ljava/lang/String;
    iget-object v6, p0, Lc8/UKd;->JSON:Lc8/xId;

    invoke-virtual {v3}, Lc8/QKd;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/GId;->create(Lc8/xId;Ljava/lang/String;)Lc8/GId;

    move-result-object v4

    .line 490
    .local v4, "reqBody":Lc8/GId;
    new-instance v6, Lc8/CId;

    invoke-direct {v6}, Lc8/CId;-><init>()V

    .line 491
    invoke-virtual {v6, v5}, Lc8/CId;->url(Ljava/lang/String;)Lc8/CId;

    move-result-object v6

    .line 492
    invoke-virtual {v6, v4}, Lc8/CId;->post(Lc8/GId;)Lc8/CId;

    move-result-object v6

    .line 493
    invoke-virtual {v6}, Lc8/CId;->build()Lc8/DId;

    move-result-object v6

    .line 490
    return-object v6
.end method


# virtual methods
.method public abstract add(Lc8/PKd;Z)V
.end method

.method protected buildRequests(Lc8/SKd;)Ljava/util/LinkedList;
    .locals 22
    .param p1, "events"    # Lc8/SKd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/SKd;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lc8/VKd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual/range {p1 .. p1}, Lc8/SKd;->getEvents()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 369
    .local v3, "dataLoadCount":I
    invoke-virtual/range {p1 .. p1}, Lc8/SKd;->getEventIds()Ljava/util/LinkedList;

    move-result-object v4

    .line 370
    .local v4, "eventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 372
    .local v14, "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/UKd;->httpMethod:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    move-object/from16 v18, v0

    sget-object v19, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;->GET:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 373
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_6

    .line 376
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 377
    .local v11, "reqEventId":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual/range {p1 .. p1}, Lc8/SKd;->getEvents()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/PKd;

    .line 381
    .local v2, "dataLoad":Lc8/PKd;
    invoke-interface {v2}, Lc8/PKd;->getByteSize()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Lc8/UKd;->POST_STM_BYTES:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/UKd;->byteLimitGet:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_0

    const/4 v7, 0x1

    .line 382
    .local v7, "oversize":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lc8/UKd;->requestBuilderGet(Lc8/PKd;)Lc8/DId;

    move-result-object v13

    .line 383
    .local v13, "request":Lc8/DId;
    new-instance v18, Lc8/VKd;

    move-object/from16 v0, v18

    invoke-direct {v0, v7, v13, v11}, Lc8/VKd;-><init>(ZLc8/DId;Ljava/util/LinkedList;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 373
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 381
    .end local v7    # "oversize":Z
    .end local v13    # "request":Lc8/DId;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 386
    .end local v2    # "dataLoad":Lc8/PKd;
    .end local v5    # "i":I
    .end local v11    # "reqEventId":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v3, :cond_6

    .line 388
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 389
    .local v12, "reqEventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v10, "postDataLoadMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;>;"
    const-wide/16 v16, 0x0

    .line 392
    .local v16, "totalByteSize":J
    move v6, v5

    .local v6, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/UKd;->bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->getCode()I

    move-result v18

    add-int v18, v18, v5

    move/from16 v0, v18

    if-ge v6, v0, :cond_4

    if-ge v6, v3, :cond_4

    .line 393
    invoke-virtual/range {p1 .. p1}, Lc8/SKd;->getEvents()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/PKd;

    .line 394
    .restart local v2    # "dataLoad":Lc8/PKd;
    invoke-interface {v2}, Lc8/PKd;->getByteSize()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Lc8/UKd;->POST_STM_BYTES:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v8, v18, v20

    .line 396
    .local v8, "payloadByteSize":J
    move-object/from16 v0, p0

    iget v0, v0, Lc8/UKd;->POST_WRAPPER_BYTES:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v18, v18, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/UKd;->byteLimitPost:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_2

    .line 397
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v15, "singlePayloadMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;>;"
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 401
    .restart local v11    # "reqEventId":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 403
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lc8/UKd;->requestBuilderPost(Ljava/util/ArrayList;)Lc8/DId;

    move-result-object v13

    .line 404
    .restart local v13    # "request":Lc8/DId;
    new-instance v18, Lc8/VKd;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v1, v13, v11}, Lc8/VKd;-><init>(ZLc8/DId;Ljava/util/LinkedList;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 392
    .end local v11    # "reqEventId":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v13    # "request":Lc8/DId;
    .end local v15    # "singlePayloadMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;>;"
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 406
    :cond_2
    add-long v18, v16, v8

    move-object/from16 v0, p0

    iget v0, v0, Lc8/UKd;->POST_WRAPPER_BYTES:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    .line 407
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/UKd;->byteLimitPost:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_3

    .line 408
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lc8/UKd;->requestBuilderPost(Ljava/util/ArrayList;)Lc8/DId;

    move-result-object v13

    .line 409
    .restart local v13    # "request":Lc8/DId;
    new-instance v18, Lc8/VKd;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v1, v13, v12}, Lc8/VKd;-><init>(ZLc8/DId;Ljava/util/LinkedList;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "postDataLoadMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .restart local v10    # "postDataLoadMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;>;"
    new-instance v12, Ljava/util/LinkedList;

    .end local v12    # "reqEventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 416
    .restart local v12    # "reqEventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 418
    move-wide/from16 v16, v8

    .line 419
    goto :goto_4

    .line 421
    .end local v13    # "request":Lc8/DId;
    :cond_3
    add-long v16, v16, v8

    .line 422
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 428
    .end local v2    # "dataLoad":Lc8/PKd;
    .end local v8    # "payloadByteSize":J
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_5

    .line 429
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lc8/UKd;->requestBuilderPost(Ljava/util/ArrayList;)Lc8/DId;

    move-result-object v13

    .line 430
    .restart local v13    # "request":Lc8/DId;
    new-instance v18, Lc8/VKd;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v1, v13, v12}, Lc8/VKd;-><init>(ZLc8/DId;Ljava/util/LinkedList;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 386
    .end local v13    # "request":Lc8/DId;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/UKd;->bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->getCode()I

    move-result v18

    add-int v5, v5, v18

    goto/16 :goto_2

    .line 434
    .end local v6    # "j":I
    .end local v10    # "postDataLoadMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;>;"
    .end local v12    # "reqEventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v16    # "totalByteSize":J
    :cond_6
    return-object v14
.end method

.method protected close(Lc8/JId;)V
    .locals 3
    .param p1, "response"    # Lc8/JId;

    .prologue
    .line 348
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lc8/JId;->body()Lc8/KId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p1}, Lc8/JId;->body()Lc8/KId;

    move-result-object v0

    invoke-virtual {v0}, Lc8/KId;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/UKd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to close source data"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public abstract flush()V
.end method

.method public getEmitterUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lc8/UKd;->uriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isSuccessfulSend(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 528
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected requestSender(Lc8/DId;)I
    .locals 7
    .param p1, "request"    # Lc8/DId;

    .prologue
    .line 329
    const/4 v1, 0x0

    .line 331
    .local v1, "response":Lc8/JId;
    :try_start_0
    iget-object v2, p0, Lc8/UKd;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Sending request: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    new-instance v2, Lc8/tId;

    invoke-direct {v2, p1}, Lc8/tId;-><init>(Lc8/DId;)V

    invoke-virtual {v2}, Lc8/tId;->execute()Lc8/JId;

    move-result-object v1

    .line 333
    invoke-virtual {v1}, Lc8/JId;->code()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 338
    invoke-virtual {p0, v1}, Lc8/UKd;->close(Lc8/JId;)V

    .line 336
    :goto_0
    return v2

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lc8/UKd;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Request sending failed: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    const/4 v2, -0x1

    .line 338
    invoke-virtual {p0, v1}, Lc8/UKd;->close(Lc8/JId;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Lc8/UKd;->close(Lc8/JId;)V

    throw v2
.end method
