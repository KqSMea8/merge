.class public Lc8/iZn;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lc8/eZn;
.implements Lc8/jZn;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/us/baseframework/download/core/DownloadTask$ExtendHandlerListener;
    }
.end annotation


# instance fields
.field private connectThread:Lc8/fZn;

.field private downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

.field private downloadThreads:[Lc8/kZn;

.field private final entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

.field private extendExecuters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/nZn;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isCancelled:Z

.field private volatile isPaused:Z

.field private lastModifiedTime:[Ljava/lang/Long;

.field private lastStamp:J

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mHandler:Landroid/os/Handler;

.field private subThreadRefreshInterval:J


# direct methods
.method public constructor <init>(Lcom/youku/us/baseframework/download/entity/DownloadEntry;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lc8/iZn;->isPaused:Z

    .line 35
    iput-boolean v0, p0, Lc8/iZn;->isCancelled:Z

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/iZn;->lastStamp:J

    .line 44
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lc8/iZn;->subThreadRefreshInterval:J

    .line 49
    iput-object p1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .line 50
    iput-object p2, p0, Lc8/iZn;->mHandler:Landroid/os/Handler;

    .line 51
    iput-object p3, p0, Lc8/iZn;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/youku/us/baseframework/download/entity/DownloadEntry;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;Ljava/util/List;)V
    .locals 2
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "executor"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/us/baseframework/download/entity/DownloadEntry;",
            "Landroid/os/Handler;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/List",
            "<",
            "Lc8/nZn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "extendExecuters":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseframework/download/extend/ExtendExecuter;>;"
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lc8/iZn;->isPaused:Z

    .line 35
    iput-boolean v0, p0, Lc8/iZn;->isCancelled:Z

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/iZn;->lastStamp:J

    .line 44
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lc8/iZn;->subThreadRefreshInterval:J

    .line 55
    iput-object p1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .line 56
    iput-object p2, p0, Lc8/iZn;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object p3, p0, Lc8/iZn;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 58
    iput-object p4, p0, Lc8/iZn;->extendExecuters:Ljava/util/List;

    .line 59
    return-void
.end method

.method public static synthetic access$000(Lc8/iZn;)Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    .locals 1
    .param p0, "x0"    # Lc8/iZn;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    return-object v0
.end method

.method public static synthetic access$100(Lc8/iZn;Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V
    .locals 0
    .param p0, "x0"    # Lc8/iZn;
    .param p1, "x1"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    .param p2, "x2"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lc8/iZn;->notifyUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V

    return-void
.end method

.method private checkAndRefreshSubThread(I)V
    .locals 14
    .param p1, "index"    # I

    .prologue
    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 279
    .local v8, "stamp":J
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget v0, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->totalLength:I

    invoke-static {}, Lc8/cZn;->getInstance()Lc8/cZn;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cZn;->getMax_download_threads()I

    move-result v1

    div-int v6, v0, v1

    .line 281
    .local v6, "block":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v0, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    .line 282
    iget-object v0, p0, Lc8/iZn;->lastModifiedTime:[Ljava/lang/Long;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v8, v0

    const-wide/16 v10, 0x2

    iget-wide v12, p0, Lc8/iZn;->subThreadRefreshInterval:J

    mul-long/2addr v10, v12

    cmp-long v0, v0, v10

    if-lez v0, :cond_0

    .line 284
    mul-int v1, v2, v6

    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget-object v0, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->ranges:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v3, v1, v0

    .line 285
    .local v3, "startPos":I
    invoke-static {}, Lc8/cZn;->getInstance()Lc8/cZn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cZn;->getMax_download_threads()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_1

    .line 286
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget v0, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->totalLength:I

    add-int/lit8 v4, v0, -0x1

    .line 290
    .local v4, "endPos":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DownloadTask==>onProgressChanged()### restart sub-thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lc8/kZn;->pause()V

    .line 294
    iget-object v0, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 295
    iget-object v7, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    new-instance v0, Lc8/kZn;

    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget-object v1, v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lc8/kZn;-><init>(Ljava/lang/String;IIILc8/jZn;)V

    aput-object v0, v7, v2

    .line 296
    iget-object v0, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->downloading:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v1, v0, v2

    .line 297
    iget-object v0, p0, Lc8/iZn;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 301
    :goto_2
    iget-object v0, p0, Lc8/iZn;->lastModifiedTime:[Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    .line 281
    .end local v3    # "startPos":I
    .end local v4    # "endPos":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 288
    .restart local v3    # "startPos":I
    :cond_1
    add-int/lit8 v0, v2, 0x1

    mul-int/2addr v0, v6

    add-int/lit8 v4, v0, -0x1

    .restart local v4    # "endPos":I
    goto :goto_1

    .line 299
    :cond_2
    iget-object v0, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->done:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v1, v0, v2

    goto :goto_2

    .line 306
    .end local v3    # "startPos":I
    .end local v4    # "endPos":I
    :cond_3
    iget-object v0, p0, Lc8/iZn;->lastModifiedTime:[Ljava/lang/Long;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v8, v0

    iget-wide v10, p0, Lc8/iZn;->subThreadRefreshInterval:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_4

    .line 307
    iget-object v0, p0, Lc8/iZn;->lastModifiedTime:[Ljava/lang/Long;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p1

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DownloadTask==>checkAndRefreshSubThread()##### index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " refresh sub-thread time***"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 311
    :cond_4
    return-void
.end method

.method private getSupportExtendExecuters(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)Ljava/util/List;
    .locals 3
    .param p1, "downloadEntry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/us/baseframework/download/entity/DownloadEntry;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/nZn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v0, "executerList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseframework/download/extend/ExtendExecuter;>;"
    iget-object v2, p0, Lc8/iZn;->extendExecuters:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/iZn;->extendExecuters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 436
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lc8/iZn;->extendExecuters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 437
    iget-object v2, p0, Lc8/iZn;->extendExecuters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/nZn;

    invoke-interface {v2, p1}, Lc8/nZn;->acceptTask(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    iget-object v2, p0, Lc8/iZn;->extendExecuters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private notifyUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V
    .locals 4
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    .param p2, "what"    # I

    .prologue
    .line 79
    iget-object v2, p0, Lc8/iZn;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 80
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->what:I

    .line 81
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 82
    iget-object v2, p0, Lc8/iZn;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 84
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private startDownload()V
    .locals 4

    .prologue
    .line 210
    invoke-static {}, Lc8/rZn;->getStorageAvailableSize()J

    move-result-wide v0

    iget-object v2, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget v2, v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->totalLength:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 211
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->pause:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v1, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 212
    const-string/jumbo v0, "DownloadTask==>onConnectSuccess##### not enough storage size!!!"

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lc8/iZn;->notifyUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V

    .line 225
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget-boolean v0, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->isSupportRange:Z

    if-eqz v0, :cond_1

    .line 218
    const-string/jumbo v0, "DownloadTask()==>startDownload#####start multi thread download!!!!"

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 219
    invoke-direct {p0}, Lc8/iZn;->startMultiThreadDownload()V

    goto :goto_0

    .line 221
    :cond_1
    const-string/jumbo v0, "DownloadTask()==>startDownload#####start single thread download!!!!"

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lc8/iZn;->startSingleThreadDownload()V

    goto :goto_0
.end method

.method private startMultiThreadDownload()V
    .locals 12

    .prologue
    .line 134
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget v0, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->totalLength:I

    invoke-static {v0}, Lc8/cZn;->getSubThreadRefrashInterval(I)J

    move-result-wide v0

    iput-wide v0, p0, Lc8/iZn;->subThreadRefreshInterval:J

    .line 135
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->downloading:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v1, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 136
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lc8/iZn;->notifyUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V

    .line 140
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget v0, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->totalLength:I

    invoke-static {}, Lc8/cZn;->getInstance()Lc8/cZn;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cZn;->getMax_download_threads()I

    move-result v1

    div-int v6, v0, v1

    .line 142
    .local v6, "block":I
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget-object v0, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->ranges:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->ranges:Ljava/util/HashMap;

    .line 144
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {}, Lc8/cZn;->getInstance()Lc8/cZn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cZn;->getMax_download_threads()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 145
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget-object v0, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->ranges:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "i":I
    :cond_0
    invoke-static {}, Lc8/cZn;->getInstance()Lc8/cZn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cZn;->getMax_download_threads()I

    move-result v0

    new-array v0, v0, [Lc8/kZn;

    iput-object v0, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    .line 150
    invoke-static {}, Lc8/cZn;->getInstance()Lc8/cZn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cZn;->getMax_download_threads()I

    move-result v0

    new-array v0, v0, [Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v0, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 151
    invoke-static {}, Lc8/cZn;->getInstance()Lc8/cZn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cZn;->getMax_download_threads()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    iput-object v0, p0, Lc8/iZn;->lastModifiedTime:[Ljava/lang/Long;

    .line 152
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-static {}, Lc8/cZn;->getInstance()Lc8/cZn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cZn;->getMax_download_threads()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 153
    iget-object v0, p0, Lc8/iZn;->lastModifiedTime:[Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 156
    :cond_1
    const/4 v2, 0x0

    :goto_2
    invoke-static {}, Lc8/cZn;->getInstance()Lc8/cZn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cZn;->getMax_download_threads()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 157
    mul-int v1, v2, v6

    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget-object v0, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->ranges:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v3, v1, v0

    .line 158
    .local v3, "startPos":I
    invoke-static {}, Lc8/cZn;->getInstance()Lc8/cZn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cZn;->getMax_download_threads()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_2

    .line 159
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget v0, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->totalLength:I

    add-int/lit8 v4, v0, -0x1

    .line 163
    .local v4, "endPos":I
    :goto_3
    if-ge v3, v4, :cond_3

    .line 164
    iget-object v10, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    new-instance v0, Lc8/kZn;

    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget-object v1, v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lc8/kZn;-><init>(Ljava/lang/String;IIILc8/jZn;)V

    aput-object v0, v10, v2

    .line 165
    iget-object v0, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->downloading:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v1, v0, v2

    .line 166
    iget-object v0, p0, Lc8/iZn;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 156
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 161
    .end local v4    # "endPos":I
    :cond_2
    add-int/lit8 v0, v2, 0x1

    mul-int/2addr v0, v6

    add-int/lit8 v4, v0, -0x1

    .restart local v4    # "endPos":I
    goto :goto_3

    .line 168
    :cond_3
    iget-object v0, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->done:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v1, v0, v2

    goto :goto_4

    .line 173
    .end local v3    # "startPos":I
    .end local v4    # "endPos":I
    :cond_4
    const/4 v9, 0x1

    .line 174
    .local v9, "flag":Z
    const/4 v2, 0x0

    :goto_5
    iget-object v0, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    array-length v0, v0

    if-ge v2, v0, :cond_6

    .line 175
    iget-object v0, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aget-object v0, v0, v2

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->done:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    if-eq v0, v1, :cond_5

    .line 176
    const/4 v9, 0x0

    .line 174
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 179
    :cond_6
    if-eqz v9, :cond_8

    .line 180
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->done:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v1, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 181
    iget-object v0, p0, Lc8/iZn;->extendExecuters:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lc8/iZn;->extendExecuters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 182
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-direct {p0, v0}, Lc8/iZn;->getSupportExtendExecuters(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)Ljava/util/List;

    move-result-object v7

    .line 183
    .local v7, "executorList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseframework/download/extend/ExtendExecuter;>;"
    invoke-static {v7}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 184
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->extend:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v1, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 185
    new-instance v8, Lcom/youku/us/baseframework/download/extend/ExtendHandler;

    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-direct {v8, v0, v7}, Lcom/youku/us/baseframework/download/extend/ExtendHandler;-><init>(Lcom/youku/us/baseframework/download/entity/DownloadEntry;Ljava/util/List;)V

    .line 186
    .local v8, "extendHandler":Lcom/youku/us/baseframework/download/extend/ExtendHandler;
    new-instance v0, Lcom/youku/us/baseframework/download/core/DownloadTask$ExtendHandlerListener;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/youku/us/baseframework/download/core/DownloadTask$ExtendHandlerListener;-><init>(Lc8/iZn;I)V

    invoke-virtual {v8, v0}, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->setExtendListener(Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;)V

    .line 187
    iget-object v0, p0, Lc8/iZn;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 190
    .end local v7    # "executorList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseframework/download/extend/ExtendExecuter;>;"
    .end local v8    # "extendHandler":Lcom/youku/us/baseframework/download/extend/ExtendHandler;
    :cond_7
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lc8/iZn;->notifyUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DownloadTask==>startMultiThreadDownload#####"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget-object v1, v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is already done"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 194
    :cond_8
    return-void
.end method

.method private startSingleThreadDownload()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->downloading:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v1, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 199
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-virtual {v0}, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-direct {p0, v0, v7}, Lc8/iZn;->notifyUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V

    .line 202
    new-array v0, v7, [Lc8/kZn;

    iput-object v0, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    .line 203
    iget-object v6, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    new-instance v0, Lc8/kZn;

    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget-object v1, v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    move v3, v2

    move v4, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lc8/kZn;-><init>(Ljava/lang/String;IIILc8/jZn;)V

    aput-object v0, v6, v2

    .line 204
    new-array v0, v7, [Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v0, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 205
    iget-object v0, p0, Lc8/iZn;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DownloadTask==>cancel!!!!!: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    array-length v1, v1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " connection: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lc8/iZn;->connectThread:Lc8/fZn;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc8/iZn;->connectThread:Lc8/fZn;

    invoke-virtual {v1}, Lc8/fZn;->isRunning()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/iZn;->isCancelled:Z

    .line 118
    iget-object v1, p0, Lc8/iZn;->connectThread:Lc8/fZn;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/iZn;->connectThread:Lc8/fZn;

    invoke-virtual {v1}, Lc8/fZn;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lc8/iZn;->connectThread:Lc8/fZn;

    invoke-virtual {v1}, Lc8/fZn;->cancel()V

    .line 120
    invoke-virtual {p0, v3}, Lc8/iZn;->onConnectFailed(Ljava/lang/String;)V

    .line 124
    :cond_0
    iget-object v1, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 125
    iget-object v1, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v0, v1, v2

    .line 126
    .local v0, "thread":Lc8/kZn;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc8/kZn;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    invoke-virtual {v0}, Lc8/kZn;->cancel()V

    .line 125
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "thread":Lc8/kZn;
    :cond_2
    move v1, v2

    .line 116
    goto :goto_0

    :cond_3
    move-object v1, v3

    goto :goto_1

    .line 131
    :cond_4
    return-void
.end method

.method public onConnectFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-boolean v0, p0, Lc8/iZn;->isPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/iZn;->isCancelled:Z

    if-eqz v0, :cond_2

    .line 239
    :cond_0
    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget-boolean v0, p0, Lc8/iZn;->isPaused:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->pause:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    :goto_0
    iput-object v0, v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 240
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lc8/iZn;->notifyUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DownloadTask==>onConnectFailed#####isPaused or isCancelled is true*****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-virtual {v1}, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 247
    :goto_1
    return-void

    .line 239
    :cond_1
    sget-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->cancel:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->error:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v1, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 244
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lc8/iZn;->notifyUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DownloadTask==>onConnectFailed#####error*****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-virtual {v1}, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onConnectSuccess(ZI)V
    .locals 2
    .param p1, "isSupportRange"    # Z
    .param p2, "totalLength"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iput-boolean p1, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->isSupportRange:Z

    .line 230
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iput p2, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->totalLength:I

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DownloadTask==>onConnectSuccess#####"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-virtual {v1}, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lc8/iZn;->startDownload()V

    .line 233
    return-void
.end method

.method public declared-synchronized onDownloadCanceled(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->cancel:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v2, v1, p1

    .line 383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 384
    iget-object v1, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aget-object v1, v1, v0

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->done:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aget-object v1, v1, v0

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->cancel:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    .line 393
    :goto_1
    monitor-exit p0

    return-void

    .line 383
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_1
    :try_start_1
    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-virtual {v1}, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-virtual {v1}, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->reset()V

    .line 391
    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->cancel:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v2, v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 392
    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lc8/iZn;->notifyUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 382
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDownloadCompleted(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DownloadTask==>onDownloadCompleted():index==>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 316
    iget-object v3, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    sget-object v4, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->done:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v4, v3, p1

    .line 318
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 319
    iget-object v3, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aget-object v3, v3, v2

    sget-object v4, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->done:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v4, :cond_0

    .line 346
    :goto_1
    monitor-exit p0

    return-void

    .line 318
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    :cond_1
    :try_start_1
    iget-object v3, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget v3, v3, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->totalLength:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget v3, v3, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->currentLength:I

    iget-object v4, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget v4, v4, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->totalLength:I

    if-eq v3, v4, :cond_2

    .line 326
    iget-object v3, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-virtual {v3}, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->reset()V

    .line 327
    iget-object v3, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    sget-object v4, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->error:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v4, v3, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 328
    iget-object v3, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lc8/iZn;->notifyUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V

    .line 329
    const-string/jumbo v3, "DownloadTask==>onDownloadCompleted()#####file is error, reset it!!!!!"

    invoke-static {v3}, Lc8/sZn;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 315
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 332
    .restart local v2    # "i":I
    :cond_2
    :try_start_2
    iget-object v3, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    sget-object v4, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->done:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v4, v3, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 333
    iget-object v3, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    const/16 v4, 0x64

    iput v4, v3, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->percent:I

    .line 334
    iget-object v3, p0, Lc8/iZn;->extendExecuters:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lc8/iZn;->extendExecuters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 335
    iget-object v3, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-direct {p0, v3}, Lc8/iZn;->getSupportExtendExecuters(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)Ljava/util/List;

    move-result-object v0

    .line 336
    .local v0, "executorList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseframework/download/extend/ExtendExecuter;>;"
    invoke-static {v0}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 337
    iget-object v3, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    sget-object v4, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->extend:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v4, v3, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 338
    new-instance v1, Lcom/youku/us/baseframework/download/extend/ExtendHandler;

    iget-object v3, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-direct {v1, v3, v0}, Lcom/youku/us/baseframework/download/extend/ExtendHandler;-><init>(Lcom/youku/us/baseframework/download/entity/DownloadEntry;Ljava/util/List;)V

    .line 339
    .local v1, "extendHandler":Lcom/youku/us/baseframework/download/extend/ExtendHandler;
    new-instance v3, Lcom/youku/us/baseframework/download/core/DownloadTask$ExtendHandlerListener;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/youku/us/baseframework/download/core/DownloadTask$ExtendHandlerListener;-><init>(Lc8/iZn;I)V

    invoke-virtual {v1, v3}, Lcom/youku/us/baseframework/download/extend/ExtendHandler;->setExtendListener(Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;)V

    .line 340
    iget-object v3, p0, Lc8/iZn;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 343
    .end local v0    # "executorList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseframework/download/extend/ExtendExecuter;>;"
    .end local v1    # "extendHandler":Lcom/youku/us/baseframework/download/extend/ExtendHandler;
    :cond_3
    iget-object v3, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    const/4 v4, 0x4

    invoke-direct {p0, v3, v4}, Lc8/iZn;->notifyUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V

    .line 344
    const-string/jumbo v3, "DownloadTask==>onDownloadCompleted()#####file is ok!!!!!"

    invoke-static {v3}, Lc8/sZn;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public declared-synchronized onDownloadError(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDownloadError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/sZn;->e(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->error:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v2, v1, p1

    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 353
    iget-object v1, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aget-object v1, v1, v0

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->done:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aget-object v1, v1, v0

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->error:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    array-length v1, v1

    if-le v1, v0, :cond_1

    .line 355
    iget-object v1, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lc8/kZn;->cancelByError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 352
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_2
    :try_start_1
    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->error:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v2, v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 363
    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lc8/iZn;->notifyUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 350
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDownloadPaused(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->pause:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v2, v1, p1

    .line 369
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 370
    iget-object v1, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aget-object v1, v1, v0

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->done:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lc8/iZn;->downloadStatus:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aget-object v1, v1, v0

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->pause:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    .line 378
    :goto_1
    monitor-exit p0

    return-void

    .line 369
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_1
    :try_start_1
    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->pause:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v2, v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 376
    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-virtual {v1}, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lc8/iZn;->notifyUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 368
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onProgressChanged(II)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "progress"    # I

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget-boolean v4, v4, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->isSupportRange:Z

    if-eqz v4, :cond_0

    .line 253
    iget-object v4, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget-object v4, v4, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->ranges:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 254
    iget-object v4, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget-object v4, v4, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->ranges:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int v1, v4, p2

    .line 255
    .local v1, "range":I
    iget-object v4, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget-object v4, v4, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->ranges:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-static {}, Lc8/cZn;->getInstance()Lc8/cZn;

    move-result-object v4

    invoke-virtual {v4}, Lc8/cZn;->getMax_download_threads()I

    .line 261
    .end local v1    # "range":I
    :cond_0
    iget-object v4, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget v5, v4, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->currentLength:I

    add-int/2addr v5, p2

    iput v5, v4, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->currentLength:I

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 263
    .local v2, "stamp":J
    iget-wide v4, p0, Lc8/iZn;->lastStamp:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x46

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 264
    iput-wide v2, p0, Lc8/iZn;->lastStamp:J

    .line 265
    iget-object v4, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget v4, v4, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->currentLength:I

    int-to-long v4, v4

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    iget-object v6, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget v6, v6, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->totalLength:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    long-to-int v0, v4

    .line 266
    .local v0, "percent":I
    iget-object v4, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iput v0, v4, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->percent:I

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index==>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-virtual {v5}, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    iget-object v4, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lc8/iZn;->notifyUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    .end local v0    # "percent":I
    :cond_1
    monitor-exit p0

    return-void

    .line 252
    .end local v2    # "stamp":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DownloadTask==>pause(): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    array-length v2, v2

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " connection: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lc8/iZn;->connectThread:Lc8/fZn;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lc8/iZn;->connectThread:Lc8/fZn;

    invoke-virtual {v2}, Lc8/fZn;->isRunning()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 93
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/iZn;->isPaused:Z

    .line 95
    :try_start_0
    iget-object v2, p0, Lc8/iZn;->connectThread:Lc8/fZn;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/iZn;->connectThread:Lc8/fZn;

    invoke-virtual {v2}, Lc8/fZn;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lc8/iZn;->connectThread:Lc8/fZn;

    invoke-virtual {v2}, Lc8/fZn;->cancel()V

    .line 97
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lc8/iZn;->onConnectFailed(Ljava/lang/String;)V

    .line 99
    :cond_0
    iget-object v2, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 100
    iget-object v2, p0, Lc8/iZn;->downloadThreads:[Lc8/kZn;

    array-length v4, v2

    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v1, v2, v3

    .line 101
    .local v1, "thread":Lc8/kZn;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc8/kZn;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 102
    iget-object v5, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget-boolean v5, v5, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->isSupportRange:Z

    if-eqz v5, :cond_4

    .line 103
    invoke-virtual {v1}, Lc8/kZn;->pause()V

    .line 100
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1    # "thread":Lc8/kZn;
    :cond_2
    move v2, v3

    .line 92
    goto :goto_0

    :cond_3
    move-object v2, v4

    goto :goto_1

    .line 105
    .restart local v1    # "thread":Lc8/kZn;
    :cond_4
    invoke-virtual {v1}, Lc8/kZn;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 110
    .end local v1    # "thread":Lc8/kZn;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget v0, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->totalLength:I

    if-lez v0, :cond_0

    .line 65
    const-string/jumbo v0, "DownloadTask===>start()#####no need to request content length!"

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lc8/iZn;->startDownload()V

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->connecting:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v1, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DownloadTask===>start()#####first start download*****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-virtual {v1}, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lc8/iZn;->notifyUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)V

    .line 72
    new-instance v0, Lc8/fZn;

    iget-object v1, p0, Lc8/iZn;->entry:Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget-object v1, v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lc8/fZn;-><init>(Ljava/lang/String;Lc8/eZn;)V

    iput-object v0, p0, Lc8/iZn;->connectThread:Lc8/fZn;

    .line 73
    iget-object v0, p0, Lc8/iZn;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lc8/iZn;->connectThread:Lc8/fZn;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
