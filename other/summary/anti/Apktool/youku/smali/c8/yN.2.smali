.class public Lc8/yN;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/uN;,
        Lc8/wN;,
        Lc8/xN;,
        Lc8/vN;
    }
.end annotation


# static fields
.field public static final ERROR_DOWNLOAD_CANCELLED:I = -0x69

.field public static final ERROR_EXCEPTION_HAPPEN:I = -0x68

.field public static final ERROR_FILE_FOLDER_INVALID:I = -0x65

.field public static final ERROR_IO_EXCEPTION:I = -0x67

.field public static final ERROR_REQUEST_FAIL:I = -0x66

.field public static final ERROR_URL_INVALID:I = -0x64

.field public static final TAG:Ljava/lang/String; = "anet.DownloadManager"


# instance fields
.field private context:Landroid/content/Context;

.field private executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private taskIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

.field private taskMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lc8/xN;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v2, 0x2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lc8/yN;->taskMap:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc8/yN;->taskIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lc8/yN;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/yN;->context:Landroid/content/Context;

    .line 61
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/yN;->context:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lc8/yN;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 63
    invoke-direct {p0}, Lc8/yN;->prepareDownloadFolder()V

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lc8/uN;)V
    .locals 0
    .param p1, "x0"    # Lc8/uN;

    .prologue
    .line 40
    invoke-direct {p0}, Lc8/yN;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lc8/yN;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lc8/yN;

    .prologue
    .line 40
    iget-object v0, p0, Lc8/yN;->taskIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lc8/yN;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/yN;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lc8/yN;->getDownloadFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lc8/yN;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/yN;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lc8/yN;->getTempFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lc8/yN;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/yN;

    .prologue
    .line 40
    iget-object v0, p0, Lc8/yN;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lc8/yN;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lc8/yN;

    .prologue
    .line 40
    iget-object v0, p0, Lc8/yN;->taskMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method private getDownloadFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 400
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc8/yN;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "downloads"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lc8/yN;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lc8/vN;->instance:Lc8/yN;

    return-object v0
.end method

.method private getTempFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-static {p1}, Lc8/cM;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "tempFile":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 412
    move-object v0, p1

    .line 414
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/yN;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private prepareDownloadFolder()V
    .locals 3

    .prologue
    .line 375
    iget-object v1, p0, Lc8/yN;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 376
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/yN;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "downloads"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 377
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 381
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private prepareFolder(Ljava/lang/String;)Z
    .locals 8
    .param p1, "fileFolder"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 384
    iget-object v3, p0, Lc8/yN;->context:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 386
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 388
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 395
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return v1

    .line 392
    :catch_0
    move-exception v3

    const-string/jumbo v3, "anet.DownloadManager"

    const-string/jumbo v4, "create folder failed"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "folder"

    aput-object v7, v6, v2

    aput-object p1, v6, v1

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v1, v2

    .line 395
    goto :goto_0
.end method


# virtual methods
.method public enqueue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/wN;)I
    .locals 11
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "fileFolder"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "listener"    # Lc8/wN;

    .prologue
    .line 83
    const/4 v1, 0x2

    invoke-static {v1}, Lc8/KL;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-string/jumbo v1, "anet.DownloadManager"

    const-string/jumbo v3, "enqueue"

    const/4 v4, 0x0

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "folder"

    aput-object v10, v5, v9

    const/4 v9, 0x1

    aput-object p2, v5, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "filename"

    aput-object v10, v5, v9

    const/4 v9, 0x3

    aput-object p3, v5, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "url"

    aput-object v10, v5, v9

    const/4 v9, 0x5

    aput-object p1, v5, v9

    invoke-static {v1, v3, v4, v5}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :cond_0
    iget-object v1, p0, Lc8/yN;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 88
    const-string/jumbo v1, "anet.DownloadManager"

    const-string/jumbo v3, "network not initial."

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    const/4 v1, -0x1

    .line 128
    :goto_0
    return v1

    .line 94
    :cond_1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .local v2, "url":Ljava/net/URL;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, p2}, Lc8/yN;->prepareFolder(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 104
    const-string/jumbo v1, "anet.DownloadManager"

    const-string/jumbo v3, "file folder invalid."

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    if-eqz p4, :cond_2

    .line 106
    const/4 v1, -0x1

    const/16 v3, -0x65

    const-string/jumbo v4, "file folder path invalid"

    invoke-interface {p4, v1, v3, v4}, Lc8/wN;->onFail(IILjava/lang/String;)V

    .line 108
    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    .line 95
    .end local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v6

    .line 96
    .local v6, "e":Ljava/net/MalformedURLException;
    const-string/jumbo v1, "anet.DownloadManager"

    const-string/jumbo v3, "url invalid."

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v6, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 97
    if-eqz p4, :cond_3

    .line 98
    const/4 v1, -0x1

    const/16 v3, -0x64

    const-string/jumbo v4, "url invalid"

    invoke-interface {p4, v1, v3, v4}, Lc8/wN;->onFail(IILjava/lang/String;)V

    .line 100
    :cond_3
    const/4 v1, -0x1

    goto :goto_0

    .line 111
    .end local v6    # "e":Ljava/net/MalformedURLException;
    .restart local v2    # "url":Ljava/net/URL;
    :cond_4
    iget-object v9, p0, Lc8/yN;->taskMap:Landroid/util/SparseArray;

    monitor-enter v9

    .line 112
    :try_start_1
    iget-object v1, p0, Lc8/yN;->taskMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 113
    .local v8, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_6

    .line 114
    iget-object v1, p0, Lc8/yN;->taskMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/xN;

    .line 116
    .local v0, "downloadTask":Lc8/xN;
    iget-object v1, v0, Lc8/xN;->url:Ljava/net/URL;

    invoke-virtual {v2, v1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 117
    invoke-virtual {v0, p4}, Lc8/xN;->attachListener(Lc8/wN;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 118
    iget v1, v0, Lc8/xN;->taskId:I

    monitor-exit v9

    goto :goto_0

    .line 129
    .end local v0    # "downloadTask":Lc8/xN;
    .end local v7    # "i":I
    .end local v8    # "size":I
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 113
    .restart local v0    # "downloadTask":Lc8/xN;
    .restart local v7    # "i":I
    .restart local v8    # "size":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 125
    .end local v0    # "downloadTask":Lc8/xN;
    :cond_6
    :try_start_2
    new-instance v0, Lc8/xN;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/xN;-><init>(Lc8/yN;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lc8/wN;)V

    .line 126
    .restart local v0    # "downloadTask":Lc8/xN;
    iget-object v1, p0, Lc8/yN;->taskMap:Landroid/util/SparseArray;

    iget v3, v0, Lc8/xN;->taskId:I

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    iget-object v1, p0, Lc8/yN;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 128
    iget v1, v0, Lc8/xN;->taskId:I

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
