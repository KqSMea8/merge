.class public Lc8/xN;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadTask"
.end annotation


# instance fields
.field private volatile conn:Lc8/yM;

.field private final filePath:Ljava/lang/String;

.field private final isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lc8/wN;",
            ">;"
        }
    .end annotation
.end field

.field final taskId:I

.field final synthetic this$0:Lc8/yN;

.field final url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lc8/yN;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lc8/wN;)V
    .locals 2
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "fileFolder"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "listener"    # Lc8/wN;

    .prologue
    const/4 v1, 0x0

    .line 154
    iput-object p1, p0, Lc8/xN;->this$0:Lc8/yN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/xN;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 151
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/xN;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/xN;->conn:Lc8/yM;

    .line 155
    invoke-static {p1}, Lc8/yN;->access$100(Lc8/yN;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lc8/xN;->taskId:I

    .line 156
    iput-object p2, p0, Lc8/xN;->url:Ljava/net/URL;

    .line 157
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0, p2}, Lc8/xN;->parseFileNameForURL(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p4

    .line 160
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-static {p1, p4}, Lc8/yN;->access$200(Lc8/yN;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/xN;->filePath:Ljava/lang/String;

    .line 170
    :goto_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lc8/xN;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 171
    iget-object v0, p0, Lc8/xN;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    return-void

    .line 163
    :cond_1
    const-string/jumbo v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/xN;->filePath:Ljava/lang/String;

    goto :goto_0

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/xN;->filePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private notifyFail(ILjava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v2, p0, Lc8/xN;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lc8/xN;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/wN;

    .line 309
    .local v1, "l":Lc8/wN;
    iget v2, p0, Lc8/xN;->taskId:I

    invoke-interface {v1, v2, p1, p2}, Lc8/wN;->onFail(IILjava/lang/String;)V

    goto :goto_0

    .line 312
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lc8/wN;
    :cond_0
    return-void
.end method

.method private notifyProgress(JJ)V
    .locals 7
    .param p1, "pos"    # J
    .param p3, "total"    # J

    .prologue
    .line 315
    iget-object v1, p0, Lc8/xN;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    iget-object v1, p0, Lc8/xN;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/wN;

    .line 317
    .local v0, "l":Lc8/wN;
    iget v1, p0, Lc8/xN;->taskId:I

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lc8/wN;->onProgress(IJJ)V

    goto :goto_0

    .line 320
    .end local v0    # "l":Lc8/wN;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private notifySuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v2, p0, Lc8/xN;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lc8/xN;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/wN;

    .line 301
    .local v1, "l":Lc8/wN;
    iget v2, p0, Lc8/xN;->taskId:I

    invoke-interface {v1, v2, p1}, Lc8/wN;->onSuccess(ILjava/lang/String;)V

    goto :goto_0

    .line 304
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lc8/wN;
    :cond_0
    return-void
.end method

.method private parseContentLength(ILjava/util/Map;J)J
    .locals 7
    .param p1, "statusCode"    # I
    .param p3, "rangeStart"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;J)J"
        }
    .end annotation

    .prologue
    .line 323
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-wide/16 v0, 0x0

    .line 325
    .local v0, "contentLength":J
    const/16 v4, 0xc8

    if-ne p1, v4, :cond_1

    .line 326
    :try_start_0
    const-string/jumbo v4, "Content-Length"

    invoke-static {p2, v4}, Lc8/RL;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 342
    :cond_0
    :goto_0
    return-wide v0

    .line 327
    :cond_1
    const/16 v4, 0xce

    if-ne p1, v4, :cond_0

    .line 328
    const-string/jumbo v4, "Content-Range"

    invoke-static {p2, v4}, Lc8/RL;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "contentRange":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 330
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 331
    .local v3, "idx":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 332
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 335
    .end local v3    # "idx":I
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 336
    const-string/jumbo v4, "Content-Length"

    invoke-static {p2, v4}, Lc8/RL;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 337
    add-long/2addr v0, p3

    goto :goto_0

    .end local v2    # "contentRange":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private parseFileNameForURL(Ljava/net/URL;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 358
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "path":Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 360
    .local v1, "index":I
    const/4 v0, 0x0

    .line 361
    .local v0, "fileName":Ljava/lang/String;
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 362
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 364
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/cM;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    if-nez v0, :cond_1

    .line 367
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 370
    :cond_1
    return-object v0
.end method

.method private removeRangeHeader(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/fM;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lanetwork/channel/Header;>;"
    if-eqz p1, :cond_1

    .line 347
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 348
    .local v0, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lanetwork/channel/Header;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    const-string/jumbo v2, "Range"

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/fM;

    invoke-interface {v1}, Lc8/fM;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 355
    .end local v0    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lanetwork/channel/Header;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public attachListener(Lc8/wN;)Z
    .locals 1
    .param p1, "listener"    # Lc8/wN;

    .prologue
    .line 175
    iget-object v0, p0, Lc8/xN;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    .line 178
    :cond_0
    iget-object v0, p0, Lc8/xN;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lc8/xN;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 184
    const/16 v0, -0x69

    const-string/jumbo v1, "download canceled."

    invoke-direct {p0, v0, v1}, Lc8/xN;->notifyFail(ILjava/lang/String;)V

    .line 185
    iget-object v0, p0, Lc8/xN;->conn:Lc8/yM;

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    iget-object v0, p0, Lc8/xN;->conn:Lc8/yM;

    invoke-interface {v0}, Lc8/yM;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 28

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 296
    :goto_0
    return-void

    .line 199
    :cond_0
    const/4 v6, 0x0

    .line 200
    .local v6, "bos":Ljava/io/BufferedOutputStream;
    const/16 v17, 0x0

    .line 201
    .local v17, "randomAccessFile":Ljava/io/RandomAccessFile;
    const/4 v14, 0x0

    .line 203
    .local v14, "inputStream":Lc8/PM;
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->url:Ljava/net/URL;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lc8/yN;->access$300(Lc8/yN;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v9, "cacheFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    .line 206
    .local v15, "isBPDownload":Z
    new-instance v19, Lc8/IN;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->url:Ljava/net/URL;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lc8/IN;-><init>(Ljava/net/URL;)V

    .line 207
    .local v19, "request":Lc8/IN;
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lc8/IN;->setRetryTime(I)V

    .line 208
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lc8/IN;->setFollowRedirects(Z)V

    .line 209
    if-eqz v15, :cond_1

    .line 210
    const-string/jumbo v24, "Range"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "bytes="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "-"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lc8/IN;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_1
    new-instance v16, Lc8/sN;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/yN;->access$400(Lc8/yN;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lc8/sN;-><init>(Landroid/content/Context;)V

    .line 214
    .local v16, "network":Lc8/sN;
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lc8/sN;->getConnection(Lc8/uM;Ljava/lang/Object;)Lc8/yM;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/xN;->conn:Lc8/yM;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->conn:Lc8/yM;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lc8/yM;->getStatusCode()I

    move-result v20

    .line 217
    .local v20, "statusCode":I
    if-lez v20, :cond_2

    const/16 v24, 0xc8

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    const/16 v24, 0xce

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    const/16 v24, 0x1a0

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    .line 221
    :cond_2
    const/16 v24, -0x66

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "ResponseCode:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lc8/xN;->notifyFail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 289
    if-eqz v6, :cond_3

    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    :cond_3
    :goto_1
    if-eqz v17, :cond_4

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 291
    :cond_4
    :goto_2
    if-eqz v14, :cond_5

    :try_start_3
    invoke-interface {v14}, Lc8/PM;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 292
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v25

    monitor-enter v25

    .line 293
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lc8/xN;->taskId:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v25

    goto/16 :goto_0

    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v24

    .line 225
    :cond_6
    if-eqz v15, :cond_c

    .line 227
    const/16 v24, 0x1a0

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 228
    const/4 v15, 0x0

    .line 229
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Lc8/IN;->getHeaders()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lc8/xN;->removeRangeHeader(Ljava/util/List;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    move-result v24

    if-eqz v24, :cond_a

    .line 289
    if-eqz v6, :cond_7

    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 290
    :cond_7
    :goto_4
    if-eqz v17, :cond_8

    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 291
    :cond_8
    :goto_5
    if-eqz v14, :cond_9

    :try_start_8
    invoke-interface {v14}, Lc8/PM;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 292
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v25

    monitor-enter v25

    .line 293
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lc8/xN;->taskId:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v25

    goto/16 :goto_0

    :catchall_1
    move-exception v24

    monitor-exit v25
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v24

    .line 234
    :cond_a
    const/16 v24, 0x0

    :try_start_a
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lc8/sN;->getConnection(Lc8/uM;Ljava/lang/Object;)Lc8/yM;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/xN;->conn:Lc8/yM;

    .line 238
    :cond_b
    const/16 v24, 0xc8

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 239
    const/4 v15, 0x0

    .line 243
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    move-result v24

    if-eqz v24, :cond_10

    .line 289
    if-eqz v6, :cond_d

    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 290
    :cond_d
    :goto_7
    if-eqz v17, :cond_e

    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 291
    :cond_e
    :goto_8
    if-eqz v14, :cond_f

    :try_start_d
    invoke-interface {v14}, Lc8/PM;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 292
    :cond_f
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v25

    monitor-enter v25

    .line 293
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lc8/xN;->taskId:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v25

    goto/16 :goto_0

    :catchall_2
    move-exception v24

    monitor-exit v25
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v24

    .line 247
    :cond_10
    const-wide/16 v12, 0x0

    .line 248
    .local v12, "fileSize":J
    if-nez v15, :cond_14

    .line 249
    :try_start_f
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v24, Ljava/io/FileOutputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .local v7, "bos":Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .line 257
    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->conn:Lc8/yM;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lc8/yM;->getConnHeadFields()Ljava/util/Map;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v12, v13}, Lc8/xN;->parseContentLength(ILjava/util/Map;J)J

    move-result-wide v22

    .line 260
    .local v22, "totalLength":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->conn:Lc8/yM;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lc8/yM;->getInputStream()Lc8/PM;

    move-result-object v14

    .line 261
    if-nez v14, :cond_15

    .line 262
    const/16 v24, -0x67

    const-string/jumbo v25, "input stream is null."

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lc8/xN;->notifyFail(ILjava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 289
    if-eqz v6, :cond_11

    :try_start_10
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    .line 290
    :cond_11
    :goto_b
    if-eqz v17, :cond_12

    :try_start_11
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    .line 291
    :cond_12
    :goto_c
    if-eqz v14, :cond_13

    :try_start_12
    invoke-interface {v14}, Lc8/PM;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    .line 292
    :cond_13
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v25

    monitor-enter v25

    .line 293
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lc8/xN;->taskId:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v25

    goto/16 :goto_0

    :catchall_3
    move-exception v24

    monitor-exit v25
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    throw v24

    .line 251
    .end local v22    # "totalLength":J
    :cond_14
    :try_start_14
    new-instance v18, Ljava/io/RandomAccessFile;

    const-string/jumbo v24, "rw"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v9, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 252
    .end local v17    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v18, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_15
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    .line 253
    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 254
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1c
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "bos":Ljava/io/BufferedOutputStream;
    move-object/from16 v17, v18

    .end local v18    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v17    # "randomAccessFile":Ljava/io/RandomAccessFile;
    move-object v6, v7

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    goto/16 :goto_a

    .line 267
    .restart local v22    # "totalLength":J
    :cond_15
    const/16 v21, 0x0

    .line 268
    .local v21, "sum":I
    const/16 v24, 0x800

    :try_start_16
    move/from16 v0, v24

    new-array v8, v0, [B

    .line 269
    .local v8, "buff":[B
    :goto_e
    invoke-interface {v14, v8}, Lc8/PM;->read([B)I

    move-result v10

    .local v10, "count":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v10, v0, :cond_1d

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v24

    if-eqz v24, :cond_19

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->conn:Lc8/yM;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lc8/yM;->cancel()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 289
    if-eqz v6, :cond_16

    :try_start_17
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d

    .line 290
    :cond_16
    :goto_f
    if-eqz v17, :cond_17

    :try_start_18
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_e

    .line 291
    :cond_17
    :goto_10
    if-eqz v14, :cond_18

    :try_start_19
    invoke-interface {v14}, Lc8/PM;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_f

    .line 292
    :cond_18
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v25

    monitor-enter v25

    .line 293
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lc8/xN;->taskId:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v25

    goto/16 :goto_0

    :catchall_4
    move-exception v24

    monitor-exit v25
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    throw v24

    .line 274
    :cond_19
    add-int v21, v21, v10

    .line 275
    const/16 v24, 0x0

    :try_start_1b
    move/from16 v0, v24

    invoke-virtual {v6, v8, v0, v10}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 276
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v12

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/xN;->notifyProgress(JJ)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    goto :goto_e

    .line 285
    .end local v8    # "buff":[B
    .end local v9    # "cacheFile":Ljava/io/File;
    .end local v10    # "count":I
    .end local v12    # "fileSize":J
    .end local v15    # "isBPDownload":Z
    .end local v16    # "network":Lc8/sN;
    .end local v19    # "request":Lc8/IN;
    .end local v20    # "statusCode":I
    .end local v21    # "sum":I
    .end local v22    # "totalLength":J
    :catch_0
    move-exception v11

    .line 286
    .local v11, "e":Ljava/lang/Exception;
    :goto_12
    :try_start_1c
    const-string/jumbo v24, "anet.DownloadManager"

    const-string/jumbo v25, "file download failed!"

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v11, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 287
    const/16 v24, -0x68

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lc8/xN;->notifyFail(ILjava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 289
    if-eqz v6, :cond_1a

    :try_start_1d
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_16

    .line 290
    :cond_1a
    :goto_13
    if-eqz v17, :cond_1b

    :try_start_1e
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_17

    .line 291
    :cond_1b
    :goto_14
    if-eqz v14, :cond_1c

    :try_start_1f
    invoke-interface {v14}, Lc8/PM;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_18

    .line 292
    :cond_1c
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v25

    monitor-enter v25

    .line 293
    :try_start_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lc8/xN;->taskId:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v25

    goto/16 :goto_0

    :catchall_5
    move-exception v24

    monitor-exit v25
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    throw v24

    .line 278
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v8    # "buff":[B
    .restart local v9    # "cacheFile":Ljava/io/File;
    .restart local v10    # "count":I
    .restart local v12    # "fileSize":J
    .restart local v15    # "isBPDownload":Z
    .restart local v16    # "network":Lc8/sN;
    .restart local v19    # "request":Lc8/IN;
    .restart local v20    # "statusCode":I
    .restart local v21    # "sum":I
    .restart local v22    # "totalLength":J
    :cond_1d
    :try_start_21
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    move-result v24

    if-eqz v24, :cond_21

    .line 289
    if-eqz v6, :cond_1e

    :try_start_22
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_10

    .line 290
    :cond_1e
    :goto_16
    if-eqz v17, :cond_1f

    :try_start_23
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_11

    .line 291
    :cond_1f
    :goto_17
    if-eqz v14, :cond_20

    :try_start_24
    invoke-interface {v14}, Lc8/PM;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_12

    .line 292
    :cond_20
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v25

    monitor-enter v25

    .line 293
    :try_start_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lc8/xN;->taskId:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v25

    goto/16 :goto_0

    :catchall_6
    move-exception v24

    monitor-exit v25
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    throw v24

    .line 283
    :cond_21
    :try_start_26
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->filePath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lc8/xN;->notifySuccess(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_0
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    .line 289
    if-eqz v6, :cond_22

    :try_start_27
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_13

    .line 290
    :cond_22
    :goto_19
    if-eqz v17, :cond_23

    :try_start_28
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_14

    .line 291
    :cond_23
    :goto_1a
    if-eqz v14, :cond_24

    :try_start_29
    invoke-interface {v14}, Lc8/PM;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_15

    .line 292
    :cond_24
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v25

    monitor-enter v25

    .line 293
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lc8/xN;->taskId:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v25

    goto/16 :goto_0

    :catchall_7
    move-exception v24

    monitor-exit v25
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    throw v24

    .line 289
    .end local v8    # "buff":[B
    .end local v9    # "cacheFile":Ljava/io/File;
    .end local v10    # "count":I
    .end local v12    # "fileSize":J
    .end local v15    # "isBPDownload":Z
    .end local v16    # "network":Lc8/sN;
    .end local v19    # "request":Lc8/IN;
    .end local v20    # "statusCode":I
    .end local v21    # "sum":I
    .end local v22    # "totalLength":J
    :catchall_8
    move-exception v24

    :goto_1c
    if-eqz v6, :cond_25

    :try_start_2b
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_19

    .line 290
    :cond_25
    :goto_1d
    if-eqz v17, :cond_26

    :try_start_2c
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_1a

    .line 291
    :cond_26
    :goto_1e
    if-eqz v14, :cond_27

    :try_start_2d
    invoke-interface {v14}, Lc8/PM;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_1b

    .line 292
    :cond_27
    :goto_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v25

    monitor-enter v25

    .line 293
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xN;->this$0:Lc8/yN;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lc8/yN;->access$500(Lc8/yN;)Landroid/util/SparseArray;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lc8/xN;->taskId:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v25
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_9

    throw v24

    :catchall_9
    move-exception v24

    :try_start_2f
    monitor-exit v25
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_9

    throw v24

    .restart local v9    # "cacheFile":Ljava/io/File;
    .restart local v15    # "isBPDownload":Z
    .restart local v16    # "network":Lc8/sN;
    .restart local v19    # "request":Lc8/IN;
    .restart local v20    # "statusCode":I
    :catch_1
    move-exception v24

    goto/16 :goto_1

    :catch_2
    move-exception v24

    goto/16 :goto_2

    :catch_3
    move-exception v24

    goto/16 :goto_3

    :catch_4
    move-exception v24

    goto/16 :goto_4

    :catch_5
    move-exception v24

    goto/16 :goto_5

    :catch_6
    move-exception v24

    goto/16 :goto_6

    :catch_7
    move-exception v24

    goto/16 :goto_7

    :catch_8
    move-exception v24

    goto/16 :goto_8

    :catch_9
    move-exception v24

    goto/16 :goto_9

    .restart local v12    # "fileSize":J
    .restart local v22    # "totalLength":J
    :catch_a
    move-exception v24

    goto/16 :goto_b

    :catch_b
    move-exception v24

    goto/16 :goto_c

    :catch_c
    move-exception v24

    goto/16 :goto_d

    .restart local v8    # "buff":[B
    .restart local v10    # "count":I
    .restart local v21    # "sum":I
    :catch_d
    move-exception v24

    goto/16 :goto_f

    :catch_e
    move-exception v24

    goto/16 :goto_10

    :catch_f
    move-exception v24

    goto/16 :goto_11

    :catch_10
    move-exception v24

    goto/16 :goto_16

    :catch_11
    move-exception v24

    goto/16 :goto_17

    :catch_12
    move-exception v24

    goto/16 :goto_18

    :catch_13
    move-exception v24

    goto/16 :goto_19

    :catch_14
    move-exception v24

    goto/16 :goto_1a

    :catch_15
    move-exception v24

    goto/16 :goto_1b

    .end local v8    # "buff":[B
    .end local v9    # "cacheFile":Ljava/io/File;
    .end local v10    # "count":I
    .end local v12    # "fileSize":J
    .end local v15    # "isBPDownload":Z
    .end local v16    # "network":Lc8/sN;
    .end local v19    # "request":Lc8/IN;
    .end local v20    # "statusCode":I
    .end local v21    # "sum":I
    .end local v22    # "totalLength":J
    .restart local v11    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v24

    goto/16 :goto_13

    :catch_17
    move-exception v24

    goto/16 :goto_14

    :catch_18
    move-exception v24

    goto/16 :goto_15

    .end local v11    # "e":Ljava/lang/Exception;
    :catch_19
    move-exception v25

    goto/16 :goto_1d

    :catch_1a
    move-exception v25

    goto/16 :goto_1e

    :catch_1b
    move-exception v25

    goto/16 :goto_1f

    .line 289
    .end local v17    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v9    # "cacheFile":Ljava/io/File;
    .restart local v12    # "fileSize":J
    .restart local v15    # "isBPDownload":Z
    .restart local v16    # "network":Lc8/sN;
    .restart local v18    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v19    # "request":Lc8/IN;
    .restart local v20    # "statusCode":I
    :catchall_a
    move-exception v24

    move-object/from16 v17, v18

    .end local v18    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v17    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_1c

    .line 285
    .end local v17    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v18    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_1c
    move-exception v11

    move-object/from16 v17, v18

    .end local v18    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v17    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_12
.end method
