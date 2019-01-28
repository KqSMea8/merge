.class public Lc8/kin;
.super Lc8/fSh;
.source "CheckProtocolUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/min;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckProtocolMtopListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lc8/fSh;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseJson(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "dataJsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "installed_app_protocol"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "config"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lc8/lin;

    invoke-static {v1, v2}, Lc8/AIb;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 136
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/statics/CheckProtocolUtils$ProtocolItem;>;"
    if-eqz v0, :cond_0

    .line 137
    invoke-static {v0}, Lc8/min;->postProtocols(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/statics/CheckProtocolUtils$ProtocolItem;>;"
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
