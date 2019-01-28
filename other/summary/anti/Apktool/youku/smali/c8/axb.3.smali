.class public Lc8/axb;
.super Ljava/lang/Object;
.source "MtopTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gxb;->preRequest(Lc8/HMf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/gxb;

.field final synthetic val$business:Lc8/HMf;


# direct methods
.method constructor <init>(Lc8/gxb;Lc8/HMf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/gxb;

    .prologue
    .line 63
    iput-object p1, p0, Lc8/axb;->this$0:Lc8/gxb;

    iput-object p2, p0, Lc8/axb;->val$business:Lc8/HMf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 66
    const-string/jumbo v6, "MtopTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "preRequest -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lc8/axb;->val$business:Lc8/HMf;

    iget-object v8, v8, Lc8/HMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v6, p0, Lc8/axb;->this$0:Lc8/gxb;

    new-instance v7, Lc8/xxb;

    iget-object v8, p0, Lc8/axb;->this$0:Lc8/gxb;

    invoke-static {v8}, Lc8/gxb;->access$100(Lc8/gxb;)Lc8/Uwb;

    move-result-object v8

    iget-object v9, p0, Lc8/axb;->this$0:Lc8/gxb;

    invoke-static {v9}, Lc8/gxb;->access$200(Lc8/gxb;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lc8/xxb;-><init>(Lc8/Uwb;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lc8/gxb;->access$002(Lc8/gxb;Lc8/xxb;)Lc8/xxb;

    .line 69
    new-instance v4, Lc8/Swb;

    invoke-direct {v4}, Lc8/Swb;-><init>()V

    .line 71
    .local v4, "request":Lc8/Swb;
    iget-object v6, p0, Lc8/axb;->val$business:Lc8/HMf;

    iget-object v1, v6, Lc8/HMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    .line 72
    .local v1, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    const-string/jumbo v6, "api-name"

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v6, "api-version"

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v6, "api-key"

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v6, "need-ecode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->isNeedEcode()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v6, "need-session"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->isNeedSession()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v6, "legal-request"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->isLegalRequest()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v6, v1, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 80
    .local v3, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v3    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v6, p0, Lc8/axb;->val$business:Lc8/HMf;

    iget-object v6, v6, Lc8/HMf;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v6}, Lmtopsdk/mtop/common/MtopNetworkProp;->getRequestHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 84
    .restart local v3    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 87
    .end local v3    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v6, "Content-Type"

    invoke-virtual {v4, v6}, Lc8/Swb;->firstHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 88
    const-string/jumbo v6, "Content-Type"

    const-string/jumbo v7, "application/json"

    invoke-virtual {v4, v6, v7}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2
    iget-object v6, p0, Lc8/axb;->this$0:Lc8/gxb;

    invoke-static {v6}, Lc8/gxb;->access$200(Lc8/gxb;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lc8/Swb;->setRequestId(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v6, "MTOP"

    invoke-virtual {v4, v6}, Lc8/Swb;->setFriendlyName(Ljava/lang/String;)V

    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lc8/axb;->val$business:Lc8/HMf;

    iget-object v7, v7, Lc8/HMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/axb;->val$business:Lc8/HMf;

    iget-object v7, v7, Lc8/HMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lc8/Swb;->setUrl(Ljava/lang/String;)V

    .line 94
    iget-object v6, p0, Lc8/axb;->val$business:Lc8/HMf;

    iget-object v6, v6, Lc8/HMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v6}, Lmtopsdk/mtop/domain/MtopRequest;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 95
    .local v0, "body":[B
    if-eqz v0, :cond_3

    .line 97
    :try_start_0
    iget-object v6, p0, Lc8/axb;->this$0:Lc8/gxb;

    invoke-static {v6}, Lc8/gxb;->access$000(Lc8/gxb;)Lc8/xxb;

    move-result-object v6

    invoke-virtual {v4}, Lc8/Swb;->contentEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/xxb;->createBodySink(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    .line 98
    .local v2, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 99
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    :goto_2
    iget-object v6, p0, Lc8/axb;->this$0:Lc8/gxb;

    invoke-static {v6}, Lc8/gxb;->access$000(Lc8/gxb;)Lc8/xxb;

    move-result-object v6

    invoke-virtual {v6}, Lc8/xxb;->getDisplayBody()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lc8/Swb;->setBody([B)V

    .line 106
    :cond_3
    iget-object v6, p0, Lc8/axb;->val$business:Lc8/HMf;

    iget-object v6, v6, Lc8/HMf;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v6}, Lmtopsdk/mtop/common/MtopNetworkProp;->getMethod()Lmtopsdk/mtop/domain/MethodEnum;

    move-result-object v6

    invoke-virtual {v6}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lc8/Swb;->setMethod(Ljava/lang/String;)V

    .line 107
    iget-object v6, p0, Lc8/axb;->this$0:Lc8/gxb;

    invoke-static {v6}, Lc8/gxb;->access$100(Lc8/gxb;)Lc8/Uwb;

    move-result-object v6

    invoke-virtual {v6, v4}, Lc8/Uwb;->requestWillBeSent(Lc8/Swb;)V

    .line 108
    iget-object v7, p0, Lc8/axb;->this$0:Lc8/gxb;

    invoke-virtual {v4}, Lc8/Swb;->getData()Ljava/util/Map;

    move-result-object v6

    const-string/jumbo v8, "url"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6}, Lc8/gxb;->access$302(Lc8/gxb;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    iget-object v6, p0, Lc8/axb;->this$0:Lc8/gxb;

    invoke-static {v6}, Lc8/gxb;->access$100(Lc8/gxb;)Lc8/Uwb;

    move-result-object v6

    iget-object v7, p0, Lc8/axb;->this$0:Lc8/gxb;

    invoke-static {v7}, Lc8/gxb;->access$200(Lc8/gxb;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lc8/Swb;->contentLength()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lc8/Uwb;->dataSent(Ljava/lang/String;II)V

    .line 110
    return-void

    .line 100
    :catch_0
    move-exception v5

    .line 101
    .local v5, "t":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
