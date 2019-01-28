.class public Lc8/aqf;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lc8/eqf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Xpf;,
        Lc8/Zpf;,
        Lc8/Wpf;,
        Lc8/Ypf;,
        Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$IncompleteFileException;,
        Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;
    }
.end annotation


# static fields
.field private static final CONTENT_FILE_EXTENSION:Ljava/lang/String; = ".cnt"

.field private static final DEFAULT_DISK_STORAGE_VERSION_PREFIX:Ljava/lang/String; = "v1"

.field private static final SHARDING_BUCKET_COUNT:I = 0x64

.field private static final TEMP_FILE_EXTENSION:Ljava/lang/String; = ".tmp"

.field static final TEMP_FILE_LIFETIME_MS:J

.field private static sInstance:Lc8/aqf;


# instance fields
.field private isEnabled:Z

.field private mClock:Lc8/Lpf;

.field private mRootDirectory:Ljava/io/File;

.field private mVersionDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lc8/aqf;->TEMP_FILE_LIFETIME_MS:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 6
    .param p1, "rootDirectory"    # Ljava/io/File;
    .param p2, "version"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-nez p1, :cond_0

    .line 90
    const-string/jumbo v0, "NonCatalogDiskCache"

    const-string/jumbo v1, "DefaultDiskStorage init with root dir: null, version: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string/jumbo v0, "NonCatalogDiskCache"

    const-string/jumbo v1, "DefaultDiskStorage init with root dir: %s, version: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lc8/RNf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iput-object p1, p0, Lc8/aqf;->mRootDirectory:Ljava/io/File;

    .line 100
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/aqf;->mRootDirectory:Ljava/io/File;

    invoke-static {p2}, Lc8/aqf;->getVersionSubdirectoryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/aqf;->mVersionDirectory:Ljava/io/File;

    .line 101
    invoke-direct {p0}, Lc8/aqf;->recreateDirectoryIfVersionChanges()V

    .line 102
    invoke-static {}, Lc8/Npf;->get()Lc8/Npf;

    move-result-object v0

    iput-object v0, p0, Lc8/aqf;->mClock:Lc8/Lpf;

    .line 103
    iget-object v0, p0, Lc8/aqf;->mVersionDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lc8/aqf;->isEnabled:Z

    goto :goto_0
.end method

.method static synthetic access$300(Lc8/aqf;Ljava/io/File;)Lc8/Ypf;
    .locals 1
    .param p0, "x0"    # Lc8/aqf;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lc8/aqf;->getShardFileInfo(Ljava/io/File;)Lc8/Ypf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lc8/aqf;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lc8/aqf;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/aqf;->mVersionDirectory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$600(Lc8/aqf;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lc8/aqf;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/aqf;->mRootDirectory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$700(Lc8/aqf;)Lc8/Lpf;
    .locals 1
    .param p0, "x0"    # Lc8/aqf;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/aqf;->mClock:Lc8/Lpf;

    return-object v0
.end method

.method private doRemove(Ljava/io/File;)J
    .locals 3
    .param p1, "contentFile"    # Ljava/io/File;

    .prologue
    .line 325
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 326
    const-wide/16 v0, 0x0

    .line 334
    :cond_0
    :goto_0
    return-wide v0

    .line 329
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 330
    .local v0, "fileSize":J
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private dumpCacheEntry(Lc8/dqf;)Lc8/cqf;
    .locals 13
    .param p1, "entry"    # Lc8/dqf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 359
    move-object v1, p1

    check-cast v1, Lc8/Xpf;

    .line 360
    .local v1, "entryImpl":Lc8/Xpf;
    const-string/jumbo v2, ""

    .line 361
    .local v2, "firstBits":Ljava/lang/String;
    invoke-virtual {v1}, Lc8/Xpf;->getResource()Lc8/Ppf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Ppf;->read()[B

    move-result-object v0

    .line 362
    .local v0, "bytes":[B
    invoke-direct {p0, v0}, Lc8/aqf;->typeOfBytes([B)Ljava/lang/String;

    move-result-object v4

    .line 363
    .local v4, "type":Ljava/lang/String;
    const-string/jumbo v5, "undefined"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    array-length v5, v0

    if-lt v5, v7, :cond_0

    .line 364
    const/4 v5, 0x0

    check-cast v5, Ljava/util/Locale;

    const-string/jumbo v6, "0x%02X 0x%02X 0x%02X 0x%02X"

    new-array v7, v7, [Ljava/lang/Object;

    aget-byte v8, v0, v9

    .line 365
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    aget-byte v8, v0, v10

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v10

    aget-byte v8, v0, v11

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v11

    aget-byte v8, v0, v12

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v12

    .line 364
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 367
    :cond_0
    invoke-virtual {v1}, Lc8/Xpf;->getResource()Lc8/Ppf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Ppf;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "path":Ljava/lang/String;
    new-instance v5, Lc8/cqf;

    invoke-virtual {v1}, Lc8/Xpf;->getSize()J

    move-result-wide v6

    long-to-float v6, v6

    invoke-direct {v5, v3, v4, v6, v2}, Lc8/cqf;-><init>(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    return-object v5
.end method

.method private getShardFileInfo(Ljava/io/File;)Lc8/Ypf;
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 406
    invoke-static {p1}, Lc8/Ypf;->fromFile(Ljava/io/File;)Lc8/Ypf;

    move-result-object v1

    .line 407
    .local v1, "info":Lc8/Ypf;
    if-nez v1, :cond_1

    move-object v1, v3

    .line 412
    .end local v1    # "info":Lc8/Ypf;
    :cond_0
    :goto_0
    return-object v1

    .line 410
    .restart local v1    # "info":Lc8/Ypf;
    :cond_1
    iget-object v4, v1, Lc8/Ypf;->resourceId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lc8/aqf;->getSubdirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 411
    .local v0, "expectedDirectory":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 412
    .local v2, "isCorrect":Z
    if-nez v2, :cond_0

    move-object v1, v3

    goto :goto_0
.end method

.method private getSubdirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "subdirectory":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lc8/aqf;->mVersionDirectory:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static getVersionSubdirectoryName(I)Ljava/lang/String;
    .locals 5
    .param p0, "version"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string/jumbo v1, "%s.ols%d.%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "v1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x64

    .line 111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 112
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 107
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized instance(Ljava/io/File;I)Lc8/aqf;
    .locals 2
    .param p0, "rootDir"    # Ljava/io/File;
    .param p1, "version"    # I

    .prologue
    .line 54
    const-class v1, Lc8/aqf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/aqf;->sInstance:Lc8/aqf;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lc8/aqf;

    invoke-direct {v0, p0, p1}, Lc8/aqf;-><init>(Ljava/io/File;I)V

    sput-object v0, Lc8/aqf;->sInstance:Lc8/aqf;

    .line 57
    :cond_0
    sget-object v0, Lc8/aqf;->sInstance:Lc8/aqf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private mkdirs(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    :try_start_0
    invoke-static {p1}, Lc8/Spf;->mkdirs(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/taobao/fresco/disk/fs/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "cde":Lcom/taobao/fresco/disk/fs/FileUtils$CreateDirectoryException;
    const-string/jumbo v1, "NonCatalogDiskCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CacheError: WRITE_CREATE_DIR, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/taobao/fresco/disk/fs/FileUtils$CreateDirectoryException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    throw v0
.end method

.method private query(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "touch"    # Z

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lc8/aqf;->getContentFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 304
    .local v0, "contentFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 305
    .local v1, "exists":Z
    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    .line 306
    iget-object v2, p0, Lc8/aqf;->mClock:Lc8/Lpf;

    invoke-interface {v2}, Lc8/Lpf;->now()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 308
    :cond_0
    return v1
.end method

.method private recreateDirectoryIfVersionChanges()V
    .locals 5

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "recreateBase":Z
    iget-object v2, p0, Lc8/aqf;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 130
    const/4 v1, 0x1

    .line 136
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 138
    :try_start_0
    iget-object v2, p0, Lc8/aqf;->mVersionDirectory:Ljava/io/File;

    invoke-static {v2}, Lc8/Spf;->mkdirs(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/taobao/fresco/disk/fs/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_1
    :goto_1
    return-void

    .line 131
    :cond_2
    iget-object v2, p0, Lc8/aqf;->mVersionDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    const/4 v1, 0x1

    .line 133
    iget-object v2, p0, Lc8/aqf;->mRootDirectory:Ljava/io/File;

    invoke-static {v2}, Lc8/Qpf;->deleteRecursively(Ljava/io/File;)Z

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lcom/taobao/fresco/disk/fs/FileUtils$CreateDirectoryException;
    const-string/jumbo v2, "NonCatalogDiskCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CacheError: WRITE_CREATE_DIR, version directory could not be created "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/aqf;->mVersionDirectory:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/taobao/fresco/disk/fs/FileUtils$CreateDirectoryException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private typeOfBytes([B)Ljava/lang/String;
    .locals 5
    .param p1, "bytes"    # [B

    .prologue
    const/16 v4, 0x49

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 372
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 373
    aget-byte v0, p1, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    aget-byte v0, p1, v3

    const/16 v1, -0x28

    if-ne v0, v1, :cond_0

    .line 374
    const-string/jumbo v0, "jpg"

    .line 383
    :goto_0
    return-object v0

    .line 375
    :cond_0
    aget-byte v0, p1, v2

    const/16 v1, -0x77

    if-ne v0, v1, :cond_1

    aget-byte v0, p1, v3

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    .line 376
    const-string/jumbo v0, "png"

    goto :goto_0

    .line 377
    :cond_1
    aget-byte v0, p1, v2

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    aget-byte v0, p1, v3

    if-ne v0, v4, :cond_2

    .line 378
    const-string/jumbo v0, "webp"

    goto :goto_0

    .line 379
    :cond_2
    aget-byte v0, p1, v2

    const/16 v1, 0x47

    if-ne v0, v1, :cond_3

    aget-byte v0, p1, v3

    if-ne v0, v4, :cond_3

    .line 380
    const-string/jumbo v0, "gif"

    goto :goto_0

    .line 383
    :cond_3
    const-string/jumbo v0, "undefined"

    goto :goto_0
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lc8/aqf;->mRootDirectory:Ljava/io/File;

    invoke-static {v0}, Lc8/Qpf;->deleteContents(Ljava/io/File;)Z

    .line 339
    return-void
.end method

.method public bridge synthetic commit(Ljava/lang/String;Lc8/Hpf;Ljava/lang/Object;)Lc8/Hpf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lc8/aqf;->commit(Ljava/lang/String;Lc8/Hpf;Ljava/lang/Object;)Lc8/Ppf;

    move-result-object v0

    return-object v0
.end method

.method public commit(Ljava/lang/String;Lc8/Hpf;Ljava/lang/Object;)Lc8/Ppf;
    .locals 9
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "temporary"    # Lc8/Hpf;
    .param p3, "debugInfo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    move-object v5, p2

    check-cast v5, Lc8/Ppf;

    .line 256
    .local v5, "tempFileResource":Lc8/Ppf;
    invoke-virtual {v5}, Lc8/Ppf;->getFile()Ljava/io/File;

    move-result-object v4

    .line 257
    .local v4, "tempFile":Ljava/io/File;
    invoke-virtual {p0, p1}, Lc8/aqf;->getContentFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 260
    .local v3, "targetFile":Ljava/io/File;
    :try_start_0
    invoke-static {v4, v3}, Lc8/Spf;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Lcom/taobao/fresco/disk/fs/FileUtils$RenameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 277
    iget-object v6, p0, Lc8/aqf;->mClock:Lc8/Lpf;

    invoke-interface {v6}, Lc8/Lpf;->now()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    .line 279
    :cond_0
    invoke-static {v3}, Lc8/Ppf;->createOrNull(Ljava/io/File;)Lc8/Ppf;

    move-result-object v6

    return-object v6

    .line 261
    :catch_0
    move-exception v2

    .line 263
    .local v2, "re":Lcom/taobao/fresco/disk/fs/FileUtils$RenameException;
    invoke-virtual {v2}, Lcom/taobao/fresco/disk/fs/FileUtils$RenameException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 264
    .local v1, "cause":Ljava/lang/Throwable;
    if-nez v1, :cond_1

    .line 265
    const-string/jumbo v0, "WRITE_RENAME_FILE_OTHER"

    .line 273
    .local v0, "category":Ljava/lang/String;
    :goto_0
    const-string/jumbo v6, "NonCatalogDiskCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CacheError: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", commit:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/taobao/fresco/disk/fs/FileUtils$RenameException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    throw v2

    .line 266
    .end local v0    # "category":Ljava/lang/String;
    :cond_1
    instance-of v6, v1, Lcom/taobao/fresco/disk/fs/FileUtils$ParentDirNotFoundException;

    if-eqz v6, :cond_2

    .line 267
    const-string/jumbo v0, "WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND"

    .restart local v0    # "category":Ljava/lang/String;
    goto :goto_0

    .line 268
    .end local v0    # "category":Ljava/lang/String;
    :cond_2
    instance-of v6, v1, Ljava/io/FileNotFoundException;

    if-eqz v6, :cond_3

    .line 269
    const-string/jumbo v0, "WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND"

    .restart local v0    # "category":Ljava/lang/String;
    goto :goto_0

    .line 271
    .end local v0    # "category":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "WRITE_RENAME_FILE_OTHER"

    .restart local v0    # "category":Ljava/lang/String;
    goto :goto_0
.end method

.method public contains(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "debugInfo"    # Ljava/lang/Object;

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/aqf;->query(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic createTemporary(Ljava/lang/String;Ljava/lang/Object;)Lc8/Hpf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lc8/aqf;->createTemporary(Ljava/lang/String;Ljava/lang/Object;)Lc8/Ppf;

    move-result-object v0

    return-object v0
.end method

.method public createTemporary(Ljava/lang/String;Ljava/lang/Object;)Lc8/Ppf;
    .locals 7
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "debugInfo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v1, Lc8/Ypf;

    sget-object v4, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->TEMP:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    const/4 v5, 0x0

    invoke-direct {v1, v4, p1, v5}, Lc8/Ypf;-><init>(Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;Ljava/lang/String;Lc8/Vpf;)V

    .line 234
    .local v1, "info":Lc8/Ypf;
    iget-object v4, v1, Lc8/Ypf;->resourceId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lc8/aqf;->getSubdirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 235
    .local v3, "parent":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 236
    const-string/jumbo v4, "createTemporary"

    invoke-direct {p0, v3, v4}, Lc8/aqf;->mkdirs(Ljava/io/File;Ljava/lang/String;)V

    .line 240
    :cond_0
    :try_start_0
    invoke-virtual {v1, v3}, Lc8/Ypf;->createTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 241
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lc8/Ppf;->createOrNull(Ljava/io/File;)Lc8/Ppf;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 242
    .end local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 243
    .local v2, "ioe":Ljava/io/IOException;
    const-string/jumbo v4, "NonCatalogDiskCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CacheError: WRITE_CREATE_TEMPFILE, createTemporary:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    throw v2
.end method

.method getContentFileFor(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Lc8/Ypf;

    sget-object v2, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->CONTENT:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v3}, Lc8/Ypf;-><init>(Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;Ljava/lang/String;Lc8/Vpf;)V

    .line 190
    .local v0, "fileInfo":Lc8/Ypf;
    iget-object v2, v0, Lc8/Ypf;->resourceId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lc8/aqf;->getSubdirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 191
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v0, v1}, Lc8/Ypf;->toFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    return-object v2
.end method

.method public getDumpInfo()Lc8/bqf;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0}, Lc8/aqf;->getEntries()Ljava/util/List;

    move-result-object v1

    .line 345
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/fresco/disk/storage/DiskStorage$Entry;>;"
    new-instance v0, Lc8/bqf;

    invoke-direct {v0}, Lc8/bqf;-><init>()V

    .line 346
    .local v0, "dumpInfo":Lc8/bqf;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/dqf;

    .line 347
    .local v2, "entry":Lc8/dqf;
    invoke-direct {p0, v2}, Lc8/aqf;->dumpCacheEntry(Lc8/dqf;)Lc8/cqf;

    move-result-object v3

    .line 348
    .local v3, "infoEntry":Lc8/cqf;
    iget-object v4, v3, Lc8/cqf;->type:Ljava/lang/String;

    .line 349
    .local v4, "type":Ljava/lang/String;
    iget-object v5, v0, Lc8/bqf;->typeCounts:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 350
    iget-object v5, v0, Lc8/bqf;->typeCounts:Ljava/util/Map;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_0
    iget-object v7, v0, Lc8/bqf;->typeCounts:Ljava/util/Map;

    iget-object v5, v0, Lc8/bqf;->typeCounts:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v5, v0, Lc8/bqf;->entries:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 355
    .end local v2    # "entry":Lc8/dqf;
    .end local v3    # "infoEntry":Lc8/cqf;
    .end local v4    # "type":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public bridge synthetic getEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lc8/aqf;->getEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/dqf;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    new-instance v0, Lc8/Wpf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/Wpf;-><init>(Lc8/aqf;Lc8/Vpf;)V

    .line 394
    .local v0, "collector":Lc8/Wpf;
    iget-object v1, p0, Lc8/aqf;->mVersionDirectory:Ljava/io/File;

    invoke-static {v1, v0}, Lc8/Qpf;->walkFileTree(Ljava/io/File;Lc8/Rpf;)V

    .line 395
    invoke-virtual {v0}, Lc8/Wpf;->getEntries()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getResource(Ljava/lang/String;Ljava/lang/Object;)Lc8/Hpf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lc8/aqf;->getResource(Ljava/lang/String;Ljava/lang/Object;)Lc8/Ppf;

    move-result-object v0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;Ljava/lang/Object;)Lc8/Ppf;
    .locals 4
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "debugInfo"    # Ljava/lang/Object;

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lc8/aqf;->getContentFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 285
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lc8/aqf;->mClock:Lc8/Lpf;

    invoke-interface {v1}, Lc8/Lpf;->now()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 287
    invoke-static {v0}, Lc8/Ppf;->createOrNull(Ljava/io/File;)Lc8/Ppf;

    move-result-object v1

    .line 289
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lc8/aqf;->isEnabled:Z

    return v0
.end method

.method public purgeUnexpectedResources()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lc8/aqf;->mRootDirectory:Ljava/io/File;

    new-instance v1, Lc8/Zpf;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lc8/Zpf;-><init>(Lc8/aqf;Lc8/Vpf;)V

    invoke-static {v0, v1}, Lc8/Qpf;->walkFileTree(Ljava/io/File;Lc8/Rpf;)V

    .line 208
    return-void
.end method

.method public remove(Lc8/dqf;)J
    .locals 4
    .param p1, "entry"    # Lc8/dqf;

    .prologue
    .line 314
    move-object v0, p1

    check-cast v0, Lc8/Xpf;

    .line 315
    .local v0, "entryImpl":Lc8/Xpf;
    invoke-virtual {v0}, Lc8/Xpf;->getResource()Lc8/Ppf;

    move-result-object v1

    .line 316
    .local v1, "resource":Lc8/Ppf;
    invoke-virtual {v1}, Lc8/Ppf;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, Lc8/aqf;->doRemove(Ljava/io/File;)J

    move-result-wide v2

    return-wide v2
.end method

.method public remove(Ljava/lang/String;)J
    .locals 2
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lc8/aqf;->getContentFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/aqf;->doRemove(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public touch(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "debugInfo"    # Ljava/lang/Object;

    .prologue
    .line 299
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lc8/aqf;->query(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public updateResource(Ljava/lang/String;Lc8/Hpf;Lc8/Opf;Ljava/lang/Object;)V
    .locals 10
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "resource"    # Lc8/Hpf;
    .param p3, "callback"    # Lc8/Opf;
    .param p4, "debugInfo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    move-object v2, p2

    check-cast v2, Lc8/Ppf;

    .line 155
    .local v2, "fileBinaryResource":Lc8/Ppf;
    invoke-virtual {v2}, Lc8/Ppf;->getFile()Ljava/io/File;

    move-result-object v1

    .line 158
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .local v3, "fileStream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v0, Lc8/Mpf;

    invoke-direct {v0, v3}, Lc8/Mpf;-><init>(Ljava/io/OutputStream;)V

    .line 167
    .local v0, "countingStream":Lc8/Mpf;
    invoke-interface {p3, v0}, Lc8/Opf;->write(Ljava/io/OutputStream;)V

    .line 170
    invoke-virtual {v0}, Lc8/Mpf;->flush()V

    .line 171
    invoke-virtual {v0}, Lc8/Mpf;->getCount()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 176
    .local v6, "length":J
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 180
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_0

    .line 181
    new-instance v5, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$IncompleteFileException;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$IncompleteFileException;-><init>(JJ)V

    throw v5

    .line 159
    .end local v0    # "countingStream":Lc8/Mpf;
    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .end local v6    # "length":J
    :catch_0
    move-exception v4

    .line 160
    .local v4, "fne":Ljava/io/FileNotFoundException;
    const-string/jumbo v5, "NonCatalogDiskCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CacheError: WRITE_UPDATE_FILE_NOT_FOUND, updateResource:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    throw v4

    .line 176
    .end local v4    # "fne":Ljava/io/FileNotFoundException;
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v5

    .line 183
    .restart local v0    # "countingStream":Lc8/Mpf;
    .restart local v6    # "length":J
    :cond_0
    return-void
.end method
