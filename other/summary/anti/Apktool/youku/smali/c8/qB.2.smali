.class public Lc8/qB;
.super Ljava/lang/Object;
.source "WVCacheManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVCacheManager"

.field private static cacheManager:Lc8/qB;


# instance fields
.field private fileCache:Lc8/rB;

.field private imagePool:Lc8/rB;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private checkCacheDirIsNull()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lc8/qB;->fileCache:Lc8/rB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/qB;->imagePool:Lc8/rB;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lc8/qB;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lc8/qB;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/qB;->cacheManager:Lc8/qB;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lc8/qB;

    invoke-direct {v0}, Lc8/qB;-><init>()V

    sput-object v0, Lc8/qB;->cacheManager:Lc8/qB;

    .line 39
    :cond_0
    sget-object v0, Lc8/qB;->cacheManager:Lc8/qB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCacheDir(Z)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # Z

    .prologue
    .line 112
    invoke-direct {p0}, Lc8/qB;->checkCacheDirIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 114
    :cond_0
    if-eqz p1, :cond_1

    .line 115
    iget-object v0, p0, Lc8/qB;->imagePool:Lc8/rB;

    invoke-virtual {v0}, Lc8/rB;->getDirPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lc8/qB;->fileCache:Lc8/rB;

    invoke-virtual {v0}, Lc8/rB;->getDirPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTempDir(Z)Ljava/io/File;
    .locals 4
    .param p1, "image"    # Z

    .prologue
    .line 122
    invoke-direct {p0}, Lc8/qB;->checkCacheDirIsNull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    const/4 v1, 0x0

    .line 134
    :cond_0
    :goto_0
    return-object v1

    .line 125
    :cond_1
    if-eqz p1, :cond_2

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/qB;->imagePool:Lc8/rB;

    invoke-virtual {v3}, Lc8/rB;->getDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "tempDir":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    .line 128
    .end local v0    # "tempDir":Ljava/lang/String;
    .end local v1    # "tempFile":Ljava/io/File;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/qB;->fileCache:Lc8/rB;

    invoke-virtual {v3}, Lc8/rB;->getDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "tempDir":Ljava/lang/String;
    goto :goto_1
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lc8/qB;->init(Landroid/content/Context;Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method public declared-synchronized init(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootDir"    # Ljava/lang/String;
    .param p3, "cacheMode"    # I

    .prologue
    .line 55
    monitor-enter p0

    if-nez p1, :cond_0

    .line 56
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "CacheManager init error, context is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 58
    :cond_0
    :try_start_1
    const-string/jumbo v2, "WVCacheManager"

    const-string/jumbo v3, "start init."

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 60
    .local v0, "time":J
    iget-object v2, p0, Lc8/qB;->fileCache:Lc8/rB;

    if-nez v2, :cond_1

    .line 62
    invoke-static {}, Lc8/sB;->getInstance()Lc8/sB;

    move-result-object v2

    const-string/jumbo v3, "wvcache"

    const/16 v4, 0xfa

    const/4 v5, 0x1

    invoke-virtual {v2, p2, v3, v4, v5}, Lc8/sB;->createFileCache(Ljava/lang/String;Ljava/lang/String;IZ)Lc8/rB;

    move-result-object v2

    iput-object v2, p0, Lc8/qB;->fileCache:Lc8/rB;

    .line 64
    invoke-static {}, Lc8/sB;->getInstance()Lc8/sB;

    move-result-object v2

    const-string/jumbo v3, "wvimage"

    const/16 v4, 0x12c

    const/4 v5, 0x1

    invoke-virtual {v2, p2, v3, v4, v5}, Lc8/sB;->createFileCache(Ljava/lang/String;Ljava/lang/String;IZ)Lc8/rB;

    move-result-object v2

    iput-object v2, p0, Lc8/qB;->imagePool:Lc8/rB;

    .line 67
    :cond_1
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    const-string/jumbo v2, "WVCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init finish.  cost time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public isCacheEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 76
    const-string/jumbo v2, "_wvcrc="

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 78
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const-string/jumbo v2, "_wvcrc="

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "_wvcrc="

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return v1

    .line 83
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public writeToFile(Lc8/tB;[B)Z
    .locals 4
    .param p1, "fileInfo"    # Lc8/tB;
    .param p2, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Lc8/qB;->checkCacheDirIsNull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v2

    .line 98
    :cond_1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 99
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v3, p1, Lc8/tB;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Lc8/JH;->isImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    iget-object v2, p0, Lc8/qB;->imagePool:Lc8/rB;

    invoke-virtual {v2, p1, v0}, Lc8/rB;->write(Lc8/tB;Ljava/nio/ByteBuffer;)Z

    move-result v2

    goto :goto_0

    .line 103
    :cond_2
    invoke-static {p2}, Lc8/NH;->sha256ToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "secToken":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 106
    iput-object v1, p1, Lc8/tB;->sha256ToHex:Ljava/lang/String;

    .line 107
    iget-object v2, p0, Lc8/qB;->fileCache:Lc8/rB;

    invoke-virtual {v2, p1, v0}, Lc8/rB;->write(Lc8/tB;Ljava/nio/ByteBuffer;)Z

    move-result v2

    goto :goto_0
.end method
