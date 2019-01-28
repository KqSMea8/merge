.class public Lc8/Lib;
.super Lc8/Ehb;
.source "QrLoginConfirmTask.java"


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
    .line 35
    invoke-direct {p0}, Lc8/Ehb;-><init>()V

    .line 36
    iput-object p1, p0, Lc8/Lib;->bridgeCallbackContext:Lc8/ljb;

    .line 37
    return-void
.end method


# virtual methods
.method protected bridge synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/Lib;->asyncExecute([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs asyncExecute([Ljava/lang/String;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 48
    aget-object v5, p1, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 49
    iget-object v5, p0, Lc8/Lib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v5}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget-object v6, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    iget v6, v6, Lc8/Wgb;->code:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setResult(I)V

    .line 50
    iget-object v5, p0, Lc8/Lib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v5}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 75
    :goto_0
    return-object v7

    .line 55
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v3, "object":Lorg/json/JSONObject;
    const-string/jumbo v5, "params"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lc8/Vhb;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    .line 57
    .local v4, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "qrConfirmInfo"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v2, "m":Ljava/util/Map;
    if-nez v2, :cond_1

    .line 63
    iget-object v5, p0, Lc8/Lib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v5}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget-object v6, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    iget v6, v6, Lc8/Wgb;->code:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setResult(I)V

    .line 64
    iget-object v5, p0, Lc8/Lib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v5}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 58
    .end local v2    # "m":Ljava/util/Map;
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 67
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v2    # "m":Ljava/util/Map;
    .restart local v3    # "object":Lorg/json/JSONObject;
    .restart local v4    # "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-string/jumbo v5, "action"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 68
    .local v0, "code":I
    if-nez v0, :cond_3

    .line 69
    iget-object v5, p0, Lc8/Lib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v5}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget-object v6, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    iget v6, v6, Lc8/Wgb;->code:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setResult(I)V

    .line 74
    :cond_2
    :goto_1
    iget-object v5, p0, Lc8/Lib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v5}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 70
    :cond_3
    const/4 v5, -0x1

    if-ne v5, v0, :cond_2

    .line 71
    iget-object v5, p0, Lc8/Lib;->bridgeCallbackContext:Lc8/ljb;

    invoke-virtual {v5}, Lc8/ljb;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget-object v6, Lc8/Wgb;->USER_CANCEL:Lc8/Wgb;

    iget v6, v6, Lc8/Wgb;->code:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1
.end method

.method protected doFinally()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method protected doWhenException(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    const/16 v1, 0x271a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/Ngb;->createMessage(I[Ljava/lang/Object;)Lc8/Mgb;

    move-result-object v0

    .line 81
    .local v0, "errorMessage":Lc8/Mgb;
    const-string/jumbo v1, "login"

    invoke-static {v1, v0, p1}, Lc8/Jhb;->log(Ljava/lang/String;Lc8/Mgb;Ljava/lang/Throwable;)V

    .line 82
    iget-object v1, p0, Lc8/Lib;->bridgeCallbackContext:Lc8/ljb;

    iget v2, v0, Lc8/Mgb;->code:I

    iget-object v3, v0, Lc8/Mgb;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lc8/ljb;->onFailure(ILjava/lang/String;)V

    .line 83
    return-void
.end method
