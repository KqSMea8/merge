.class public Lc8/khb;
.super Ljava/lang/Object;
.source "CommRpcServiceImpl.java"

# interfaces
.implements Lc8/thb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public invoke(Lc8/Xgb;Ljava/lang/Class;)Lc8/Zgb;
    .locals 11
    .param p1, "rpcRequest"    # Lc8/Xgb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Xgb;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lc8/Zgb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v0, p1, Lc8/Xgb;->target:Ljava/lang/String;

    .line 38
    .local v0, "api":Ljava/lang/String;
    iget-object v7, p1, Lc8/Xgb;->version:Ljava/lang/String;

    .line 39
    .local v7, "version":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 41
    .local v2, "json":Lorg/json/JSONArray;
    iget-object v8, p1, Lc8/Xgb;->paramValues:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 42
    .local v6, "value":Ljava/lang/Object;
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v0    # "api":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONArray;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const/4 v5, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v5

    .line 44
    .restart local v0    # "api":Ljava/lang/String;
    .restart local v2    # "json":Lorg/json/JSONArray;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lc8/lhb;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "response":Ljava/lang/String;
    const-string/jumbo v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "post response = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Lc8/Zgb;

    invoke-direct {v5}, Lc8/Zgb;-><init>()V

    .line 48
    .local v5, "rpcResponse":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<TT;>;"
    const-string/jumbo v8, "code"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lc8/Zgb;->code:I

    .line 49
    const-string/jumbo v8, "message"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lc8/Zgb;->message:Ljava/lang/String;

    .line 50
    const-string/jumbo v8, "codeGroup"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lc8/Zgb;->codeGroup:Ljava/lang/String;

    .line 51
    const-string/jumbo v8, "msgCode"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lc8/Zgb;->msgCode:Ljava/lang/String;

    .line 52
    const-string/jumbo v8, "msgInfo"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lc8/Zgb;->msgInfo:Ljava/lang/String;

    .line 53
    const-string/jumbo v8, "actionType"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lc8/Zgb;->actionType:Ljava/lang/String;

    .line 54
    const-string/jumbo v8, "returnValue"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 55
    const-string/jumbo v8, "returnValue"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p2}, Lc8/Vhb;->parseStringValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v5, Lc8/Zgb;->returnValue:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public invoke(Lc8/Xgb;)Ljava/lang/String;
    .locals 8
    .param p1, "request"    # Lc8/Xgb;

    .prologue
    .line 18
    :try_start_0
    iget-object v0, p1, Lc8/Xgb;->target:Ljava/lang/String;

    .line 19
    .local v0, "api":Ljava/lang/String;
    iget-object v5, p1, Lc8/Xgb;->version:Ljava/lang/String;

    .line 21
    .local v5, "version":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 22
    .local v2, "json":Lorg/json/JSONArray;
    iget-object v6, p1, Lc8/Xgb;->paramValues:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 23
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    .end local v0    # "api":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONArray;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    const/4 v3, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v3

    .line 26
    .restart local v0    # "api":Ljava/lang/String;
    .restart local v2    # "json":Lorg/json/JSONArray;
    .restart local v5    # "version":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lc8/lhb;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 27
    .local v3, "response":Ljava/lang/String;
    goto :goto_1
.end method

.method public logout()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 72
    return-void
.end method

.method public remoteBusiness(Lc8/Xgb;Ljava/lang/Class;Lc8/Ygb;)V
    .locals 2
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
    .line 65
    .local p2, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p3, :cond_0

    .line 66
    const-string/jumbo v0, "usage not support."

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lc8/Ygb;->onError(Ljava/lang/String;Lc8/Zgb;)V

    .line 68
    :cond_0
    return-void
.end method
