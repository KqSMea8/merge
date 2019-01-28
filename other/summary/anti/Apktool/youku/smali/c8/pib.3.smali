.class public Lc8/pib;
.super Ljava/lang/Object;
.source "LoginBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public auth(Lc8/ljb;Ljava/lang/String;)V
    .locals 4
    .param p1, "bridgeCallbackContext"    # Lc8/ljb;
    .param p2, "loginRequest"    # Ljava/lang/String;
    .annotation runtime Lc8/yjb;
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lc8/Iib;

    invoke-direct {v0, p1}, Lc8/Iib;-><init>(Lc8/ljb;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lc8/Iib;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    return-void
.end method

.method public bindByUsername(Lc8/ljb;Ljava/lang/String;)V
    .locals 8
    .param p1, "bridgeCallbackContext"    # Lc8/ljb;
    .param p2, "loginRequest"    # Ljava/lang/String;
    .annotation runtime Lc8/yjb;
    .end annotation

    .prologue
    .line 35
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 37
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, "jsbridge":Lorg/json/JSONObject;
    const-string/jumbo v4, "params"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 39
    .local v3, "params":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 40
    const-string/jumbo v4, "loginInfo"

    invoke-static {v3, v4}, Lc8/Vhb;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "loginInfo":Ljava/lang/String;
    new-instance v4, Lc8/Bib;

    invoke-direct {v4, p1}, Lc8/Bib;-><init>(Lc8/ljb;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Lc8/Bib;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1    # "jsbridge":Lorg/json/JSONObject;
    .end local v2    # "loginInfo":Ljava/lang/String;
    .end local v3    # "params":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public loginByQrCode(Lc8/ljb;Ljava/lang/String;)V
    .locals 3
    .param p1, "bridgeCallbackContext"    # Lc8/ljb;
    .param p2, "loginRequest"    # Ljava/lang/String;
    .annotation runtime Lc8/yjb;
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lc8/Gib;

    invoke-direct {v0, p1}, Lc8/Gib;-><init>(Lc8/ljb;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lc8/Gib;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    return-void
.end method

.method public loginByUsername(Lc8/ljb;Ljava/lang/String;)V
    .locals 4
    .param p1, "bridgeCallbackContext"    # Lc8/ljb;
    .param p2, "loginRequest"    # Ljava/lang/String;
    .annotation runtime Lc8/yjb;
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lc8/Iib;

    invoke-direct {v0, p1}, Lc8/Iib;-><init>(Lc8/ljb;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lc8/Iib;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    return-void
.end method

.method public qrLoginConfirm(Lc8/ljb;Ljava/lang/String;)V
    .locals 3
    .param p1, "bridgeCallbackContext"    # Lc8/ljb;
    .param p2, "loginRequest"    # Ljava/lang/String;
    .annotation runtime Lc8/yjb;
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lc8/Lib;

    invoke-direct {v0, p1}, Lc8/Lib;-><init>(Lc8/ljb;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lc8/Lib;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    return-void
.end method

.method public unbindByUsername(Lc8/ljb;Ljava/lang/String;)V
    .locals 0
    .param p1, "bridgeCallbackContext"    # Lc8/ljb;
    .param p2, "loginRequest"    # Ljava/lang/String;
    .annotation runtime Lc8/yjb;
    .end annotation

    .prologue
    .line 63
    return-void
.end method
