.class public Lc8/hxb;
.super Ljava/lang/Object;
.source "NetworkTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nxb;->preRequest(Lc8/uM;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nxb;

.field final synthetic val$request:Lc8/uM;


# direct methods
.method constructor <init>(Lc8/nxb;Lc8/uM;)V
    .locals 0
    .param p1, "this$0"    # Lc8/nxb;

    .prologue
    .line 68
    iput-object p1, p0, Lc8/hxb;->this$0:Lc8/nxb;

    iput-object p2, p0, Lc8/hxb;->val$request:Lc8/uM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 71
    const-string/jumbo v6, "NetworkTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lc8/hxb;->this$0:Lc8/nxb;

    invoke-static {v8}, Lc8/nxb;->access$000(Lc8/nxb;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " preRequest -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lc8/hxb;->val$request:Lc8/uM;

    invoke-interface {v8}, Lc8/uM;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v1, Lc8/Swb;

    invoke-direct {v1}, Lc8/Swb;-><init>()V

    .line 73
    .local v1, "inspectRequest":Lc8/Swb;
    iget-object v6, p0, Lc8/hxb;->val$request:Lc8/uM;

    invoke-interface {v6}, Lc8/uM;->getHeaders()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fM;

    .line 74
    .local v0, "header":Lc8/fM;
    invoke-interface {v0}, Lc8/fM;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lc8/fM;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .end local v0    # "header":Lc8/fM;
    :cond_0
    iget-object v6, p0, Lc8/hxb;->val$request:Lc8/uM;

    invoke-interface {v6}, Lc8/uM;->getBodyEntry()Lanet/channel/request/BodyEntry;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lc8/hxb;->val$request:Lc8/uM;

    invoke-interface {v6}, Lc8/uM;->getBodyEntry()Lanet/channel/request/BodyEntry;

    move-result-object v6

    invoke-interface {v6}, Lanet/channel/request/BodyEntry;->getContentType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 77
    const-string/jumbo v6, "Content-Type"

    iget-object v7, p0, Lc8/hxb;->val$request:Lc8/uM;

    invoke-interface {v7}, Lc8/uM;->getBodyEntry()Lanet/channel/request/BodyEntry;

    move-result-object v7

    invoke-interface {v7}, Lanet/channel/request/BodyEntry;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1
    iget-object v6, p0, Lc8/hxb;->val$request:Lc8/uM;

    invoke-interface {v6}, Lc8/uM;->getParams()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 80
    iget-object v6, p0, Lc8/hxb;->val$request:Lc8/uM;

    invoke-interface {v6}, Lc8/uM;->getParams()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/tM;

    .line 81
    .local v3, "param":Lc8/tM;
    invoke-interface {v3}, Lc8/tM;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Lc8/tM;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 84
    .end local v3    # "param":Lc8/tM;
    :cond_2
    const-string/jumbo v6, "charset"

    iget-object v7, p0, Lc8/hxb;->val$request:Lc8/uM;

    invoke-interface {v7}, Lc8/uM;->getCharset()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v6, "connectTimeout"

    iget-object v7, p0, Lc8/hxb;->val$request:Lc8/uM;

    invoke-interface {v7}, Lc8/uM;->getConnectTimeout()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v6, "readTimeout"

    iget-object v7, p0, Lc8/hxb;->val$request:Lc8/uM;

    invoke-interface {v7}, Lc8/uM;->getReadTimeout()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v6, "retryTime"

    iget-object v7, p0, Lc8/hxb;->val$request:Lc8/uM;

    invoke-interface {v7}, Lc8/uM;->getRetryTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v6, p0, Lc8/hxb;->this$0:Lc8/nxb;

    iget-object v7, p0, Lc8/hxb;->val$request:Lc8/uM;

    invoke-interface {v7}, Lc8/uM;->getURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/nxb;->access$102(Lc8/nxb;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    iget-object v6, p0, Lc8/hxb;->this$0:Lc8/nxb;

    invoke-static {v6}, Lc8/nxb;->access$100(Lc8/nxb;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lc8/Swb;->setUrl(Ljava/lang/String;)V

    .line 91
    iget-object v6, p0, Lc8/hxb;->this$0:Lc8/nxb;

    invoke-static {v6}, Lc8/nxb;->access$000(Lc8/nxb;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lc8/Swb;->setRequestId(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v6, "ANet"

    invoke-virtual {v1, v6}, Lc8/Swb;->setFriendlyName(Ljava/lang/String;)V

    .line 93
    iget-object v6, p0, Lc8/hxb;->val$request:Lc8/uM;

    invoke-interface {v6}, Lc8/uM;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "GET"

    :goto_2
    invoke-virtual {v1, v6}, Lc8/Swb;->setMethod(Ljava/lang/String;)V

    .line 95
    iget-object v6, p0, Lc8/hxb;->val$request:Lc8/uM;

    invoke-interface {v6}, Lc8/uM;->getBodyEntry()Lanet/channel/request/BodyEntry;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 97
    :try_start_0
    new-instance v5, Lc8/xxb;

    iget-object v6, p0, Lc8/hxb;->this$0:Lc8/nxb;

    invoke-static {v6}, Lc8/nxb;->access$200(Lc8/nxb;)Lc8/Uwb;

    move-result-object v6

    iget-object v7, p0, Lc8/hxb;->this$0:Lc8/nxb;

    invoke-static {v7}, Lc8/nxb;->access$000(Lc8/nxb;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lc8/xxb;-><init>(Lc8/Uwb;Ljava/lang/String;)V

    .line 98
    .local v5, "util":Lc8/xxb;
    invoke-virtual {v1}, Lc8/Swb;->contentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/xxb;->createBodySink(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 100
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    iget-object v6, p0, Lc8/hxb;->val$request:Lc8/uM;

    invoke-interface {v6}, Lc8/uM;->getBodyEntry()Lanet/channel/request/BodyEntry;

    move-result-object v6

    invoke-interface {v6, v2}, Lanet/channel/request/BodyEntry;->writeTo(Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 104
    invoke-virtual {v5}, Lc8/xxb;->getDisplayBody()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Lc8/Swb;->setBody([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 111
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .end local v5    # "util":Lc8/xxb;
    :cond_3
    :goto_3
    iget-object v6, p0, Lc8/hxb;->this$0:Lc8/nxb;

    invoke-static {v6}, Lc8/nxb;->access$200(Lc8/nxb;)Lc8/Uwb;

    move-result-object v6

    invoke-virtual {v6, v1}, Lc8/Uwb;->requestWillBeSent(Lc8/Swb;)V

    .line 112
    iget-object v6, p0, Lc8/hxb;->this$0:Lc8/nxb;

    invoke-static {v6}, Lc8/nxb;->access$200(Lc8/nxb;)Lc8/Uwb;

    move-result-object v6

    iget-object v7, p0, Lc8/hxb;->this$0:Lc8/nxb;

    invoke-static {v7}, Lc8/nxb;->access$000(Lc8/nxb;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lc8/Swb;->contentLength()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lc8/Uwb;->dataSent(Ljava/lang/String;II)V

    .line 113
    return-void

    .line 93
    :cond_4
    iget-object v6, p0, Lc8/hxb;->val$request:Lc8/uM;

    invoke-interface {v6}, Lc8/uM;->getMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 102
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "util":Lc8/xxb;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v6
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 105
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .end local v5    # "util":Lc8/xxb;
    :catch_0
    move-exception v4

    .line 106
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method
