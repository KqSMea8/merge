.class public Lc8/shq;
.super Ljava/lang/Object;
.source "RestAdapter.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/thq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestHandler"
.end annotation


# instance fields
.field private final methodDetailsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lc8/vhq;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/thq;


# direct methods
.method constructor <init>(Lc8/thq;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lc8/vhq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "methodDetailsCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    iput-object p1, p0, Lc8/shq;->this$0:Lc8/thq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lc8/shq;->methodDetailsCache:Ljava/util/Map;

    .line 225
    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static synthetic access$100(Lc8/shq;Lc8/fhq;Lc8/vhq;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/shq;
    .param p1, "x1"    # Lc8/fhq;
    .param p2, "x2"    # Lc8/vhq;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 220
    invoke-direct {p0, p1, p2, p3}, Lc8/shq;->invokeRequest(Lc8/fhq;Lc8/vhq;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private invokeRequest(Lc8/fhq;Lc8/vhq;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24
    .param p1, "requestInterceptor"    # Lc8/fhq;
    .param p2, "methodInfo"    # Lc8/vhq;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 292
    const/16 v20, 0x0

    .line 294
    .local v20, "url":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lc8/vhq;->init()V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v2, v2, Lc8/thq;->server:Lc8/Dgq;

    invoke-interface {v2}, Lc8/Dgq;->getUrl()Ljava/lang/String;

    move-result-object v14

    .line 297
    .local v14, "serverUrl":Ljava/lang/String;
    new-instance v12, Lc8/chq;

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v2, v2, Lc8/thq;->converter:Lc8/aiq;

    move-object/from16 v0, p2

    invoke-direct {v12, v14, v0, v2}, Lc8/chq;-><init>(Ljava/lang/String;Lc8/vhq;Lc8/aiq;)V

    .line 298
    .local v12, "requestBuilder":Lc8/chq;
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lc8/chq;->setArguments([Ljava/lang/Object;)V

    .line 300
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lc8/fhq;->intercept(Lc8/ehq;)V

    .line 302
    invoke-virtual {v12}, Lc8/chq;->build()Lc8/Vhq;

    move-result-object v11

    .line 303
    .local v11, "request":Lc8/Vhq;
    invoke-virtual {v11}, Lc8/Vhq;->getUrl()Ljava/lang/String;

    move-result-object v20

    .line 305
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lc8/vhq;->isSynchronous:Z

    if-nez v2, :cond_1

    .line 307
    const-string/jumbo v2, "?"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v15

    .line 308
    .local v15, "substrEnd":I
    const/4 v2, -0x1

    if-ne v15, v2, :cond_0

    .line 309
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v15

    .line 311
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Retrofit-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 312
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 311
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 315
    .end local v15    # "substrEnd":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v2, v2, Lc8/thq;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v2}, Lretrofit/RestAdapter$LogLevel;->log()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    const-string/jumbo v22, "HTTP"

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v11, v1}, Lc8/thq;->logAndReplaceRequest(Ljava/lang/String;Lc8/Vhq;[Ljava/lang/Object;)Lc8/Vhq;

    move-result-object v11

    .line 320
    :cond_2
    const/4 v7, 0x0

    .line 321
    .local v7, "profilerObject":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    invoke-static {v2}, Lc8/thq;->access$200(Lc8/thq;)Lc8/Zgq;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    invoke-static {v2}, Lc8/thq;->access$200(Lc8/thq;)Lc8/Zgq;

    move-result-object v2

    invoke-interface {v2}, Lc8/Zgq;->beforeCall()Ljava/lang/Object;

    move-result-object v7

    .line 325
    .end local v7    # "profilerObject":Ljava/lang/Object;
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 326
    .local v16, "start":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    invoke-static {v2}, Lc8/thq;->access$300(Lc8/thq;)Lc8/Ohq;

    move-result-object v2

    invoke-interface {v2}, Lc8/Ohq;->get()Lc8/Phq;

    move-result-object v2

    invoke-interface {v2, v11}, Lc8/Phq;->execute(Lc8/Vhq;)Lc8/Whq;

    move-result-object v13

    .line 327
    .local v13, "response":Lc8/Whq;
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    sub-long v22, v22, v16

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 329
    .local v4, "elapsedTime":J
    invoke-virtual {v13}, Lc8/Whq;->getStatus()I

    move-result v6

    .line 330
    .local v6, "statusCode":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    invoke-static {v2}, Lc8/thq;->access$200(Lc8/thq;)Lc8/Zgq;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 331
    move-object/from16 v0, p2

    invoke-static {v14, v0, v11}, Lc8/thq;->access$400(Ljava/lang/String;Lc8/vhq;Lc8/Vhq;)Lc8/Ygq;

    move-result-object v3

    .line 333
    .local v3, "requestInfo":Lc8/Ygq;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    invoke-static {v2}, Lc8/thq;->access$200(Lc8/thq;)Lc8/Zgq;

    move-result-object v2

    invoke-interface/range {v2 .. v7}, Lc8/Zgq;->afterCall(Lc8/Ygq;JILjava/lang/Object;)V

    .line 336
    .end local v3    # "requestInfo":Lc8/Ygq;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v2, v2, Lc8/thq;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v2}, Lretrofit/RestAdapter$LogLevel;->log()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    move-object/from16 v0, v20

    invoke-static {v2, v0, v13, v4, v5}, Lc8/thq;->access$500(Lc8/thq;Ljava/lang/String;Lc8/Whq;J)Lc8/Whq;

    move-result-object v13

    .line 341
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lc8/vhq;->responseObjectType:Ljava/lang/reflect/Type;

    move-object/from16 v19, v0

    .line 343
    .local v19, "type":Ljava/lang/reflect/Type;
    const/16 v2, 0xc8

    if-lt v6, v2, :cond_12

    const/16 v2, 0x12c

    if-ge v6, v2, :cond_12

    .line 345
    const-class v2, Lc8/Whq;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 346
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lc8/vhq;->isStreaming:Z

    if-nez v2, :cond_6

    .line 348
    invoke-static {v13}, Lc8/Fhq;->readBodyToBytesIfNecessary(Lc8/Whq;)Lc8/Whq;

    move-result-object v13

    .line 351
    :cond_6
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lc8/vhq;->isSynchronous:Z
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_9

    .line 402
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lc8/vhq;->isSynchronous:Z

    if-nez v2, :cond_7

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string/jumbo v22, "Retrofit-Idle"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_7
    move-object v9, v13

    :cond_8
    :goto_0
    return-object v9

    .line 354
    :cond_9
    :try_start_1
    new-instance v9, Lc8/khq;

    invoke-direct {v9, v13, v13}, Lc8/khq;-><init>(Lc8/Whq;Ljava/lang/Object;)V
    :try_end_1
    .catch Lretrofit/RetrofitError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lc8/vhq;->isSynchronous:Z

    if-nez v2, :cond_8

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string/jumbo v22, "Retrofit-Idle"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_a
    :try_start_2
    invoke-virtual {v13}, Lc8/Whq;->getBody()Lc8/Giq;

    move-result-object v8

    .line 358
    .local v8, "body":Lc8/Giq;
    if-nez v8, :cond_c

    .line 359
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lc8/vhq;->isSynchronous:Z
    :try_end_2
    .catch Lretrofit/RetrofitError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_b

    .line 360
    const/4 v9, 0x0

    .line 402
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lc8/vhq;->isSynchronous:Z

    if-nez v2, :cond_8

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string/jumbo v22, "Retrofit-Idle"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_b
    :try_start_3
    new-instance v9, Lc8/khq;

    const/4 v2, 0x0

    invoke-direct {v9, v13, v2}, Lc8/khq;-><init>(Lc8/Whq;Ljava/lang/Object;)V
    :try_end_3
    .catch Lretrofit/RetrofitError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 402
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lc8/vhq;->isSynchronous:Z

    if-nez v2, :cond_8

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string/jumbo v22, "Retrofit-Idle"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_c
    :try_start_4
    new-instance v21, Lc8/Jgq;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Lc8/Jgq;-><init>(Lc8/Giq;)V
    :try_end_4
    .catch Lretrofit/RetrofitError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 367
    .local v21, "wrapped":Lc8/Jgq;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v2, v2, Lc8/thq;->converter:Lc8/aiq;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v2, v0, v1}, Lc8/aiq;->fromBody(Lc8/Giq;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    .line 368
    .local v9, "convert":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    invoke-static {v2, v8, v9}, Lc8/thq;->access$600(Lc8/thq;Lc8/Giq;Ljava/lang/Object;)V

    .line 369
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lc8/vhq;->isSynchronous:Z
    :try_end_5
    .catch Lretrofit/converter/ConversionException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lretrofit/RetrofitError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_d

    .line 402
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lc8/vhq;->isSynchronous:Z

    if-nez v2, :cond_8

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string/jumbo v22, "Retrofit-Idle"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 372
    :cond_d
    :try_start_6
    new-instance v2, Lc8/khq;

    invoke-direct {v2, v13, v9}, Lc8/khq;-><init>(Lc8/Whq;Ljava/lang/Object;)V
    :try_end_6
    .catch Lretrofit/converter/ConversionException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lretrofit/RetrofitError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 402
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lc8/vhq;->isSynchronous:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    const-string/jumbo v23, "Retrofit-Idle"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_e
    move-object v9, v2

    goto/16 :goto_0

    .line 373
    .end local v9    # "convert":Ljava/lang/Object;
    :catch_0
    move-exception v10

    .line 376
    .local v10, "e":Lretrofit/converter/ConversionException;
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Lc8/Jgq;->threwException()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 377
    invoke-virtual/range {v21 .. v21}, Lc8/Jgq;->getThrownException()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_7
    .catch Lretrofit/RetrofitError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 389
    .end local v4    # "elapsedTime":J
    .end local v6    # "statusCode":I
    .end local v8    # "body":Lc8/Giq;
    .end local v10    # "e":Lretrofit/converter/ConversionException;
    .end local v11    # "request":Lc8/Vhq;
    .end local v12    # "requestBuilder":Lc8/chq;
    .end local v13    # "response":Lc8/Whq;
    .end local v14    # "serverUrl":Ljava/lang/String;
    .end local v16    # "start":J
    .end local v19    # "type":Ljava/lang/reflect/Type;
    .end local v21    # "wrapped":Lc8/Jgq;
    :catch_1
    move-exception v10

    .line 390
    .local v10, "e":Lretrofit/RetrofitError;
    :try_start_8
    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 402
    .end local v10    # "e":Lretrofit/RetrofitError;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lc8/vhq;->isSynchronous:Z

    move/from16 v22, v0

    if-nez v22, :cond_f

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    const-string/jumbo v23, "Retrofit-Idle"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_f
    throw v2

    .line 381
    .restart local v4    # "elapsedTime":J
    .restart local v6    # "statusCode":I
    .restart local v8    # "body":Lc8/Giq;
    .local v10, "e":Lretrofit/converter/ConversionException;
    .restart local v11    # "request":Lc8/Vhq;
    .restart local v12    # "requestBuilder":Lc8/chq;
    .restart local v13    # "response":Lc8/Whq;
    .restart local v14    # "serverUrl":Ljava/lang/String;
    .restart local v16    # "start":J
    .restart local v19    # "type":Ljava/lang/reflect/Type;
    .restart local v21    # "wrapped":Lc8/Jgq;
    :cond_10
    const/4 v2, 0x0

    :try_start_9
    invoke-static {v13, v2}, Lc8/Fhq;->replaceResponseBody(Lc8/Whq;Lc8/Giq;)Lc8/Whq;

    move-result-object v13

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v2, v2, Lc8/thq;->converter:Lc8/aiq;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v13, v2, v1, v10}, Lretrofit/RetrofitError;->conversionError(Ljava/lang/String;Lc8/Whq;Lc8/aiq;Ljava/lang/reflect/Type;Lretrofit/converter/ConversionException;)Lretrofit/RetrofitError;

    move-result-object v2

    throw v2
    :try_end_9
    .catch Lretrofit/RetrofitError; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 391
    .end local v4    # "elapsedTime":J
    .end local v6    # "statusCode":I
    .end local v8    # "body":Lc8/Giq;
    .end local v10    # "e":Lretrofit/converter/ConversionException;
    .end local v11    # "request":Lc8/Vhq;
    .end local v12    # "requestBuilder":Lc8/chq;
    .end local v13    # "response":Lc8/Whq;
    .end local v14    # "serverUrl":Ljava/lang/String;
    .end local v16    # "start":J
    .end local v19    # "type":Ljava/lang/reflect/Type;
    .end local v21    # "wrapped":Lc8/Jgq;
    :catch_2
    move-exception v10

    .line 392
    .local v10, "e":Ljava/io/IOException;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v2, v2, Lc8/thq;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v2}, Lretrofit/RestAdapter$LogLevel;->log()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    move-object/from16 v0, v20

    invoke-virtual {v2, v10, v0}, Lc8/thq;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 395
    :cond_11
    move-object/from16 v0, v20

    invoke-static {v0, v10}, Lretrofit/RetrofitError;->networkError(Ljava/lang/String;Ljava/io/IOException;)Lretrofit/RetrofitError;

    move-result-object v2

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 387
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v4    # "elapsedTime":J
    .restart local v6    # "statusCode":I
    .restart local v11    # "request":Lc8/Vhq;
    .restart local v12    # "requestBuilder":Lc8/chq;
    .restart local v13    # "response":Lc8/Whq;
    .restart local v14    # "serverUrl":Ljava/lang/String;
    .restart local v16    # "start":J
    .restart local v19    # "type":Ljava/lang/reflect/Type;
    :cond_12
    :try_start_b
    invoke-static {v13}, Lc8/Fhq;->readBodyToBytesIfNecessary(Lc8/Whq;)Lc8/Whq;

    move-result-object v13

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v2, v2, Lc8/thq;->converter:Lc8/aiq;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v13, v2, v1}, Lretrofit/RetrofitError;->httpError(Ljava/lang/String;Lc8/Whq;Lc8/aiq;Ljava/lang/reflect/Type;)Lretrofit/RetrofitError;

    move-result-object v2

    throw v2
    :try_end_b
    .catch Lretrofit/RetrofitError; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 396
    .end local v4    # "elapsedTime":J
    .end local v6    # "statusCode":I
    .end local v11    # "request":Lc8/Vhq;
    .end local v12    # "requestBuilder":Lc8/chq;
    .end local v13    # "response":Lc8/Whq;
    .end local v14    # "serverUrl":Ljava/lang/String;
    .end local v16    # "start":J
    .end local v19    # "type":Ljava/lang/reflect/Type;
    :catch_3
    move-exception v18

    .line 397
    .local v18, "t":Ljava/lang/Throwable;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v2, v2, Lc8/thq;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v2}, Lretrofit/RestAdapter$LogLevel;->log()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/shq;->this$0:Lc8/thq;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lc8/thq;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 400
    :cond_13
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lretrofit/RetrofitError;->unexpectedError(Ljava/lang/String;Ljava/lang/Throwable;)Lretrofit/RetrofitError;

    move-result-object v2

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 232
    invoke-static {p2, p0, p3}, Lc8/shq;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    .line 236
    :cond_0
    iget-object v0, p0, Lc8/shq;->methodDetailsCache:Ljava/util/Map;

    invoke-static {v0, p2}, Lc8/thq;->getMethodInfo(Ljava/util/Map;Ljava/lang/reflect/Method;)Lc8/vhq;

    move-result-object v6

    .line 238
    .local v6, "methodInfo":Lc8/vhq;
    iget-boolean v0, v6, Lc8/vhq;->isSynchronous:Z

    if-eqz v0, :cond_2

    .line 240
    :try_start_0
    iget-object v0, p0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v0, v0, Lc8/thq;->requestInterceptor:Lc8/fhq;

    invoke-direct {p0, v0, v6, p3}, Lc8/shq;->invokeRequest(Lc8/fhq;Lc8/vhq;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v8

    .line 242
    .local v8, "error":Lretrofit/RetrofitError;
    iget-object v0, p0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v0, v0, Lc8/thq;->errorHandler:Lc8/Hgq;

    invoke-interface {v0, v8}, Lc8/Hgq;->handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;

    move-result-object v9

    .line 243
    .local v9, "newError":Ljava/lang/Throwable;
    if-nez v9, :cond_1

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Error handler returned null for wrapped exception."

    invoke-direct {v0, v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 247
    :cond_1
    throw v9

    .line 251
    .end local v8    # "error":Lretrofit/RetrofitError;
    .end local v9    # "newError":Ljava/lang/Throwable;
    :cond_2
    iget-object v0, p0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v0, v0, Lc8/thq;->httpExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v0, v0, Lc8/thq;->callbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_4

    .line 252
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Asynchronous invocation requires calling setExecutors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_4
    iget-boolean v0, v6, Lc8/vhq;->isObservable:Z

    if-eqz v0, :cond_7

    .line 256
    iget-object v0, p0, Lc8/shq;->this$0:Lc8/thq;

    invoke-static {v0}, Lc8/thq;->access$000(Lc8/thq;)Lc8/zhq;

    move-result-object v0

    if-nez v0, :cond_5

    .line 257
    sget-boolean v0, Lc8/Xgq;->HAS_RX_JAVA:Z

    if-eqz v0, :cond_6

    .line 258
    iget-object v0, p0, Lc8/shq;->this$0:Lc8/thq;

    new-instance v1, Lc8/zhq;

    iget-object v3, p0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v3, v3, Lc8/thq;->httpExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v4, v4, Lc8/thq;->errorHandler:Lc8/Hgq;

    iget-object v7, p0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v7, v7, Lc8/thq;->requestInterceptor:Lc8/fhq;

    invoke-direct {v1, v3, v4, v7}, Lc8/zhq;-><init>(Ljava/util/concurrent/Executor;Lc8/Hgq;Lc8/fhq;)V

    invoke-static {v0, v1}, Lc8/thq;->access$002(Lc8/thq;Lc8/zhq;)Lc8/zhq;

    .line 263
    :cond_5
    iget-object v0, p0, Lc8/shq;->this$0:Lc8/thq;

    invoke-static {v0}, Lc8/thq;->access$000(Lc8/thq;)Lc8/zhq;

    move-result-object v0

    new-instance v1, Lc8/qhq;

    invoke-direct {v1, p0, v6, p3}, Lc8/qhq;-><init>(Lc8/shq;Lc8/vhq;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lc8/zhq;->createRequestObservable(Lc8/yhq;)Lc8/Vlq;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Observable method found but no RxJava on classpath."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_7
    new-instance v5, Lc8/ihq;

    invoke-direct {v5}, Lc8/ihq;-><init>()V

    .line 273
    .local v5, "interceptorTape":Lc8/ihq;
    iget-object v0, p0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v0, v0, Lc8/thq;->requestInterceptor:Lc8/fhq;

    invoke-interface {v0, v5}, Lc8/fhq;->intercept(Lc8/ehq;)V

    .line 275
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-object v2, p3, v0

    check-cast v2, Lc8/zgq;

    .line 276
    .local v2, "callback":Lc8/zgq;, "Lretrofit/Callback<*>;"
    iget-object v0, p0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v10, v0, Lc8/thq;->httpExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lc8/rhq;

    iget-object v1, p0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v3, v1, Lc8/thq;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lc8/shq;->this$0:Lc8/thq;

    iget-object v4, v1, Lc8/thq;->errorHandler:Lc8/Hgq;

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lc8/rhq;-><init>(Lc8/shq;Lc8/zgq;Ljava/util/concurrent/Executor;Lc8/Hgq;Lc8/ihq;Lc8/vhq;[Ljava/lang/Object;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 281
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
