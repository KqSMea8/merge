.class public Lc8/Gib;
.super Lc8/Ehb;
.source "LoginByQrCodeTask.java"


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
    .line 31
    invoke-direct {p0}, Lc8/Ehb;-><init>()V

    .line 32
    iput-object p1, p0, Lc8/Gib;->bridgeCallbackContext:Lc8/ljb;

    .line 33
    return-void
.end method


# virtual methods
.method protected bridge synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/Gib;->asyncExecute([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs asyncExecute([Ljava/lang/String;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 38
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .local v3, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v10, "params"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 40
    .local v4, "paramsJson":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 41
    const-string/jumbo v10, "qrCodeInfo"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 42
    .local v5, "qrCodeInfoJson":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 43
    const-string/jumbo v10, "at"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 44
    .local v7, "token":Ljava/lang/String;
    const-string/jumbo v10, "t"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 45
    .local v8, "time":J
    sget-object v10, Lc8/eib;->INSTANCE:Lc8/eib;

    invoke-virtual {v10, v7, v8, v9}, Lc8/eib;->loginByQRCode(Ljava/lang/String;J)Lc8/Zgb;

    move-result-object v6

    .line 46
    .local v6, "resultData":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Lcom/ali/auth/third/core/model/LoginReturnData;>;"
    if-nez v6, :cond_1

    .line 47
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .local v2, "js":Lorg/json/JSONObject;
    const-string/jumbo v10, "code"

    const/16 v11, 0x271a

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    const-string/jumbo v10, "message"

    const-string/jumbo v11, ""

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    iget-object v10, p0, Lc8/Gib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lc8/ljb;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    .end local v2    # "js":Lorg/json/JSONObject;
    .end local v5    # "qrCodeInfoJson":Lorg/json/JSONObject;
    .end local v6    # "resultData":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Lcom/ali/auth/third/core/model/LoginReturnData;>;"
    .end local v7    # "token":Ljava/lang/String;
    .end local v8    # "time":J
    :cond_0
    :goto_0
    return-object v12

    .line 54
    .restart local v5    # "qrCodeInfoJson":Lorg/json/JSONObject;
    .restart local v6    # "resultData":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Lcom/ali/auth/third/core/model/LoginReturnData;>;"
    .restart local v7    # "token":Ljava/lang/String;
    .restart local v8    # "time":J
    :cond_1
    :try_start_1
    iget v0, v6, Lc8/Zgb;->code:I

    .line 55
    .local v0, "code":I
    const/16 v10, 0xbb8

    if-ne v0, v10, :cond_3

    .line 56
    sget-object v11, Lc8/rib;->credentialService:Lc8/rhb;

    iget-object v10, v6, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v10, Lc8/Vgb;

    invoke-interface {v11, v10}, Lc8/rhb;->refreshWhenLogin(Lc8/Vgb;)V

    .line 57
    iget-object v10, p0, Lc8/Gib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v10}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    move-result-object v10

    instance-of v10, v10, Lcom/ali/auth/third/ui/QrLoginActivity;

    if-eqz v10, :cond_2

    .line 58
    iget-object v10, p0, Lc8/Gib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v10}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    move-result-object v10

    sget-object v11, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    iget v11, v11, Lc8/Wgb;->code:I

    invoke-virtual {v10, v11}, Landroid/app/Activity;->setResult(I)V

    .line 59
    iget-object v10, p0, Lc8/Gib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v10}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .end local v0    # "code":I
    :catch_0
    move-exception v10

    goto :goto_0

    .line 61
    .restart local v0    # "code":I
    :cond_2
    sget-object v10, Lc8/ejb;->mLoginCallback:Lc8/xgb;

    if-eqz v10, :cond_0

    .line 62
    sget-object v10, Lc8/ejb;->mLoginCallback:Lc8/xgb;

    sget-object v11, Lc8/rib;->credentialService:Lc8/rhb;

    invoke-interface {v11}, Lc8/rhb;->getSession()Lc8/ahb;

    move-result-object v11

    invoke-interface {v10, v11}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 63
    const/4 v10, 0x0

    sput-object v10, Lc8/ejb;->mLoginCallback:Lc8/xgb;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 96
    .end local v0    # "code":I
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "paramsJson":Lorg/json/JSONObject;
    .end local v5    # "qrCodeInfoJson":Lorg/json/JSONObject;
    .end local v6    # "resultData":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Lcom/ali/auth/third/core/model/LoginReturnData;>;"
    .end local v7    # "token":Ljava/lang/String;
    .end local v8    # "time":J
    :catch_1
    move-exception v1

    .line 97
    .local v1, "e":Lorg/json/JSONException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 67
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "code":I
    .restart local v3    # "jsonObj":Lorg/json/JSONObject;
    .restart local v4    # "paramsJson":Lorg/json/JSONObject;
    .restart local v5    # "qrCodeInfoJson":Lorg/json/JSONObject;
    .restart local v6    # "resultData":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Lcom/ali/auth/third/core/model/LoginReturnData;>;"
    .restart local v7    # "token":Ljava/lang/String;
    .restart local v8    # "time":J
    :cond_3
    const/16 v10, 0x36ce

    if-ne v0, v10, :cond_4

    .line 68
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .restart local v2    # "js":Lorg/json/JSONObject;
    const-string/jumbo v10, "code"

    const/4 v11, 0x4

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    const-string/jumbo v10, "message"

    iget-object v11, v6, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    iget-object v10, p0, Lc8/Gib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lc8/ljb;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .end local v2    # "js":Lorg/json/JSONObject;
    :cond_4
    const/16 v10, 0x36cf

    if-ne v0, v10, :cond_5

    .line 74
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 75
    .restart local v2    # "js":Lorg/json/JSONObject;
    const-string/jumbo v10, "code"

    const/4 v11, 0x5

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    const-string/jumbo v10, "message"

    iget-object v11, v6, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    iget-object v10, p0, Lc8/Gib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lc8/ljb;->success(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    .end local v2    # "js":Lorg/json/JSONObject;
    :cond_5
    const/4 v10, 0x1

    if-ne v0, v10, :cond_6

    .line 79
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 80
    .restart local v2    # "js":Lorg/json/JSONObject;
    const-string/jumbo v10, "code"

    const/16 v11, 0x271a

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v10, "message"

    iget-object v11, v6, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    iget-object v10, p0, Lc8/Gib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lc8/ljb;->success(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    .end local v2    # "js":Lorg/json/JSONObject;
    :cond_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .restart local v2    # "js":Lorg/json/JSONObject;
    const-string/jumbo v10, "code"

    invoke-virtual {v2, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v10, "message"

    iget-object v11, v6, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    iget-object v10, p0, Lc8/Gib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lc8/ljb;->success(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method protected doFinally()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method protected doWhenException(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 106
    const/16 v1, 0x271a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/Ngb;->createMessage(I[Ljava/lang/Object;)Lc8/Mgb;

    move-result-object v0

    .line 107
    .local v0, "errorMessage":Lc8/Mgb;
    const-string/jumbo v1, "login"

    invoke-static {v1, v0, p1}, Lc8/Jhb;->log(Ljava/lang/String;Lc8/Mgb;Ljava/lang/Throwable;)V

    .line 108
    iget-object v1, p0, Lc8/Gib;->bridgeCallbackContext:Lc8/ljb;

    iget v2, v0, Lc8/Mgb;->code:I

    iget-object v3, v0, Lc8/Mgb;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lc8/ljb;->onFailure(ILjava/lang/String;)V

    .line 109
    return-void
.end method
