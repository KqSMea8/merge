.class public Lc8/Nhn;
.super Ljava/lang/Object;
.source "PreCacheManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Phn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreCacheMtopFinishListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Khn;)V
    .locals 0
    .param p1, "x0"    # Lc8/Khn;

    .prologue
    .line 82
    invoke-direct {p0}, Lc8/Nhn;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 6
    .param p1, "mtopFinishEvent"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 85
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v2

    .line 86
    .local v2, "response":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v3

    const-string/jumbo v4, "key_request_pre_cache_list_day"

    .line 88
    invoke-static {}, Lc8/Ghn;->getDayOfYear()I

    move-result v5

    .line 87
    invoke-virtual {v3, v4, v5}, Lc8/Gin;->savePreference(Ljava/lang/String;I)V

    .line 89
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 90
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "PreCacheManager"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v3, "PushReceiver"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {v0}, Lc8/Jhn;->parseCacheListData(Lorg/json/JSONObject;)Lc8/Jhn;

    move-result-object v1

    .line 93
    .local v1, "preCacheData":Lc8/Jhn;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lc8/Jhn;->model:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lc8/Jhn;->model:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 94
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lc8/Phn;->startPreCache(Lc8/Jhn;Z)V

    .line 114
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "preCacheData":Lc8/Jhn;
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string/jumbo v3, "PushReceiver"

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
