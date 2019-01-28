.class public Lc8/cWe;
.super Ljava/lang/Object;
.source "BizResponse.java"


# static fields
.field private static final TAG_AUDID:Ljava/lang/String; = "audid"

.field private static final TAG_CODE:Ljava/lang/String; = "code"

.field private static final TAG_DATA:Ljava/lang/String; = "data"

.field private static final TAG_MESSAGE:Ljava/lang/String; = "message"

.field private static final TAG_UTDID:Ljava/lang/String; = "utdid"


# instance fields
.field public code:I

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lc8/cWe;->code:I

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/cWe;->message:Ljava/lang/String;

    return-void
.end method

.method public static isSuccess(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 65
    if-ltz p0, :cond_0

    const/16 v0, 0x271c

    if-eq p0, v0, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseResult(Ljava/lang/String;)Lc8/cWe;
    .locals 10
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v4, Lc8/cWe;

    invoke-direct {v4}, Lc8/cWe;-><init>()V

    .line 31
    .local v4, "response":Lc8/cWe;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v6, "code"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 33
    const-string/jumbo v6, "code"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lc8/cWe;->code:I

    .line 35
    :cond_0
    const-string/jumbo v6, "message"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 36
    const-string/jumbo v6, "message"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lc8/cWe;->message:Ljava/lang/String;

    .line 38
    :cond_1
    const-string/jumbo v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 39
    const-string/jumbo v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 40
    .local v1, "dataJson":Lorg/json/JSONObject;
    if-eqz v1, :cond_3

    .line 41
    const-string/jumbo v6, "audid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 42
    const-string/jumbo v6, "audid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "audid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 44
    invoke-static {v0}, Lc8/gWe;->writeAudidFile(Ljava/lang/String;)V

    .line 47
    .end local v0    # "audid":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "utdid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 48
    const-string/jumbo v6, "utdid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, "utdid":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 50
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v6

    invoke-virtual {v6}, Lc8/oVe;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lc8/gWe;->writeUtdidToSettings(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    invoke-static {v5}, Lc8/gWe;->writeSdcardUtdidFile(Ljava/lang/String;)V

    .line 52
    invoke-static {v5}, Lc8/gWe;->writeAppUtdidFile(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lc8/IVe;->getInstance()Lc8/IVe;

    move-result-object v6

    invoke-virtual {v6, v5}, Lc8/IVe;->sendBroadCast(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v5    # "utdid":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v4

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v6, ""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
