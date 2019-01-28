.class public Lc8/tpf;
.super Ljava/lang/Object;
.source "PartnerAppInfoList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/spf;
    }
.end annotation


# instance fields
.field private partnerAppInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/spf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/tpf;->partnerAppInfoMap:Ljava/util/Map;

    .line 45
    return-void
.end method


# virtual methods
.method public getPartnerAppInfo(Ljava/lang/String;)Lc8/spf;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/tpf;->partnerAppInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/spf;

    return-object v0
.end method

.method public declared-synchronized update(Lorg/json/JSONArray;)V
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONArray;

    .prologue
    .line 22
    monitor-enter p0

    :try_start_0
    const-string/jumbo v4, "AlibcVisa"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "visa partnerAppInfoList update  -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_1

    const-string/jumbo v3, "null"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-nez p1, :cond_2

    .line 36
    :cond_0
    monitor-exit p0

    return-void

    .line 22
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 28
    :cond_2
    iget-object v3, p0, Lc8/tpf;->partnerAppInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 30
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 31
    .local v2, "object":Lorg/json/JSONObject;
    if-eqz v2, :cond_3

    .line 32
    new-instance v0, Lc8/spf;

    invoke-direct {v0, v2}, Lc8/spf;-><init>(Lorg/json/JSONObject;)V

    .line 33
    .local v0, "appInfo":Lc8/spf;
    iget-object v3, p0, Lc8/tpf;->partnerAppInfoMap:Ljava/util/Map;

    iget-object v4, v0, Lc8/spf;->appId:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .end local v0    # "appInfo":Lc8/spf;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 22
    .end local v1    # "i":I
    .end local v2    # "object":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
