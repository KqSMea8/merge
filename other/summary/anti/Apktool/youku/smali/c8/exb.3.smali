.class public Lc8/exb;
.super Ljava/lang/Object;
.source "MtopTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gxb;->preRequest(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/gxb;

.field final synthetic val$param:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lc8/gxb;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lc8/gxb;

    .prologue
    .line 197
    iput-object p1, p0, Lc8/exb;->this$0:Lc8/gxb;

    iput-object p2, p0, Lc8/exb;->val$param:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 200
    new-instance v4, Lc8/dxb;

    invoke-direct {v4, p0}, Lc8/dxb;-><init>(Lc8/exb;)V

    .line 211
    .local v4, "request":Lc8/Swb;
    iget-object v6, p0, Lc8/exb;->this$0:Lc8/gxb;

    invoke-static {v6}, Lc8/gxb;->access$200(Lc8/gxb;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lc8/Swb;->setRequestId(Ljava/lang/String;)V

    .line 212
    iget-object v6, p0, Lc8/exb;->val$param:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 213
    .local v1, "key":Ljava/lang/String;
    iget-object v7, p0, Lc8/exb;->val$param:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 214
    .local v5, "value":Ljava/lang/Object;
    const-string/jumbo v7, "param"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 215
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v7, p0, Lc8/exb;->val$param:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v8, "param"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 218
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v7, v3, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v7, :cond_0

    move-object v0, v3

    .line 219
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 220
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    .local v2, "key1":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v2, v8}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 226
    .end local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "key1":Ljava/lang/String;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v6, "Content-Type"

    const-string/jumbo v7, "application/json"

    invoke-virtual {v4, v6, v7}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v6, p0, Lc8/exb;->val$param:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v7, "api"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lc8/Swb;->setUrl(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v6, "WindVane"

    invoke-virtual {v4, v6}, Lc8/Swb;->setFriendlyName(Ljava/lang/String;)V

    .line 229
    iget-object v6, p0, Lc8/exb;->val$param:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v7, "type"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "GET"

    :goto_2
    invoke-virtual {v4, v6}, Lc8/Swb;->setMethod(Ljava/lang/String;)V

    .line 230
    iget-object v6, p0, Lc8/exb;->this$0:Lc8/gxb;

    invoke-static {v6}, Lc8/gxb;->access$100(Lc8/gxb;)Lc8/Uwb;

    move-result-object v6

    invoke-virtual {v6, v4}, Lc8/Uwb;->requestWillBeSent(Lc8/Swb;)V

    .line 231
    return-void

    .line 229
    :cond_3
    iget-object v6, p0, Lc8/exb;->val$param:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v7, "type"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method
