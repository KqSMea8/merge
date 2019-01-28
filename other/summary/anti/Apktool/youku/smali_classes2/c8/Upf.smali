.class public Lc8/Upf;
.super Ljava/lang/Object;
.source "StatFsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/fresco/disk/fs/StatFsHelper$StorageType;
    }
.end annotation


# static fields
.field private static final RESTAT_INTERVAL_MS:J

.field private static sStatsFsHelper:Lc8/Upf;


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private volatile mExternalPath:Ljava/io/File;

.field private volatile mExternalStatFs:Landroid/os/StatFs;

.field private volatile mInitialized:Z

.field private volatile mInternalPath:Ljava/io/File;

.field private volatile mInternalStatFs:Landroid/os/StatFs;

.field private mLastRestatTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lc8/Upf;->RESTAT_INTERVAL_MS:J

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lc8/Upf;->mInternalStatFs:Landroid/os/StatFs;

    .line 36
    iput-object v0, p0, Lc8/Upf;->mExternalStatFs:Landroid/os/StatFs;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Upf;->mInitialized:Z

    .line 48
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lc8/Upf;->lock:Ljava/util/concurrent/locks/Lock;

    .line 49
    return-void
.end method

.method protected static createStatFs(Ljava/lang/String;)Landroid/os/StatFs;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private ensureInitialized()V
    .locals 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lc8/Upf;->mInitialized:Z

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lc8/Upf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 69
    :try_start_0
    iget-boolean v0, p0, Lc8/Upf;->mInitialized:Z

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lc8/Upf;->mInternalPath:Ljava/io/File;

    .line 71
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lc8/Upf;->mExternalPath:Ljava/io/File;

    .line 72
    invoke-direct {p0}, Lc8/Upf;->updateStats()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Upf;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    iget-object v0, p0, Lc8/Upf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 79
    :cond_1
    return-void

    .line 76
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/Upf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static declared-synchronized getInstance()Lc8/Upf;
    .locals 2

    .prologue
    .line 52
    const-class v1, Lc8/Upf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Upf;->sStatsFsHelper:Lc8/Upf;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lc8/Upf;

    invoke-direct {v0}, Lc8/Upf;-><init>()V

    sput-object v0, Lc8/Upf;->sStatsFsHelper:Lc8/Upf;

    .line 55
    :cond_0
    sget-object v0, Lc8/Upf;->sStatsFsHelper:Lc8/Upf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private maybeUpdateStats()V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lc8/Upf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lc8/Upf;->mLastRestatTime:J

    sub-long/2addr v0, v2

    sget-wide v2, Lc8/Upf;->RESTAT_INTERVAL_MS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 135
    invoke-direct {p0}, Lc8/Upf;->updateStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    iget-object v0, p0, Lc8/Upf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 141
    :cond_1
    return-void

    .line 138
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/Upf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private updateStats()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lc8/Upf;->mInternalStatFs:Landroid/os/StatFs;

    iget-object v1, p0, Lc8/Upf;->mInternalPath:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lc8/Upf;->updateStatsHelper(Landroid/os/StatFs;Ljava/io/File;)Landroid/os/StatFs;

    move-result-object v0

    iput-object v0, p0, Lc8/Upf;->mInternalStatFs:Landroid/os/StatFs;

    .line 169
    iget-object v0, p0, Lc8/Upf;->mExternalStatFs:Landroid/os/StatFs;

    iget-object v1, p0, Lc8/Upf;->mExternalPath:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lc8/Upf;->updateStatsHelper(Landroid/os/StatFs;Ljava/io/File;)Landroid/os/StatFs;

    move-result-object v0

    iput-object v0, p0, Lc8/Upf;->mExternalStatFs:Landroid/os/StatFs;

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/Upf;->mLastRestatTime:J

    .line 171
    return-void
.end method

.method private updateStatsHelper(Landroid/os/StatFs;Ljava/io/File;)Landroid/os/StatFs;
    .locals 1
    .param p1, "statfs"    # Landroid/os/StatFs;
    .param p2, "dir"    # Ljava/io/File;

    .prologue
    .line 179
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0

    .line 185
    :cond_1
    if-nez p1, :cond_2

    .line 187
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Upf;->createStatFs(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object p1

    :goto_1
    move-object v0, p1

    .line 206
    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    const/4 p1, 0x0

    .line 204
    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getAvailableStorageSpace(Lcom/taobao/fresco/disk/fs/StatFsHelper$StorageType;)J
    .locals 8
    .param p1, "storageType"    # Lcom/taobao/fresco/disk/fs/StatFsHelper$StorageType;

    .prologue
    .line 110
    invoke-direct {p0}, Lc8/Upf;->ensureInitialized()V

    .line 112
    invoke-direct {p0}, Lc8/Upf;->maybeUpdateStats()V

    .line 114
    sget-object v5, Lcom/taobao/fresco/disk/fs/StatFsHelper$StorageType;->INTERNAL:Lcom/taobao/fresco/disk/fs/StatFsHelper$StorageType;

    if-ne p1, v5, :cond_0

    iget-object v4, p0, Lc8/Upf;->mInternalStatFs:Landroid/os/StatFs;

    .line 115
    .local v4, "statFS":Landroid/os/StatFs;
    :goto_0
    if-eqz v4, :cond_1

    .line 116
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 117
    .local v2, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 118
    .local v0, "availableBlocks":J
    mul-long v6, v2, v0

    .line 120
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    :goto_1
    return-wide v6

    .line 114
    .end local v4    # "statFS":Landroid/os/StatFs;
    :cond_0
    iget-object v4, p0, Lc8/Upf;->mExternalStatFs:Landroid/os/StatFs;

    goto :goto_0

    .line 120
    .restart local v4    # "statFS":Landroid/os/StatFs;
    :cond_1
    const-wide/16 v6, 0x0

    goto :goto_1
.end method

.method public resetStats()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lc8/Upf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    invoke-direct {p0}, Lc8/Upf;->ensureInitialized()V

    .line 155
    invoke-direct {p0}, Lc8/Upf;->updateStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v0, p0, Lc8/Upf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 160
    :cond_0
    return-void

    .line 157
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/Upf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public testLowDiskSpace(Lcom/taobao/fresco/disk/fs/StatFsHelper$StorageType;J)Z
    .locals 6
    .param p1, "storageType"    # Lcom/taobao/fresco/disk/fs/StatFsHelper$StorageType;
    .param p2, "freeSpaceThreshold"    # J

    .prologue
    const/4 v2, 0x1

    .line 93
    invoke-direct {p0}, Lc8/Upf;->ensureInitialized()V

    .line 95
    invoke-virtual {p0, p1}, Lc8/Upf;->getAvailableStorageSpace(Lcom/taobao/fresco/disk/fs/StatFsHelper$StorageType;)J

    move-result-wide v0

    .line 96
    .local v0, "availableStorageSpace":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 97
    cmp-long v3, v0, p2

    if-gez v3, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v2

    .line 97
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
