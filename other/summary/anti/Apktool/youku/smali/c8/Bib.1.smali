.class public Lc8/Bib;
.super Lc8/Ehb;
.source "BindByUsernameTask.java"


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
    .line 29
    invoke-direct {p0}, Lc8/Ehb;-><init>()V

    .line 30
    iput-object p1, p0, Lc8/Bib;->bridgeCallbackContext:Lc8/ljb;

    .line 31
    return-void
.end method


# virtual methods
.method protected bridge synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/Bib;->asyncExecute([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs asyncExecute([Ljava/lang/String;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 35
    invoke-static {}, Lc8/Shb;->isNetworkAvailable()Z

    move-result v7

    if-nez v7, :cond_0

    .line 36
    new-instance v5, Lc8/Zgb;

    invoke-direct {v5}, Lc8/Zgb;-><init>()V

    .line 37
    .local v5, "result":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Ljava/lang/String;>;"
    const/4 v7, -0x1

    iput v7, v5, Lc8/Zgb;->code:I

    .line 38
    const-string/jumbo v7, "com_taobao_tae_sdk_network_not_available_message"

    invoke-static {v7}, Lc8/Yhb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lc8/Zgb;->message:Ljava/lang/String;

    .line 39
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .local v4, "jsonResult":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v7, "code"

    iget v8, v5, Lc8/Zgb;->code:I

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    const-string/jumbo v7, "message"

    iget-object v8, v5, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    iget-object v7, p0, Lc8/Bib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc8/ljb;->success(Ljava/lang/String;)V

    .line 114
    .end local v4    # "jsonResult":Lorg/json/JSONObject;
    .end local v5    # "result":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Ljava/lang/String;>;"
    :goto_1
    return-object v9

    .line 44
    .restart local v4    # "jsonResult":Lorg/json/JSONObject;
    .restart local v5    # "result":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v4    # "jsonResult":Lorg/json/JSONObject;
    .end local v5    # "result":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Ljava/lang/String;>;"
    :cond_0
    sget-object v7, Lc8/eib;->INSTANCE:Lc8/eib;

    aget-object v8, p1, v8

    invoke-virtual {v7, v8}, Lc8/eib;->loginByUserName(Ljava/lang/String;)Lc8/Zgb;

    move-result-object v6

    .line 52
    .local v6, "resultData":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Lcom/ali/auth/third/core/model/LoginReturnData;>;"
    if-nez v6, :cond_1

    .line 53
    iget-object v7, p0, Lc8/Bib;->bridgeCallbackContext:Lc8/ljb;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Lc8/ljb;->onFailure(Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :cond_1
    :try_start_1
    iget v7, v6, Lc8/Zgb;->code:I

    const/16 v8, 0xbb8

    if-ne v7, v8, :cond_2

    .line 59
    sget-object v8, Lc8/rib;->credentialService:Lc8/rhb;

    iget-object v7, v6, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v7, Lc8/Vgb;

    invoke-interface {v8, v7}, Lc8/rhb;->refreshWhenLogin(Lc8/Vgb;)V

    .line 60
    iget-object v7, p0, Lc8/Bib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v7}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    move-result-object v7

    sget-object v8, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    iget v8, v8, Lc8/Wgb;->code:I

    invoke-virtual {v7, v8}, Landroid/app/Activity;->setResult(I)V

    .line 61
    iget-object v7, p0, Lc8/Bib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v7}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 110
    :catch_1
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 62
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget v7, v6, Lc8/Zgb;->code:I

    const/16 v8, 0x32d2

    if-ne v7, v8, :cond_4

    .line 63
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .local v2, "js":Lorg/json/JSONObject;
    const-string/jumbo v7, "code"

    const/16 v8, 0x3ef

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    const-string/jumbo v7, "message"

    iget-object v8, v6, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string/jumbo v7, "success"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v0, "data":Lorg/json/JSONObject;
    iget-object v7, v6, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    if-eqz v7, :cond_3

    .line 69
    const-string/jumbo v8, "checkCodeId"

    iget-object v7, v6, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v7, Lc8/Vgb;

    iget-object v7, v7, Lc8/Vgb;->checkCodeId:Ljava/lang/String;

    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string/jumbo v8, "checkCodeUrl"

    iget-object v7, v6, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v7, Lc8/Vgb;

    iget-object v7, v7, Lc8/Vgb;->checkCodeUrl:Ljava/lang/String;

    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_3
    const-string/jumbo v7, "data"

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    iget-object v7, p0, Lc8/Bib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc8/ljb;->success(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 76
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "js":Lorg/json/JSONObject;
    :cond_4
    iget v7, v6, Lc8/Zgb;->code:I

    const/16 v8, 0x32d3

    if-ne v7, v8, :cond_6

    .line 77
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .restart local v2    # "js":Lorg/json/JSONObject;
    const-string/jumbo v7, "code"

    const/16 v8, 0x3f0

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    const-string/jumbo v7, "message"

    iget-object v8, v6, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .restart local v0    # "data":Lorg/json/JSONObject;
    iget-object v7, v6, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    if-eqz v7, :cond_5

    .line 83
    const-string/jumbo v8, "checkCodeId"

    iget-object v7, v6, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v7, Lc8/Vgb;

    iget-object v7, v7, Lc8/Vgb;->checkCodeId:Ljava/lang/String;

    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v8, "checkCodeUrl"

    iget-object v7, v6, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v7, Lc8/Vgb;

    iget-object v7, v7, Lc8/Vgb;->checkCodeUrl:Ljava/lang/String;

    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    :cond_5
    const-string/jumbo v7, "data"

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    iget-object v7, p0, Lc8/Bib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc8/ljb;->success(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 90
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "js":Lorg/json/JSONObject;
    :cond_6
    iget v7, v6, Lc8/Zgb;->code:I

    const/16 v8, 0x3304

    if-ne v7, v8, :cond_9

    .line 91
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .restart local v2    # "js":Lorg/json/JSONObject;
    const-string/jumbo v7, "code"

    const/16 v8, 0x3f5

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string/jumbo v7, "message"

    iget-object v8, v6, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .restart local v0    # "data":Lorg/json/JSONObject;
    iget-object v7, v6, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    if-eqz v7, :cond_7

    .line 96
    const-string/jumbo v8, "doubleCheckUrl"

    iget-object v7, v6, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v7, Lc8/Vgb;

    iget-object v7, v7, Lc8/Vgb;->h5Url:Ljava/lang/String;

    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    :cond_7
    const-string/jumbo v7, "data"

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    iget-object v7, v6, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    if-eqz v7, :cond_8

    .line 99
    iget-object v7, p0, Lc8/Bib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v7}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    iget-object v7, v6, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v7, Lc8/Vgb;

    iget-object v7, v7, Lc8/Vgb;->token:Ljava/lang/String;

    sput-object v7, Lcom/ali/auth/third/ui/LoginWebViewActivity;->token:Ljava/lang/String;

    .line 100
    iget-object v7, p0, Lc8/Bib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v7}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    iget-object v7, v6, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v7, Lc8/Vgb;

    iget-object v7, v7, Lc8/Vgb;->scene:Ljava/lang/String;

    sput-object v7, Lcom/ali/auth/third/ui/LoginWebViewActivity;->scene:Ljava/lang/String;

    .line 102
    :cond_8
    iget-object v7, p0, Lc8/Bib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc8/ljb;->success(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 105
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "js":Lorg/json/JSONObject;
    :cond_9
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "code"

    iget v8, v6, Lc8/Zgb;->code:I

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    const-string/jumbo v7, "message"

    iget-object v8, v6, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    iget-object v7, p0, Lc8/Bib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc8/ljb;->success(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method protected doFinally()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method protected doWhenException(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 121
    const/16 v1, 0x271a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/Ngb;->createMessage(I[Ljava/lang/Object;)Lc8/Mgb;

    move-result-object v0

    .line 122
    .local v0, "errorMessage":Lc8/Mgb;
    const-string/jumbo v1, "login"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lc8/Bib;->bridgeCallbackContext:Lc8/ljb;

    iget v2, v0, Lc8/Mgb;->code:I

    iget-object v3, v0, Lc8/Mgb;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lc8/ljb;->onFailure(ILjava/lang/String;)V

    .line 124
    return-void
.end method
