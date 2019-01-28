.class public Lc8/Bxb;
.super Ljava/lang/Object;
.source "MtopHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zxb;,
        Lc8/Axb;
    }
.end annotation


# static fields
.field private static final MSG_FAILED:Ljava/lang/String; = "MSG_FAILED"

.field private static final MSG_PARAM_ERR:Ljava/lang/String; = "MSG_PARAM_ERR"

.field private static final MSG_SUCCESS:Ljava/lang/String; = "WX_SUCCESS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method private static buildRemoteBusiness(Lmtopsdk/mtop/domain/MtopRequest;Lc8/Axb;)Lc8/HMf;
    .locals 2
    .param p0, "request"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p1, "paramObj"    # Lc8/Axb;

    .prologue
    .line 79
    iget-object v1, p1, Lc8/Axb;->ttid:Ljava/lang/String;

    invoke-static {p0, v1}, Lc8/HMf;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/HMf;

    move-result-object v0

    .line 82
    .local v0, "remoteBusiness":Lc8/HMf;
    iget-boolean v1, p1, Lc8/Axb;->isHttps:Z

    if-eqz v1, :cond_2

    .line 83
    sget-object v1, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTPSECURE:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v0, v1}, Lc8/HMf;->protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lc8/COp;

    .line 87
    :goto_0
    invoke-virtual {v0}, Lc8/HMf;->useCache()Lc8/COp;

    .line 88
    iget v1, p1, Lc8/Axb;->timer:I

    if-lez v1, :cond_0

    .line 89
    iget v1, p1, Lc8/Axb;->timer:I

    invoke-virtual {v0, v1}, Lc8/HMf;->setConnectionTimeoutMilliSecond(I)Lc8/COp;

    .line 91
    :cond_0
    iget-boolean v1, p1, Lc8/Axb;->isSec:Z

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v0}, Lc8/HMf;->useWua()Lc8/COp;

    .line 94
    :cond_1
    iget-boolean v1, p1, Lc8/Axb;->post:Z

    if-eqz v1, :cond_3

    sget-object v1, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    :goto_1
    invoke-virtual {v0, v1}, Lc8/HMf;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/COp;

    .line 95
    return-object v0

    .line 85
    :cond_2
    sget-object v1, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v0, v1}, Lc8/HMf;->protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lc8/COp;

    goto :goto_0

    .line 94
    :cond_3
    sget-object v1, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    goto :goto_1
.end method

.method private static buildRequest(Lc8/Axb;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 2
    .param p0, "paramObj"    # Lc8/Axb;

    .prologue
    .line 68
    new-instance v0, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v0}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 69
    .local v0, "request":Lmtopsdk/mtop/domain/MtopRequest;
    iget-object v1, p0, Lc8/Axb;->api:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lc8/Axb;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 71
    iget-boolean v1, p0, Lc8/Axb;->ecode:Z

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 73
    invoke-virtual {p0}, Lc8/Axb;->getData()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    .line 74
    iget-object v1, v0, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    invoke-static {v1}, Lc8/qPp;->converMapToDataStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 75
    return-object v0
.end method

.method private static parseParams(Ljava/lang/String;)Lc8/Axb;
    .locals 11
    .param p0, "params"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 100
    :try_start_0
    new-instance v4, Lc8/Axb;

    const/4 v9, 0x0

    invoke-direct {v4, v9}, Lc8/Axb;-><init>(Lc8/yxb;)V

    .line 101
    .local v4, "mParams":Lc8/Axb;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v9, "api"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lc8/Axb;->api:Ljava/lang/String;

    .line 103
    const-string/jumbo v9, "v"

    const-string/jumbo v10, "*"

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lc8/Axb;->v:Ljava/lang/String;

    .line 104
    const-string/jumbo v9, "post"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1

    move v9, v7

    :goto_0
    iput-boolean v9, v4, Lc8/Axb;->post:Z

    .line 105
    const-string/jumbo v9, "ecode"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_2

    move v9, v7

    :goto_1
    iput-boolean v9, v4, Lc8/Axb;->ecode:Z

    .line 106
    const-string/jumbo v9, "isSec"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_3

    move v9, v7

    :goto_2
    iput-boolean v9, v4, Lc8/Axb;->isSec:Z

    .line 107
    const-string/jumbo v9, "isHttps"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_4

    :goto_3
    iput-boolean v7, v4, Lc8/Axb;->isHttps:Z

    .line 108
    const-string/jumbo v7, "ttid"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lc8/Axb;->ttid:Ljava/lang/String;

    .line 109
    const-string/jumbo v7, "timer"

    const/4 v8, -0x1

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v4, Lc8/Axb;->timer:I

    .line 110
    const-string/jumbo v7, "param"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 111
    .local v0, "dataParam":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 113
    .local v1, "it":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v4, v3, v5}, Lc8/Axb;->addData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 121
    .end local v0    # "dataParam":Lorg/json/JSONObject;
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "mParams":Lc8/Axb;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseParams error, param="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/xgg;->e(Ljava/lang/String;)V

    move-object v4, v6

    .line 122
    :cond_0
    return-object v4

    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "mParams":Lc8/Axb;
    :cond_1
    move v9, v8

    .line 104
    goto :goto_0

    :cond_2
    move v9, v8

    .line 105
    goto :goto_1

    :cond_3
    move v9, v8

    .line 106
    goto :goto_2

    :cond_4
    move v7, v8

    .line 107
    goto :goto_3
.end method

.method public static send(Ljava/lang/String;Lc8/zxb;)V
    .locals 5
    .param p0, "params"    # Ljava/lang/String;
    .param p1, "callback"    # Lc8/zxb;

    .prologue
    .line 28
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendMtop >>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 32
    :cond_0
    if-nez p1, :cond_1

    .line 65
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-static {p0}, Lc8/Bxb;->parseParams(Ljava/lang/String;)Lc8/Axb;

    move-result-object v0

    .line 37
    .local v0, "paramObj":Lc8/Axb;
    if-nez v0, :cond_2

    .line 38
    const-string/jumbo v3, "MSG_PARAM_ERR"

    invoke-interface {p1, v3}, Lc8/zxb;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {v0}, Lc8/Bxb;->buildRequest(Lc8/Axb;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v2

    .line 42
    .local v2, "request":Lmtopsdk/mtop/domain/MtopRequest;
    invoke-static {v2, v0}, Lc8/Bxb;->buildRemoteBusiness(Lmtopsdk/mtop/domain/MtopRequest;Lc8/Axb;)Lc8/HMf;

    move-result-object v1

    .line 43
    .local v1, "remoteBusiness":Lc8/HMf;
    new-instance v3, Lc8/yxb;

    invoke-direct {v3, p1}, Lc8/yxb;-><init>(Lc8/zxb;)V

    invoke-virtual {v1, v3}, Lc8/HMf;->registeListener(Lc8/QNp;)Lc8/HMf;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Lc8/HMf;->startRequest()V

    goto :goto_0
.end method
