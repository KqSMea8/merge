.class public final Lc8/rJd;
.super Ljava/lang/Object;
.source "SynchronousCall.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static execute(Lc8/VHd;)Lc8/WHd;
    .locals 2
    .param p0, "request"    # Lc8/VHd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/VHd;",
            ")",
            "Lc8/WHd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lc8/VHd;->getRequestType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 57
    new-instance v0, Lc8/WHd;

    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>()V

    invoke-direct {v0, v1}, Lc8/WHd;-><init>(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    invoke-static {p0}, Lc8/rJd;->executeSimpleRequest(Lc8/VHd;)Lc8/WHd;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_1
    invoke-static {p0}, Lc8/rJd;->executeDownloadRequest(Lc8/VHd;)Lc8/WHd;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_2
    invoke-static {p0}, Lc8/rJd;->executeUploadRequest(Lc8/VHd;)Lc8/WHd;

    move-result-object v0

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static executeDownloadRequest(Lc8/VHd;)Lc8/WHd;
    .locals 6
    .param p0, "request"    # Lc8/VHd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/VHd;",
            ")",
            "Lc8/WHd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    invoke-static {p0}, Lc8/mJd;->performDownloadRequest(Lc8/VHd;)Lc8/JId;

    move-result-object v1

    .line 95
    .local v1, "okHttpResponse":Lc8/JId;
    if-nez v1, :cond_0

    .line 96
    new-instance v2, Lc8/WHd;

    new-instance v4, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v4}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>()V

    invoke-static {v4}, Lc8/SJd;->getErrorForConnection(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {v2, v4}, Lc8/WHd;-><init>(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 110
    .end local v1    # "okHttpResponse":Lc8/JId;
    :goto_0
    return-object v2

    .line 98
    .restart local v1    # "okHttpResponse":Lc8/JId;
    :cond_0
    invoke-virtual {v1}, Lc8/JId;->code()I

    move-result v4

    const/16 v5, 0x190

    if-lt v4, v5, :cond_1

    .line 99
    new-instance v2, Lc8/WHd;

    new-instance v4, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v4, v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Lc8/JId;)V

    .line 100
    invoke-virtual {v1}, Lc8/JId;->code()I

    move-result v5

    .line 99
    invoke-static {v4, p0, v5}, Lc8/SJd;->getErrorForServerResponse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;Lc8/VHd;I)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {v2, v4}, Lc8/WHd;-><init>(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 101
    .local v2, "response":Lc8/WHd;
    invoke-virtual {v2, v1}, Lc8/WHd;->setOkHttpResponse(Lc8/JId;)V
    :try_end_0
    .catch Lcom/meizu/cloud/pushsdk/networking/error/ANError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 107
    .end local v1    # "okHttpResponse":Lc8/JId;
    .end local v2    # "response":Lc8/WHd;
    :catch_0
    move-exception v3

    .line 108
    .local v3, "se":Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    new-instance v2, Lc8/WHd;

    new-instance v4, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v4, v3}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lc8/SJd;->getErrorForConnection(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {v2, v4}, Lc8/WHd;-><init>(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 104
    .end local v3    # "se":Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    .restart local v1    # "okHttpResponse":Lc8/JId;
    :cond_1
    :try_start_1
    new-instance v2, Lc8/WHd;

    const-string/jumbo v4, "success"

    invoke-direct {v2, v4}, Lc8/WHd;-><init>(Ljava/lang/Object;)V

    .line 105
    .restart local v2    # "response":Lc8/WHd;
    invoke-virtual {v2, v1}, Lc8/WHd;->setOkHttpResponse(Lc8/JId;)V
    :try_end_1
    .catch Lcom/meizu/cloud/pushsdk/networking/error/ANError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 109
    .end local v1    # "okHttpResponse":Lc8/JId;
    .end local v2    # "response":Lc8/WHd;
    :catch_1
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lc8/WHd;

    invoke-static {v0}, Lc8/SJd;->getErrorForNetworkOnMainThreadOrConnection(Ljava/lang/Exception;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {v2, v4}, Lc8/WHd;-><init>(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0
.end method

.method private static executeSimpleRequest(Lc8/VHd;)Lc8/WHd;
    .locals 6
    .param p0, "request"    # Lc8/VHd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/VHd;",
            ")",
            "Lc8/WHd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "okHttpResponse":Lc8/JId;
    :try_start_0
    invoke-static {p0}, Lc8/mJd;->performSimpleRequest(Lc8/VHd;)Lc8/JId;

    move-result-object v1

    .line 64
    if-nez v1, :cond_0

    .line 65
    new-instance v2, Lc8/WHd;

    new-instance v4, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v4}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>()V

    invoke-static {v4}, Lc8/SJd;->getErrorForConnection(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {v2, v4}, Lc8/WHd;-><init>(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    :try_end_0
    .catch Lcom/meizu/cloud/pushsdk/networking/error/ANError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-static {v1, p0}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    .line 85
    :goto_0
    return-object v2

    .line 68
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lc8/VHd;->getResponseAs()Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    move-result-object v4

    sget-object v5, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    if-ne v4, v5, :cond_1

    .line 69
    new-instance v2, Lc8/WHd;

    invoke-direct {v2, v1}, Lc8/WHd;-><init>(Ljava/lang/Object;)V

    .line 70
    .local v2, "response":Lc8/WHd;
    invoke-virtual {v2, v1}, Lc8/WHd;->setOkHttpResponse(Lc8/JId;)V
    :try_end_1
    .catch Lcom/meizu/cloud/pushsdk/networking/error/ANError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-static {v1, p0}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .line 73
    .end local v2    # "response":Lc8/WHd;
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lc8/JId;->code()I

    move-result v4

    const/16 v5, 0x190

    if-lt v4, v5, :cond_2

    .line 74
    new-instance v2, Lc8/WHd;

    new-instance v4, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v4, v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Lc8/JId;)V

    .line 75
    invoke-virtual {v1}, Lc8/JId;->code()I

    move-result v5

    .line 74
    invoke-static {v4, p0, v5}, Lc8/SJd;->getErrorForServerResponse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;Lc8/VHd;I)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {v2, v4}, Lc8/WHd;-><init>(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 76
    .restart local v2    # "response":Lc8/WHd;
    invoke-virtual {v2, v1}, Lc8/WHd;->setOkHttpResponse(Lc8/JId;)V
    :try_end_2
    .catch Lcom/meizu/cloud/pushsdk/networking/error/ANError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    invoke-static {v1, p0}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .line 79
    .end local v2    # "response":Lc8/WHd;
    :cond_2
    :try_start_3
    invoke-virtual {p0, v1}, Lc8/VHd;->parseResponse(Lc8/JId;)Lc8/WHd;

    move-result-object v2

    .line 80
    .restart local v2    # "response":Lc8/WHd;
    invoke-virtual {v2, v1}, Lc8/WHd;->setOkHttpResponse(Lc8/JId;)V
    :try_end_3
    .catch Lcom/meizu/cloud/pushsdk/networking/error/ANError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    invoke-static {v1, p0}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .line 82
    .end local v2    # "response":Lc8/WHd;
    :catch_0
    move-exception v3

    .line 83
    .local v3, "se":Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    :try_start_4
    new-instance v2, Lc8/WHd;

    new-instance v4, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v4, v3}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lc8/SJd;->getErrorForConnection(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {v2, v4}, Lc8/WHd;-><init>(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    invoke-static {v1, p0}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .line 84
    .end local v3    # "se":Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v2, Lc8/WHd;

    invoke-static {v0}, Lc8/SJd;->getErrorForNetworkOnMainThreadOrConnection(Ljava/lang/Exception;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {v2, v4}, Lc8/WHd;-><init>(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 87
    invoke-static {v1, p0}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v1, p0}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    throw v4
.end method

.method private static executeUploadRequest(Lc8/VHd;)Lc8/WHd;
    .locals 6
    .param p0, "request"    # Lc8/VHd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/VHd;",
            ")",
            "Lc8/WHd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "okHttpResponse":Lc8/JId;
    :try_start_0
    invoke-static {p0}, Lc8/mJd;->performUploadRequest(Lc8/VHd;)Lc8/JId;

    move-result-object v1

    .line 119
    if-nez v1, :cond_0

    .line 120
    new-instance v2, Lc8/WHd;

    new-instance v4, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v4}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>()V

    invoke-static {v4}, Lc8/SJd;->getErrorForConnection(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {v2, v4}, Lc8/WHd;-><init>(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    :try_end_0
    .catch Lcom/meizu/cloud/pushsdk/networking/error/ANError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-static {v1, p0}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    .line 140
    :goto_0
    return-object v2

    .line 123
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lc8/VHd;->getResponseAs()Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    move-result-object v4

    sget-object v5, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    if-ne v4, v5, :cond_1

    .line 124
    new-instance v2, Lc8/WHd;

    invoke-direct {v2, v1}, Lc8/WHd;-><init>(Ljava/lang/Object;)V

    .line 125
    .local v2, "response":Lc8/WHd;
    invoke-virtual {v2, v1}, Lc8/WHd;->setOkHttpResponse(Lc8/JId;)V
    :try_end_1
    .catch Lcom/meizu/cloud/pushsdk/networking/error/ANError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    invoke-static {v1, p0}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .line 128
    .end local v2    # "response":Lc8/WHd;
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lc8/JId;->code()I

    move-result v4

    const/16 v5, 0x190

    if-lt v4, v5, :cond_2

    .line 129
    new-instance v2, Lc8/WHd;

    new-instance v4, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v4, v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Lc8/JId;)V

    .line 130
    invoke-virtual {v1}, Lc8/JId;->code()I

    move-result v5

    .line 129
    invoke-static {v4, p0, v5}, Lc8/SJd;->getErrorForServerResponse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;Lc8/VHd;I)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {v2, v4}, Lc8/WHd;-><init>(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 131
    .restart local v2    # "response":Lc8/WHd;
    invoke-virtual {v2, v1}, Lc8/WHd;->setOkHttpResponse(Lc8/JId;)V
    :try_end_2
    .catch Lcom/meizu/cloud/pushsdk/networking/error/ANError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    invoke-static {v1, p0}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .line 134
    .end local v2    # "response":Lc8/WHd;
    :cond_2
    :try_start_3
    invoke-virtual {p0, v1}, Lc8/VHd;->parseResponse(Lc8/JId;)Lc8/WHd;

    move-result-object v2

    .line 135
    .restart local v2    # "response":Lc8/WHd;
    invoke-virtual {v2, v1}, Lc8/WHd;->setOkHttpResponse(Lc8/JId;)V
    :try_end_3
    .catch Lcom/meizu/cloud/pushsdk/networking/error/ANError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    invoke-static {v1, p0}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .line 137
    .end local v2    # "response":Lc8/WHd;
    :catch_0
    move-exception v3

    .line 138
    .local v3, "se":Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    :try_start_4
    new-instance v2, Lc8/WHd;

    invoke-static {v3}, Lc8/SJd;->getErrorForConnection(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {v2, v4}, Lc8/WHd;-><init>(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    invoke-static {v1, p0}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .line 139
    .end local v3    # "se":Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    :catch_1
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v2, Lc8/WHd;

    invoke-static {v0}, Lc8/SJd;->getErrorForNetworkOnMainThreadOrConnection(Ljava/lang/Exception;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {v2, v4}, Lc8/WHd;-><init>(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 142
    invoke-static {v1, p0}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v1, p0}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    throw v4
.end method
