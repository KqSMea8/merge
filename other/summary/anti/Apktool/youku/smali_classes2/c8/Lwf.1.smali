.class public Lc8/Lwf;
.super Ljava/io/InputStream;
.source "MtopResponseInputStream.java"


# instance fields
.field mParcelableInputStream:Lc8/PM;


# direct methods
.method public constructor <init>(Lc8/PM;)V
    .locals 0
    .param p1, "pIs"    # Lc8/PM;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 15
    iput-object p1, p0, Lc8/Lwf;->mParcelableInputStream:Lc8/PM;

    .line 16
    return-void
.end method

.method private isReadTimeoutException(Ljava/lang/Exception;)Z
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "await timeout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lc8/Lwf;->mParcelableInputStream:Lc8/PM;

    invoke-interface {v1}, Lc8/PM;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    :try_start_0
    iget-object v2, p0, Lc8/Lwf;->mParcelableInputStream:Lc8/PM;

    invoke-interface {v2}, Lc8/PM;->readByte()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 29
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 30
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lc8/Lwf;->isReadTimeoutException(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    new-instance v2, Lcom/taobao/phenix/compat/mtop/MtopReadTimeoutException;

    invoke-direct {v2}, Lcom/taobao/phenix/compat/mtop/MtopReadTimeoutException;-><init>()V

    throw v2

    .line 33
    :cond_0
    throw v0
.end method

.method public read([B)I
    .locals 3
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    iget-object v2, p0, Lc8/Lwf;->mParcelableInputStream:Lc8/PM;

    invoke-interface {v2, p1}, Lc8/PM;->read([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 43
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 44
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lc8/Lwf;->isReadTimeoutException(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    new-instance v2, Lcom/taobao/phenix/compat/mtop/MtopReadTimeoutException;

    invoke-direct {v2}, Lcom/taobao/phenix/compat/mtop/MtopReadTimeoutException;-><init>()V

    throw v2

    .line 47
    :cond_0
    throw v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    iget-object v2, p0, Lc8/Lwf;->mParcelableInputStream:Lc8/PM;

    invoke-interface {v2, p1, p2, p3}, Lc8/PM;->readBytes([BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 57
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 58
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lc8/Lwf;->isReadTimeoutException(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    new-instance v2, Lcom/taobao/phenix/compat/mtop/MtopReadTimeoutException;

    invoke-direct {v2}, Lcom/taobao/phenix/compat/mtop/MtopReadTimeoutException;-><init>()V

    throw v2

    .line 61
    :cond_0
    throw v0
.end method
