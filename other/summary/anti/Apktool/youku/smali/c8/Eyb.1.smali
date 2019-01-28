.class public final Lc8/Eyb;
.super Ljava/lang/Object;
.source "WXPrefetchUtil.java"

# interfaces
.implements Lc8/nWf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gyb;->readStorageAndSetData(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$errorMsg:Ljava/lang/String;

.field final synthetic val$instance:Lc8/nVf;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lc8/nVf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lc8/Eyb;->val$errorMsg:Ljava/lang/String;

    iput-object p2, p0, Lc8/Eyb;->val$instance:Lc8/nVf;

    iput-object p3, p0, Lc8/Eyb;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string/jumbo v2, "data"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/AIb;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 114
    .restart local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    const-string/jumbo v2, "status"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v2, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 117
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "info"

    iget-object v2, p0, Lc8/Eyb;->val$errorMsg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "UNKOWN"

    :goto_1
    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v2, "network"

    iget-object v3, p0, Lc8/Eyb;->val$instance:Lc8/nVf;

    invoke-static {v3}, Lc8/Gyb;->getNetworkType(Lc8/nVf;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v2, "errorExt"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v2, p0, Lc8/Eyb;->val$instance:Lc8/nVf;

    iget-object v3, p0, Lc8/Eyb;->val$key:Ljava/lang/String;

    invoke-static {v0}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lc8/Gyb;->saveToStorage(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void

    .line 109
    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v2

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .restart local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_0

    .line 117
    .restart local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    iget-object v2, p0, Lc8/Eyb;->val$errorMsg:Ljava/lang/String;

    goto :goto_1
.end method
