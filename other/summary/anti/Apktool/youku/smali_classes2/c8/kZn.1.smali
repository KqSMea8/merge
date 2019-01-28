.class public Lc8/kZn;
.super Ljava/lang/Object;
.source "DownloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/jZn;
    }
.end annotation


# instance fields
.field private endPos:I

.field private index:I

.field private volatile isCanceled:Z

.field private volatile isError:Z

.field private volatile isPaused:Z

.field private isSingleDownload:Z

.field private listener:Lc8/jZn;

.field private path:Ljava/lang/String;

.field private startPos:I

.field private status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILc8/jZn;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "startPos"    # I
    .param p4, "endPos"    # I
    .param p5, "listener"    # Lc8/jZn;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lc8/kZn;->url:Ljava/lang/String;

    .line 43
    iput p2, p0, Lc8/kZn;->index:I

    .line 44
    iput p3, p0, Lc8/kZn;->startPos:I

    .line 45
    iput p4, p0, Lc8/kZn;->endPos:I

    .line 48
    invoke-static {}, Lc8/cZn;->checkRootPath()V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/cZn;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/kZn;->path:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lc8/kZn;->listener:Lc8/jZn;

    .line 52
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/kZn;->isSingleDownload:Z

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/kZn;->isSingleDownload:Z

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DownloadThread==>index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/kZn;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cancel()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/kZn;->isCanceled:Z

    .line 216
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 217
    return-void
.end method

.method public cancelByError()V
    .locals 3

    .prologue
    .line 225
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DownloadThread==>index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/kZn;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cancelByError()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 226
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/kZn;->isError:Z

    .line 227
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lc8/kZn;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->downloading:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DownloadThread==>pause()#####index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/kZn;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/kZn;->isPaused:Z

    .line 210
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 211
    return-void
.end method

.method public run()V
    .locals 19

    .prologue
    .line 61
    sget-object v15, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->downloading:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    move-object/from16 v0, p0

    iput-object v15, v0, Lc8/kZn;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 62
    const/4 v5, 0x0

    .line 64
    .local v5, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/kZn;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 65
    const-string/jumbo v15, "GET"

    invoke-virtual {v5, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 66
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/kZn;->isSingleDownload:Z

    if-nez v15, :cond_0

    .line 67
    const-string/jumbo v15, "Range"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "bytes="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->startPos:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->endPos:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    const/16 v15, 0x2710

    invoke-virtual {v5, v15}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 70
    const/16 v15, 0x2710

    invoke-virtual {v5, v15}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 72
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 73
    .local v14, "responseCode":I
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    .line 74
    .local v6, "contentLength":I
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/kZn;->path:Ljava/lang/String;

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v9, "file":Ljava/io/File;
    const/16 v15, 0xce

    if-ne v14, v15, :cond_8

    .line 81
    const/16 v15, 0x800

    new-array v4, v15, [B

    .line 84
    .local v4, "buffer":[B
    invoke-static {}, Lc8/cZn;->getInstance()Lc8/cZn;

    move-result-object v15

    invoke-virtual {v15}, Lc8/cZn;->getMax_download_threads()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 86
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DownloadThread==>run()#####\u4f7f\u7528RandomAccessFile. Support ranges. Index:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "=="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/kZn;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "***"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->startPos:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->endPos:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "**"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 87
    new-instance v13, Ljava/io/RandomAccessFile;

    const-string/jumbo v15, "rw"

    invoke-direct {v13, v9, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .local v13, "raf":Ljava/io/RandomAccessFile;
    move-object/from16 v0, p0

    iget v15, v0, Lc8/kZn;->startPos:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 89
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 91
    .local v11, "is":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v11, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, "len":I
    const/4 v15, -0x1

    if-eq v12, v15, :cond_2

    .line 92
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/kZn;->isPaused:Z

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/kZn;->isCanceled:Z

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/kZn;->isError:Z

    if-nez v15, :cond_2

    .line 95
    const/4 v15, 0x0

    invoke-virtual {v13, v4, v15, v12}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 96
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/kZn;->listener:Lc8/jZn;

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v15, v0, v12}, Lc8/jZn;->onProgressChanged(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 170
    .end local v4    # "buffer":[B
    .end local v6    # "contentLength":I
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v12    # "len":I
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local v14    # "responseCode":I
    :catch_0
    move-exception v8

    .line 171
    .local v8, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 172
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/kZn;->isPaused:Z

    if-eqz v15, :cond_e

    .line 173
    const-string/jumbo v15, "DownloadThread==> run()#####exception and pause"

    invoke-static {v15}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 174
    sget-object v15, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->pause:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    move-object/from16 v0, p0

    iput-object v15, v0, Lc8/kZn;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 175
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/kZn;->listener:Lc8/jZn;

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lc8/jZn;->onDownloadPaused(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :goto_1
    if-eqz v5, :cond_1

    .line 188
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 189
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DownloadThread==>run()#####index:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "***"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/kZn;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "*****close connection"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 193
    .end local v8    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    .line 99
    .restart local v4    # "buffer":[B
    .restart local v6    # "contentLength":I
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "len":I
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v14    # "responseCode":I
    :cond_2
    :try_start_2
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 100
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 153
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/kZn;->isPaused:Z

    if-eqz v15, :cond_b

    .line 154
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DownloadThread==>index:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " run()#####pause"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 155
    sget-object v15, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->pause:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    move-object/from16 v0, p0

    iput-object v15, v0, Lc8/kZn;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 156
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/kZn;->listener:Lc8/jZn;

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lc8/jZn;->onDownloadPaused(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    :goto_4
    if-eqz v5, :cond_1

    .line 188
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 189
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DownloadThread==>run()#####index:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "***"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/kZn;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "*****close connection"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lc8/sZn;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 103
    .end local v12    # "len":I
    :cond_3
    :try_start_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DownloadThread==>run()#####\u4f7f\u7528FileOutputStream. Support ranges. Index:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "=="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/kZn;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "***"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->startPos:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->endPos:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "**"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_5

    .line 108
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 109
    .local v7, "dir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 110
    :cond_4
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 113
    .end local v7    # "dir":Ljava/io/File;
    :cond_5
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/kZn;->path:Ljava/lang/String;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v10, v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 114
    .local v10, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v2, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 115
    .local v2, "bis":Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 117
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    :goto_5
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v12

    .restart local v12    # "len":I
    const/4 v15, -0x1

    if-eq v12, v15, :cond_7

    .line 118
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/kZn;->isPaused:Z

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/kZn;->isCanceled:Z

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/kZn;->isError:Z

    if-nez v15, :cond_7

    .line 121
    const/4 v15, 0x0

    invoke-virtual {v3, v4, v15, v12}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 122
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/kZn;->listener:Lc8/jZn;

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v15, v0, v12}, Lc8/jZn;->onProgressChanged(II)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 187
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v6    # "contentLength":I
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "len":I
    .end local v14    # "responseCode":I
    :catchall_0
    move-exception v15

    if-eqz v5, :cond_6

    .line 188
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 189
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "DownloadThread==>run()#####index:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "***"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/kZn;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "*****close connection"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lc8/sZn;->d(Ljava/lang/String;)V

    :cond_6
    throw v15

    .line 124
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "contentLength":I
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "len":I
    .restart local v14    # "responseCode":I
    :cond_7
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 125
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 126
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    goto/16 :goto_3

    .line 129
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "len":I
    :cond_8
    const/16 v15, 0xc8

    if-ne v14, v15, :cond_a

    .line 131
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DownloadThread==>run()#####not support ranges. Index:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "=="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/kZn;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "***"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->startPos:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->endPos:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "**"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 132
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 133
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 134
    .restart local v11    # "is":Ljava/io/InputStream;
    const/16 v15, 0x800

    new-array v4, v15, [B

    .line 136
    .restart local v4    # "buffer":[B
    :goto_6
    invoke-virtual {v11, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .restart local v12    # "len":I
    const/4 v15, -0x1

    if-eq v12, v15, :cond_9

    .line 137
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/kZn;->isPaused:Z

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/kZn;->isCanceled:Z

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/kZn;->isError:Z

    if-nez v15, :cond_9

    .line 140
    const/4 v15, 0x0

    invoke-virtual {v10, v4, v15, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 141
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/kZn;->listener:Lc8/jZn;

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v15, v0, v12}, Lc8/jZn;->onProgressChanged(II)V

    goto :goto_6

    .line 144
    :cond_9
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 145
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    goto/16 :goto_3

    .line 147
    .end local v4    # "buffer":[B
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v12    # "len":I
    :cond_a
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DownloadThread==>index:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " run()#####server error"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 148
    sget-object v15, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->error:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    move-object/from16 v0, p0

    iput-object v15, v0, Lc8/kZn;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 149
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/kZn;->listener:Lc8/jZn;

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "server error:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Lc8/jZn;->onDownloadError(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 187
    if-eqz v5, :cond_1

    .line 188
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 189
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DownloadThread==>run()#####index:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "***"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/kZn;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "*****close connection"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lc8/sZn;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 157
    .restart local v4    # "buffer":[B
    .restart local v12    # "len":I
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/kZn;->isCanceled:Z

    if-eqz v15, :cond_c

    .line 158
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DownloadThread==>index:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " run()#####cancel"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 159
    sget-object v15, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->cancel:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    move-object/from16 v0, p0

    iput-object v15, v0, Lc8/kZn;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 160
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/kZn;->listener:Lc8/jZn;

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lc8/jZn;->onDownloadCanceled(I)V

    goto/16 :goto_4

    .line 161
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/kZn;->isError:Z

    if-eqz v15, :cond_d

    .line 162
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DownloadThread==>index:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " run()#####error"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 163
    sget-object v15, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->error:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    move-object/from16 v0, p0

    iput-object v15, v0, Lc8/kZn;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 164
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/kZn;->listener:Lc8/jZn;

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    const-string/jumbo v17, "cancel manually by error"

    invoke-interface/range {v15 .. v17}, Lc8/jZn;->onDownloadError(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 166
    :cond_d
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DownloadThread==>index:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " run()#####done"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 167
    sget-object v15, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->done:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    move-object/from16 v0, p0

    iput-object v15, v0, Lc8/kZn;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 168
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/kZn;->listener:Lc8/jZn;

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lc8/jZn;->onDownloadCompleted(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 176
    .end local v4    # "buffer":[B
    .end local v6    # "contentLength":I
    .end local v9    # "file":Ljava/io/File;
    .end local v12    # "len":I
    .end local v14    # "responseCode":I
    .restart local v8    # "e":Ljava/io/IOException;
    :cond_e
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/kZn;->isCanceled:Z

    if-eqz v15, :cond_f

    .line 177
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DownloadThread==>index:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " run()#####exception and cancel"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 178
    sget-object v15, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->cancel:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    move-object/from16 v0, p0

    iput-object v15, v0, Lc8/kZn;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 179
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/kZn;->listener:Lc8/jZn;

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lc8/jZn;->onDownloadCanceled(I)V

    goto/16 :goto_1

    .line 181
    :cond_f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DownloadThread==>index:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " run()#####error"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 182
    sget-object v15, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->error:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    move-object/from16 v0, p0

    iput-object v15, v0, Lc8/kZn;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 183
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/kZn;->listener:Lc8/jZn;

    move-object/from16 v0, p0

    iget v0, v0, Lc8/kZn;->index:I

    move/from16 v16, v0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Lc8/jZn;->onDownloadError(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method
