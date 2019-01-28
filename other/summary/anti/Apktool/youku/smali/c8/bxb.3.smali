.class public Lc8/bxb;
.super Ljava/lang/Object;
.source "MtopTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gxb;->onResponse(Lmtopsdk/mtop/domain/MtopResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/gxb;

.field final synthetic val$response:Lmtopsdk/mtop/domain/MtopResponse;


# direct methods
.method constructor <init>(Lc8/gxb;Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 0
    .param p1, "this$0"    # Lc8/gxb;

    .prologue
    .line 126
    iput-object p1, p0, Lc8/bxb;->this$0:Lc8/gxb;

    iput-object p2, p0, Lc8/bxb;->val$response:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 129
    const-string/jumbo v5, "MtopTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResponse -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/bxb;->val$response:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v5, p0, Lc8/bxb;->this$0:Lc8/gxb;

    invoke-static {v5}, Lc8/gxb;->access$000(Lc8/gxb;)Lc8/xxb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/xxb;->hasBody()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    iget-object v5, p0, Lc8/bxb;->this$0:Lc8/gxb;

    invoke-static {v5}, Lc8/gxb;->access$000(Lc8/gxb;)Lc8/xxb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/xxb;->reportDataSent()V

    .line 134
    :cond_0
    new-instance v2, Lc8/Twb;

    invoke-direct {v2}, Lc8/Twb;-><init>()V

    .line 135
    .local v2, "inspectResponse":Lc8/Twb;
    iget-object v5, p0, Lc8/bxb;->this$0:Lc8/gxb;

    invoke-static {v5}, Lc8/gxb;->access$200(Lc8/gxb;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lc8/Twb;->setRequestId(Ljava/lang/String;)V

    .line 136
    iget-object v5, p0, Lc8/bxb;->this$0:Lc8/gxb;

    invoke-static {v5}, Lc8/gxb;->access$300(Lc8/gxb;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lc8/Twb;->setUrl(Ljava/lang/String;)V

    .line 137
    iget-object v5, p0, Lc8/bxb;->val$response:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v5

    invoke-virtual {v2, v5}, Lc8/Twb;->setStatusCode(I)V

    .line 138
    iget-object v5, p0, Lc8/bxb;->val$response:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lc8/Twb;->setReasonPhrase(Ljava/lang/String;)V

    .line 139
    iget-object v5, p0, Lc8/bxb;->val$response:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopResponse;->getSource()Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    move-result-object v5

    sget-object v6, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->NETWORK_REQUEST:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v2, v5}, Lc8/Twb;->setFromDiskCache(Z)V

    .line 141
    iget-object v5, p0, Lc8/bxb;->val$response:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 142
    .local v1, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v1, :cond_2

    .line 162
    :goto_1
    return-void

    .line 139
    .end local v1    # "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 145
    .restart local v1    # "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 148
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 149
    .local v4, "s":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lc8/Twb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 152
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "s":Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Lc8/Twb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 155
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_5
    const-string/jumbo v5, "Content-Type"

    invoke-virtual {v2, v5}, Lc8/Twb;->firstHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    .line 156
    const-string/jumbo v5, "Content-Type"

    const-string/jumbo v6, "application/json"

    invoke-virtual {v2, v5, v6}, Lc8/Twb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_6
    iget-object v5, p0, Lc8/bxb;->this$0:Lc8/gxb;

    invoke-static {v5}, Lc8/gxb;->access$100(Lc8/gxb;)Lc8/Uwb;

    move-result-object v5

    invoke-virtual {v5, v2}, Lc8/Uwb;->responseHeadersReceived(Lc8/Twb;)V

    .line 161
    iget-object v5, p0, Lc8/bxb;->this$0:Lc8/gxb;

    iget-object v6, p0, Lc8/bxb;->val$response:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-static {v5, v6, v2}, Lc8/gxb;->access$400(Lc8/gxb;Lmtopsdk/mtop/domain/MtopResponse;Lc8/Twb;)Lmtopsdk/mtop/domain/MtopResponse;

    goto :goto_1
.end method
