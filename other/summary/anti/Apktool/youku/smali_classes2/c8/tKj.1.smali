.class public final Lc8/tKj;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/rKj;,
        Lc8/sKj;
    }
.end annotation


# instance fields
.field private fetch:Lc8/vKj;

.field private fileUrl:Ljava/lang/String;

.field private progressOutput:Lc8/rKj;

.field private savePath:Ljava/lang/String;

.field private showProgress:Z

.field private tmpPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/tKj;->showProgress:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "showProgress"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean p1, p0, Lc8/tKj;->showProgress:Z

    .line 55
    return-void
.end method

.method static synthetic access$000(Lc8/tKj;)Z
    .locals 1
    .param p0, "x0"    # Lc8/tKj;

    .prologue
    .line 40
    iget-boolean v0, p0, Lc8/tKj;->showProgress:Z

    return v0
.end method

.method static synthetic access$100(Lc8/tKj;)Lc8/vKj;
    .locals 1
    .param p0, "x0"    # Lc8/tKj;

    .prologue
    .line 40
    iget-object v0, p0, Lc8/tKj;->fetch:Lc8/vKj;

    return-object v0
.end method

.method static synthetic access$102(Lc8/tKj;Lc8/vKj;)Lc8/vKj;
    .locals 0
    .param p0, "x0"    # Lc8/tKj;
    .param p1, "x1"    # Lc8/vKj;

    .prologue
    .line 40
    iput-object p1, p0, Lc8/tKj;->fetch:Lc8/vKj;

    return-object p1
.end method

.method static synthetic access$200(Lc8/tKj;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/tKj;

    .prologue
    .line 40
    iget-object v0, p0, Lc8/tKj;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lc8/tKj;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/tKj;

    .prologue
    .line 40
    iget-object v0, p0, Lc8/tKj;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lc8/tKj;)J
    .locals 2
    .param p0, "x0"    # Lc8/tKj;

    .prologue
    .line 40
    invoke-direct {p0}, Lc8/tKj;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lc8/tKj;)V
    .locals 0
    .param p0, "x0"    # Lc8/tKj;

    .prologue
    .line 40
    invoke-direct {p0}, Lc8/tKj;->deleteFile()V

    return-void
.end method

.method static synthetic access$600(Lc8/tKj;)V
    .locals 0
    .param p0, "x0"    # Lc8/tKj;

    .prologue
    .line 40
    invoke-direct {p0}, Lc8/tKj;->readTempFile()V

    return-void
.end method

.method static synthetic access$800(Lc8/tKj;)Lc8/rKj;
    .locals 1
    .param p0, "x0"    # Lc8/tKj;

    .prologue
    .line 40
    iget-object v0, p0, Lc8/tKj;->progressOutput:Lc8/rKj;

    return-object v0
.end method

.method private deleteFile()V
    .locals 4

    .prologue
    .line 160
    const-string/jumbo v1, "PayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FileDownloader.deleteFile():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/tKj;->savePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/tKj;->savePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const-string/jumbo v1, "PayManager"

    const-string/jumbo v2, "FileDownloader.savePath.exists"

    invoke-static {v1, v2}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 166
    const-string/jumbo v1, "PayManager"

    const-string/jumbo v2, "FileDownloader.savePath.delete"

    invoke-static {v1, v2}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    iget-object v1, p0, Lc8/tKj;->tmpPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const-string/jumbo v1, "PayManager"

    const-string/jumbo v2, "FileDownloader.tmpPath.exists"

    invoke-static {v1, v2}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 172
    const-string/jumbo v1, "PayManager"

    const-string/jumbo v2, "FileDownloader.tmpPath.delete"

    invoke-static {v1, v2}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1
    return-void
.end method

.method private getFileSize()J
    .locals 6

    .prologue
    .line 146
    const-wide/16 v2, -0x1

    .line 148
    .local v2, "fileLength":J
    :try_start_0
    iget-object v4, p0, Lc8/tKj;->fileUrl:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lc8/tKj;->getHttpEntity(Ljava/lang/String;Z)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 149
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 155
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :goto_0
    return-wide v2

    .line 150
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getHttpEntity(Ljava/lang/String;Z)Lorg/apache/http/HttpEntity;
    .locals 9
    .param p0, "netAddress"    # Ljava/lang/String;
    .param p1, "isZip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 228
    .local v4, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 229
    .local v3, "httpClient":Lorg/apache/http/client/HttpClient;
    if-eqz p1, :cond_0

    .line 230
    const-string/jumbo v6, "Accept-Encoding"

    const-string/jumbo v7, "gzip"

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 235
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 236
    .local v0, "code":I
    const/16 v6, 0xc8

    if-ne v0, v6, :cond_1

    .line 237
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 247
    .end local v0    # "code":I
    .end local v3    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v2

    .line 240
    .restart local v0    # "code":I
    .restart local v3    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "net work exception,ErrorCode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 242
    .end local v0    # "code":I
    .end local v3    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljavax/net/ssl/SSLException;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLException;->printStackTrace()V

    .line 247
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 244
    :catch_1
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private readTempFile()V
    .locals 8

    .prologue
    .line 201
    const-string/jumbo v5, "PayManager"

    const-string/jumbo v6, "FileDownloader.readTempFile()"

    invoke-static {v5, v6}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 205
    .local v3, "objIn":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v5, p0, Lc8/tKj;->tmpPath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v1    # "in":Ljava/io/FileInputStream;
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    .end local v3    # "objIn":Ljava/io/ObjectInputStream;
    .local v4, "objIn":Ljava/io/ObjectInputStream;
    :try_start_2
    iget-object v5, p0, Lc8/tKj;->fetch:Lc8/vKj;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lc8/vKj;->setFileStart(J)V

    .line 208
    iget-object v5, p0, Lc8/tKj;->fetch:Lc8/vKj;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lc8/vKj;->setFileEnd(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 213
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 217
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v4

    .end local v4    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v3    # "objIn":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 220
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :goto_1
    return-void

    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v3    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "objIn":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v5

    move-object v3, v4

    .end local v4    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v3    # "objIn":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_1

    .line 209
    :catch_1
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 213
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 217
    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 220
    :catch_2
    move-exception v5

    goto :goto_1

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 213
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 217
    :goto_5
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 219
    :goto_6
    throw v5

    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v3    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "objIn":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v5

    goto :goto_0

    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "objIn":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v5

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v6

    goto :goto_5

    :catch_6
    move-exception v6

    goto :goto_6

    .line 212
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v3    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "objIn":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v3    # "objIn":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 209
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v3    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "objIn":Ljava/io/ObjectInputStream;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4    # "objIn":Ljava/io/ObjectInputStream;
    .restart local v3    # "objIn":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method public final setFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lc8/tKj;->fileUrl:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public final setProgressOutput(Lc8/rKj;)V
    .locals 0
    .param p1, "progressOutput"    # Lc8/rKj;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    iput-object p1, p0, Lc8/tKj;->progressOutput:Lc8/rKj;

    .line 91
    :cond_0
    return-void
.end method

.method public final setSavePath(Ljava/lang/String;)V
    .locals 2
    .param p1, "savePath"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lc8/tKj;->savePath:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/tKj;->tmpPath:Ljava/lang/String;

    .line 80
    return-void
.end method

.method protected final showProgress()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lc8/tKj;->showProgress:Z

    return v0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lc8/sKj;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/sKj;-><init>(Lc8/tKj;Landroid/os/Looper;)V

    .line 95
    .local v0, "output":Lc8/sKj;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lc8/qKj;

    invoke-direct {v2, p0, v0}, Lc8/qKj;-><init>(Lc8/tKj;Lc8/sKj;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 137
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 138
    return-void
.end method

.method protected writeTempFile()V
    .locals 8

    .prologue
    .line 177
    const-string/jumbo v5, "PayManager"

    const-string/jumbo v6, "FileDownloader.writeTempFile()"

    invoke-static {v5, v6}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v3, 0x0

    .line 179
    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 181
    .local v1, "objOut":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lc8/tKj;->tmpPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    .end local v1    # "objOut":Ljava/io/ObjectOutputStream;
    .local v2, "objOut":Ljava/io/ObjectOutputStream;
    :try_start_2
    iget-object v5, p0, Lc8/tKj;->fetch:Lc8/vKj;

    invoke-virtual {v5}, Lc8/vKj;->getFileStart()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 184
    iget-object v5, p0, Lc8/tKj;->fetch:Lc8/vKj;

    invoke-virtual {v5}, Lc8/vKj;->getFileEnd()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 185
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 190
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 194
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v1, v2

    .end local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v1    # "objOut":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .line 197
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .end local v1    # "objOut":Ljava/io/ObjectOutputStream;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    move-object v1, v2

    .end local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v1    # "objOut":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 186
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 194
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 197
    :catch_2
    move-exception v5

    goto :goto_1

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 190
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 194
    :goto_5
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 196
    :goto_6
    throw v5

    .end local v1    # "objOut":Ljava/io/ObjectOutputStream;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    goto :goto_0

    .end local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v5

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v6

    goto :goto_5

    :catch_6
    move-exception v6

    goto :goto_6

    .line 189
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v1    # "objOut":Ljava/io/ObjectOutputStream;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v1    # "objOut":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 186
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "objOut":Ljava/io/ObjectOutputStream;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .restart local v1    # "objOut":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
