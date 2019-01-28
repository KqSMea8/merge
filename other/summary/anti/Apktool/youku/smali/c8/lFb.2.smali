.class public Lc8/lFb;
.super Lc8/rFb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc8/rFb;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Map;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;
    .locals 6

    new-instance v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;

    invoke-direct {v1}, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;-><init>()V

    const-string/jumbo v0, "api"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->apiName:Ljava/lang/String;

    const-string/jumbo v0, "version"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->apiVersion:Ljava/lang/String;

    const-string/jumbo v0, "needLogin"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2Boolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needLogin:Z

    const-string/jumbo v0, "needWua"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2Boolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needWua:Z

    const-string/jumbo v0, "needAuth"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2Boolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needAuth:Z

    const-string/jumbo v0, "isPost"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2Boolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->isPost:Z

    const-string/jumbo v0, "ext_headers"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2MapString(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->extHeaders:Ljava/util/Map;

    const-string/jumbo v0, "timeout"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2Long(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->timeOut:I

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->requestType:I

    const-string/jumbo v0, "params"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v3, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->paramMap:Ljava/util/Map;

    :cond_2
    return-object v1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Lc8/eFb;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_2

    :cond_0
    new-instance v1, Lc8/fFb;

    const-string/jumbo v2, "6"

    invoke-direct {v1, v2}, Lc8/fFb;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Lc8/fFb;->setResultCode(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {p3, v1}, Lc8/eFb;->error(Lc8/fFb;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    invoke-static {p2}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lc8/RHb;->obj2MapObject(Ljava/lang/Object;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/lFb;->a(Ljava/util/Map;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->check()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    new-instance v1, Lc8/fFb;

    const-string/jumbo v2, "6"

    invoke-direct {v1, v2}, Lc8/fFb;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Lc8/fFb;->setResultCode(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lc8/eFb;->error(Lc8/fFb;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "AliBCNetWork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isInstall parse params error, params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lc8/UFb;->getInstance()Lc8/UFb;

    move-result-object v0

    new-instance v2, Lc8/mFb;

    invoke-direct {v2, p0, p3}, Lc8/mFb;-><init>(Lc8/lFb;Lc8/eFb;)V

    invoke-virtual {v0, v2, v1}, Lc8/UFb;->sendRequest(Lc8/VFb;Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method
