.class public Lc8/Jhn;
.super Ljava/lang/Object;
.source "PreCacheData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ihn;
    }
.end annotation


# instance fields
.field public model:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Ihn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static parseCacheListData(Lorg/json/JSONObject;)Lc8/Jhn;
    .locals 10
    .param p0, "preCacheObject"    # Lorg/json/JSONObject;

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, "cacheData":Lc8/Jhn;
    if-nez p0, :cond_0

    .line 78
    const/4 v8, 0x0

    .line 107
    :goto_0
    return-object v8

    .line 80
    :cond_0
    const-string/jumbo v8, "result"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 81
    const-string/jumbo v8, "result"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 82
    .local v0, "cacheArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 83
    new-instance v1, Lc8/Jhn;

    .end local v1    # "cacheData":Lc8/Jhn;
    invoke-direct {v1}, Lc8/Jhn;-><init>()V

    .line 84
    .restart local v1    # "cacheData":Lc8/Jhn;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lc8/Jhn;->model:Ljava/util/List;

    .line 85
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 86
    new-instance v3, Lc8/Ihn;

    invoke-direct {v3}, Lc8/Ihn;-><init>()V

    .line 87
    .local v3, "item":Lc8/Ihn;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 88
    .local v4, "itemObjet":Lorg/json/JSONObject;
    const-string/jumbo v8, "subId"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lc8/Ihn;->sid:Ljava/lang/String;

    .line 89
    const-string/jumbo v8, "vids"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 90
    .local v7, "vidArray":Lorg/json/JSONArray;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 91
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v3, Lc8/Ihn;->vids:[Ljava/lang/String;

    .line 92
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 93
    iget-object v8, v3, Lc8/Ihn;->vids:[Ljava/lang/String;

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 92
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 96
    .end local v5    # "j":I
    :cond_1
    const-string/jumbo v8, "videoTitles"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 97
    .local v6, "vTitleArray":Lorg/json/JSONArray;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 98
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v3, Lc8/Ihn;->videoTitles:[Ljava/lang/String;

    .line 99
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 100
    iget-object v8, v3, Lc8/Ihn;->videoTitles:[Ljava/lang/String;

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 103
    .end local v5    # "j":I
    :cond_2
    iget-object v8, v1, Lc8/Jhn;->model:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "cacheArray":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "item":Lc8/Ihn;
    .end local v4    # "itemObjet":Lorg/json/JSONObject;
    .end local v6    # "vTitleArray":Lorg/json/JSONArray;
    .end local v7    # "vidArray":Lorg/json/JSONArray;
    :cond_3
    move-object v8, v1

    .line 107
    goto/16 :goto_0
.end method

.method public static parsePushData(Ljava/lang/String;)Lc8/Jhn;
    .locals 13
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 31
    const/4 v1, 0x0

    .line 67
    :cond_0
    :goto_0
    return-object v1

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 35
    .local v1, "cacheData":Lc8/Jhn;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .local v8, "msgObject":Lorg/json/JSONObject;
    const-string/jumbo v11, "cache"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 37
    const-string/jumbo v11, "cache"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 38
    .local v0, "cacheArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 39
    new-instance v2, Lc8/Jhn;

    invoke-direct {v2}, Lc8/Jhn;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1    # "cacheData":Lc8/Jhn;
    .local v2, "cacheData":Lc8/Jhn;
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v2, Lc8/Jhn;->model:Ljava/util/List;

    .line 41
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_4

    .line 42
    new-instance v5, Lc8/Ihn;

    invoke-direct {v5}, Lc8/Ihn;-><init>()V

    .line 43
    .local v5, "item":Lc8/Ihn;
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 44
    .local v6, "itemObjet":Lorg/json/JSONObject;
    const-string/jumbo v11, "sid"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lc8/Ihn;->sid:Ljava/lang/String;

    .line 45
    const-string/jumbo v11, "vids"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 46
    .local v10, "vidArray":Lorg/json/JSONArray;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 47
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, v5, Lc8/Ihn;->vids:[Ljava/lang/String;

    .line 48
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v7, v11, :cond_2

    .line 49
    iget-object v11, v5, Lc8/Ihn;->vids:[Ljava/lang/String;

    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    .line 48
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 52
    .end local v7    # "j":I
    :cond_2
    const-string/jumbo v11, "videoTitles"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 53
    .local v9, "vTitleArray":Lorg/json/JSONArray;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 54
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, v5, Lc8/Ihn;->videoTitles:[Ljava/lang/String;

    .line 55
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v7, v11, :cond_3

    .line 56
    iget-object v11, v5, Lc8/Ihn;->videoTitles:[Ljava/lang/String;

    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    .line 55
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 59
    .end local v7    # "j":I
    :cond_3
    iget-object v11, v2, Lc8/Jhn;->model:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 63
    .end local v0    # "cacheArray":Lorg/json/JSONArray;
    .end local v2    # "cacheData":Lc8/Jhn;
    .end local v4    # "i":I
    .end local v5    # "item":Lc8/Ihn;
    .end local v6    # "itemObjet":Lorg/json/JSONObject;
    .end local v8    # "msgObject":Lorg/json/JSONObject;
    .end local v9    # "vTitleArray":Lorg/json/JSONArray;
    .end local v10    # "vidArray":Lorg/json/JSONArray;
    .restart local v1    # "cacheData":Lc8/Jhn;
    :catch_0
    move-exception v3

    .line 64
    .local v3, "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 65
    const-string/jumbo v11, "PushReceiver"

    const-string/jumbo v12, "parsePushData is failure"

    invoke-static {v11, v12}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    .end local v1    # "cacheData":Lc8/Jhn;
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v0    # "cacheArray":Lorg/json/JSONArray;
    .restart local v2    # "cacheData":Lc8/Jhn;
    .restart local v8    # "msgObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "cacheData":Lc8/Jhn;
    .restart local v1    # "cacheData":Lc8/Jhn;
    goto :goto_4

    .end local v1    # "cacheData":Lc8/Jhn;
    .restart local v2    # "cacheData":Lc8/Jhn;
    .restart local v4    # "i":I
    :cond_4
    move-object v1, v2

    .end local v2    # "cacheData":Lc8/Jhn;
    .restart local v1    # "cacheData":Lc8/Jhn;
    goto/16 :goto_0
.end method
