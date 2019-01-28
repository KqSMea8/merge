.class public Lc8/Aco;
.super Ljava/lang/Object;
.source "Message.java"


# static fields
.field private static final CALLBACK_ID_STR:Ljava/lang/String; = "callbackId"

.field private static final DATA_STR:Ljava/lang/String; = "args"

.field private static final HANDLER_CLASS_STR:Ljava/lang/String; = "clz"

.field private static final HANDLER_NAME_STR:Ljava/lang/String; = "method"

.field private static final RESPONSE_DATA_STR:Ljava/lang/String; = "data"

.field private static final RESPONSE_ID_STR:Ljava/lang/String; = "responseId"

.field private static final RESPONSE_MESSAGE:Ljava/lang/String; = "errmsg"

.field private static final RESPONSE_STATUS:Ljava/lang/String; = "errno"


# instance fields
.field private callbackId:Ljava/lang/String;

.field private clazz:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private method:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toArrayList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/Aco;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseuikit/webview/interaction/Message;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 112
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 113
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 114
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v3}, Lc8/Aco;->toObject(Lorg/json/JSONObject;)Lc8/Aco;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 119
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v4
.end method

.method public static toObject(Ljava/lang/String;)Lc8/Aco;
    .locals 3
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 80
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1}, Lc8/Aco;->toObject(Lorg/json/JSONObject;)Lc8/Aco;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 85
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static toObject(Lorg/json/JSONObject;)Lc8/Aco;
    .locals 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 89
    new-instance v2, Lc8/Aco;

    invoke-direct {v2}, Lc8/Aco;-><init>()V

    .line 91
    .local v2, "m":Lc8/Aco;
    :try_start_0
    const-string/jumbo v4, "clz"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "clz"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v4}, Lc8/Aco;->setClazz(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v4, "method"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "method"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v2, v4}, Lc8/Aco;->setMethod(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v4, "callbackId"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "callbackId"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v2, v4}, Lc8/Aco;->setCallbackId(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v4, "args"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    const-string/jumbo v4, "args"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 96
    .local v0, "dataObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    const-string/jumbo v4, "callbackId"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    const-string/jumbo v4, "callbackId"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lc8/Aco;->setCallbackId(Ljava/lang/String;)V

    .line 99
    :cond_0
    const-string/jumbo v4, "args"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v3, "args"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v2, v3}, Lc8/Aco;->setData(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "dataObject":Lorg/json/JSONObject;
    :cond_2
    :goto_3
    return-object v2

    :cond_3
    move-object v4, v3

    .line 91
    goto :goto_0

    :cond_4
    move-object v4, v3

    .line 92
    goto :goto_1

    :cond_5
    move-object v4, v3

    .line 93
    goto :goto_2

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public getCallbackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lc8/Aco;->callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getClazz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lc8/Aco;->clazz:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lc8/Aco;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lc8/Aco;->method:Ljava/lang/String;

    return-object v0
.end method

.method public setCallbackId(Ljava/lang/String;)V
    .locals 0
    .param p1, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lc8/Aco;->callbackId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setClazz(Ljava/lang/String;)V
    .locals 0
    .param p1, "clazz"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lc8/Aco;->clazz:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lc8/Aco;->data:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lc8/Aco;->method:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "callbackId"

    invoke-virtual {p0}, Lc8/Aco;->getCallbackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string/jumbo v2, "args"

    iget-object v3, p0, Lc8/Aco;->data:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string/jumbo v2, "method"

    iget-object v3, p0, Lc8/Aco;->method:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 75
    :goto_0
    return-object v2

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 75
    const/4 v2, 0x0

    goto :goto_0
.end method
