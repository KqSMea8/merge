.class public Lc8/Dub;
.super Ljava/lang/Object;
.source "WXMtopRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Cub;
    }
.end annotation


# static fields
.field private static final AUTO_LOGIN_ONLY:Ljava/lang/String; = "AutoLoginOnly"

.field private static final AUTO_LOGIN_WITH_MANUAL:Ljava/lang/String; = "AutoLoginAndManualLogin"

.field public static final MSG_FAILED:Ljava/lang/String; = "WX_FAILED"

.field public static final MSG_PARAM_ERR:Ljava/lang/String; = "MSG_PARAM_ERR"

.field public static final MSG_SUCCESS:Ljava/lang/String; = "WX_SUCCESS"

.field private static final NOTIFY_RESULT:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "WXMtopRequest"

.field private static scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mtopTracker:Lc8/gxb;

.field private version:Lcom/alibaba/aliweex/adapter/module/mtop/WXMtopModule$MTOP_VERSION;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lc8/Dub;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/aliweex/adapter/module/mtop/WXMtopModule$MTOP_VERSION;)V
    .locals 2
    .param p1, "version"    # Lcom/alibaba/aliweex/adapter/module/mtop/WXMtopModule$MTOP_VERSION;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lc8/xub;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/xub;-><init>(Lc8/Dub;Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/Dub;->mHandler:Landroid/os/Handler;

    .line 110
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lc8/gxb;->newInstance()Lc8/gxb;

    move-result-object v0

    iput-object v0, p0, Lc8/Dub;->mtopTracker:Lc8/gxb;

    .line 113
    :cond_0
    iput-object p1, p0, Lc8/Dub;->version:Lcom/alibaba/aliweex/adapter/module/mtop/WXMtopModule$MTOP_VERSION;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lc8/Dub;)Lcom/alibaba/aliweex/adapter/module/mtop/WXMtopModule$MTOP_VERSION;
    .locals 1
    .param p0, "x0"    # Lc8/Dub;

    .prologue
    .line 48
    iget-object v0, p0, Lc8/Dub;->version:Lcom/alibaba/aliweex/adapter/module/mtop/WXMtopModule$MTOP_VERSION;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Dub;Lorg/json/JSONObject;)Lc8/vub;
    .locals 1
    .param p0, "x0"    # Lc8/Dub;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lc8/Dub;->parseParams(Lorg/json/JSONObject;)Lc8/vub;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lc8/Dub;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Dub;Lc8/uub;)V
    .locals 0
    .param p0, "x0"    # Lc8/Dub;
    .param p1, "x1"    # Lc8/uub;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lc8/Dub;->dispatchToMainThread(Lc8/uub;)V

    return-void
.end method

.method static synthetic access$300(Lc8/Dub;Lc8/vub;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 1
    .param p0, "x0"    # Lc8/Dub;
    .param p1, "x1"    # Lc8/vub;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lc8/Dub;->buildRequest(Lc8/vub;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lc8/Dub;Lmtopsdk/mtop/domain/MtopRequest;Lc8/vub;Ljava/lang/String;)Lc8/HMf;
    .locals 1
    .param p0, "x0"    # Lc8/Dub;
    .param p1, "x1"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p2, "x2"    # Lc8/vub;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lc8/Dub;->buildRemoteBusiness(Lmtopsdk/mtop/domain/MtopRequest;Lc8/vub;Ljava/lang/String;)Lc8/HMf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lc8/Dub;)Lc8/gxb;
    .locals 1
    .param p0, "x0"    # Lc8/Dub;

    .prologue
    .line 48
    iget-object v0, p0, Lc8/Dub;->mtopTracker:Lc8/gxb;

    return-object v0
.end method

.method static synthetic access$600(Lc8/Dub;Lc8/EWf;Lc8/EWf;Lmtopsdk/mtop/domain/MtopResponse;)Lc8/uub;
    .locals 1
    .param p0, "x0"    # Lc8/Dub;
    .param p1, "x1"    # Lc8/EWf;
    .param p2, "x2"    # Lc8/EWf;
    .param p3, "x3"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lc8/Dub;->parseResult(Lc8/EWf;Lc8/EWf;Lmtopsdk/mtop/domain/MtopResponse;)Lc8/uub;

    move-result-object v0

    return-object v0
.end method

.method private buildRemoteBusiness(Lmtopsdk/mtop/domain/MtopRequest;Lc8/vub;Ljava/lang/String;)Lc8/HMf;
    .locals 4
    .param p1, "request"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p2, "paramObj"    # Lc8/vub;
    .param p3, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v2, p2, Lc8/vub;->ttid:Ljava/lang/String;

    invoke-static {v2}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lc8/mOp;->getInstance()Lc8/mOp;

    move-result-object v2

    invoke-virtual {v2}, Lc8/mOp;->getGlobalTtid()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {p1, v2}, Lc8/HMf;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/HMf;

    move-result-object v1

    .line 176
    .local v1, "remoteBusiness":Lc8/HMf;
    iget-object v2, p2, Lc8/vub;->sessionOption:Ljava/lang/String;

    const-string/jumbo v3, "AutoLoginOnly"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lc8/HMf;->showLoginUI(Z)Lc8/HMf;

    .line 177
    sget-object v2, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v1, v2}, Lc8/HMf;->protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lc8/COp;

    .line 178
    invoke-virtual {v1}, Lc8/HMf;->useCache()Lc8/COp;

    .line 179
    iget v2, p2, Lc8/vub;->wuaFlag:I

    if-lez v2, :cond_0

    .line 181
    invoke-virtual {v1}, Lc8/HMf;->useWua()Lc8/COp;

    .line 183
    :cond_0
    iget-boolean v2, p2, Lc8/vub;->post:Z

    if-eqz v2, :cond_7

    sget-object v2, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    :goto_2
    invoke-virtual {v1, v2}, Lc8/HMf;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/COp;

    .line 184
    invoke-virtual {p2}, Lc8/vub;->getHeaders()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 185
    invoke-virtual {p2}, Lc8/vub;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/HMf;->headers(Ljava/util/Map;)Lc8/COp;

    .line 187
    :cond_1
    invoke-static {p3}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "User-Agent"

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {v1, v0}, Lc8/HMf;->headers(Ljava/util/Map;)Lc8/COp;

    .line 192
    .end local v0    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p2, Lc8/vub;->type:Ljava/lang/String;

    invoke-static {v2}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "json"

    iget-object v3, p2, Lc8/vub;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "originaljson"

    iget-object v3, p2, Lc8/vub;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 193
    :cond_3
    iget-object v2, p2, Lc8/vub;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmtopsdk/mtop/domain/JsonTypeEnum;->valueOf(Ljava/lang/String;)Lmtopsdk/mtop/domain/JsonTypeEnum;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/HMf;->setJsonType(Lmtopsdk/mtop/domain/JsonTypeEnum;)Lc8/COp;

    .line 195
    :cond_4
    return-object v1

    .line 175
    .end local v1    # "remoteBusiness":Lc8/HMf;
    :cond_5
    iget-object v2, p2, Lc8/vub;->ttid:Ljava/lang/String;

    goto :goto_0

    .line 176
    .restart local v1    # "remoteBusiness":Lc8/HMf;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 183
    :cond_7
    sget-object v2, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    goto :goto_2
.end method

.method private buildRequest(Lc8/vub;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 2
    .param p1, "paramObj"    # Lc8/vub;

    .prologue
    .line 162
    new-instance v0, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v0}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 163
    .local v0, "request":Lmtopsdk/mtop/domain/MtopRequest;
    iget-object v1, p1, Lc8/vub;->api:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 164
    iget-object v1, p1, Lc8/vub;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 165
    iget-boolean v1, p1, Lc8/vub;->ecode:Z

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 166
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedSession(Z)V

    .line 167
    iget-object v1, p1, Lc8/vub;->dataString:Ljava/lang/String;

    invoke-static {v1}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p1, Lc8/vub;->dataString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 170
    :cond_0
    invoke-virtual {p1}, Lc8/vub;->getDataMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    .line 171
    return-object v0
.end method

.method private dispatchToMainThread(Lc8/uub;)V
    .locals 2
    .param p1, "result"    # Lc8/uub;

    .prologue
    .line 158
    iget-object v0, p0, Lc8/Dub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void
.end method

.method private parseParams(Lorg/json/JSONObject;)Lc8/vub;
    .locals 14
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 200
    :try_start_0
    new-instance v7, Lc8/vub;

    invoke-direct {v7}, Lc8/vub;-><init>()V

    .line 202
    .local v7, "mParams":Lc8/vub;
    const-string/jumbo v11, "api"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lc8/vub;->api:Ljava/lang/String;

    .line 203
    const-string/jumbo v11, "v"

    const-string/jumbo v12, "*"

    invoke-virtual {p1, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lc8/vub;->v:Ljava/lang/String;

    .line 206
    const-string/jumbo v11, "type"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, "type":Ljava/lang/String;
    const-string/jumbo v11, "GET"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "POST"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 208
    :cond_0
    const-string/jumbo v11, "POST"

    const-string/jumbo v12, "type"

    const-string/jumbo v13, "GET"

    invoke-virtual {p1, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v7, Lc8/vub;->post:Z

    .line 220
    :goto_0
    const-string/jumbo v11, "dataType"

    const-string/jumbo v12, "originaljson"

    invoke-virtual {p1, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lc8/vub;->type:Ljava/lang/String;

    .line 229
    const-string/jumbo v11, "needLogin"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 230
    const-string/jumbo v10, "needLogin"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 236
    .local v1, "ecodeBl":Z
    :goto_1
    iput-boolean v1, v7, Lc8/vub;->ecode:Z

    .line 238
    const-string/jumbo v10, "secType"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string/jumbo v10, "isSec"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    :goto_2
    iput v10, v7, Lc8/vub;->wuaFlag:I

    .line 240
    const-string/jumbo v10, "ttid"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lc8/vub;->ttid:Ljava/lang/String;

    .line 242
    const-string/jumbo v10, "timeout"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string/jumbo v10, "timer"

    const/16 v11, 0x1f4

    invoke-virtual {p1, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    :goto_3
    iput-wide v10, v7, Lc8/vub;->timer:J

    .line 245
    const-string/jumbo v10, "sessionOption"

    const-string/jumbo v11, "AutoLoginAndManualLogin"

    invoke-virtual {p1, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lc8/vub;->sessionOption:Ljava/lang/String;

    .line 246
    const-string/jumbo v10, "data"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_b

    const-string/jumbo v10, "data"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 247
    .local v0, "dataParam":Lorg/json/JSONObject;
    :goto_4
    if-eqz v0, :cond_d

    .line 248
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 249
    .local v4, "it":Ljava/util/Iterator;
    :cond_1
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 250
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 251
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 252
    .local v9, "value":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v6, v10}, Lc8/vub;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    instance-of v10, v9, Lorg/json/JSONArray;

    if-nez v10, :cond_1

    instance-of v10, v9, Lorg/json/JSONObject;

    if-nez v10, :cond_1

    .line 255
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 274
    .end local v0    # "dataParam":Lorg/json/JSONObject;
    .end local v1    # "ecodeBl":Z
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "mParams":Lc8/vub;
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v10

    const-string/jumbo v10, "WXMtopRequest"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "parseParams error, param="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/4 v7, 0x0

    :cond_2
    return-object v7

    .line 210
    .restart local v7    # "mParams":Lc8/vub;
    .restart local v8    # "type":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v11, "post"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 211
    .local v3, "ispost":Ljava/lang/Object;
    instance-of v11, v3, Ljava/lang/Boolean;

    if-eqz v11, :cond_4

    .line 212
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "ispost":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iput-boolean v11, v7, Lc8/vub;->post:Z

    goto/16 :goto_0

    .line 214
    .restart local v3    # "ispost":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v11, "post"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_5

    move v11, v1

    :goto_6
    iput-boolean v11, v7, Lc8/vub;->post:Z

    goto/16 :goto_0

    :cond_5
    move v11, v10

    goto :goto_6

    .line 231
    .end local v3    # "ispost":Ljava/lang/Object;
    :cond_6
    const-string/jumbo v11, "loginRequest"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 232
    const-string/jumbo v10, "loginRequest"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .restart local v1    # "ecodeBl":Z
    goto/16 :goto_1

    .line 234
    .end local v1    # "ecodeBl":Z
    :cond_7
    const-string/jumbo v11, "ecode"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_8

    .restart local v1    # "ecodeBl":Z
    :goto_7
    goto/16 :goto_1

    .end local v1    # "ecodeBl":Z
    :cond_8
    move v1, v10

    goto :goto_7

    .line 238
    .restart local v1    # "ecodeBl":Z
    :cond_9
    const-string/jumbo v10, "secType"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    goto/16 :goto_2

    .line 242
    :cond_a
    const-string/jumbo v10, "timeout"

    const/16 v11, 0x4e20

    invoke-virtual {p1, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    goto/16 :goto_3

    .line 246
    :cond_b
    const-string/jumbo v10, "param"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_4

    .line 258
    .restart local v0    # "dataParam":Lorg/json/JSONObject;
    .restart local v4    # "it":Ljava/util/Iterator;
    :cond_c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lc8/vub;->dataString:Ljava/lang/String;

    .line 260
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_d
    const-string/jumbo v10, "ext_headers"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 261
    .local v2, "headers":Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 262
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 263
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_e
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 264
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 265
    .restart local v6    # "key":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 266
    .local v9, "value":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 269
    invoke-virtual {v7, v6, v9}, Lc8/vub;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8
.end method

.method private parseResult(Lc8/EWf;Lc8/EWf;Lmtopsdk/mtop/domain/MtopResponse;)Lc8/uub;
    .locals 12
    .param p1, "callback"    # Lc8/EWf;
    .param p2, "failure"    # Lc8/EWf;
    .param p3, "response"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 281
    .local v4, "start":J
    new-instance v1, Lc8/uub;

    invoke-direct {v1, p1, p2}, Lc8/uub;-><init>(Lc8/EWf;Lc8/EWf;)V

    .line 283
    .local v1, "result":Lc8/uub;
    const-string/jumbo v7, "ret"

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v9, "HY_FAILED"

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lc8/uub;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 284
    if-nez p3, :cond_1

    .line 285
    const-string/jumbo v7, "code"

    const-string/jumbo v8, "-1"

    invoke-virtual {v1, v7, v8}, Lc8/uub;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string/jumbo v7, "WXMtopRequest"

    const-string/jumbo v8, "parseResult: time out"

    invoke-static {v7, v8}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_0
    :goto_0
    return-object v1

    .line 289
    :cond_1
    const-string/jumbo v7, "code"

    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lc8/uub;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 291
    const-string/jumbo v7, "ret"

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v9, "ERR_SID_INVALID"

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lc8/uub;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 296
    :cond_2
    :try_start_0
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v7

    if-eqz v7, :cond_3

    .line 297
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v7

    const-string/jumbo v8, "utf-8"

    invoke-direct {v2, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 299
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "code"

    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 303
    .local v3, "statObject":Lorg/json/JSONObject;
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lc8/pPp;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lc8/pPp;

    move-result-object v7

    invoke-virtual {v7}, Lc8/pPp;->getNetStat()Lanetwork/channel/statist/StatisticData;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 304
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lc8/pPp;

    move-result-object v7

    invoke-virtual {v7}, Lc8/pPp;->getNetStat()Lanetwork/channel/statist/StatisticData;

    move-result-object v6

    .line 305
    .local v6, "statisticData":Lanetwork/channel/statist/StatisticData;
    const-string/jumbo v7, "oneWayTime"

    iget-wide v8, v6, Lanetwork/channel/statist/StatisticData;->oneWayTime_AEngine:J

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 306
    const-string/jumbo v7, "recDataSize"

    iget-wide v8, v6, Lanetwork/channel/statist/StatisticData;->totalSize:J

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 311
    .end local v6    # "statisticData":Lanetwork/channel/statist/StatisticData;
    :goto_1
    const-string/jumbo v7, "stat"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    invoke-virtual {v1, v0}, Lc8/uub;->setData(Lorg/json/JSONObject;)V

    .line 315
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "statObject":Lorg/json/JSONObject;
    :cond_3
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 316
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lc8/uub;->setSuccess(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_4
    :goto_2
    sget-object v7, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v7}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 326
    const-string/jumbo v7, "WXMtopRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parseResult cost time(ms):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "s":Ljava/lang/String;
    .restart local v3    # "statObject":Lorg/json/JSONObject;
    :cond_5
    :try_start_1
    const-string/jumbo v7, "oneWayTime"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 309
    const-string/jumbo v7, "recDataSize"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 321
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "statObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    invoke-static {}, Lc8/BMp;->isPrintLog()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 322
    const-string/jumbo v7, "WXMtopRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parseResult mtop response parse fail, content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 318
    :cond_6
    :try_start_2
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lc8/uub;->setRetCode(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public request(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "success"    # Lc8/EWf;
    .param p4, "failure"    # Lc8/EWf;

    .prologue
    .line 154
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lc8/Dub;->send(Landroid/content/Context;Ljava/lang/String;Lc8/EWf;Lc8/EWf;)V

    .line 155
    return-void
.end method

.method public send(Landroid/content/Context;Ljava/lang/String;Lc8/EWf;Lc8/EWf;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Lc8/EWf;
    .param p4, "failure"    # Lc8/EWf;

    .prologue
    .line 117
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mtop send >>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 120
    :cond_0
    sget-object v6, Lc8/Dub;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lc8/yub;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lc8/yub;-><init>(Lc8/Dub;Ljava/lang/String;Lc8/EWf;Lc8/EWf;Landroid/content/Context;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 151
    return-void
.end method
