.class public Lc8/Fpf;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"

# interfaces
.implements Lc8/Gpf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Epf;,
        Lc8/Dpf;,
        Lc8/Cpf;
    }
.end annotation


# static fields
.field private static final FILECACHE_SIZE_UPDATE_PERIOD_MS:J

.field private static final FUTURE_TIMESTAMP_THRESHOLD_MS:J

.field public static final START_OF_VERSIONING:I = 0x1

.field private static final TRIMMING_LOWER_BOUND:D = 0.02

.field private static final UNINITIALIZED:J = -0x1L


# instance fields
.field private final mCacheEventListener:Lc8/Apf;

.field private mCacheSizeLastUpdateTime:J

.field private mCacheSizeLimit:J

.field private final mCacheSizeLimitMinimum:J

.field private final mCacheStats:Lc8/Cpf;

.field private final mClock:Lc8/Lpf;

.field private final mDefaultCacheSizeLimit:J

.field private final mLock:Ljava/lang/Object;

.field private final mLowDiskSpaceCacheSizeLimit:J

.field private final mStatFsHelper:Lc8/Upf;

.field private final mStorage:Lc8/eqf;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lc8/Fpf;->FUTURE_TIMESTAMP_THRESHOLD_MS:J

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lc8/Fpf;->FILECACHE_SIZE_UPDATE_PERIOD_MS:J

    return-void
.end method

.method public constructor <init>(Lc8/eqf;Lc8/Dpf;Lc8/Apf;)V
    .locals 2
    .param p1, "diskStorage"    # Lc8/eqf;
    .param p2, "params"    # Lc8/Dpf;
    .param p3, "cacheEventListener"    # Lc8/Apf;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/Fpf;->mLock:Ljava/lang/Object;

    .line 54
    iget-wide v0, p2, Lc8/Dpf;->mLowDiskSpaceCacheSizeLimit:J

    iput-wide v0, p0, Lc8/Fpf;->mLowDiskSpaceCacheSizeLimit:J

    .line 55
    iget-wide v0, p2, Lc8/Dpf;->mDefaultCacheSizeLimit:J

    iput-wide v0, p0, Lc8/Fpf;->mDefaultCacheSizeLimit:J

    .line 56
    iget-wide v0, p2, Lc8/Dpf;->mDefaultCacheSizeLimit:J

    iput-wide v0, p0, Lc8/Fpf;->mCacheSizeLimit:J

    .line 57
    invoke-static {}, Lc8/Upf;->getInstance()Lc8/Upf;

    move-result-object v0

    iput-object v0, p0, Lc8/Fpf;->mStatFsHelper:Lc8/Upf;

    .line 59
    iput-object p1, p0, Lc8/Fpf;->mStorage:Lc8/eqf;

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/Fpf;->mCacheSizeLastUpdateTime:J

    .line 63
    iput-object p3, p0, Lc8/Fpf;->mCacheEventListener:Lc8/Apf;

    .line 65
    iget-wide v0, p2, Lc8/Dpf;->mCacheSizeLimitMinimum:J

    iput-wide v0, p0, Lc8/Fpf;->mCacheSizeLimitMinimum:J

    .line 68
    new-instance v0, Lc8/Cpf;

    invoke-direct {v0}, Lc8/Cpf;-><init>()V

    iput-object v0, p0, Lc8/Fpf;->mCacheStats:Lc8/Cpf;

    .line 70
    invoke-static {}, Lc8/Npf;->get()Lc8/Npf;

    move-result-object v0

    iput-object v0, p0, Lc8/Fpf;->mClock:Lc8/Lpf;

    .line 71
    return-void
.end method

.method private calcFileCacheSize()V
    .locals 22

    .prologue
    .line 463
    const-wide/16 v12, 0x0

    .line 464
    .local v12, "size":J
    const/4 v2, 0x0

    .line 465
    .local v2, "count":I
    const/4 v5, 0x0

    .line 466
    .local v5, "foundFutureTimestamp":Z
    const/4 v7, 0x0

    .line 467
    .local v7, "numFutureFiles":I
    const/4 v14, 0x0

    .line 468
    .local v14, "sizeFutureFiles":I
    const-wide/16 v8, -0x1

    .line 469
    .local v8, "maxTimeDelta":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fpf;->mClock:Lc8/Lpf;

    invoke-interface {v15}, Lc8/Lpf;->now()J

    move-result-wide v10

    .line 470
    .local v10, "now":J
    sget-wide v18, Lc8/Fpf;->FUTURE_TIMESTAMP_THRESHOLD_MS:J

    add-long v16, v10, v18

    .line 472
    .local v16, "timeThreshold":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fpf;->mStorage:Lc8/eqf;

    invoke-interface {v15}, Lc8/eqf;->getEntries()Ljava/util/Collection;

    move-result-object v3

    .line 473
    .local v3, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/taobao/fresco/disk/storage/DiskStorage$Entry;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/dqf;

    .line 474
    .local v4, "entry":Lc8/dqf;
    add-int/lit8 v2, v2, 0x1

    .line 475
    invoke-interface {v4}, Lc8/dqf;->getSize()J

    move-result-wide v18

    add-long v12, v12, v18

    .line 478
    invoke-interface {v4}, Lc8/dqf;->getTimestamp()J

    move-result-wide v18

    cmp-long v18, v18, v16

    if-lez v18, :cond_0

    .line 479
    const/4 v5, 0x1

    .line 480
    add-int/lit8 v7, v7, 0x1

    .line 481
    int-to-long v0, v14

    move-wide/from16 v18, v0

    invoke-interface {v4}, Lc8/dqf;->getSize()J

    move-result-wide v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v14, v0

    .line 482
    invoke-interface {v4}, Lc8/dqf;->getTimestamp()J

    move-result-wide v18

    sub-long v18, v18, v10

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    goto :goto_0

    .line 485
    .end local v4    # "entry":Lc8/dqf;
    :cond_1
    if-eqz v5, :cond_2

    .line 486
    const-string/jumbo v15, "NonCatalogDiskCache"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CacheError: READ_INVALID_ENTRY, Future timestamp found in "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " files , with a total size of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " bytes, and a maximum time delta of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fpf;->mCacheStats:Lc8/Cpf;

    int-to-long v0, v2

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v12, v13, v0, v1}, Lc8/Cpf;->set(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v3    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/taobao/fresco/disk/storage/DiskStorage$Entry;>;"
    :goto_1
    return-void

    .line 491
    :catch_0
    move-exception v6

    .line 492
    .local v6, "ioe":Ljava/io/IOException;
    const-string/jumbo v15, "NonCatalogDiskCache"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CacheError: GENERIC_IO, calcFileCacheSize: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private commitResource(Ljava/lang/String;Lc8/Bpf;Lc8/Hpf;)Lc8/Hpf;
    .locals 8
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "key"    # Lc8/Bpf;
    .param p3, "temporary"    # Lc8/Hpf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v2, p0, Lc8/Fpf;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 180
    :try_start_0
    iget-object v1, p0, Lc8/Fpf;->mStorage:Lc8/eqf;

    invoke-interface {v1, p1, p3, p2}, Lc8/eqf;->commit(Ljava/lang/String;Lc8/Hpf;Ljava/lang/Object;)Lc8/Hpf;

    move-result-object v0

    .line 181
    .local v0, "resource":Lc8/Hpf;
    iget-object v1, p0, Lc8/Fpf;->mCacheStats:Lc8/Cpf;

    invoke-interface {v0}, Lc8/Hpf;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    invoke-virtual {v1, v4, v5, v6, v7}, Lc8/Cpf;->increment(JJ)V

    .line 182
    monitor-exit v2

    return-object v0

    .line 183
    .end local v0    # "resource":Lc8/Hpf;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createTemporaryResource(Ljava/lang/String;Lc8/Bpf;)Lc8/Hpf;
    .locals 1
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "key"    # Lc8/Bpf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Lc8/Fpf;->maybeEvictFilesInCacheDir()V

    .line 153
    iget-object v0, p0, Lc8/Fpf;->mStorage:Lc8/eqf;

    invoke-interface {v0, p1, p2}, Lc8/eqf;->createTemporary(Ljava/lang/String;Ljava/lang/Object;)Lc8/Hpf;

    move-result-object v0

    return-object v0
.end method

.method private deleteTemporaryResource(Lc8/Hpf;)V
    .locals 7
    .param p1, "temporaryResource"    # Lc8/Hpf;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 157
    instance-of v2, p1, Lc8/Ppf;

    if-nez v2, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 160
    check-cast v0, Lc8/Ppf;

    .line 161
    .local v0, "fileResource":Lc8/Ppf;
    invoke-virtual {v0}, Lc8/Ppf;->getFile()Ljava/io/File;

    move-result-object v1

    .line 163
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const-string/jumbo v2, "NonCatalogDiskCache"

    const-string/jumbo v3, "Temp file still on disk: %s "

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    const-string/jumbo v2, "NonCatalogDiskCache"

    const-string/jumbo v3, "Failed to delete temp file: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private evictAboveSize(JLcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;)V
    .locals 19
    .param p1, "desiredSize"    # J
    .param p3, "reason"    # Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Fpf;->mStorage:Lc8/eqf;

    invoke-interface {v12}, Lc8/eqf;->getEntries()Ljava/util/Collection;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lc8/Fpf;->getSortedEntries(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 314
    .local v6, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/taobao/fresco/disk/storage/DiskStorage$Entry;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Fpf;->mCacheStats:Lc8/Cpf;

    invoke-virtual {v12}, Lc8/Cpf;->getSize()J

    move-result-wide v12

    sub-long v2, v12, p1

    .line 316
    .local v2, "deleteSize":J
    const/4 v9, 0x0

    .line 317
    .local v9, "itemCount":I
    const-wide/16 v10, 0x0

    .line 318
    .local v10, "sumItemSizes":J
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/dqf;

    .line 319
    .local v7, "entry":Lc8/dqf;
    cmp-long v13, v10, v2

    if-gtz v13, :cond_1

    .line 322
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Fpf;->mStorage:Lc8/eqf;

    invoke-interface {v13, v7}, Lc8/eqf;->remove(Lc8/dqf;)J

    move-result-wide v4

    .line 323
    .local v4, "deletedSize":J
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-lez v13, :cond_0

    .line 324
    add-int/lit8 v9, v9, 0x1

    .line 325
    add-long/2addr v10, v4

    goto :goto_0

    .line 309
    .end local v2    # "deleteSize":J
    .end local v4    # "deletedSize":J
    .end local v6    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/taobao/fresco/disk/storage/DiskStorage$Entry;>;"
    .end local v7    # "entry":Lc8/dqf;
    .end local v9    # "itemCount":I
    .end local v10    # "sumItemSizes":J
    :catch_0
    move-exception v8

    .line 310
    .local v8, "ioe":Ljava/io/IOException;
    const-string/jumbo v12, "NonCatalogDiskCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "CacheError: EVICTION, evictAboveSize: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    throw v8

    .line 328
    .end local v8    # "ioe":Ljava/io/IOException;
    .restart local v2    # "deleteSize":J
    .restart local v6    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/taobao/fresco/disk/storage/DiskStorage$Entry;>;"
    .restart local v9    # "itemCount":I
    .restart local v10    # "sumItemSizes":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Fpf;->mCacheStats:Lc8/Cpf;

    neg-long v14, v10

    neg-int v13, v9

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0, v1}, Lc8/Cpf;->increment(JJ)V

    .line 329
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Fpf;->mStorage:Lc8/eqf;

    invoke-interface {v12}, Lc8/eqf;->purgeUnexpectedResources()V

    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v9, v10, v11}, Lc8/Fpf;->reportEviction(Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;IJ)V

    .line 331
    return-void
.end method

.method private getSortedEntries(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lc8/dqf;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lc8/dqf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    .local p1, "allEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/taobao/fresco/disk/storage/DiskStorage$Entry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 344
    .local v0, "entriesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/fresco/disk/storage/DiskStorage$Entry;>;"
    iget-object v1, p0, Lc8/Fpf;->mClock:Lc8/Lpf;

    .line 345
    invoke-interface {v1}, Lc8/Lpf;->now()J

    move-result-wide v4

    sget-wide v6, Lc8/Fpf;->FUTURE_TIMESTAMP_THRESHOLD_MS:J

    add-long v2, v4, v6

    .line 346
    .local v2, "threshold":J
    new-instance v1, Lc8/Epf;

    invoke-direct {v1, v2, v3}, Lc8/Epf;-><init>(J)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 347
    return-object v0
.end method

.method public static makeSHA1HashBase64([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 75
    :try_start_0
    const-string/jumbo v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 76
    .local v1, "md":Ljava/security/MessageDigest;
    const/4 v3, 0x0

    array-length v4, p0

    invoke-virtual {v1, p0, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 77
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 78
    .local v2, "sha1hash":[B
    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 79
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "sha1hash":[B
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private maybeEvictFilesInCacheDir()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v4, p0, Lc8/Fpf;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 279
    :try_start_0
    invoke-direct {p0}, Lc8/Fpf;->maybeUpdateFileCacheSize()Z

    move-result v2

    .line 282
    .local v2, "calculatedRightNow":Z
    invoke-direct {p0}, Lc8/Fpf;->updateFileCacheSizeLimit()V

    .line 284
    iget-object v3, p0, Lc8/Fpf;->mCacheStats:Lc8/Cpf;

    invoke-virtual {v3}, Lc8/Cpf;->getSize()J

    move-result-wide v0

    .line 288
    .local v0, "cacheSize":J
    iget-wide v6, p0, Lc8/Fpf;->mCacheSizeLimit:J

    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    if-nez v2, :cond_0

    .line 289
    iget-object v3, p0, Lc8/Fpf;->mCacheStats:Lc8/Cpf;

    invoke-virtual {v3}, Lc8/Cpf;->reset()V

    .line 290
    invoke-direct {p0}, Lc8/Fpf;->maybeUpdateFileCacheSize()Z

    .line 294
    :cond_0
    iget-wide v6, p0, Lc8/Fpf;->mCacheSizeLimit:J

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    .line 296
    iget-wide v6, p0, Lc8/Fpf;->mCacheSizeLimit:J

    const-wide/16 v8, 0x9

    mul-long/2addr v6, v8

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    sget-object v3, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;->CACHE_FULL:Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    invoke-direct {p0, v6, v7, v3}, Lc8/Fpf;->evictAboveSize(JLcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;)V

    .line 300
    :cond_1
    monitor-exit v4

    return-void

    .end local v0    # "cacheSize":J
    .end local v2    # "calculatedRightNow":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private maybeUpdateFileCacheSize()Z
    .locals 8

    .prologue
    .line 450
    const/4 v2, 0x0

    .line 451
    .local v2, "result":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 452
    .local v0, "now":J
    iget-object v3, p0, Lc8/Fpf;->mCacheStats:Lc8/Cpf;

    invoke-virtual {v3}, Lc8/Cpf;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lc8/Fpf;->mCacheSizeLastUpdateTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lc8/Fpf;->mCacheSizeLastUpdateTime:J

    sub-long v4, v0, v4

    sget-wide v6, Lc8/Fpf;->FILECACHE_SIZE_UPDATE_PERIOD_MS:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 455
    :cond_0
    invoke-direct {p0}, Lc8/Fpf;->calcFileCacheSize()V

    .line 456
    iput-wide v0, p0, Lc8/Fpf;->mCacheSizeLastUpdateTime:J

    .line 457
    const/4 v2, 0x1

    .line 459
    :cond_1
    return v2
.end method

.method private reportEviction(Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;IJ)V
    .locals 1
    .param p1, "reason"    # Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;
    .param p2, "itemCount"    # I
    .param p3, "itemSize"    # J

    .prologue
    .line 268
    iget-object v0, p0, Lc8/Fpf;->mCacheEventListener:Lc8/Apf;

    invoke-interface {v0, p1, p2, p3, p4}, Lc8/Apf;->onEviction(Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;IJ)V

    .line 269
    return-void
.end method

.method private trimBy(D)V
    .locals 11
    .param p1, "trimRatio"    # D

    .prologue
    .line 410
    iget-object v6, p0, Lc8/Fpf;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 413
    :try_start_0
    iget-object v3, p0, Lc8/Fpf;->mCacheStats:Lc8/Cpf;

    invoke-virtual {v3}, Lc8/Cpf;->reset()V

    .line 414
    invoke-direct {p0}, Lc8/Fpf;->maybeUpdateFileCacheSize()Z

    .line 415
    iget-object v3, p0, Lc8/Fpf;->mCacheStats:Lc8/Cpf;

    invoke-virtual {v3}, Lc8/Cpf;->getSize()J

    move-result-wide v0

    .line 416
    .local v0, "cacheSize":J
    long-to-double v8, v0

    mul-double/2addr v8, p1

    double-to-long v8, v8

    sub-long v4, v0, v8

    .line 417
    .local v4, "newMaxBytesInFiles":J
    sget-object v3, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;->CACHE_MANAGER_TRIMMED:Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    invoke-direct {p0, v4, v5, v3}, Lc8/Fpf;->evictAboveSize(JLcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    .end local v0    # "cacheSize":J
    .end local v4    # "newMaxBytesInFiles":J
    :goto_0
    :try_start_1
    monitor-exit v6

    return-void

    .line 420
    :catch_0
    move-exception v2

    .line 421
    .local v2, "ioe":Ljava/io/IOException;
    const-string/jumbo v3, "NonCatalogDiskCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CacheError: EVICTION, trimBy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v7, v8}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 423
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private updateFileCacheSizeLimit()V
    .locals 8

    .prologue
    .line 356
    iget-object v1, p0, Lc8/Fpf;->mStatFsHelper:Lc8/Upf;

    sget-object v2, Lcom/taobao/fresco/disk/fs/StatFsHelper$StorageType;->INTERNAL:Lcom/taobao/fresco/disk/fs/StatFsHelper$StorageType;

    iget-wide v4, p0, Lc8/Fpf;->mDefaultCacheSizeLimit:J

    iget-object v3, p0, Lc8/Fpf;->mCacheStats:Lc8/Cpf;

    .line 359
    invoke-virtual {v3}, Lc8/Cpf;->getSize()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 357
    invoke-virtual {v1, v2, v4, v5}, Lc8/Upf;->testLowDiskSpace(Lcom/taobao/fresco/disk/fs/StatFsHelper$StorageType;J)Z

    move-result v0

    .line 360
    .local v0, "isAvailableSpaceLowerThanHighLimit":Z
    if-eqz v0, :cond_0

    .line 361
    iget-wide v2, p0, Lc8/Fpf;->mLowDiskSpaceCacheSizeLimit:J

    iput-wide v2, p0, Lc8/Fpf;->mCacheSizeLimit:J

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-wide v2, p0, Lc8/Fpf;->mDefaultCacheSizeLimit:J

    iput-wide v2, p0, Lc8/Fpf;->mCacheSizeLimit:J

    goto :goto_0
.end method


# virtual methods
.method public clearAll()V
    .locals 5

    .prologue
    .line 372
    iget-object v2, p0, Lc8/Fpf;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 374
    :try_start_0
    iget-object v1, p0, Lc8/Fpf;->mStorage:Lc8/eqf;

    invoke-interface {v1}, Lc8/eqf;->clearAll()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :goto_0
    :try_start_1
    iget-object v1, p0, Lc8/Fpf;->mCacheStats:Lc8/Cpf;

    invoke-virtual {v1}, Lc8/Cpf;->reset()V

    .line 380
    monitor-exit v2

    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v1, "NonCatalogDiskCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CacheError: EVICTION, clearAll: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 380
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clearOldEntries(J)J
    .locals 27
    .param p1, "cacheExpirationMs"    # J

    .prologue
    .line 228
    const-wide/16 v18, 0x0

    .line 229
    .local v18, "oldestRemainingEntryAgeMs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Fpf;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 231
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Fpf;->mClock:Lc8/Lpf;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lc8/Lpf;->now()J

    move-result-wide v16

    .line 232
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Fpf;->mStorage:Lc8/eqf;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lc8/eqf;->getEntries()Ljava/util/Collection;

    move-result-object v6

    .line 233
    .local v6, "allEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/taobao/fresco/disk/storage/DiskStorage$Entry;>;"
    const/4 v13, 0x0

    .line 234
    .local v13, "itemsRemovedCount":I
    const-wide/16 v14, 0x0

    .line 235
    .local v14, "itemsRemovedSize":J
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/dqf;

    .line 237
    .local v7, "entry":Lc8/dqf;
    const-wide/16 v22, 0x1

    invoke-interface {v7}, Lc8/dqf;->getTimestamp()J

    move-result-wide v24

    sub-long v24, v16, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 238
    .local v8, "entryAgeMs":J
    cmp-long v22, v8, p1

    if-ltz v22, :cond_1

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Fpf;->mStorage:Lc8/eqf;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Lc8/eqf;->remove(Lc8/dqf;)J

    move-result-wide v10

    .line 240
    .local v10, "entryRemovedSize":J
    const-wide/16 v22, 0x0

    cmp-long v22, v10, v22

    if-lez v22, :cond_0

    .line 241
    add-int/lit8 v13, v13, 0x1

    .line 242
    add-long/2addr v14, v10

    goto :goto_0

    .line 245
    .end local v10    # "entryRemovedSize":J
    :cond_1
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 247
    goto :goto_0

    .line 248
    .end local v7    # "entry":Lc8/dqf;
    .end local v8    # "entryAgeMs":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Fpf;->mStorage:Lc8/eqf;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lc8/eqf;->purgeUnexpectedResources()V

    .line 249
    if-lez v13, :cond_3

    .line 250
    invoke-direct/range {p0 .. p0}, Lc8/Fpf;->maybeUpdateFileCacheSize()Z

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Fpf;->mCacheStats:Lc8/Cpf;

    move-object/from16 v20, v0

    neg-long v0, v14

    move-wide/from16 v22, v0

    neg-int v0, v13

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/Cpf;->increment(JJ)V

    .line 252
    sget-object v20, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;->CONTENT_STALE:Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v13, v14, v15}, Lc8/Fpf;->reportEviction(Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .end local v6    # "allEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/taobao/fresco/disk/storage/DiskStorage$Entry;>;"
    .end local v13    # "itemsRemovedCount":I
    .end local v14    # "itemsRemovedSize":J
    .end local v16    # "now":J
    :cond_3
    :goto_1
    :try_start_1
    monitor-exit v21

    .line 261
    return-wide v18

    .line 257
    :catch_0
    move-exception v12

    .line 258
    .local v12, "ioe":Ljava/io/IOException;
    const-string/jumbo v20, "NonCatalogDiskCache"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "CacheError: EVICTION, clearOldEntries: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 260
    .end local v12    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20
.end method

.method public getDumpInfo()Lc8/bqf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lc8/Fpf;->mStorage:Lc8/eqf;

    invoke-interface {v0}, Lc8/eqf;->getDumpInfo()Lc8/bqf;

    move-result-object v0

    return-object v0
.end method

.method public getResource(Lc8/Bpf;)Lc8/Hpf;
    .locals 5
    .param p1, "key"    # Lc8/Bpf;

    .prologue
    .line 107
    :try_start_0
    iget-object v3, p0, Lc8/Fpf;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :try_start_1
    iget-object v2, p0, Lc8/Fpf;->mStorage:Lc8/eqf;

    invoke-virtual {p0, p1}, Lc8/Fpf;->getResourceId(Lc8/Bpf;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, p1}, Lc8/eqf;->getResource(Ljava/lang/String;Ljava/lang/Object;)Lc8/Hpf;

    move-result-object v1

    .line 109
    .local v1, "resource":Lc8/Hpf;
    if-nez v1, :cond_0

    .line 110
    iget-object v2, p0, Lc8/Fpf;->mCacheEventListener:Lc8/Apf;

    invoke-interface {v2}, Lc8/Apf;->onMiss()V

    .line 114
    :goto_0
    monitor-exit v3

    .line 119
    .end local v1    # "resource":Lc8/Hpf;
    :goto_1
    return-object v1

    .line 112
    .restart local v1    # "resource":Lc8/Hpf;
    :cond_0
    iget-object v2, p0, Lc8/Fpf;->mCacheEventListener:Lc8/Apf;

    invoke-interface {v2}, Lc8/Apf;->onHit()V

    goto :goto_0

    .line 115
    .end local v1    # "resource":Lc8/Hpf;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v2, "NonCatalogDiskCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CacheError: GENERIC_IO, getResource:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v2, p0, Lc8/Fpf;->mCacheEventListener:Lc8/Apf;

    invoke-interface {v2}, Lc8/Apf;->onReadException()V

    .line 119
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getResourceId(Lc8/Bpf;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Lc8/Bpf;

    .prologue
    .line 498
    :try_start_0
    invoke-interface {p1}, Lc8/Bpf;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lc8/Fpf;->makeSHA1HashBase64([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 499
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lc8/Fpf;->mCacheStats:Lc8/Cpf;

    invoke-virtual {v0}, Lc8/Cpf;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasKey(Lc8/Bpf;)Z
    .locals 2
    .param p1, "key"    # Lc8/Bpf;

    .prologue
    .line 385
    :try_start_0
    iget-object v0, p0, Lc8/Fpf;->mStorage:Lc8/eqf;

    invoke-virtual {p0, p1}, Lc8/Fpf;->getResourceId(Lc8/Bpf;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/eqf;->contains(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 387
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Lc8/Bpf;Lc8/Opf;)Lc8/Hpf;
    .locals 7
    .param p1, "key"    # Lc8/Bpf;
    .param p2, "callback"    # Lc8/Opf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v3, p0, Lc8/Fpf;->mCacheEventListener:Lc8/Apf;

    invoke-interface {v3}, Lc8/Apf;->onWriteAttempt()V

    .line 191
    invoke-virtual {p0, p1}, Lc8/Fpf;->getResourceId(Lc8/Bpf;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "resourceId":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v1, p1}, Lc8/Fpf;->createTemporaryResource(Ljava/lang/String;Lc8/Bpf;)Lc8/Hpf;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 196
    .local v2, "temporary":Lc8/Hpf;
    :try_start_1
    iget-object v3, p0, Lc8/Fpf;->mStorage:Lc8/eqf;

    invoke-interface {v3, v1, v2, p2, p1}, Lc8/eqf;->updateResource(Ljava/lang/String;Lc8/Hpf;Lc8/Opf;Ljava/lang/Object;)V

    .line 198
    invoke-direct {p0, v1, p1, v2}, Lc8/Fpf;->commitResource(Ljava/lang/String;Lc8/Bpf;Lc8/Hpf;)Lc8/Hpf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 200
    :try_start_2
    invoke-direct {p0, v2}, Lc8/Fpf;->deleteTemporaryResource(Lc8/Hpf;)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-direct {p0, v2}, Lc8/Fpf;->deleteTemporaryResource(Lc8/Hpf;)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 202
    .end local v2    # "temporary":Lc8/Hpf;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v3, p0, Lc8/Fpf;->mCacheEventListener:Lc8/Apf;

    invoke-interface {v3}, Lc8/Apf;->onWriteException()V

    .line 204
    const-string/jumbo v3, "NonCatalogDiskCache"

    const-string/jumbo v4, "Failed inserting a file into the cache: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    throw v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lc8/Fpf;->mStorage:Lc8/eqf;

    invoke-interface {v0}, Lc8/eqf;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public probe(Lc8/Bpf;)Z
    .locals 3
    .param p1, "key"    # Lc8/Bpf;

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lc8/Fpf;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :try_start_1
    iget-object v0, p0, Lc8/Fpf;->mStorage:Lc8/eqf;

    invoke-virtual {p0, p1}, Lc8/Fpf;->getResourceId(Lc8/Bpf;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lc8/eqf;->touch(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    .line 141
    :goto_0
    return v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/Fpf;->mCacheEventListener:Lc8/Apf;

    invoke-interface {v0}, Lc8/Apf;->onReadException()V

    .line 141
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Lc8/Bpf;)V
    .locals 5
    .param p1, "key"    # Lc8/Bpf;

    .prologue
    .line 211
    iget-object v2, p0, Lc8/Fpf;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 213
    :try_start_0
    iget-object v1, p0, Lc8/Fpf;->mStorage:Lc8/eqf;

    invoke-virtual {p0, p1}, Lc8/Fpf;->getResourceId(Lc8/Bpf;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lc8/eqf;->remove(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :goto_0
    :try_start_1
    monitor-exit v2

    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "NonCatalogDiskCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CacheError: DELETE_FILE, delete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method trim2LimitNow()V
    .locals 6
    .annotation build Lc8/PNf;
    .end annotation

    .prologue
    .line 431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 432
    .local v2, "now":J
    invoke-direct {p0}, Lc8/Fpf;->calcFileCacheSize()V

    .line 433
    iput-wide v2, p0, Lc8/Fpf;->mCacheSizeLastUpdateTime:J

    .line 435
    :try_start_0
    iget-wide v4, p0, Lc8/Fpf;->mCacheSizeLimit:J

    sget-object v1, Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;->CACHE_MANAGER_TRIMMED:Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;

    invoke-direct {p0, v4, v5, v1}, Lc8/Fpf;->evictAboveSize(JLcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v1, "NonCatalogDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CacheError: EVICTION, trimBy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public trimToMinimum()V
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    .line 392
    iget-object v5, p0, Lc8/Fpf;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 393
    :try_start_0
    invoke-direct {p0}, Lc8/Fpf;->maybeUpdateFileCacheSize()Z

    .line 394
    iget-object v4, p0, Lc8/Fpf;->mCacheStats:Lc8/Cpf;

    invoke-virtual {v4}, Lc8/Cpf;->getSize()J

    move-result-wide v0

    .line 395
    .local v0, "cacheSize":J
    iget-wide v6, p0, Lc8/Fpf;->mCacheSizeLimitMinimum:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_0

    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    iget-wide v6, p0, Lc8/Fpf;->mCacheSizeLimitMinimum:J

    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 396
    :cond_0
    monitor-exit v5

    .line 402
    :goto_0
    return-void

    .line 398
    :cond_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget-wide v8, p0, Lc8/Fpf;->mCacheSizeLimitMinimum:J

    long-to-double v8, v8

    long-to-double v10, v0

    div-double/2addr v8, v10

    sub-double v2, v6, v8

    .line 399
    .local v2, "trimRatio":D
    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v4, v2, v6

    if-lez v4, :cond_2

    .line 400
    invoke-direct {p0, v2, v3}, Lc8/Fpf;->trimBy(D)V

    .line 402
    :cond_2
    monitor-exit v5

    goto :goto_0

    .end local v0    # "cacheSize":J
    .end local v2    # "trimRatio":D
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public trimToNothing()V
    .locals 0

    .prologue
    .line 406
    invoke-virtual {p0}, Lc8/Fpf;->clearAll()V

    .line 407
    return-void
.end method
