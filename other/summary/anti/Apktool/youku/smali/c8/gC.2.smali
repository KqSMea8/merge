.class public Lc8/gC;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# static fields
.field public static final ERR_CODE:Ljava/lang/String; = "ERR_CODE"

.field public static final ERR_SID_INVALID:Ljava/lang/String; = "ERR_SID_INVALID"

.field public static final FAIL:Ljava/lang/String; = "FAIL"

.field public static final KEY:Ljava/lang/String; = "KEY"

.field public static final SUCCESS:Ljava/lang/String; = "SUCCESS"

.field private static TAG:Ljava/lang/String; = null

.field public static final VALUE:Ljava/lang/String; = "VALUE"


# instance fields
.field public api:Ljava/lang/String;

.field public data:Lorg/json/JSONObject;

.field public errCode:Ljava/lang/String;

.field public errInfo:Ljava/lang/String;

.field public success:Z

.field public v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "core.ApiResponse"

    sput-object v0, Lc8/gC;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public parseJsonResult(Ljava/lang/String;)Lc8/gC;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 112
    iput-boolean v3, p0, Lc8/gC;->success:Z

    .line 114
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/gC;->data:Lorg/json/JSONObject;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/gC;->success:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-object p0

    .line 117
    :catch_0
    move-exception v0

    sget-object v0, Lc8/gC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseJsonResult fail, str = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iput-boolean v3, p0, Lc8/gC;->success:Z

    goto :goto_0
.end method

.method public parseResult(Ljava/lang/String;)Lc8/gC;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 49
    iput-boolean v4, p0, Lc8/gC;->success:Z

    .line 51
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    .local v2, "jso":Lorg/json/JSONObject;
    const-string/jumbo v3, "api"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/gC;->api:Ljava/lang/String;

    .line 53
    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/gC;->v:Ljava/lang/String;

    .line 54
    const-string/jumbo v3, "ret"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 55
    .local v1, "jsArray":Lorg/json/JSONArray;
    invoke-virtual {p0, v1}, Lc8/gC;->parseRet(Lorg/json/JSONArray;)V

    .line 58
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lc8/gC;->data:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "jsArray":Lorg/json/JSONArray;
    .end local v2    # "jso":Lorg/json/JSONObject;
    :goto_0
    return-object p0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    iput-boolean v4, p0, Lc8/gC;->success:Z

    .line 63
    const-string/jumbo v3, ""

    iput-object v3, p0, Lc8/gC;->errCode:Ljava/lang/String;

    .line 64
    const-string/jumbo v3, ""

    iput-object v3, p0, Lc8/gC;->errInfo:Ljava/lang/String;

    goto :goto_0
.end method

.method public parseRet(Lorg/json/JSONArray;)V
    .locals 12
    .param p1, "jArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 70
    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 74
    .local v7, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v7, :cond_3

    .line 76
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "result":Ljava/lang/String;
    const-string/jumbo v8, "::"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 78
    .local v1, "index":I
    if-ltz v1, :cond_2

    .line 79
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "KEY"

    invoke-virtual {v6, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v8, "VALUE"

    add-int/lit8 v9, v1, 0x2

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    .end local v1    # "index":I
    .end local v6    # "result":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v11, :cond_5

    .line 88
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 89
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "SUCCESS"

    const-string/jumbo v9, "KEY"

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 90
    iput-boolean v11, p0, Lc8/gC;->success:Z

    .line 94
    :goto_2
    const-string/jumbo v8, "KEY"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lc8/gC;->errCode:Ljava/lang/String;

    .line 95
    const-string/jumbo v8, "VALUE"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lc8/gC;->errInfo:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_4
    iput-boolean v10, p0, Lc8/gC;->success:Z

    goto :goto_2

    .line 96
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 97
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 98
    .local v4, "map1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 99
    .local v5, "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "FAIL"

    const-string/jumbo v9, "KEY"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v8, "ERR_CODE"

    const-string/jumbo v9, "KEY"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 100
    iput-boolean v10, p0, Lc8/gC;->success:Z

    .line 101
    const-string/jumbo v8, "VALUE"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lc8/gC;->errCode:Ljava/lang/String;

    .line 102
    const-string/jumbo v8, "VALUE"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lc8/gC;->errInfo:Ljava/lang/String;

    goto/16 :goto_0

    .line 104
    :cond_6
    iput-boolean v10, p0, Lc8/gC;->success:Z

    .line 105
    const-string/jumbo v8, "KEY"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lc8/gC;->errCode:Ljava/lang/String;

    .line 106
    const-string/jumbo v8, "VALUE"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lc8/gC;->errInfo:Ljava/lang/String;

    goto/16 :goto_0
.end method
