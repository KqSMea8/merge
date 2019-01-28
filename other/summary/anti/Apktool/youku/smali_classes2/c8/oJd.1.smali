.class public Lc8/oJd;
.super Ljava/lang/Object;
.source "InternalRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final priority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

.field public final request:Lc8/VHd;

.field public final sequence:I


# direct methods
.method public constructor <init>(Lc8/VHd;)V
    .locals 1
    .param p1, "request"    # Lc8/VHd;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lc8/oJd;->request:Lc8/VHd;

    .line 49
    invoke-virtual {p1}, Lc8/VHd;->getSequenceNumber()I

    move-result v0

    iput v0, p0, Lc8/oJd;->sequence:I

    .line 50
    invoke-virtual {p1}, Lc8/VHd;->getPriority()Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lc8/oJd;->priority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 51
    return-void
.end method

.method private deliverError(Lc8/VHd;Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    .locals 2
    .param p1, "request"    # Lc8/VHd;
    .param p2, "anError"    # Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    .prologue
    .line 162
    invoke-static {}, Lc8/eId;->getInstance()Lc8/eId;

    move-result-object v0

    invoke-virtual {v0}, Lc8/eId;->getExecutorSupplier()Lc8/gId;

    move-result-object v0

    invoke-interface {v0}, Lc8/gId;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lc8/nJd;

    invoke-direct {v1, p0, p1, p2}, Lc8/nJd;-><init>(Lc8/oJd;Lc8/VHd;Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method private executeDownloadRequest()V
    .locals 6

    .prologue
    .line 107
    :try_start_0
    iget-object v2, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-static {v2}, Lc8/mJd;->performDownloadRequest(Lc8/VHd;)Lc8/JId;

    move-result-object v1

    .line 108
    .local v1, "okHttpResponse":Lc8/JId;
    if-nez v1, :cond_0

    .line 109
    iget-object v2, p0, Lc8/oJd;->request:Lc8/VHd;

    new-instance v3, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v3}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>()V

    invoke-static {v3}, Lc8/SJd;->getErrorForConnection(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lc8/oJd;->deliverError(Lc8/VHd;Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 121
    .end local v1    # "okHttpResponse":Lc8/JId;
    :goto_0
    return-void

    .line 112
    .restart local v1    # "okHttpResponse":Lc8/JId;
    :cond_0
    invoke-virtual {v1}, Lc8/JId;->code()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_1

    .line 113
    iget-object v2, p0, Lc8/oJd;->request:Lc8/VHd;

    new-instance v3, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v3, v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Lc8/JId;)V

    iget-object v4, p0, Lc8/oJd;->request:Lc8/VHd;

    .line 114
    invoke-virtual {v1}, Lc8/JId;->code()I

    move-result v5

    .line 113
    invoke-static {v3, v4, v5}, Lc8/SJd;->getErrorForServerResponse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;Lc8/VHd;I)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lc8/oJd;->deliverError(Lc8/VHd;Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v1    # "okHttpResponse":Lc8/JId;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lc8/oJd;->request:Lc8/VHd;

    new-instance v3, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v3, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lc8/SJd;->getErrorForConnection(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lc8/oJd;->deliverError(Lc8/VHd;Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "okHttpResponse":Lc8/JId;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-virtual {v2}, Lc8/VHd;->updateDownloadCompletion()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private executeSimpleRequest()V
    .locals 7

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, "okHttpResponse":Lc8/JId;
    :try_start_0
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-static {v3}, Lc8/mJd;->performSimpleRequest(Lc8/VHd;)Lc8/JId;

    move-result-object v1

    .line 75
    if-nez v1, :cond_0

    .line 76
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    new-instance v4, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v4}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>()V

    invoke-static {v4}, Lc8/SJd;->getErrorForConnection(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lc8/oJd;->deliverError(Lc8/VHd;Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-static {v1, v3}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    .line 101
    :goto_0
    return-void

    .line 80
    :cond_0
    :try_start_1
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-virtual {v3}, Lc8/VHd;->getResponseAs()Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    move-result-object v3

    sget-object v4, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    if-ne v3, v4, :cond_1

    .line 81
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-virtual {v3, v1}, Lc8/VHd;->deliverOkHttpResponse(Lc8/JId;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-static {v1, v3}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .line 84
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lc8/JId;->code()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_2

    .line 85
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    new-instance v4, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v4, v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Lc8/JId;)V

    iget-object v5, p0, Lc8/oJd;->request:Lc8/VHd;

    .line 86
    invoke-virtual {v1}, Lc8/JId;->code()I

    move-result v6

    .line 85
    invoke-static {v4, v5, v6}, Lc8/SJd;->getErrorForServerResponse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;Lc8/VHd;I)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lc8/oJd;->deliverError(Lc8/VHd;Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-static {v1, v3}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .line 90
    :cond_2
    :try_start_3
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-virtual {v3, v1}, Lc8/VHd;->parseResponse(Lc8/JId;)Lc8/WHd;

    move-result-object v2

    .line 91
    .local v2, "response":Lc8/WHd;
    invoke-virtual {v2}, Lc8/WHd;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_3

    .line 92
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-virtual {v2}, Lc8/WHd;->getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lc8/oJd;->deliverError(Lc8/VHd;Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-static {v1, v3}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .line 95
    :cond_3
    :try_start_4
    invoke-virtual {v2, v1}, Lc8/WHd;->setOkHttpResponse(Lc8/JId;)V

    .line 96
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-virtual {v3, v2}, Lc8/VHd;->deliverResponse(Lc8/WHd;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 100
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-static {v1, v3}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .line 97
    .end local v2    # "response":Lc8/WHd;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    new-instance v4, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v4, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lc8/SJd;->getErrorForConnection(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lc8/oJd;->deliverError(Lc8/VHd;Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 100
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-static {v1, v3}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-static {v1, v4}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    throw v3
.end method

.method private executeUploadRequest()V
    .locals 7

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 126
    .local v1, "okHttpResponse":Lc8/JId;
    :try_start_0
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-static {v3}, Lc8/mJd;->performUploadRequest(Lc8/VHd;)Lc8/JId;

    move-result-object v1

    .line 128
    if-nez v1, :cond_0

    .line 129
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    new-instance v4, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v4}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>()V

    invoke-static {v4}, Lc8/SJd;->getErrorForConnection(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lc8/oJd;->deliverError(Lc8/VHd;Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-static {v1, v3}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    .line 154
    :goto_0
    return-void

    .line 133
    :cond_0
    :try_start_1
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-virtual {v3}, Lc8/VHd;->getResponseAs()Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    move-result-object v3

    sget-object v4, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    if-ne v3, v4, :cond_1

    .line 134
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-virtual {v3, v1}, Lc8/VHd;->deliverOkHttpResponse(Lc8/JId;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-static {v1, v3}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .line 138
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lc8/JId;->code()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_2

    .line 139
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    new-instance v4, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v4, v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Lc8/JId;)V

    iget-object v5, p0, Lc8/oJd;->request:Lc8/VHd;

    .line 140
    invoke-virtual {v1}, Lc8/JId;->code()I

    move-result v6

    .line 139
    invoke-static {v4, v5, v6}, Lc8/SJd;->getErrorForServerResponse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;Lc8/VHd;I)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lc8/oJd;->deliverError(Lc8/VHd;Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-static {v1, v3}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .line 143
    :cond_2
    :try_start_3
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-virtual {v3, v1}, Lc8/VHd;->parseResponse(Lc8/JId;)Lc8/WHd;

    move-result-object v2

    .line 144
    .local v2, "response":Lc8/WHd;
    invoke-virtual {v2}, Lc8/WHd;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_3

    .line 145
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-virtual {v2}, Lc8/WHd;->getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lc8/oJd;->deliverError(Lc8/VHd;Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-static {v1, v3}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .line 148
    :cond_3
    :try_start_4
    invoke-virtual {v2, v1}, Lc8/WHd;->setOkHttpResponse(Lc8/JId;)V

    .line 149
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-virtual {v3, v2}, Lc8/VHd;->deliverResponse(Lc8/WHd;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-static {v1, v3}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .line 150
    .end local v2    # "response":Lc8/WHd;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    new-instance v4, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v4, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lc8/SJd;->getErrorForConnection(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lc8/oJd;->deliverError(Lc8/VHd;Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    iget-object v3, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-static {v1, v3}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-static {v1, v4}, Lc8/QJd;->close(Lc8/JId;Lc8/VHd;)V

    throw v3
.end method


# virtual methods
.method public getPriority()Lcom/meizu/cloud/pushsdk/networking/common/Priority;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lc8/oJd;->priority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "execution started : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-virtual {v1}, Lc8/VHd;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/IHd;->d(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-virtual {v0}, Lc8/VHd;->getRequestType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "execution done : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/oJd;->request:Lc8/VHd;

    invoke-virtual {v1}, Lc8/VHd;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/IHd;->d(Ljava/lang/String;)V

    .line 68
    return-void

    .line 58
    :pswitch_0
    invoke-direct {p0}, Lc8/oJd;->executeSimpleRequest()V

    goto :goto_0

    .line 61
    :pswitch_1
    invoke-direct {p0}, Lc8/oJd;->executeDownloadRequest()V

    goto :goto_0

    .line 64
    :pswitch_2
    invoke-direct {p0}, Lc8/oJd;->executeUploadRequest()V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
