.class public Lc8/eag;
.super Ljava/lang/Object;
.source "WXStreamModule.java"

# interfaces
.implements Lc8/fag;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hag;->fetch(Ljava/lang/String;Lc8/EWf;Lc8/EWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hag;

.field final synthetic val$callback:Lc8/EWf;

.field final synthetic val$options:Lc8/aag;


# direct methods
.method constructor <init>(Lc8/hag;Lc8/EWf;Lc8/aag;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lc8/eag;->this$0:Lc8/hag;

    iput-object p2, p0, Lc8/eag;->val$callback:Lc8/EWf;

    iput-object p3, p0, Lc8/eag;->val$options:Lc8/aag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lc8/SXf;Ljava/util/Map;)V
    .locals 8
    .param p1, "response"    # Lc8/SXf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/SXf;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 172
    iget-object v4, p0, Lc8/eag;->val$callback:Lc8/EWf;

    if-eqz v4, :cond_1

    .line 173
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 174
    .local v2, "resp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    const-string/jumbo v4, "-1"

    iget-object v6, p1, Lc8/SXf;->statusCode:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    :cond_0
    const-string/jumbo v4, "status"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v4, "statusText"

    const-string/jumbo v5, "ERR_CONNECT_FAILED"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :goto_0
    const-string/jumbo v4, "headers"

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v4, p0, Lc8/eag;->val$callback:Lc8/EWf;

    invoke-interface {v4, v2}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 200
    .end local v2    # "resp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void

    .line 178
    .restart local v2    # "resp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    iget-object v4, p1, Lc8/SXf;->statusCode:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 179
    .local v0, "code":I
    const-string/jumbo v4, "status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string/jumbo v6, "ok"

    const/16 v4, 0xc8

    if-lt v0, v4, :cond_3

    const/16 v4, 0x12b

    if-gt v0, v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v4, p1, Lc8/SXf;->originalData:[B

    if-nez v4, :cond_4

    .line 182
    const-string/jumbo v4, "data"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :goto_2
    const-string/jumbo v4, "statusText"

    iget-object v5, p1, Lc8/SXf;->statusCode:Ljava/lang/String;

    invoke-static {v5}, Lc8/bag;->getStatusText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move v4, v5

    .line 180
    goto :goto_1

    .line 184
    :cond_4
    iget-object v6, p1, Lc8/SXf;->originalData:[B

    if-eqz p2, :cond_5

    const-string/jumbo v4, "Content-Type"

    invoke-static {p2, v4}, Lc8/hag;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-static {v6, v4}, Lc8/hag;->readAsString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "respData":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "data"

    iget-object v6, p0, Lc8/eag;->this$0:Lc8/hag;

    iget-object v7, p0, Lc8/eag;->val$options:Lc8/aag;

    invoke-virtual {v7}, Lc8/aag;->getType()Lcom/taobao/weex/http/Options$Type;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lc8/hag;->parseData(Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "exception":Lcom/alibaba/fastjson/JSONException;
    const-string/jumbo v4, ""

    invoke-static {v4, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    const-string/jumbo v4, "ok"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string/jumbo v4, "data"

    const-string/jumbo v5, "{\'err\':\'Data parse failed!\'}"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 184
    .end local v1    # "exception":Lcom/alibaba/fastjson/JSONException;
    .end local v3    # "respData":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, ""

    goto :goto_3
.end method
