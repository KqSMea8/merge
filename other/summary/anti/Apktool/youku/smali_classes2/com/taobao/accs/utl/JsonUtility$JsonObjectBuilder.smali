.class public Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;
.super Ljava/lang/Object;
.source "JsonUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/utl/JsonUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonObjectBuilder"
.end annotation


# instance fields
.field jObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->jObject:Lorg/json/JSONObject;

    .line 26
    return-void
.end method


# virtual methods
.method public build()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->jObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 48
    if-nez p2, :cond_0

    .line 55
    :goto_0
    return-object p0

    .line 52
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 38
    if-nez p2, :cond_0

    .line 45
    :goto_0
    return-object p0

    .line 42
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Long;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 66
    :goto_0
    return-object p0

    .line 63
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 29
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "jarray"    # Lorg/json/JSONArray;

    .prologue
    .line 70
    if-nez p2, :cond_0

    .line 79
    :goto_0
    return-object p0

    .line 75
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
