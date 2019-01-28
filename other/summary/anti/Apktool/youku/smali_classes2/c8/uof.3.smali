.class public Lc8/uof;
.super Lc8/wof;
.source "LightweightMtopAdapter.java"


# static fields
.field public static final MTOP_URL_ONLINE:Ljava/lang/String; = "https://api.m.taobao.com/h5/%s/1.0/"

.field public static final MTOP_URL_PRE:Ljava/lang/String; = "https://api.wapa.taobao.com/h5/%s/1.0/"

.field public static final MTOP_URL_TEST:Ljava/lang/String; = "https://api.waptest.taobao.com/h5/%s/1.0/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lc8/wof;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "api"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    sget-object v0, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v0, Lc8/unf;->environment:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    sget-object v1, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->PRE:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    if-ne v0, v1, :cond_0

    .line 67
    const-string/jumbo v0, "https://api.wapa.taobao.com/h5/%s/1.0/"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 70
    :cond_0
    sget-object v0, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v0, Lc8/unf;->environment:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    sget-object v1, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->TEST:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    if-ne v0, v1, :cond_1

    .line 71
    const-string/jumbo v0, "https://api.waptest.taobao.com/h5/%s/1.0/"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    const-string/jumbo v0, "https://api.m.taobao.com/h5/%s/1.0/"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/xof;)V
    .locals 4
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p4, "ecode"    # Z
    .param p5, "listener"    # Lc8/xof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lc8/xof;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p3, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p0, p3}, Lc8/uof;->addCheckParams(Ljava/util/Map;)V

    .line 34
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "appKey"

    sget-object v3, Lc8/unf;->instance:Lc8/unf;

    iget-object v3, v3, Lc8/unf;->appKey:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "originaljson"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v2, "dataType"

    const-string/jumbo v3, "json"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v2, "H5Request"

    const-string/jumbo v3, "true"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string/jumbo v2, "data"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string/jumbo v2, "api"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v2, Lc8/tof;

    invoke-direct {v2, p0, p1, v1, p5}, Lc8/tof;-><init>(Lc8/uof;Ljava/lang/String;Ljava/util/Map;Lc8/xof;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lc8/tof;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
