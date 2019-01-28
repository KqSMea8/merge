.class public Lcom/taobao/downloader/adapter/network/TBNetConnection;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lc8/xmf;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lc8/uM;

.field private b:Lc8/sN;

.field private c:Lc8/yM;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->a:Lc8/uM;

    invoke-interface {v0, p1, p2}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->b:Lc8/sN;

    iget-object v1, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->a:Lc8/uM;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lc8/sN;->getConnection(Lc8/uM;Ljava/lang/Object;)Lc8/yM;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->c:Lc8/yM;

    .line 86
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->c:Lc8/yM;

    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->c:Lc8/yM;

    invoke-interface {v0}, Lc8/yM;->cancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->c:Lc8/yM;

    invoke-interface {v0}, Lc8/yM;->getConnHeadFields()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/RL;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputStream()Lc8/ymf;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    new-instance v0, Lc8/Rlf;

    iget-object v1, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->c:Lc8/yM;

    invoke-interface {v1}, Lc8/yM;->getInputStream()Lc8/PM;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Rlf;-><init>(Lc8/PM;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "getInputStream"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getResponseCode()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->c:Lc8/yM;

    invoke-interface {v0}, Lc8/yM;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "getResponseCode"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public openConnection(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 31
    new-instance v0, Lc8/sN;

    sget-object v1, Lc8/omf;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/sN;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->b:Lc8/sN;

    .line 32
    new-instance v0, Lc8/IN;

    invoke-direct {v0, p2}, Lc8/IN;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->a:Lc8/uM;

    .line 33
    iget-object v0, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->a:Lc8/uM;

    invoke-interface {v0, p1}, Lc8/uM;->setMethod(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->a:Lc8/uM;

    invoke-interface {v0, p3}, Lc8/uM;->setReadTimeout(I)V

    .line 35
    iget-object v0, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->a:Lc8/uM;

    invoke-interface {v0, p4}, Lc8/uM;->setConnectTimeout(I)V

    .line 36
    iget-object v0, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->a:Lc8/uM;

    invoke-interface {v0, v2}, Lc8/uM;->setFollowRedirects(Z)V

    .line 37
    iget-object v0, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->a:Lc8/uM;

    invoke-interface {v0, v2}, Lc8/uM;->setRetryTime(I)V

    .line 38
    return-void
.end method

.method public setBody(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->a:Lc8/uM;

    const-string/jumbo v1, "Content-Type"

    invoke-interface {v0, v1, p1}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/taobao/downloader/adapter/network/TBNetConnection;->a:Lc8/uM;

    new-instance v1, Lanet/channel/request/ByteArrayEntry;

    invoke-direct {v1, p2}, Lanet/channel/request/ByteArrayEntry;-><init>([B)V

    invoke-interface {v0, v1}, Lc8/uM;->setBodyEntry(Lanet/channel/request/BodyEntry;)V

    .line 57
    :cond_1
    return-void
.end method
