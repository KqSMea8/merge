.class public Lc8/UFb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/WFb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/TFb;
    }
.end annotation


# static fields
.field private static b:Lc8/AOp;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lc8/UFb;->b:Lc8/AOp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/XFb;)V
    .locals 0

    invoke-direct {p0}, Lc8/UFb;-><init>()V

    return-void
.end method

.method private a(Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 5

    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->apiVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1.0"

    iput-object v0, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->apiVersion:Ljava/lang/String;

    :cond_0
    new-instance v3, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v3}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->apiName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->apiVersion:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needLogin:Z

    invoke-virtual {v3, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedSession(Z)V

    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->paramMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/nIb;->getJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    :goto_0
    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    :cond_4
    return-object v3
.end method

.method static synthetic a(Lc8/UFb;Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lc8/UFb;->a(Lmtopsdk/mtop/domain/MtopResponse;)V

    return-void
.end method

.method private a(Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 3

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AlibcMtop"

    const-string/jumbo v1, "\u7f51\u7edc\u8bf7\u6c42\u6210\u529f"

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AlibcMtop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "session \u5931\u6548\uff0c do autologin or login business msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "AlibcMtop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u7cfb\u7edf\u9519\u8bef\uff0c\u7f51\u7edc\u9519\u8bef\uff0c\u9632\u5237\uff0c\u9632\u96ea\u5d29 msg ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "AlibcMtop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u4e1a\u52a1\u9519\u8bef msg ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "session \u5931\u6548\uff0c do autologin or login business"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "InvokeMtop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "1501"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lc8/hGb;->sendUseabilityFailureForOtherErrmsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "\u7cfb\u7edf\u9519\u8bef\uff0c\u7f51\u7edc\u9519\u8bef\uff0c\u9632\u5237\uff0c\u9632\u96ea\u5d29 "

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "\u4e1a\u52a1\u9519\u8bef "

    goto :goto_0
.end method

.method static synthetic b(Lc8/UFb;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;
    .locals 1

    invoke-direct {p0, p1}, Lc8/UFb;->b(Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;

    move-result-object v0

    return-object v0
.end method

.method private b(Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;
    .locals 3

    new-instance v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;

    invoke-direct {v1}, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;-><init>()V

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->byteData:[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->httpCode:Ljava/lang/String;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    iput-boolean v0, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->isSuccess:Z

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v0, Ljava/util/Map;

    invoke-static {v2, v0}, Lc8/nIb;->parseStringValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->data:Ljava/util/Map;

    iput-object v2, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->jsonData:Ljava/lang/String;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getInstance()Lc8/UFb;
    .locals 1

    sget-object v0, Lc8/TFb;->a:Lc8/UFb;

    return-object v0
.end method


# virtual methods
.method public getMtop()Lc8/AOp;
    .locals 1

    sget-object v0, Lc8/UFb;->b:Lc8/AOp;

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/UFb;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/UFb;->a:Z

    sget-boolean v0, Lc8/vFb;->isDebugMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lc8/BMp;->setTLogEnabled(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lc8/BMp;->setPrintLog(Z)V

    :goto_0
    const-string/jumbo v0, "OPEN"

    sget-object v1, Lc8/vFb;->sdkVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/IOp;->setAppVersion(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OPEN"

    sget-object v1, Lc8/vFb;->context:Landroid/content/Context;

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/cHb;->getWebTTID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lc8/AOp;

    move-result-object v0

    sput-object v0, Lc8/UFb;->b:Lc8/AOp;

    sget-object v0, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    sget-object v1, Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;->TEST:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    if-ne v0, v1, :cond_2

    sget-object v0, Lc8/UFb;->b:Lc8/AOp;

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lc8/AOp;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lc8/AOp;

    :goto_1
    sget-object v0, Lc8/UFb;->b:Lc8/AOp;

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cHb;->getWebTTID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/AOp;->registerTtid(Ljava/lang/String;)Lc8/AOp;

    const-string/jumbo v0, "AlibcMtop"

    const-string/jumbo v1, "mtop init complete"

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Lc8/BMp;->setTLogEnabled(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lc8/BMp;->setPrintLog(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    sget-object v0, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    sget-object v1, Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;->PRE:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    if-ne v0, v1, :cond_3

    sget-object v0, Lc8/UFb;->b:Lc8/AOp;

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lc8/AOp;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lc8/AOp;

    goto :goto_1

    :cond_3
    sget-object v0, Lc8/UFb;->b:Lc8/AOp;

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lc8/AOp;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lc8/AOp;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public sendRequest(Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cHb;->getWebTTID()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc8/UFb;->b:Lc8/AOp;

    invoke-direct {p0, p1}, Lc8/UFb;->a(Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lc8/GMf;->build(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/GMf;

    move-result-object v0

    iget-boolean v1, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needWua:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lc8/GMf;->useWua()Lc8/GMf;

    :cond_1
    iget-boolean v1, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needAuth:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lc8/vFb;->isVip:Z

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->authParams:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lc8/GMf;->setNeedAuth(Ljava/lang/String;Z)Lc8/GMf;

    :cond_2
    iget-boolean v1, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->isPost:Z

    if-eqz v1, :cond_3

    sget-object v1, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v0, v1}, Lc8/GMf;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/GMf;

    :cond_3
    invoke-virtual {v0}, Lc8/GMf;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/UFb;->a(Lmtopsdk/mtop/domain/MtopResponse;)V

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "errmsg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,api = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lc8/UFb;->a(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0}, Lc8/UFb;->b(Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "InvokeMtop"

    invoke-static {v1}, Lc8/hGb;->sendUseabilitySuccess(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public sendRequest(Lc8/VFb;Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;)Z
    .locals 5

    const/16 v4, 0x3a98

    const/4 v0, 0x1

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lc8/VFb;->onError(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cHb;->getWebTTID()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lc8/UFb;->b:Lc8/AOp;

    invoke-direct {p0, p2}, Lc8/UFb;->a(Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lc8/GMf;->build(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/GMf;

    move-result-object v1

    iget-boolean v2, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needWua:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lc8/GMf;->useWua()Lc8/GMf;

    :cond_2
    iget-boolean v2, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needAuth:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lc8/vFb;->isVip:Z

    if-nez v2, :cond_3

    iget-object v2, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->authParams:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lc8/GMf;->setNeedAuth(Ljava/lang/String;Z)Lc8/GMf;

    :cond_3
    iget-boolean v2, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->isPost:Z

    if-eqz v2, :cond_4

    sget-object v2, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v1, v2}, Lc8/GMf;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/GMf;

    :cond_4
    iget-object v2, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->extHeaders:Ljava/util/Map;

    if-eqz v2, :cond_5

    iget-object v2, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->extHeaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->extHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lc8/GMf;->headers(Ljava/util/Map;)Lc8/GMf;

    :cond_5
    invoke-virtual {v1, v4}, Lc8/GMf;->setSocketTimeoutMilliSecond(I)Lc8/GMf;

    invoke-virtual {v1, v4}, Lc8/GMf;->setConnectionTimeoutMilliSecond(I)Lc8/GMf;

    new-instance v2, Lc8/XFb;

    invoke-direct {v2, p0, p1, p2}, Lc8/XFb;-><init>(Lc8/UFb;Lc8/VFb;Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;)V

    invoke-virtual {v1, v2}, Lc8/GMf;->registerListener(Lc8/CMf;)Lc8/GMf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/GMf;->asyncRequest()Lc8/ENp;

    goto :goto_0
.end method

.method public trunOffDebug()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lc8/BMp;->setTLogEnabled(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lc8/BMp;->setPrintLog(Z)V

    return-void
.end method

.method public trunOnDebug()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lc8/BMp;->setTLogEnabled(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lc8/BMp;->setPrintLog(Z)V

    return-void
.end method
