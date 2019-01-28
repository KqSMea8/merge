.class public Lc8/Sib;
.super Ljava/lang/Object;
.source "MTOPWrapper.java"


# static fields
.field private static INSTANCE:Lc8/Sib; = null

.field private static final MTOP_BIZ_CODE:I = 0x5e

.field private static final TAG:Ljava/lang/String; = "login.MTOPWrapperImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lc8/Sib;Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lc8/Zgb;
    .locals 1
    .param p0, "x0"    # Lc8/Sib;
    .param p1, "x1"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p2, "x2"    # Ljava/lang/Class;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lc8/Sib;->processMtopResponse(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lc8/Zgb;

    move-result-object v0

    return-object v0
.end method

.method private buildMtopRequest(Lc8/Xgb;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 5
    .param p1, "rpcRequest"    # Lc8/Xgb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 88
    new-instance v2, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v2}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 89
    .local v2, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    iget-object v3, p1, Lc8/Xgb;->target:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 90
    iget-object v3, p1, Lc8/Xgb;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2, v4}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 92
    invoke-virtual {v2, v4}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedSession(Z)V

    .line 93
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 94
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p1, Lc8/Xgb;->paramNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 95
    iget-object v3, p1, Lc8/Xgb;->paramNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, p1, Lc8/Xgb;->paramNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lc8/Xgb;->paramValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 100
    return-object v2
.end method

.method private getBizRpcResponse(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lc8/Zgb;
    .locals 2
    .param p1, "mtopResponse"    # Lmtopsdk/mtop/domain/MtopResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Lc8/Zgb",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 147
    .local p2, "v":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    :try_start_0
    invoke-direct {p0, p1, p2}, Lc8/Sib;->getvRpcResponse(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lc8/Zgb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 150
    :goto_0
    return-object v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lc8/Sib;
    .locals 2

    .prologue
    .line 51
    const-class v1, Lc8/Sib;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Sib;->INSTANCE:Lc8/Sib;

    if-nez v0, :cond_0

    new-instance v0, Lc8/Sib;

    invoke-direct {v0}, Lc8/Sib;-><init>()V

    sput-object v0, Lc8/Sib;->INSTANCE:Lc8/Sib;

    .line 52
    :cond_0
    sget-object v0, Lc8/Sib;->INSTANCE:Lc8/Sib;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getvRpcResponse(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lc8/Zgb;
    .locals 6
    .param p1, "mtopResponse"    # Lmtopsdk/mtop/domain/MtopResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Lc8/Zgb",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 156
    .local p2, "v":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v4, Lc8/Zgb;

    invoke-direct {v4}, Lc8/Zgb;-><init>()V

    .line 157
    .local v4, "rpcResponse":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<TV;>;"
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v3

    .line 158
    .local v3, "resByte":[B
    if-eqz v3, :cond_0

    .line 159
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 160
    .local v2, "jsonStr":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "data"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 162
    .local v0, "dataJsonObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 163
    const-string/jumbo v5, "code"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lc8/Zgb;->code:I

    .line 164
    const-string/jumbo v5, "codeGroup"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lc8/Zgb;->codeGroup:Ljava/lang/String;

    .line 165
    const-string/jumbo v5, "message"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lc8/Zgb;->message:Ljava/lang/String;

    .line 166
    const-string/jumbo v5, "actionType"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lc8/Zgb;->actionType:Ljava/lang/String;

    .line 167
    const-string/jumbo v5, "success"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lc8/Zgb;->success:Z

    .line 168
    const-string/jumbo v5, "returnValue"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 169
    const-string/jumbo v5, "returnValue"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Lc8/Vhb;->parseStringValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    .line 173
    .end local v0    # "dataJsonObject":Lorg/json/JSONObject;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "jsonStr":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method private processMtopResponse(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lc8/Zgb;
    .locals 3
    .param p1, "mtopResponse"    # Lmtopsdk/mtop/domain/MtopResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Lc8/Zgb",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p2, "v":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/16 v1, 0x196

    .line 104
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    if-nez v0, :cond_b

    .line 105
    :cond_0
    if-eqz p1, :cond_a

    .line 106
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 108
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 111
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    const/16 v1, 0x191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 114
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_3
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    const/16 v1, 0x192

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 117
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_4
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isIllegelSign()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    const/16 v1, 0x193

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 120
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_5
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 122
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 123
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_6
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 125
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    const/16 v1, 0x197

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 126
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_7
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopServerError()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 128
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 129
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_8
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 131
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 132
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_9
    invoke-direct {p0, p1, p2}, Lc8/Sib;->getBizRpcResponse(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lc8/Zgb;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    .line 137
    :cond_a
    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :cond_b
    invoke-direct {p0, p1, p2}, Lc8/Sib;->getBizRpcResponse(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lc8/Zgb;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public post(Lc8/Xgb;Ljava/lang/Class;)Lc8/Zgb;
    .locals 1
    .param p1, "request"    # Lc8/Xgb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Xgb;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Lc8/Zgb",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/Sib;->post(Lc8/Xgb;Ljava/lang/Class;Ljava/lang/String;)Lc8/Zgb;

    move-result-object v0

    return-object v0
.end method

.method public post(Lc8/Xgb;Ljava/lang/Class;Ljava/lang/String;)Lc8/Zgb;
    .locals 7
    .param p1, "rpcRequest"    # Lc8/Xgb;
    .param p3, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Xgb;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lc8/Zgb",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "v":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v3, 0x0

    .line 66
    .local v3, "response":Lmtopsdk/mtop/domain/MtopResponse;
    :try_start_0
    invoke-direct {p0, p1}, Lc8/Sib;->buildMtopRequest(Lc8/Xgb;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v2

    .line 67
    .local v2, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    const-string/jumbo v4, "OPEN"

    sget-object v5, Lc8/Bgb;->context:Landroid/content/Context;

    invoke-static {v4, v5}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v4

    sget-object v5, Lc8/sgb;->ttid:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lc8/AOp;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/COp;

    move-result-object v4

    sget-object v5, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v4, v5}, Lc8/COp;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/COp;

    move-result-object v4

    const/16 v5, 0x5e

    invoke-virtual {v4, v5}, Lc8/COp;->setBizId(I)Lc8/COp;

    move-result-object v4

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Lc8/COp;->setConnectionTimeoutMilliSecond(I)Lc8/COp;

    move-result-object v1

    .line 68
    .local v1, "mtopBuilder":Lc8/COp;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 69
    invoke-virtual {v1, p3}, Lc8/COp;->setReqUserId(Ljava/lang/String;)Lc8/COp;

    .line 71
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lc8/COp;->retryTime(I)Lc8/COp;

    .line 72
    invoke-virtual {v1}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v3

    .line 73
    const-string/jumbo v4, "login.MTOPWrapperImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receive MtopResponse"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1    # "mtopBuilder":Lc8/COp;
    .end local v2    # "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    :goto_0
    if-eqz v3, :cond_1

    .line 79
    invoke-direct {p0, v3, p2}, Lc8/Sib;->processMtopResponse(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lc8/Zgb;

    move-result-object v4

    .line 83
    :goto_1
    return-object v4

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "login.MTOPWrapperImpl"

    const-string/jumbo v5, "MtopResponse error"

    invoke-static {v4, v5, v0}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v4, "login.MTOPWrapperImpl"

    const-string/jumbo v5, "MtopResponse response=null"

    invoke-static {v4, v5}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public post(Lc8/Xgb;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Lc8/Xgb;

    .prologue
    .line 56
    const-class v0, Lc8/Vgb;

    invoke-virtual {p0, p1, v0}, Lc8/Sib;->post(Lc8/Xgb;Ljava/lang/Class;)Lc8/Zgb;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remoteBusiness(Lc8/Xgb;Ljava/lang/Class;Lc8/Ygb;)V
    .locals 3
    .param p1, "request"    # Lc8/Xgb;
    .param p3, "rpcRequestCallback"    # Lc8/Ygb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc8/Zgb",
            "<*>;>(",
            "Lc8/Xgb;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lc8/Ygb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    .local p2, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lc8/Sib;->buildMtopRequest(Lc8/Xgb;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v1

    sget-object v2, Lc8/sgb;->ttid:Ljava/lang/String;

    invoke-static {v1, v2}, Lc8/HMf;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/HMf;

    move-result-object v0

    .line 181
    .local v0, "business":Lc8/HMf;
    new-instance v1, Lc8/Rib;

    invoke-direct {v1, p0, p3, p2}, Lc8/Rib;-><init>(Lc8/Sib;Lc8/Ygb;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lc8/HMf;->registeListener(Lc8/CMf;)Lc8/HMf;

    .line 210
    invoke-virtual {v0}, Lc8/HMf;->startRequest()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    .end local v0    # "business":Lc8/HMf;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
