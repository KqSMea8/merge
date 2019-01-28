.class public final Lc8/lSe;
.super Lc8/rTe;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AsyncCall"
.end annotation


# instance fields
.field private final forWebSocket:Z

.field private final responseCallback:Lc8/nSe;

.field final synthetic this$0:Lc8/mSe;


# direct methods
.method private constructor <init>(Lc8/mSe;Lc8/nSe;Z)V
    .locals 4
    .param p1, "this$0"    # Lc8/mSe;
    .param p2, "responseCallback"    # Lc8/nSe;
    .param p3, "forWebSocket"    # Z

    .prologue
    .line 142
    iput-object p1, p0, Lc8/lSe;->this$0:Lc8/mSe;

    .line 143
    const-string/jumbo v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lc8/mSe;->originalRequest:Lc8/VSe;

    invoke-virtual {v3}, Lc8/VSe;->urlString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lc8/rTe;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iput-object p2, p0, Lc8/lSe;->responseCallback:Lc8/nSe;

    .line 145
    iput-boolean p3, p0, Lc8/lSe;->forWebSocket:Z

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Lc8/mSe;Lc8/nSe;ZLc8/jSe;)V
    .locals 0
    .param p1, "x0"    # Lc8/mSe;
    .param p2, "x1"    # Lc8/nSe;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lc8/jSe;

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3}, Lc8/lSe;-><init>(Lc8/mSe;Lc8/nSe;Z)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lc8/lSe;->this$0:Lc8/mSe;

    invoke-virtual {v0}, Lc8/mSe;->cancel()V

    .line 162
    return-void
.end method

.method protected execute()V
    .locals 8

    .prologue
    .line 169
    const/4 v3, 0x0

    .line 171
    .local v3, "signalledCallback":Z
    :try_start_0
    iget-object v4, p0, Lc8/lSe;->this$0:Lc8/mSe;

    iget-boolean v5, p0, Lc8/lSe;->forWebSocket:Z

    invoke-static {v4, v5}, Lc8/mSe;->access$100(Lc8/mSe;Z)Lc8/cTe;

    move-result-object v2

    .line 172
    .local v2, "response":Lc8/cTe;
    iget-object v4, p0, Lc8/lSe;->this$0:Lc8/mSe;

    iget-boolean v4, v4, Lc8/mSe;->canceled:Z

    if-eqz v4, :cond_0

    .line 173
    const/4 v3, 0x1

    .line 174
    iget-object v4, p0, Lc8/lSe;->responseCallback:Lc8/nSe;

    iget-object v5, p0, Lc8/lSe;->this$0:Lc8/mSe;

    iget-object v5, v5, Lc8/mSe;->originalRequest:Lc8/VSe;

    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "Canceled"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Lc8/nSe;->onFailure(Lc8/VSe;Ljava/io/IOException;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_0
    iget-object v4, p0, Lc8/lSe;->this$0:Lc8/mSe;

    invoke-static {v4}, Lc8/mSe;->access$300(Lc8/mSe;)Lc8/QSe;

    move-result-object v4

    invoke-virtual {v4}, Lc8/QSe;->getDispatcher()Lc8/zSe;

    move-result-object v4

    invoke-virtual {v4, p0}, Lc8/zSe;->finished(Lc8/lSe;)V

    .line 189
    .end local v2    # "response":Lc8/cTe;
    :goto_1
    return-void

    .line 176
    .restart local v2    # "response":Lc8/cTe;
    :cond_0
    const/4 v3, 0x1

    .line 177
    :try_start_1
    iget-object v4, p0, Lc8/lSe;->responseCallback:Lc8/nSe;

    invoke-interface {v4, v2}, Lc8/nSe;->onResponse(Lc8/cTe;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    .end local v2    # "response":Lc8/cTe;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    if-eqz v3, :cond_1

    .line 182
    :try_start_2
    sget-object v4, Lc8/pTe;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Callback failure for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/lSe;->this$0:Lc8/mSe;

    invoke-static {v7}, Lc8/mSe;->access$200(Lc8/mSe;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    :goto_2
    iget-object v4, p0, Lc8/lSe;->this$0:Lc8/mSe;

    invoke-static {v4}, Lc8/mSe;->access$300(Lc8/mSe;)Lc8/QSe;

    move-result-object v4

    invoke-virtual {v4}, Lc8/QSe;->getDispatcher()Lc8/zSe;

    move-result-object v4

    invoke-virtual {v4, p0}, Lc8/zSe;->finished(Lc8/lSe;)V

    goto :goto_1

    .line 184
    :cond_1
    :try_start_3
    iget-object v4, p0, Lc8/lSe;->this$0:Lc8/mSe;

    iget-object v4, v4, Lc8/mSe;->engine:Lc8/QUe;

    if-nez v4, :cond_2

    iget-object v4, p0, Lc8/lSe;->this$0:Lc8/mSe;

    iget-object v1, v4, Lc8/mSe;->originalRequest:Lc8/VSe;

    .line 185
    .local v1, "request":Lc8/VSe;
    :goto_3
    iget-object v4, p0, Lc8/lSe;->responseCallback:Lc8/nSe;

    invoke-interface {v4, v1, v0}, Lc8/nSe;->onFailure(Lc8/VSe;Ljava/io/IOException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 188
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "request":Lc8/VSe;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lc8/lSe;->this$0:Lc8/mSe;

    invoke-static {v5}, Lc8/mSe;->access$300(Lc8/mSe;)Lc8/QSe;

    move-result-object v5

    invoke-virtual {v5}, Lc8/QSe;->getDispatcher()Lc8/zSe;

    move-result-object v5

    invoke-virtual {v5, p0}, Lc8/zSe;->finished(Lc8/lSe;)V

    throw v4

    .line 184
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_4
    iget-object v4, p0, Lc8/lSe;->this$0:Lc8/mSe;

    iget-object v4, v4, Lc8/mSe;->engine:Lc8/QUe;

    invoke-virtual {v4}, Lc8/QUe;->getRequest()Lc8/VSe;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    goto :goto_3
.end method

.method get()Lc8/mSe;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lc8/lSe;->this$0:Lc8/mSe;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lc8/lSe;->this$0:Lc8/mSe;

    iget-object v0, v0, Lc8/mSe;->originalRequest:Lc8/VSe;

    invoke-virtual {v0}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/JSe;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method request()Lc8/VSe;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lc8/lSe;->this$0:Lc8/mSe;

    iget-object v0, v0, Lc8/mSe;->originalRequest:Lc8/VSe;

    return-object v0
.end method

.method tag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lc8/lSe;->this$0:Lc8/mSe;

    iget-object v0, v0, Lc8/mSe;->originalRequest:Lc8/VSe;

    invoke-virtual {v0}, Lc8/VSe;->tag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
