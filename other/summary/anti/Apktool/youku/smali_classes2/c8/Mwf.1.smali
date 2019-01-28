.class public Lc8/Mwf;
.super Ljava/lang/Object;
.source "MtopResponseListener.java"

# interfaces
.implements Lc8/iM;
.implements Lc8/jM;
.implements Lc8/lM;


# instance fields
.field private final mFinishCallback:Lc8/Dxf;

.field private final mLoadExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnceCalled:Z


# direct methods
.method public constructor <init>(Lc8/Dxf;Ljava/util/Map;)V
    .locals 0
    .param p1, "finishCallback"    # Lc8/Dxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Dxf;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lc8/Mwf;->mFinishCallback:Lc8/Dxf;

    .line 31
    iput-object p2, p0, Lc8/Mwf;->mLoadExtras:Ljava/util/Map;

    .line 32
    return-void
.end method

.method private classifyException(Lc8/nM;)Lcom/taobao/phenix/loader/network/NetworkResponseException;
    .locals 3
    .param p1, "event"    # Lc8/nM;

    .prologue
    .line 35
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc8/nM;->getHttpCode()I

    move-result v0

    .line 36
    .local v0, "code":I
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 54
    new-instance v2, Lcom/taobao/phenix/compat/mtop/MtopIndifferentException;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lc8/nM;->getDesc()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {v2, v0, v1}, Lcom/taobao/phenix/compat/mtop/MtopIndifferentException;-><init>(ILjava/lang/String;)V

    move-object v1, v2

    :goto_2
    return-object v1

    .line 35
    .end local v0    # "code":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    .restart local v0    # "code":I
    :sswitch_0
    new-instance v1, Lcom/taobao/phenix/loader/network/IncompleteResponseException;

    invoke-direct {v1}, Lcom/taobao/phenix/loader/network/IncompleteResponseException;-><init>()V

    goto :goto_2

    .line 43
    :sswitch_1
    new-instance v1, Lcom/taobao/phenix/compat/mtop/MtopConnectTimeoutException;

    invoke-direct {v1, v0}, Lcom/taobao/phenix/compat/mtop/MtopConnectTimeoutException;-><init>(I)V

    goto :goto_2

    .line 46
    :sswitch_2
    new-instance v1, Lcom/taobao/phenix/compat/mtop/MtopInvalidHostException;

    invoke-direct {v1, v0}, Lcom/taobao/phenix/compat/mtop/MtopInvalidHostException;-><init>(I)V

    goto :goto_2

    .line 49
    :sswitch_3
    new-instance v1, Lcom/taobao/phenix/compat/mtop/MtopCertificateException;

    invoke-direct {v1, v0}, Lcom/taobao/phenix/compat/mtop/MtopCertificateException;-><init>(I)V

    goto :goto_2

    .line 52
    :sswitch_4
    new-instance v1, Lcom/taobao/phenix/compat/mtop/MtopInvalidUrlException;

    invoke-direct {v1, v0}, Lcom/taobao/phenix/compat/mtop/MtopInvalidUrlException;-><init>(I)V

    goto :goto_2

    .line 54
    :cond_1
    const-string/jumbo v1, "unknown"

    goto :goto_1

    .line 36
    :sswitch_data_0
    .sparse-switch
        -0x195 -> :sswitch_2
        -0x193 -> :sswitch_2
        -0x192 -> :sswitch_3
        -0x191 -> :sswitch_1
        -0x190 -> :sswitch_1
        -0xca -> :sswitch_1
        -0x66 -> :sswitch_4
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHeaderValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 90
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "lowerKey":Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/List;

    .line 94
    .restart local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 95
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 97
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onFinished(Lc8/nM;Ljava/lang/Object;)V
    .locals 6
    .param p1, "event"    # Lc8/nM;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 60
    iget-object v1, p0, Lc8/Mwf;->mLoadExtras:Ljava/util/Map;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc8/nM;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v0

    .local v0, "stat":Lanetwork/channel/statist/StatisticData;
    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lc8/Mwf;->mLoadExtras:Ljava/util/Map;

    const-string/jumbo v2, "mtop_extra_connect_type"

    iget-object v3, v0, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lc8/Mwf;->mLoadExtras:Ljava/util/Map;

    const-string/jumbo v2, "mtop_extra_ip_port"

    iget-object v3, v0, Lanetwork/channel/statist/StatisticData;->ip_port:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lc8/Mwf;->mLoadExtras:Ljava/util/Map;

    const-string/jumbo v2, "mtop_extra_first_data"

    iget-wide v4, v0, Lanetwork/channel/statist/StatisticData;->firstDataTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lc8/Mwf;->mLoadExtras:Ljava/util/Map;

    const-string/jumbo v2, "mtop_extra_send_before"

    iget-wide v4, v0, Lanetwork/channel/statist/StatisticData;->sendBeforeTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .end local v0    # "stat":Lanetwork/channel/statist/StatisticData;
    :cond_0
    iget-boolean v1, p0, Lc8/Mwf;->mOnceCalled:Z

    if-nez v1, :cond_1

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/Mwf;->mOnceCalled:Z

    .line 68
    iget-object v1, p0, Lc8/Mwf;->mFinishCallback:Lc8/Dxf;

    invoke-direct {p0, p1}, Lc8/Mwf;->classifyException(Lc8/nM;)Lcom/taobao/phenix/loader/network/NetworkResponseException;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/Dxf;->onError(Ljava/lang/Exception;)V

    .line 70
    :cond_1
    return-void
.end method

.method public onInputStreamGet(Lc8/PM;Ljava/lang/Object;)V
    .locals 9
    .param p1, "inputStream"    # Lc8/PM;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 74
    iget-boolean v2, p0, Lc8/Mwf;->mOnceCalled:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 75
    new-instance v0, Lc8/Lwf;

    invoke-direct {v0, p1}, Lc8/Lwf;-><init>(Lc8/PM;)V

    .line 76
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 78
    .local v1, "length":I
    :try_start_0
    invoke-interface {p1}, Lc8/PM;->length()I

    move-result v1

    .line 79
    const-string/jumbo v2, "Network"

    const-string/jumbo v3, "%s get content length(%d) from stream success"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "MtopHttpLoader"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    iput-boolean v7, p0, Lc8/Mwf;->mOnceCalled:Z

    .line 84
    iget-object v2, p0, Lc8/Mwf;->mFinishCallback:Lc8/Dxf;

    new-instance v3, Lc8/exf;

    invoke-direct {v3, v0, v1}, Lc8/exf;-><init>(Ljava/io/InputStream;I)V

    invoke-interface {v2, v3}, Lc8/Dxf;->onFinished(Lc8/exf;)V

    .line 86
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "length":I
    :cond_0
    return-void

    .line 81
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "length":I
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Network"

    const-string/jumbo v3, "%s get content length from stream failed"

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "MtopHttpLoader"

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lc8/qwf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "code"    # I
    .param p3, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v8, 0x1

    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, "xCache":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 104
    const-string/jumbo v2, "X-Cache"

    invoke-direct {p0, p2, v2}, Lc8/Mwf;->getHeaderValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_0
    iget-object v2, p0, Lc8/Mwf;->mLoadExtras:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    iget-object v3, p0, Lc8/Mwf;->mLoadExtras:Ljava/util/Map;

    const-string/jumbo v4, "mtop_extra_hit_cdn_cache"

    const-string/jumbo v2, "HIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "1"

    :goto_0
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_1
    iget-object v2, p0, Lc8/Mwf;->mLoadExtras:Ljava/util/Map;

    const-string/jumbo v3, "inner_network_start_time"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "networkStart":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 112
    iget-object v2, p0, Lc8/Mwf;->mLoadExtras:Ljava/util/Map;

    const-string/jumbo v3, "mtop_extra_response_code"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .end local v0    # "networkStart":Ljava/lang/String;
    :cond_2
    iget-boolean v2, p0, Lc8/Mwf;->mOnceCalled:Z

    if-nez v2, :cond_3

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_3

    .line 116
    iput-boolean v8, p0, Lc8/Mwf;->mOnceCalled:Z

    .line 117
    iget-object v2, p0, Lc8/Mwf;->mFinishCallback:Lc8/Dxf;

    new-instance v3, Lcom/taobao/phenix/loader/network/HttpCodeResponseException;

    invoke-direct {v3, p1}, Lcom/taobao/phenix/loader/network/HttpCodeResponseException;-><init>(I)V

    invoke-interface {v2, v3}, Lc8/Dxf;->onError(Ljava/lang/Exception;)V

    .line 119
    :cond_3
    return v8

    .line 108
    :cond_4
    const-string/jumbo v2, "0"

    goto :goto_0
.end method
