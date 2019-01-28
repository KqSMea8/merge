.class public Lc8/vwf;
.super Ljava/lang/Object;
.source "SimpleDiskCache.java"

# interfaces
.implements Lc8/Jvf;


# static fields
.field public static final DEFAULT_CACHE_IMAGE_DIR:Ljava/lang/String; = "images"

.field public static final TAG:Ljava/lang/String; = "NonCatalogDiskCache"

.field public static final VERSION:I = 0x1


# instance fields
.field private final mCacheSubDir:Ljava/lang/String;

.field private mFileCache:Lc8/Gpf;

.field private mLimitSize:I

.field private final mPriority:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 34
    const-string/jumbo v0, "images"

    invoke-direct {p0, p1, v0}, Lc8/vwf;-><init>(ILjava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "priority"    # I
    .param p2, "cacheSubDir"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lc8/vwf;->mPriority:I

    .line 39
    iput-object p2, p0, Lc8/vwf;->mCacheSubDir:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private getCacheRootDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "mounted"

    .line 77
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .local v0, "rootDir":Ljava/io/File;
    if-nez v0, :cond_1

    .line 79
    .end local v0    # "rootDir":Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    .line 81
    :goto_0
    return-object v1

    .restart local v0    # "rootDir":Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lc8/vwf;->mCacheSubDir:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isNotAvailable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "baseKey"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/vwf;->mFileCache:Lc8/Gpf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/vwf;->mFileCache:Lc8/Gpf;

    invoke-interface {v0}, Lc8/Gpf;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lc8/vwf;->mFileCache:Lc8/Gpf;

    invoke-interface {v0}, Lc8/Gpf;->clearAll()V

    .line 54
    return-void
.end method

.method public close()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public get(Ljava/lang/String;I)Lc8/exf;
    .locals 9
    .param p1, "baseKey"    # Ljava/lang/String;
    .param p2, "catalog"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lc8/vwf;->isNotAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    const/4 v2, 0x0

    .line 117
    :cond_0
    :goto_0
    return-object v2

    .line 108
    :cond_1
    iget-object v4, p0, Lc8/vwf;->mFileCache:Lc8/Gpf;

    new-instance v5, Lc8/swf;

    invoke-direct {v5, p1, p2}, Lc8/swf;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Lc8/Gpf;->getResource(Lc8/Bpf;)Lc8/Hpf;

    move-result-object v0

    .line 109
    .local v0, "cacheResult":Lc8/Hpf;
    const/4 v2, 0x0

    .line 110
    .local v2, "ret":Lc8/exf;
    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    new-instance v3, Lc8/exf;

    invoke-interface {v0}, Lc8/Hpf;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {v0}, Lc8/Hpf;->size()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-direct {v3, v4, v5}, Lc8/exf;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "ret":Lc8/exf;
    .local v3, "ret":Lc8/exf;
    move-object v2, v3

    .line 115
    .end local v3    # "ret":Lc8/exf;
    .restart local v2    # "ret":Lc8/exf;
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "NonCatalogDiskCache"

    const-string/jumbo v5, "read bytes from cache file error:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getCatalogs(Ljava/lang/String;)[I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileCache()Lc8/Gpf;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lc8/vwf;->mFileCache:Lc8/Gpf;

    return-object v0
.end method

.method public getLength(Ljava/lang/String;I)J
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 122
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lc8/vwf;->mPriority:I

    return v0
.end method

.method public isSupportCatalogs()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public maxSize(I)V
    .locals 0
    .param p1, "limitSize"    # I

    .prologue
    .line 58
    iput p1, p0, Lc8/vwf;->mLimitSize:I

    .line 59
    return-void
.end method

.method public open(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    iget-object v0, p0, Lc8/vwf;->mFileCache:Lc8/Gpf;

    if-nez v0, :cond_0

    .line 64
    new-instance v1, Lc8/Dpf;

    const-wide/16 v2, 0x0

    iget v0, p0, Lc8/vwf;->mLimitSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-long v4, v0

    iget v0, p0, Lc8/vwf;->mLimitSize:I

    int-to-long v6, v0

    invoke-direct/range {v1 .. v7}, Lc8/Dpf;-><init>(JJJ)V

    .line 65
    .local v1, "params":Lc8/Dpf;
    new-instance v0, Lc8/Fpf;

    .line 66
    invoke-direct {p0, p1}, Lc8/vwf;->getCacheRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lc8/aqf;->instance(Ljava/io/File;I)Lc8/aqf;

    move-result-object v2

    .line 68
    invoke-static {}, Lc8/rwf;->instance()Lc8/rwf;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lc8/Fpf;-><init>(Lc8/eqf;Lc8/Dpf;Lc8/Apf;)V

    iput-object v0, p0, Lc8/vwf;->mFileCache:Lc8/Gpf;

    .line 71
    .end local v1    # "params":Lc8/Dpf;
    :cond_0
    iget-object v0, p0, Lc8/vwf;->mFileCache:Lc8/Gpf;

    invoke-interface {v0}, Lc8/Gpf;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;ILjava/io/InputStream;)Z
    .locals 4
    .param p1, "baseKey"    # Ljava/lang/String;
    .param p2, "catalog"    # I
    .param p3, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1}, Lc8/vwf;->isNotAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    :try_start_0
    iget-object v1, p0, Lc8/vwf;->mFileCache:Lc8/Gpf;

    new-instance v2, Lc8/swf;

    invoke-direct {v2, p1, p2}, Lc8/swf;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lc8/twf;

    invoke-direct {v3, p0, p3}, Lc8/twf;-><init>(Lc8/vwf;Ljava/io/InputStream;)V

    invoke-interface {v1, v2, v3}, Lc8/Gpf;->insert(Lc8/Bpf;Lc8/Opf;)Lc8/Hpf;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public put(Ljava/lang/String;I[BII)Z
    .locals 4
    .param p1, "baseKey"    # Ljava/lang/String;
    .param p2, "catalog"    # I
    .param p3, "bytes"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1}, Lc8/vwf;->isNotAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    :try_start_0
    iget-object v1, p0, Lc8/vwf;->mFileCache:Lc8/Gpf;

    new-instance v2, Lc8/swf;

    invoke-direct {v2, p1, p2}, Lc8/swf;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lc8/uwf;

    invoke-direct {v3, p0, p3, p4, p5}, Lc8/uwf;-><init>(Lc8/vwf;[BII)V

    invoke-interface {v1, v2, v3}, Lc8/Gpf;->insert(Lc8/Bpf;Lc8/Opf;)Lc8/Hpf;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "baseKey"    # Ljava/lang/String;
    .param p2, "catalog"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lc8/vwf;->isNotAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lc8/vwf;->mFileCache:Lc8/Gpf;

    new-instance v1, Lc8/swf;

    invoke-direct {v1, p1, p2}, Lc8/swf;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lc8/Gpf;->remove(Lc8/Bpf;)V

    .line 99
    const/4 v0, 0x1

    goto :goto_0
.end method
