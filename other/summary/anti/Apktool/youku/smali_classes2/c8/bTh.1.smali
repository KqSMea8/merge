.class public Lc8/bTh;
.super Ljava/lang/Object;
.source "WVPayBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dTh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaiChuanParams"
.end annotation


# instance fields
.field exParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field openItemId:Ljava/lang/String;

.field pid:Ljava/lang/String;

.field final synthetic this$0:Lc8/dTh;

.field title:Ljava/lang/String;

.field unionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/dTh;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "this$0"    # Lc8/dTh;
    .param p2, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 442
    iput-object p1, p0, Lc8/bTh;->this$0:Lc8/dTh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    const-string/jumbo v4, "unionId"

    const-string/jumbo v5, "null"

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/bTh;->unionId:Ljava/lang/String;

    .line 444
    const-string/jumbo v4, "pid"

    const-string/jumbo v5, ""

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/bTh;->pid:Ljava/lang/String;

    .line 445
    const-string/jumbo v4, "title"

    const-string/jumbo v5, ""

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/bTh;->title:Ljava/lang/String;

    .line 446
    const-string/jumbo v4, "openItemId"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/bTh;->openItemId:Ljava/lang/String;

    .line 447
    const-string/jumbo v4, "exParams"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 448
    .local v0, "exParamsJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 449
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lc8/bTh;->exParams:Ljava/util/Map;

    .line 451
    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v3

    .local v3, "names":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 452
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 453
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lc8/bTh;->exParams:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "names":Lorg/json/JSONArray;
    :cond_0
    return-void
.end method
