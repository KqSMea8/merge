.class public Lc8/AGo;
.super Ljava/lang/Object;
.source "VipHttpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/rGo;,
        Lc8/sGo;,
        Lc8/zGo;,
        Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;
    }
.end annotation


# static fields
.field public static final CODE_EXCEPTION:Ljava/lang/String; = "vip_exception_code_1001"

.field public static final CODE_RESPONSE_IS_NULL:Ljava/lang/String; = "vip_response_is_null_code_1002"

.field private static TAG:Ljava/lang/String;

.field public static handler:Landroid/os/Handler;

.field private static mInstance:Lc8/AGo;

.field private static mLock:Ljava/lang/Object;

.field private static mtop:Lc8/AOp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lc8/AGo;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/AGo;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/AGo;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Lc8/AGo;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lc8/AGo;->handler:Landroid/os/Handler;

    .line 90
    :cond_0
    invoke-virtual {p0}, Lc8/AGo;->initMtop()V

    .line 91
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lc8/AGo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static convertMapToDataStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v10, 0x40

    const/4 v9, 0x1

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 352
    .local v0, "dataStr":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "{"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 354
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 356
    .local v3, "length":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 357
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 358
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 359
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 360
    .local v6, "value":Ljava/lang/Object;
    if-eqz v2, :cond_0

    if-eqz v6, :cond_0

    .line 362
    :try_start_0
    invoke-static {v2}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string/jumbo v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 365
    invoke-static {v6}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :goto_1
    const-string/jumbo v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 378
    .local v5, "log":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "[converMapToDataStr] convert key="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string/jumbo v7, ",value="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to dataStr error."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 366
    .end local v5    # "log":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 367
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 368
    :cond_2
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 369
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 370
    :cond_3
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 371
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 373
    :cond_4
    invoke-static {v6}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 384
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 385
    .local v4, "length1":I
    if-le v4, v9, :cond_6

    .line 386
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 390
    .end local v3    # "length":Ljava/util/Iterator;
    .end local v4    # "length1":I
    :cond_6
    const-string/jumbo v7, "}"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getInstance()Lc8/AGo;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lc8/AGo;->mInstance:Lc8/AGo;

    if-nez v0, :cond_1

    .line 65
    sget-object v1, Lc8/AGo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lc8/AGo;->mInstance:Lc8/AGo;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lc8/AGo;

    invoke-direct {v0}, Lc8/AGo;-><init>()V

    sput-object v0, Lc8/AGo;->mInstance:Lc8/AGo;

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    sget-object v0, Lc8/AGo;->mInstance:Lc8/AGo;

    invoke-virtual {v0}, Lc8/AGo;->initMtop()V

    .line 72
    sget-object v0, Lc8/AGo;->mInstance:Lc8/AGo;

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static handleError(Lmtopsdk/mtop/domain/MtopResponse;)Z
    .locals 3
    .param p0, "response"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    const/4 v0, 0x1

    .line 457
    sget-object v1, Lc8/AGo;->handler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 458
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lc8/AGo;->handler:Landroid/os/Handler;

    .line 460
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 461
    sget-object v1, Lc8/AGo;->handler:Landroid/os/Handler;

    new-instance v2, Lc8/pGo;

    invoke-direct {v2}, Lc8/pGo;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    :cond_1
    :goto_0
    return v0

    .line 469
    :cond_2
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v1

    if-nez v1, :cond_1

    .line 473
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static writeLog(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;)V
    .locals 6
    .param p0, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p1, "traceId"    # Ljava/lang/String;

    .prologue
    .line 423
    if-nez p0, :cond_0

    .line 424
    :try_start_0
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 425
    .local v3, "jsonObjectLog":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "response"

    const-string/jumbo v5, "response is null"

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v4, Lc8/AGo;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lc8/cIo;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)I

    .line 448
    .end local v3    # "jsonObjectLog":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_1

    const-string/jumbo v1, ""

    .line 431
    .local v1, "dataJsonStr":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 433
    .local v0, "dataJson":Lcom/alibaba/fastjson/JSONObject;
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 434
    .restart local v3    # "jsonObjectLog":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "API"

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string/jumbo v4, "RET_CODE"

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string/jumbo v4, "RET_MSG"

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string/jumbo v4, "VERSION"

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getV()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    if-eqz v0, :cond_2

    .line 439
    const-string/jumbo v4, "DATA"

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :goto_2
    sget-object v4, Lc8/AGo;->TAG:Ljava/lang/String;

    invoke-static {v4, v3, p1}, Lc8/cIo;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    .end local v0    # "dataJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "dataJsonStr":Ljava/lang/String;
    .end local v3    # "jsonObjectLog":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v2

    .line 446
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 430
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 441
    .restart local v0    # "dataJson":Lcom/alibaba/fastjson/JSONObject;
    .restart local v1    # "dataJsonStr":Ljava/lang/String;
    .restart local v3    # "jsonObjectLog":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const-string/jumbo v4, "DATA"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public getReqMethod(Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;)Lmtopsdk/mtop/domain/MethodEnum;
    .locals 2
    .param p1, "vipMethodEnum"    # Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    .prologue
    .line 319
    if-nez p1, :cond_0

    .line 320
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    .line 337
    :goto_0
    return-object v0

    .line 323
    :cond_0
    sget-object v0, Lc8/qGo;->$SwitchMap$com$youku$vip$lib$http$service$VipHttpService$VipMethodEnum:[I

    invoke-virtual {p1}, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 337
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    goto :goto_0

    .line 325
    :pswitch_0
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    goto :goto_0

    .line 328
    :pswitch_1
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    goto :goto_0

    .line 331
    :pswitch_2
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->HEAD:Lmtopsdk/mtop/domain/MethodEnum;

    goto :goto_0

    .line 334
    :pswitch_3
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->PATCH:Lmtopsdk/mtop/domain/MethodEnum;

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    sget-object v0, Lc8/AGo;->mtop:Lc8/AOp;

    if-eqz v0, :cond_0

    .line 345
    sget-object v0, Lc8/AGo;->mtop:Lc8/AOp;

    invoke-virtual {v0}, Lc8/AOp;->getUtdid()Ljava/lang/String;

    move-result-object v0

    .line 347
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public initMtop()V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lc8/AGo;->mtop:Lc8/AOp;

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lc8/FDj;->getMtopInstance()Lc8/AOp;

    move-result-object v0

    sput-object v0, Lc8/AGo;->mtop:Lc8/AOp;

    .line 112
    :cond_0
    return-void
.end method

.method public request(Lc8/dOp;Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;Ljava/lang/Class;ZLc8/mGo;)Lc8/BGo;
    .locals 10
    .param p1, "requestData"    # Lc8/dOp;
    .param p2, "methodEnum"    # Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;
    .param p4, "isRunUIThread"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/dOp;",
            "Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;",
            "Ljava/lang/Class",
            "<TT;>;Z",
            "Lc8/mGo",
            "<TT;>;)",
            "Lc8/BGo;"
        }
    .end annotation

    .prologue
    .line 252
    .local p3, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p5, "listener":Lc8/mGo;, "Lcom/youku/vip/lib/http/listener/VipInternalHttpListener<TT;>;"
    const/4 v6, 0x0

    .line 253
    .local v6, "traceId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 255
    .local v3, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    sget-object v8, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v8}, Lc8/JRo;->generate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 256
    invoke-static {v6}, Lc8/cIo;->getLogTag(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 260
    :goto_0
    if-nez v3, :cond_0

    .line 261
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 264
    .restart local v3    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0, p2}, Lc8/AGo;->getReqMethod(Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;)Lmtopsdk/mtop/domain/MethodEnum;

    move-result-object v4

    .line 265
    .local v4, "method":Lmtopsdk/mtop/domain/MethodEnum;
    new-instance v7, Lc8/zGo;

    invoke-direct {v7, p3, p5, p4, v6}, Lc8/zGo;-><init>(Ljava/lang/Class;Lc8/mGo;ZLjava/lang/String;)V

    .line 266
    .local v7, "vipMTopFinishListener":Lc8/zGo;
    new-instance v5, Lc8/BGo;

    invoke-direct {v5}, Lc8/BGo;-><init>()V

    .line 267
    .local v5, "requestID":Lc8/BGo;
    sget-object v8, Lc8/AGo;->mtop:Lc8/AOp;

    if-eqz v8, :cond_2

    .line 268
    sget-object v8, Lc8/AGo;->mtop:Lc8/AOp;

    invoke-static {}, Lc8/Iin;->getTTID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Lc8/AOp;->build(Lc8/dOp;Ljava/lang/String;)Lc8/COp;

    move-result-object v8

    .line 269
    invoke-virtual {v8, v3}, Lc8/COp;->headers(Ljava/util/Map;)Lc8/COp;

    move-result-object v8

    .line 270
    invoke-virtual {v8, v7}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v8

    invoke-virtual {v8, v4}, Lc8/COp;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/COp;

    move-result-object v1

    .line 274
    .local v1, "builder":Lc8/COp;
    invoke-virtual {v1}, Lc8/COp;->asyncRequest()Lc8/ENp;

    move-result-object v0

    .line 275
    .local v0, "apiID":Lc8/ENp;
    invoke-virtual {v5, v0}, Lc8/BGo;->setApiID(Lc8/ENp;)V

    .line 282
    .end local v0    # "apiID":Lc8/ENp;
    .end local v1    # "builder":Lc8/COp;
    :cond_1
    :goto_1
    return-object v5

    .line 257
    .end local v4    # "method":Lmtopsdk/mtop/domain/MethodEnum;
    .end local v5    # "requestID":Lc8/BGo;
    .end local v7    # "vipMTopFinishListener":Lc8/zGo;
    :catch_0
    move-exception v2

    .line 258
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 277
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "method":Lmtopsdk/mtop/domain/MethodEnum;
    .restart local v5    # "requestID":Lc8/BGo;
    .restart local v7    # "vipMTopFinishListener":Lc8/zGo;
    :cond_2
    if-eqz p5, :cond_1

    .line 278
    new-instance v8, Lc8/oGo;

    invoke-direct {v8}, Lc8/oGo;-><init>()V

    const/4 v9, 0x0

    invoke-interface {p5, v8, v9}, Lc8/mGo;->onFailed(Lc8/oGo;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public request(Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;Ljava/lang/Class;Lc8/mGo;)Lc8/BGo;
    .locals 6
    .param p1, "requestData"    # Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;
    .param p2, "methodEnum"    # Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;",
            "Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lc8/mGo",
            "<TT;>;)",
            "Lc8/BGo;"
        }
    .end annotation

    .prologue
    .line 171
    .local p3, "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "listener":Lc8/mGo;, "Lcom/youku/vip/lib/http/listener/VipInternalHttpListener<TT;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lc8/AGo;->request(Lc8/dOp;Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;Ljava/lang/Class;ZLc8/mGo;)Lc8/BGo;

    move-result-object v0

    return-object v0
.end method

.method public request(Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;Ljava/lang/Class;Lc8/mGo;)Lc8/BGo;
    .locals 6
    .param p1, "requestData"    # Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lc8/mGo",
            "<TT;>;)",
            "Lc8/BGo;"
        }
    .end annotation

    .prologue
    .line 146
    .local p2, "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "listener":Lc8/mGo;, "Lcom/youku/vip/lib/http/listener/VipInternalHttpListener<TT;>;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lc8/AGo;->request(Lc8/dOp;Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;Ljava/lang/Class;ZLc8/mGo;)Lc8/BGo;

    move-result-object v0

    return-object v0
.end method

.method public request(Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;Ljava/lang/Class;ZLc8/mGo;)Lc8/BGo;
    .locals 6
    .param p1, "requestData"    # Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;
    .param p3, "isRunUIThread"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;",
            "Ljava/lang/Class",
            "<TT;>;Z",
            "Lc8/mGo",
            "<TT;>;)",
            "Lc8/BGo;"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "listener":Lc8/mGo;, "Lcom/youku/vip/lib/http/listener/VipInternalHttpListener<TT;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lc8/AGo;->request(Lc8/dOp;Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;Ljava/lang/Class;ZLc8/mGo;)Lc8/BGo;

    move-result-object v0

    return-object v0
.end method

.method public requestByBusiness(Lc8/dOp;Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;Ljava/lang/Class;ZLc8/mGo;)V
    .locals 7
    .param p1, "requestData"    # Lc8/dOp;
    .param p2, "methodEnum"    # Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;
    .param p4, "isShowLoginUI"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/dOp;",
            "Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;",
            "Ljava/lang/Class",
            "<TT;>;Z",
            "Lc8/mGo",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p3, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p5, "listener":Lc8/mGo;, "Lcom/youku/vip/lib/http/listener/VipInternalHttpListener<TT;>;"
    const/4 v4, 0x0

    .line 295
    .local v4, "traceId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 297
    .local v1, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    sget-object v6, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v6}, Lc8/JRo;->generate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-static {v4}, Lc8/cIo;->getLogTag(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 302
    :goto_0
    if-nez v1, :cond_0

    .line 303
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 306
    .restart local v1    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    sget-object v6, Lc8/AGo;->mtop:Lc8/AOp;

    invoke-static {v6, p1}, Lc8/GMf;->build(Lc8/AOp;Lc8/dOp;)Lc8/GMf;

    move-result-object v3

    .line 307
    .local v3, "mtopBusiness":Lc8/GMf;
    invoke-virtual {v3, p4}, Lc8/GMf;->showLoginUI(Z)Lc8/GMf;

    .line 308
    invoke-virtual {v3, v1}, Lc8/GMf;->headers(Ljava/util/Map;)Lc8/GMf;

    .line 309
    invoke-virtual {p0, p2}, Lc8/AGo;->getReqMethod(Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;)Lmtopsdk/mtop/domain/MethodEnum;

    move-result-object v2

    .line 310
    .local v2, "method":Lmtopsdk/mtop/domain/MethodEnum;
    invoke-virtual {v3, v2}, Lc8/GMf;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/GMf;

    .line 312
    new-instance v5, Lc8/sGo;

    invoke-direct {v5, p3, p5, v4}, Lc8/sGo;-><init>(Ljava/lang/Class;Lc8/mGo;Ljava/lang/String;)V

    .line 313
    .local v5, "vipMTopBusinessListener":Lc8/sGo;
    invoke-virtual {v3, v5}, Lc8/GMf;->registerListener(Lc8/CMf;)Lc8/GMf;

    .line 315
    invoke-virtual {v3}, Lc8/GMf;->startRequest()V

    .line 316
    return-void

    .line 299
    .end local v2    # "method":Lmtopsdk/mtop/domain/MethodEnum;
    .end local v3    # "mtopBusiness":Lc8/GMf;
    .end local v5    # "vipMTopBusinessListener":Lc8/sGo;
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public requestByBusiness(Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;Ljava/lang/Class;Lc8/mGo;)V
    .locals 1
    .param p1, "requestData"    # Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lc8/mGo",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "listener":Lc8/mGo;, "Lcom/youku/vip/lib/http/listener/VipInternalHttpListener<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lc8/AGo;->requestByBusiness(Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;Ljava/lang/Class;ZLc8/mGo;)V

    .line 185
    return-void
.end method

.method public requestByBusiness(Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;Ljava/lang/Class;ZLc8/mGo;)V
    .locals 6
    .param p1, "requestData"    # Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;
    .param p3, "isShowLoginUI"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;",
            "Ljava/lang/Class",
            "<TT;>;Z",
            "Lc8/mGo",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p2, "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "listener":Lc8/mGo;, "Lcom/youku/vip/lib/http/listener/VipInternalHttpListener<TT;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lc8/AGo;->requestByBusiness(Lc8/dOp;Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;Ljava/lang/Class;ZLc8/mGo;)V

    .line 197
    return-void
.end method

.method public requestCMS(Lcom/youku/vip/lib/http/model/VipBaseRequestModel;Lc8/lGo;)Lc8/BGo;
    .locals 1
    .param p1, "requestData"    # Lcom/youku/vip/lib/http/model/VipBaseRequestModel;
    .param p2, "listener"    # Lc8/lGo;

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, p1, v0, v0, p2}, Lc8/AGo;->requestCMS(Lcom/youku/vip/lib/http/model/VipBaseRequestModel;Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;Ljava/lang/Class;Lc8/lGo;)Lc8/BGo;

    move-result-object v0

    return-object v0
.end method

.method public requestCMS(Lcom/youku/vip/lib/http/model/VipBaseRequestModel;Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;Ljava/lang/Class;Lc8/lGo;)Lc8/BGo;
    .locals 11
    .param p1, "requestData"    # Lcom/youku/vip/lib/http/model/VipBaseRequestModel;
    .param p2, "methodEnum"    # Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/youku/vip/lib/http/model/VipBaseRequestModel;",
            "Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lc8/lGo",
            "<TT;>;)",
            "Lc8/BGo;"
        }
    .end annotation

    .prologue
    .line 208
    .local p3, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "listener":Lc8/lGo;, "Lcom/youku/vip/lib/http/listener/VipHttpListener<TT;>;"
    const/4 v7, 0x0

    .line 209
    .local v7, "traceId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 211
    .local v3, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    sget-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v9}, Lc8/JRo;->generate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 212
    invoke-static {v7}, Lc8/cIo;->getLogTag(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 216
    :goto_0
    if-nez v3, :cond_0

    .line 217
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 220
    .restart local v3    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v5, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v5}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 221
    .local v5, "request":Lmtopsdk/mtop/domain/MtopRequest;
    invoke-interface {p1}, Lcom/youku/vip/lib/http/model/VipBaseRequestModel;->getAPI_NAME()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 222
    invoke-interface {p1}, Lcom/youku/vip/lib/http/model/VipBaseRequestModel;->getVERSION()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 223
    invoke-interface {p1}, Lcom/youku/vip/lib/http/model/VipBaseRequestModel;->isNEED_ECODE()Z

    move-result v9

    invoke-virtual {v5, v9}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 224
    invoke-static {p1}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, p2}, Lc8/AGo;->getReqMethod(Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;)Lmtopsdk/mtop/domain/MethodEnum;

    move-result-object v4

    .line 226
    .local v4, "method":Lmtopsdk/mtop/domain/MethodEnum;
    new-instance v8, Lc8/rGo;

    invoke-direct {v8, p3, v7, p4}, Lc8/rGo;-><init>(Ljava/lang/Class;Ljava/lang/String;Lc8/lGo;)V

    .line 227
    .local v8, "vipMTopFinishListener":Lc8/rGo;
    new-instance v6, Lc8/BGo;

    invoke-direct {v6}, Lc8/BGo;-><init>()V

    .line 228
    .local v6, "requestID":Lc8/BGo;
    sget-object v9, Lc8/AGo;->mtop:Lc8/AOp;

    if-eqz v9, :cond_2

    .line 229
    sget-object v9, Lc8/AGo;->mtop:Lc8/AOp;

    invoke-static {}, Lc8/Iin;->getTTID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lc8/AOp;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/COp;

    move-result-object v9

    .line 230
    invoke-virtual {v9, v3}, Lc8/COp;->headers(Ljava/util/Map;)Lc8/COp;

    move-result-object v9

    .line 231
    invoke-virtual {v9, v8}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v9

    invoke-virtual {v9, v4}, Lc8/COp;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/COp;

    move-result-object v1

    .line 233
    .local v1, "builder":Lc8/COp;
    invoke-virtual {v1}, Lc8/COp;->asyncRequest()Lc8/ENp;

    move-result-object v0

    .line 234
    .local v0, "apiID":Lc8/ENp;
    invoke-virtual {v6, v0}, Lc8/BGo;->setApiID(Lc8/ENp;)V

    .line 240
    .end local v0    # "apiID":Lc8/ENp;
    .end local v1    # "builder":Lc8/COp;
    :cond_1
    :goto_1
    return-object v6

    .line 213
    .end local v4    # "method":Lmtopsdk/mtop/domain/MethodEnum;
    .end local v5    # "request":Lmtopsdk/mtop/domain/MtopRequest;
    .end local v6    # "requestID":Lc8/BGo;
    .end local v8    # "vipMTopFinishListener":Lc8/rGo;
    :catch_0
    move-exception v2

    .line 214
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 236
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "method":Lmtopsdk/mtop/domain/MethodEnum;
    .restart local v5    # "request":Lmtopsdk/mtop/domain/MtopRequest;
    .restart local v6    # "requestID":Lc8/BGo;
    .restart local v8    # "vipMTopFinishListener":Lc8/rGo;
    :cond_2
    if-eqz p4, :cond_1

    .line 237
    new-instance v9, Lc8/oGo;

    invoke-direct {v9}, Lc8/oGo;-><init>()V

    const/4 v10, 0x0

    invoke-interface {p4, v9, v10}, Lc8/lGo;->onFailed(Lc8/oGo;Lc8/nGo;)V

    goto :goto_1
.end method

.method public requestCMS(Lcom/youku/vip/lib/http/model/VipBaseRequestModel;Ljava/lang/Class;Lc8/lGo;)Lc8/BGo;
    .locals 1
    .param p1, "requestData"    # Lcom/youku/vip/lib/http/model/VipBaseRequestModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/youku/vip/lib/http/model/VipBaseRequestModel;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lc8/lGo",
            "<TT;>;)",
            "Lc8/BGo;"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "listener":Lc8/lGo;, "Lcom/youku/vip/lib/http/listener/VipHttpListener<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lc8/AGo;->requestCMS(Lcom/youku/vip/lib/http/model/VipBaseRequestModel;Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;Ljava/lang/Class;Lc8/lGo;)Lc8/BGo;

    move-result-object v0

    return-object v0
.end method
