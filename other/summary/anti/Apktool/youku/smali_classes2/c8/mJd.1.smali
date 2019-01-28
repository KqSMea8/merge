.class public final Lc8/mJd;
.super Ljava/lang/Object;
.source "InternalNetworking.java"


# static fields
.field public static sUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lc8/mJd;->sUserAgent:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static addHeadersToRequestBuilder(Lc8/CId;Lc8/VHd;)V
    .locals 3
    .param p0, "builder"    # Lc8/CId;
    .param p1, "request"    # Lc8/VHd;

    .prologue
    .line 137
    invoke-virtual {p1}, Lc8/VHd;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 138
    const-string/jumbo v1, "User-Agent"

    invoke-virtual {p1}, Lc8/VHd;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lc8/CId;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/CId;

    .line 143
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc8/VHd;->getHeaders()Lc8/qId;

    move-result-object v0

    .line 144
    .local v0, "requestHeaders":Lc8/qId;
    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0, v0}, Lc8/CId;->headers(Lc8/qId;)Lc8/CId;

    .line 146
    invoke-virtual {p1}, Lc8/VHd;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lc8/qId;->names()Ljava/util/Set;

    move-result-object v1

    const-string/jumbo v2, "User-Agent"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    const-string/jumbo v1, "User-Agent"

    invoke-virtual {p1}, Lc8/VHd;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lc8/CId;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/CId;

    .line 150
    :cond_1
    return-void

    .line 139
    .end local v0    # "requestHeaders":Lc8/qId;
    :cond_2
    sget-object v1, Lc8/mJd;->sUserAgent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 140
    sget-object v1, Lc8/mJd;->sUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lc8/VHd;->setUserAgent(Ljava/lang/String;)V

    .line 141
    const-string/jumbo v1, "User-Agent"

    sget-object v2, Lc8/mJd;->sUserAgent:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lc8/CId;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/CId;

    goto :goto_0
.end method

.method public static performDownloadRequest(Lc8/VHd;)Lc8/JId;
    .locals 8
    .param p0, "request"    # Lc8/VHd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/cloud/pushsdk/networking/error/ANError;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    new-instance v6, Lc8/CId;

    invoke-direct {v6}, Lc8/CId;-><init>()V

    invoke-virtual {p0}, Lc8/VHd;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/CId;->url(Ljava/lang/String;)Lc8/CId;

    move-result-object v0

    .line 98
    .local v0, "builder":Lc8/CId;
    invoke-static {v0, p0}, Lc8/mJd;->addHeadersToRequestBuilder(Lc8/CId;Lc8/VHd;)V

    .line 99
    invoke-virtual {v0}, Lc8/CId;->get()Lc8/CId;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lc8/CId;->build()Lc8/DId;

    move-result-object v4

    .line 101
    .local v4, "okHttpRequest":Lc8/DId;
    new-instance v6, Lc8/tId;

    invoke-direct {v6, v4}, Lc8/tId;-><init>(Lc8/DId;)V

    invoke-virtual {p0, v6}, Lc8/VHd;->setCall(Lc8/kId;)V

    .line 102
    invoke-virtual {p0}, Lc8/VHd;->getCall()Lc8/kId;

    move-result-object v6

    invoke-interface {v6}, Lc8/kId;->execute()Lc8/JId;

    move-result-object v5

    .line 103
    .local v5, "okHttpResponse":Lc8/JId;
    invoke-virtual {p0}, Lc8/VHd;->getDirPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lc8/VHd;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lc8/SJd;->saveFile(Lc8/JId;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-object v5

    .line 104
    .end local v0    # "builder":Lc8/CId;
    .end local v4    # "okHttpRequest":Lc8/DId;
    .end local v5    # "okHttpResponse":Lc8/JId;
    :catch_0
    move-exception v3

    .line 106
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/VHd;->getDirPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lc8/VHd;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "destinationFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    .end local v1    # "destinationFile":Ljava/io/File;
    :cond_0
    :goto_0
    new-instance v6, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v6, v3}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 110
    :catch_1
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static performSimpleRequest(Lc8/VHd;)Lc8/JId;
    .locals 7
    .param p0, "request"    # Lc8/VHd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/cloud/pushsdk/networking/error/ANError;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    new-instance v5, Lc8/CId;

    invoke-direct {v5}, Lc8/CId;-><init>()V

    invoke-virtual {p0}, Lc8/VHd;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/CId;->url(Ljava/lang/String;)Lc8/CId;

    move-result-object v0

    .line 52
    .local v0, "builder":Lc8/CId;
    invoke-static {v0, p0}, Lc8/mJd;->addHeadersToRequestBuilder(Lc8/CId;Lc8/VHd;)V

    .line 54
    invoke-virtual {p0}, Lc8/VHd;->getMethod()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 84
    :goto_0
    invoke-virtual {v0}, Lc8/CId;->build()Lc8/DId;

    move-result-object v2

    .line 85
    .local v2, "okHttpRequest":Lc8/DId;
    new-instance v5, Lc8/tId;

    invoke-direct {v5, v2}, Lc8/tId;-><init>(Lc8/DId;)V

    invoke-virtual {p0, v5}, Lc8/VHd;->setCall(Lc8/kId;)V

    .line 86
    invoke-virtual {p0}, Lc8/VHd;->getCall()Lc8/kId;

    move-result-object v5

    invoke-interface {v5}, Lc8/kId;->execute()Lc8/JId;

    move-result-object v3

    .line 90
    .local v3, "okHttpResponse":Lc8/JId;
    return-object v3

    .line 56
    .end local v2    # "okHttpRequest":Lc8/DId;
    .end local v3    # "okHttpResponse":Lc8/JId;
    :pswitch_0
    invoke-virtual {v0}, Lc8/CId;->get()Lc8/CId;

    move-result-object v0

    .line 57
    goto :goto_0

    .line 60
    :pswitch_1
    invoke-virtual {p0}, Lc8/VHd;->getRequestBody()Lc8/GId;

    move-result-object v4

    .line 61
    .local v4, "requestBody":Lc8/GId;
    invoke-virtual {v0, v4}, Lc8/CId;->post(Lc8/GId;)Lc8/CId;

    move-result-object v0

    .line 62
    goto :goto_0

    .line 65
    .end local v4    # "requestBody":Lc8/GId;
    :pswitch_2
    invoke-virtual {p0}, Lc8/VHd;->getRequestBody()Lc8/GId;

    move-result-object v4

    .line 66
    .restart local v4    # "requestBody":Lc8/GId;
    invoke-virtual {v0, v4}, Lc8/CId;->put(Lc8/GId;)Lc8/CId;

    move-result-object v0

    .line 67
    goto :goto_0

    .line 70
    .end local v4    # "requestBody":Lc8/GId;
    :pswitch_3
    invoke-virtual {p0}, Lc8/VHd;->getRequestBody()Lc8/GId;

    move-result-object v4

    .line 71
    .restart local v4    # "requestBody":Lc8/GId;
    invoke-virtual {v0, v4}, Lc8/CId;->delete(Lc8/GId;)Lc8/CId;

    move-result-object v0

    .line 72
    goto :goto_0

    .line 75
    .end local v4    # "requestBody":Lc8/GId;
    :pswitch_4
    invoke-virtual {v0}, Lc8/CId;->head()Lc8/CId;

    move-result-object v0

    .line 76
    goto :goto_0

    .line 79
    :pswitch_5
    invoke-virtual {p0}, Lc8/VHd;->getRequestBody()Lc8/GId;

    move-result-object v4

    .line 80
    .restart local v4    # "requestBody":Lc8/GId;
    invoke-virtual {v0, v4}, Lc8/CId;->patch(Lc8/GId;)Lc8/CId;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 87
    .end local v0    # "builder":Lc8/CId;
    .end local v4    # "requestBody":Lc8/GId;
    :catch_0
    move-exception v1

    .line 88
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v5, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v5, v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static performUploadRequest(Lc8/VHd;)Lc8/JId;
    .locals 7
    .param p0, "request"    # Lc8/VHd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/cloud/pushsdk/networking/error/ANError;
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    new-instance v5, Lc8/CId;

    invoke-direct {v5}, Lc8/CId;-><init>()V

    invoke-virtual {p0}, Lc8/VHd;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/CId;->url(Ljava/lang/String;)Lc8/CId;

    move-result-object v0

    .line 124
    .local v0, "builder":Lc8/CId;
    invoke-static {v0, p0}, Lc8/mJd;->addHeadersToRequestBuilder(Lc8/CId;Lc8/VHd;)V

    .line 125
    invoke-virtual {p0}, Lc8/VHd;->getMultiPartRequestBody()Lc8/GId;

    move-result-object v4

    .line 126
    .local v4, "requestBody":Lc8/GId;
    new-instance v5, Lc8/qJd;

    invoke-virtual {p0}, Lc8/VHd;->getUploadProgressListener()Lc8/cJd;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lc8/qJd;-><init>(Lc8/GId;Lc8/cJd;)V

    invoke-virtual {v0, v5}, Lc8/CId;->post(Lc8/GId;)Lc8/CId;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lc8/CId;->build()Lc8/DId;

    move-result-object v2

    .line 128
    .local v2, "okHttpRequest":Lc8/DId;
    new-instance v5, Lc8/tId;

    invoke-direct {v5, v2}, Lc8/tId;-><init>(Lc8/DId;)V

    invoke-virtual {p0, v5}, Lc8/VHd;->setCall(Lc8/kId;)V

    .line 129
    invoke-virtual {p0}, Lc8/VHd;->getCall()Lc8/kId;

    move-result-object v5

    invoke-interface {v5}, Lc8/kId;->execute()Lc8/JId;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 133
    .local v3, "okHttpResponse":Lc8/JId;
    return-object v3

    .line 130
    .end local v0    # "builder":Lc8/CId;
    .end local v2    # "okHttpRequest":Lc8/DId;
    .end local v3    # "okHttpResponse":Lc8/JId;
    .end local v4    # "requestBody":Lc8/GId;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v5, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v5, v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
