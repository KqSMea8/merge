.class public Lc8/TA;
.super Ljava/lang/Object;
.source "AtlasFileLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/RA;,
        Lc8/SA;
    }
.end annotation


# instance fields
.field private mRefCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/RA;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/TA;->mRefCountMap:Ljava/util/Map;

    return-void
.end method

.method private RefCntDec(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 284
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 286
    .local v0, "val":Ljava/lang/Integer;
    iget-object v1, p0, Lc8/TA;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lc8/TA;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/RA;

    iget v2, v1, Lc8/RA;->mRefCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lc8/RA;->mRefCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_0

    .line 292
    iget-object v1, p0, Lc8/TA;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private RefCntInc(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)I
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fileLock"    # Ljava/nio/channels/FileLock;
    .param p3, "fOs"    # Ljava/io/RandomAccessFile;
    .param p4, "fChannel"    # Ljava/nio/channels/FileChannel;

    .prologue
    .line 266
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    iget-object v1, p0, Lc8/TA;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lc8/TA;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/RA;

    iget v2, v1, Lc8/RA;->mRefCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lc8/RA;->mRefCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 276
    .local v6, "val":Ljava/lang/Integer;
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 271
    .end local v6    # "val":Ljava/lang/Integer;
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 272
    .restart local v6    # "val":Ljava/lang/Integer;
    new-instance v0, Lc8/RA;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/RA;-><init>(Lc8/TA;Ljava/nio/channels/FileLock;ILjava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)V

    .line 273
    .local v0, "newFileLockCount":Lc8/RA;
    iget-object v1, p0, Lc8/TA;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getInstance()Lc8/TA;
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lc8/SA;->access$000()Lc8/TA;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public LockExclusive(Ljava/io/File;)Z
    .locals 9
    .param p1, "orgFile"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 306
    if-nez p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v5

    .line 311
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 312
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "/lock"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v4, "file":Ljava/io/File;
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eq v7, v6, :cond_2

    .line 317
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 320
    :cond_2
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "rw"

    invoke-direct {v3, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .local v3, "fOs":Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 323
    .local v1, "fChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    .line 324
    .local v2, "fFileLock":Ljava/nio/channels/FileLock;
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 325
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v2, v3, v1}, Lc8/TA;->RefCntInc(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)I

    move v5, v6

    .line 326
    goto :goto_0

    .line 314
    .end local v1    # "fChannel":Ljava/nio/channels/FileChannel;
    .end local v2    # "fFileLock":Ljava/nio/channels/FileLock;
    .end local v3    # "fOs":Ljava/io/RandomAccessFile;
    .end local v4    # "file":Ljava/io/File;
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "/lock"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "file":Ljava/io/File;
    goto :goto_1

    .line 328
    .end local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unLock(Ljava/io/File;)V
    .locals 8
    .param p1, "orgFile"    # Ljava/io/File;

    .prologue
    .line 341
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 342
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "/lock"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    .local v3, "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 379
    :cond_0
    :goto_1
    return-void

    .line 344
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "/lock"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v3    # "file":Ljava/io/File;
    goto :goto_0

    .line 351
    :cond_2
    if-eqz v3, :cond_3

    iget-object v6, p0, Lc8/TA;->mRefCountMap:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 355
    :cond_3
    iget-object v6, p0, Lc8/TA;->mRefCountMap:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/RA;

    .line 356
    .local v5, "flc":Lc8/RA;
    if-eqz v5, :cond_0

    .line 360
    iget-object v4, v5, Lc8/RA;->mFileLock:Ljava/nio/channels/FileLock;

    .line 361
    .local v4, "fl":Ljava/nio/channels/FileLock;
    iget-object v2, v5, Lc8/RA;->fOs:Ljava/io/RandomAccessFile;

    .line 362
    .local v2, "fOs":Ljava/io/RandomAccessFile;
    iget-object v1, v5, Lc8/RA;->fChannel:Ljava/nio/channels/FileChannel;

    .line 365
    .local v1, "fChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lc8/TA;->RefCntDec(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_0

    .line 366
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 367
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V

    .line 369
    :cond_4
    if-eqz v2, :cond_5

    .line 370
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 372
    :cond_5
    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
