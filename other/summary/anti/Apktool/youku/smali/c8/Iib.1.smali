.class public Lc8/Iib;
.super Lc8/Ehb;
.source "LoginByUsernameTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Ehb",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "login"


# instance fields
.field private bridgeCallbackContext:Lc8/ljb;


# direct methods
.method public constructor <init>(Lc8/ljb;)V
    .locals 0
    .param p1, "bridgeCallbackContext"    # Lc8/ljb;

    .prologue
    .line 38
    invoke-direct {p0}, Lc8/Ehb;-><init>()V

    .line 39
    iput-object p1, p0, Lc8/Iib;->bridgeCallbackContext:Lc8/ljb;

    .line 40
    return-void
.end method


# virtual methods
.method protected bridge synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/Iib;->asyncExecute([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs asyncExecute([Ljava/lang/String;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 44
    invoke-static {}, Lc8/Shb;->isNetworkAvailable()Z

    move-result v8

    if-nez v8, :cond_0

    .line 45
    new-instance v6, Lc8/Zgb;

    invoke-direct {v6}, Lc8/Zgb;-><init>()V

    .line 46
    .local v6, "result":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Ljava/lang/String;>;"
    const/4 v8, -0x1

    iput v8, v6, Lc8/Zgb;->code:I

    .line 47
    const-string/jumbo v8, "com_taobao_tae_sdk_network_not_available_message"

    invoke-static {v8}, Lc8/Yhb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lc8/Zgb;->message:Ljava/lang/String;

    .line 48
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v5, "jsonResult":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v8, "code"

    iget v9, v6, Lc8/Zgb;->code:I

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    const-string/jumbo v8, "message"

    iget-object v9, v6, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    iget-object v8, p0, Lc8/Iib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lc8/ljb;->success(Ljava/lang/String;)V

    .line 129
    .end local v5    # "jsonResult":Lorg/json/JSONObject;
    .end local v6    # "result":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Ljava/lang/String;>;"
    :goto_1
    return-object v11

    .line 53
    .restart local v5    # "jsonResult":Lorg/json/JSONObject;
    .restart local v6    # "result":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "jsonResult":Lorg/json/JSONObject;
    .end local v6    # "result":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Ljava/lang/String;>;"
    :cond_0
    sget-object v8, Lc8/eib;->INSTANCE:Lc8/eib;

    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-virtual {v8, v9}, Lc8/eib;->loginByUserName(Ljava/lang/String;)Lc8/Zgb;

    move-result-object v7

    .line 61
    .local v7, "resultData":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Lcom/ali/auth/third/core/model/LoginReturnData;>;"
    if-nez v7, :cond_1

    .line 62
    iget-object v8, p0, Lc8/Iib;->bridgeCallbackContext:Lc8/ljb;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Lc8/ljb;->onFailure(Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_1
    :try_start_1
    iget v8, v7, Lc8/Zgb;->code:I

    const/16 v9, 0xbb8

    if-ne v8, v9, :cond_2

    .line 68
    sget-object v9, Lc8/rib;->credentialService:Lc8/rhb;

    iget-object v8, v7, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v8, Lc8/Vgb;

    invoke-interface {v9, v8}, Lc8/rhb;->refreshWhenLogin(Lc8/Vgb;)V

    .line 69
    iget-object v8, p0, Lc8/Iib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v8}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    move-result-object v8

    sget-object v9, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    iget v9, v9, Lc8/Wgb;->code:I

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setResult(I)V

    .line 70
    iget-object v8, p0, Lc8/Iib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v8}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 125
    :catch_1
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget v8, v7, Lc8/Zgb;->code:I

    const/16 v9, 0x32d2

    if-ne v8, v9, :cond_4

    .line 72
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v2, "js":Lorg/json/JSONObject;
    const-string/jumbo v8, "code"

    iget v9, v7, Lc8/Zgb;->code:I

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    const-string/jumbo v8, "message"

    iget-object v9, v7, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .local v0, "data":Lorg/json/JSONObject;
    iget-object v8, v7, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    if-eqz v8, :cond_3

    .line 77
    const-string/jumbo v9, "checkCodeId"

    iget-object v8, v7, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v8, Lc8/Vgb;

    iget-object v8, v8, Lc8/Vgb;->checkCodeId:Ljava/lang/String;

    invoke-virtual {v0, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string/jumbo v9, "checkCodeUrl"

    iget-object v8, v7, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v8, Lc8/Vgb;

    iget-object v8, v8, Lc8/Vgb;->checkCodeUrl:Ljava/lang/String;

    invoke-virtual {v0, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    :cond_3
    const-string/jumbo v8, "data"

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    iget-object v8, p0, Lc8/Iib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lc8/ljb;->success(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 84
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "js":Lorg/json/JSONObject;
    :cond_4
    iget v8, v7, Lc8/Zgb;->code:I

    const/16 v9, 0x32d3

    if-ne v8, v9, :cond_6

    .line 85
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .restart local v2    # "js":Lorg/json/JSONObject;
    const-string/jumbo v8, "code"

    iget v9, v7, Lc8/Zgb;->code:I

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string/jumbo v8, "message"

    iget-object v9, v7, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .restart local v0    # "data":Lorg/json/JSONObject;
    iget-object v8, v7, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    if-eqz v8, :cond_5

    .line 90
    const-string/jumbo v9, "checkCodeId"

    iget-object v8, v7, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v8, Lc8/Vgb;

    iget-object v8, v8, Lc8/Vgb;->checkCodeId:Ljava/lang/String;

    invoke-virtual {v0, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string/jumbo v9, "checkCodeUrl"

    iget-object v8, v7, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v8, Lc8/Vgb;

    iget-object v8, v8, Lc8/Vgb;->checkCodeUrl:Ljava/lang/String;

    invoke-virtual {v0, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    :cond_5
    const-string/jumbo v8, "data"

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    iget-object v8, p0, Lc8/Iib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lc8/ljb;->success(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 97
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "js":Lorg/json/JSONObject;
    :cond_6
    iget v8, v7, Lc8/Zgb;->code:I

    const/16 v9, 0x3304

    if-ne v8, v9, :cond_9

    .line 99
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 100
    .restart local v2    # "js":Lorg/json/JSONObject;
    const-string/jumbo v8, "code"

    iget v9, v7, Lc8/Zgb;->code:I

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v8, "message"

    iget-object v9, v7, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 103
    .restart local v0    # "data":Lorg/json/JSONObject;
    iget-object v8, v7, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    if-eqz v8, :cond_7

    .line 104
    const-string/jumbo v9, "doubleCheckUrl"

    iget-object v8, v7, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v8, Lc8/Vgb;

    iget-object v8, v8, Lc8/Vgb;->h5Url:Ljava/lang/String;

    invoke-virtual {v0, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    :cond_7
    const-string/jumbo v8, "data"

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    iget-object v8, v7, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    if-eqz v8, :cond_8

    .line 107
    iget-object v8, p0, Lc8/Iib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v8}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    iget-object v8, v7, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v8, Lc8/Vgb;

    iget-object v8, v8, Lc8/Vgb;->token:Ljava/lang/String;

    sput-object v8, Lcom/ali/auth/third/ui/LoginWebViewActivity;->token:Ljava/lang/String;

    .line 108
    iget-object v8, p0, Lc8/Iib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v8}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    iget-object v8, v7, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v8, Lc8/Vgb;

    iget-object v8, v8, Lc8/Vgb;->scene:Ljava/lang/String;

    sput-object v8, Lcom/ali/auth/third/ui/LoginWebViewActivity;->scene:Ljava/lang/String;

    .line 110
    :cond_8
    iget-object v8, p0, Lc8/Iib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lc8/ljb;->success(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 113
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "js":Lorg/json/JSONObject;
    :cond_9
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "code"

    iget v9, v7, Lc8/Zgb;->code:I

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    const-string/jumbo v8, "message"

    iget-object v9, v7, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    iget-object v8, p0, Lc8/Iib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lc8/ljb;->success(Ljava/lang/String;)V

    .line 118
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v3, "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "code"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v7, Lc8/Zgb;->code:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v8, v7, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 121
    const-string/jumbo v8, "message"

    iget-object v9, v7, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_a
    const-class v8, Lc8/vhb;

    invoke-static {v8}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/vhb;

    sget-object v9, Lc8/oib;->E_H5_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v8, v9, v3}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method protected doFinally()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method protected doWhenException(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    const/16 v3, 0x271a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lc8/Ngb;->createMessage(I[Ljava/lang/Object;)Lc8/Mgb;

    move-result-object v1

    .line 136
    .local v1, "errorMessage":Lc8/Mgb;
    instance-of v3, p1, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    if-eqz v3, :cond_0

    .line 137
    new-instance v1, Lc8/Mgb;

    .end local v1    # "errorMessage":Lc8/Mgb;
    invoke-direct {v1}, Lc8/Mgb;-><init>()V

    .restart local v1    # "errorMessage":Lc8/Mgb;
    move-object v3, p1

    .line 138
    check-cast v3, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    invoke-virtual {v3}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;->getCode()I

    move-result v3

    iput v3, v1, Lc8/Mgb;->code:I

    .line 139
    check-cast p1, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    .end local p1    # "t":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lc8/Mgb;->message:Ljava/lang/String;

    .line 141
    :cond_0
    const-string/jumbo v3, "login"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 144
    .local v2, "js":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "code"

    iget v4, v1, Lc8/Mgb;->code:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    const-string/jumbo v3, "message"

    iget-object v4, v1, Lc8/Mgb;->message:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    iget-object v3, p0, Lc8/Iib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/ljb;->success(Ljava/lang/String;)V

    .line 151
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
