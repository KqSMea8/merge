.class public Lc8/fxb;
.super Ljava/lang/Object;
.source "MtopTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gxb;->onResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/gxb;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/gxb;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/gxb;

    .prologue
    .line 248
    iput-object p1, p0, Lc8/fxb;->this$0:Lc8/gxb;

    iput-object p2, p0, Lc8/fxb;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 251
    new-instance v1, Lc8/Twb;

    invoke-direct {v1}, Lc8/Twb;-><init>()V

    .line 252
    .local v1, "inspectResponse":Lc8/Twb;
    iget-object v4, p0, Lc8/fxb;->this$0:Lc8/gxb;

    invoke-static {v4}, Lc8/gxb;->access$200(Lc8/gxb;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lc8/Twb;->setRequestId(Ljava/lang/String;)V

    .line 253
    iget-object v4, p0, Lc8/fxb;->val$response:Ljava/lang/String;

    invoke-static {v4}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 254
    .local v3, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "Content-Type"

    const-string/jumbo v5, "application/json"

    invoke-virtual {v1, v4, v5}, Lc8/Twb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 256
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v5, "data"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 257
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lc8/Twb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "api"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lc8/Twb;->setUrl(Ljava/lang/String;)V

    .line 261
    const-string/jumbo v4, "code"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lc8/Twb;->setStatusCode(I)V

    .line 262
    const-string/jumbo v4, "ret"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lc8/Twb;->setReasonPhrase(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "isFromCache"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Lc8/Twb;->setFromDiskCache(Z)V

    .line 265
    iget-object v4, p0, Lc8/fxb;->this$0:Lc8/gxb;

    invoke-static {v4}, Lc8/gxb;->access$100(Lc8/gxb;)Lc8/Uwb;

    move-result-object v4

    invoke-virtual {v4, v1}, Lc8/Uwb;->responseHeadersReceived(Lc8/Twb;)V

    .line 266
    iget-object v4, p0, Lc8/fxb;->val$response:Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "data"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "data":Ljava/lang/String;
    iget-object v4, p0, Lc8/fxb;->this$0:Lc8/gxb;

    invoke-static {v4, v0}, Lc8/gxb;->access$500(Lc8/gxb;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    return-void

    .line 263
    .end local v0    # "data":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
