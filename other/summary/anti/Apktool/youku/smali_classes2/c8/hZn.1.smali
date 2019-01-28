.class public Lc8/hZn;
.super Landroid/app/Service;
.source "DownloadService.java"


# static fields
.field public static final NOTIFY_COMPLETED:I = 0x4

.field public static final NOTIFY_CONNECTING:I = 0x6

.field public static final NOTIFY_DOWNLOADING:I = 0x1

.field public static final NOTIFY_ERROR:I = 0x5

.field public static final NOTIFY_NOT_ENOUGH_SIZE:I = 0x7

.field public static final NOTIFY_PAUSED_OR_CANCELLED:I = 0x3

.field public static final NOTIFY_UPDATING:I = 0x2


# instance fields
.field private dataChanger:Lc8/oZn;

.field private dbController:Lc8/lZn;

.field private mDownloadingTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/iZn;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/youku/us/baseframework/download/entity/DownloadEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Lc8/gZn;

    invoke-direct {v0, p0}, Lc8/gZn;-><init>(Lc8/hZn;)V

    iput-object v0, p0, Lc8/hZn;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lc8/hZn;Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 0
    .param p0, "x0"    # Lc8/hZn;
    .param p1, "x1"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lc8/hZn;->checkNext(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    return-void
.end method

.method private addDownload(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lc8/hZn;->checkDownloadPath(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    .line 269
    invoke-direct {p0, p1}, Lc8/hZn;->isDownloadEntryRepeted(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {}, Lc8/cZn;->getInstance()Lc8/cZn;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cZn;->getMax_download_tasks()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 273
    iget-object v0, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->waiting:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v0, p1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 275
    invoke-virtual {p0}, Lc8/hZn;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lc8/oZn;->getInstance(Landroid/content/Context;)Lc8/oZn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/oZn;->updateStatus(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DownloadService==>addDownload#####bigger than max_tasks***Task Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    .line 277
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "***Waiting Queue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 278
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DownloadService==>addDownload#####start tasks***Task Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    .line 281
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "***Waiting Queue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 282
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0, p1}, Lc8/hZn;->startDownload(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    goto/16 :goto_0
.end method

.method private cancelDownload(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 3
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 210
    iget-object v1, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/iZn;

    .line 211
    .local v0, "task":Lc8/iZn;
    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->cancel:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v1, p1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lc8/iZn;->cancel()V

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DownloadService==>pauseDownload#####cancel downloading task***Task Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    .line 215
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "***Waiting Queue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 216
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v1}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 225
    :goto_0
    invoke-virtual {p0}, Lc8/hZn;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lc8/lZn;->getInstance(Landroid/content/Context;)Lc8/lZn;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc8/lZn;->deleteByUrl(Ljava/lang/String;)V

    .line 226
    return-void

    .line 218
    :cond_0
    iget-object v1, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DownloadService==>pauseDownload#####cancel waiting queue!***entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "***Task Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    .line 222
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "***Waiting Queue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 223
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v1}, Lc8/sZn;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkDownloadPath(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 5
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 299
    const-string/jumbo v1, "DownloadService==>checkDownloadPath()"

    invoke-static {v1}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 300
    iget-object v1, p1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    invoke-static {v1}, Lc8/abo;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/cZn;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    invoke-virtual {p1}, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->reset()V

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DownloadService==>checkDownloadPath()#####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'s cache is not exist, restart download!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 307
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private checkNext(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 3
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 197
    iget-object v1, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v1, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .line 199
    .local v0, "newEntry":Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0, v0}, Lc8/hZn;->startDownload(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    .line 202
    :cond_0
    return-void
.end method

.method private intializeDownload()V
    .locals 5

    .prologue
    .line 94
    iget-object v2, p0, Lc8/hZn;->dbController:Lc8/lZn;

    invoke-virtual {v2}, Lc8/lZn;->queryAll()Ljava/util/ArrayList;

    move-result-object v1

    .line 95
    .local v1, "mDownloadEtries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/us/baseframework/download/entity/DownloadEntry;>;"
    if-eqz v1, :cond_5

    .line 96
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .line 97
    .local v0, "entry":Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    iget-object v3, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    sget-object v4, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->downloading:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    if-eq v3, v4, :cond_0

    iget-object v3, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    sget-object v4, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->waiting:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    if-ne v3, v4, :cond_1

    .line 98
    :cond_0
    sget-object v3, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->pause:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v3, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 99
    invoke-static {}, Lc8/cZn;->getInstance()Lc8/cZn;

    move-result-object v3

    invoke-virtual {v3}, Lc8/cZn;->isRecoverDownloadWhenStart()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    iget-boolean v3, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->isSupportRange:Z

    if-eqz v3, :cond_2

    .line 101
    sget-object v3, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->pause:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v3, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 105
    :goto_1
    invoke-direct {p0, v0}, Lc8/hZn;->addDownload(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    .line 115
    :cond_1
    :goto_2
    iget-object v3, p0, Lc8/hZn;->dataChanger:Lc8/oZn;

    iget-object v4, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lc8/oZn;->addToOperatedEntryMap(Ljava/lang/String;Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v0}, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->reset()V

    goto :goto_1

    .line 107
    :cond_3
    iget-boolean v3, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->isSupportRange:Z

    if-eqz v3, :cond_4

    .line 108
    sget-object v3, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->pause:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v3, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 112
    :goto_3
    iget-object v3, p0, Lc8/hZn;->dbController:Lc8/lZn;

    invoke-virtual {v3, v0}, Lc8/lZn;->newOrUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    goto :goto_2

    .line 110
    :cond_4
    invoke-virtual {v0}, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->reset()V

    goto :goto_3

    .line 118
    .end local v0    # "entry":Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    :cond_5
    return-void
.end method

.method private isDownloadEntryRepeted(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    const/4 v0, 0x1

    .line 310
    iget-object v1, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 311
    const-string/jumbo v1, "DownlaodService==>isDownloadEntryRepeted()##### The downloadEntry is in downloading tasks!!"

    invoke-static {v1}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 319
    :goto_0
    return v0

    .line 315
    :cond_0
    iget-object v1, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    const-string/jumbo v1, "DownlaodService==>isDownloadEntryRepeted()##### The downloadEntry is in waiting queue!!"

    invoke-static {v1}, Lc8/sZn;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pauseAllDownload()V
    .locals 5

    .prologue
    .line 182
    :goto_0
    iget-object v3, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .line 184
    .local v0, "entry":Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    sget-object v3, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->pause:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v3, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 185
    invoke-virtual {p0}, Lc8/hZn;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lc8/oZn;->getInstance(Landroid/content/Context;)Lc8/oZn;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc8/oZn;->updateStatus(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    goto :goto_0

    .line 188
    .end local v0    # "entry":Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    :cond_0
    iget-object v3, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 189
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/us/baseframework/download/core/DownloadTask;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/iZn;

    .line 190
    .local v2, "task":Lc8/iZn;
    invoke-virtual {v2}, Lc8/iZn;->pause()V

    goto :goto_1

    .line 192
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/us/baseframework/download/core/DownloadTask;>;"
    .end local v2    # "task":Lc8/iZn;
    :cond_1
    iget-object v3, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 193
    const-string/jumbo v3, "DownloadService==>pauseAllDownload"

    invoke-static {v3}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private pauseDownload(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 3
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 250
    iget-object v1, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/iZn;

    .line 251
    .local v0, "task":Lc8/iZn;
    if-eqz v0, :cond_0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DownloadService==>pauseDownload#####pause downloading task***Task Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    .line 253
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "***Waiting Queue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 254
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-static {v1}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0}, Lc8/iZn;->pause()V

    .line 265
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v1, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 258
    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->pause:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    iput-object v1, p1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 259
    invoke-virtual {p0}, Lc8/hZn;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lc8/oZn;->getInstance(Landroid/content/Context;)Lc8/oZn;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/oZn;->updateStatus(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DownloadService==>pauseDownload#####pause waiting queue!***Task Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    .line 261
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "***Waiting Queue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 262
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v1}, Lc8/sZn;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recoverAllDownload()V
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p0}, Lc8/hZn;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lc8/oZn;->getInstance(Landroid/content/Context;)Lc8/oZn;

    move-result-object v2

    invoke-virtual {v2}, Lc8/oZn;->queryAllRecoverableEntries()Ljava/util/ArrayList;

    move-result-object v1

    .line 173
    .local v1, "mRecoverableEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/us/baseframework/download/entity/DownloadEntry;>;"
    if-nez v1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .line 176
    .local v0, "entry":Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    invoke-direct {p0, v0}, Lc8/hZn;->addDownload(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    goto :goto_1

    .line 178
    .end local v0    # "entry":Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DownloadService==>recoverAllDownload***Task Size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "***Waiting Queue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/sZn;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restartDownload(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 234
    invoke-virtual {p1}, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->reset()V

    .line 235
    iget-object v0, p0, Lc8/hZn;->dbController:Lc8/lZn;

    iget-object v1, p1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/lZn;->deleteByUrl(Ljava/lang/String;)V

    .line 236
    invoke-direct {p0, p1}, Lc8/hZn;->addDownload(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DownloadService==>restartDownload***Task Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    .line 238
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "***Waiting Queue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 239
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private resumeDownload(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lc8/hZn;->addDownload(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DownloadService==>resumeDownload***Task Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    .line 245
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "***Waiting Queue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 246
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method private startDownload(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 4
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 288
    iget-object v1, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    new-instance v0, Lc8/iZn;

    iget-object v1, p0, Lc8/hZn;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lc8/hZn;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lc8/dZn;->getInstance(Landroid/content/Context;)Lc8/dZn;

    move-result-object v3

    invoke-virtual {v3}, Lc8/dZn;->getExtendExecuters()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lc8/iZn;-><init>(Lcom/youku/us/baseframework/download/entity/DownloadEntry;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;Ljava/util/List;)V

    .line 290
    .local v0, "task":Lc8/iZn;
    iget-object v1, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DownloadService==>startDownload***Task Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    .line 292
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "***Waiting Queue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 293
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v1}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Lc8/iZn;->start()V

    .line 296
    .end local v0    # "task":Lc8/iZn;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/hZn;->mDownloadingTasks:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lc8/hZn;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 85
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lc8/hZn;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 86
    invoke-virtual {p0}, Lc8/hZn;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/oZn;->getInstance(Landroid/content/Context;)Lc8/oZn;

    move-result-object v0

    iput-object v0, p0, Lc8/hZn;->dataChanger:Lc8/oZn;

    .line 87
    invoke-virtual {p0}, Lc8/hZn;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/lZn;->getInstance(Landroid/content/Context;)Lc8/lZn;

    move-result-object v0

    iput-object v0, p0, Lc8/hZn;->dbController:Lc8/lZn;

    .line 88
    invoke-direct {p0}, Lc8/hZn;->intializeDownload()V

    .line 90
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 122
    if-eqz p1, :cond_1

    .line 123
    const-string/jumbo v3, "key_download_action"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, "action":I
    const-string/jumbo v3, "key_download_entry"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .line 125
    .local v1, "entry":Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStartCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 127
    if-eqz v1, :cond_0

    iget-object v3, p0, Lc8/hZn;->dataChanger:Lc8/oZn;

    iget-object v4, v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc8/oZn;->containsDownloadEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, p0, Lc8/hZn;->dataChanger:Lc8/oZn;

    iget-object v4, v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc8/oZn;->queryDownloadEntryByUrl(Ljava/lang/String;)Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    move-result-object v2

    .line 129
    .local v2, "tmpEntry":Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    if-eqz v2, :cond_0

    .line 130
    move-object v1, v2

    .line 134
    .end local v2    # "tmpEntry":Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 168
    .end local v0    # "action":I
    .end local v1    # "entry":Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    return v3

    .line 136
    .restart local v0    # "action":I
    .restart local v1    # "entry":Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    :pswitch_0
    invoke-direct {p0, v1}, Lc8/hZn;->addDownload(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-direct {p0, v1}, Lc8/hZn;->pauseDownload(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    goto :goto_0

    .line 144
    :pswitch_2
    invoke-direct {p0, v1}, Lc8/hZn;->resumeDownload(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    goto :goto_0

    .line 148
    :pswitch_3
    invoke-direct {p0, v1}, Lc8/hZn;->restartDownload(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    goto :goto_0

    .line 152
    :pswitch_4
    invoke-direct {p0, v1}, Lc8/hZn;->cancelDownload(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    goto :goto_0

    .line 155
    :pswitch_5
    invoke-direct {p0}, Lc8/hZn;->pauseAllDownload()V

    goto :goto_0

    .line 159
    :pswitch_6
    invoke-direct {p0}, Lc8/hZn;->recoverAllDownload()V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
