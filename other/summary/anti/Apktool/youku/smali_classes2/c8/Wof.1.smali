.class public Lc8/Wof;
.super Ljava/lang/Object;
.source "AlibcDeviceProbePoint.java"


# static fields
.field private static final ARG:Ljava/lang/String; = "mgr_app_match_info"

.field private static final INFO:Ljava/lang/String; = "info"


# instance fields
.field public infos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Uof;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Uof;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/flowcustoms/probe/AlibcDeviceProbeData$AlibcDeviceInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lc8/Wof;->infos:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public send()V
    .locals 7

    .prologue
    .line 30
    iget-object v4, p0, Lc8/Wof;->infos:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/Wof;->infos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 35
    .local v2, "jsonArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lc8/Wof;->infos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Uof;

    .line 36
    .local v0, "deviceInfo":Lc8/Uof;
    invoke-virtual {v0}, Lc8/Uof;->getHitJsonObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 39
    .end local v0    # "deviceInfo":Lc8/Uof;
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "info"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string/jumbo v4, "DeviceProbe"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u53d1\u9001\u57cb\u70b9, arg = mgr_app_match_info , value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v4, "mgr_app_match_info"

    invoke-static {v4, v3}, Lc8/npf;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
