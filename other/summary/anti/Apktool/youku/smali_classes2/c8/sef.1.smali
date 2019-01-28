.class public Lc8/sef;
.super Ljava/lang/Object;
.source "TemplateCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/qef;,
        Lc8/pef;,
        Lc8/ref;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field public static DEFAULT_HTTP_LOADER:Lc8/ref; = null

.field private static final MAX_BUFFER_SIZE:I = 0x7ffffff7

.field private static final TAG:Ljava/lang/String; = "TemplateCache"


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final dbName:Ljava/lang/String;

.field protected fileCache:Lc8/hef;

.field protected final fileCapacity:J

.field protected httpLoader:Lc8/ref;

.field protected memCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field protected final memCacheSize:I

.field protected final rootDir:Ljava/io/File;

.field protected final rootDirName:Ljava/lang/String;

.field protected final useTemplateIdAsFileName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lc8/oef;

    invoke-direct {v0}, Lc8/oef;-><init>()V

    sput-object v0, Lc8/sef;->DEFAULT_HTTP_LOADER:Lc8/ref;

    return-void
.end method

.method private constructor <init>(Lc8/qef;)V
    .locals 6
    .param p1, "builder"    # Lc8/qef;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lc8/sef;->DEFAULT_HTTP_LOADER:Lc8/ref;

    iput-object v0, p0, Lc8/sef;->httpLoader:Lc8/ref;

    .line 59
    invoke-static {p1}, Lc8/qef;->access$000(Lc8/qef;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/sef;->rootDirName:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lc8/qef;->access$100(Lc8/qef;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/sef;->context:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lc8/qef;->access$200(Lc8/qef;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/sef;->dbName:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lc8/qef;->access$300(Lc8/qef;)I

    move-result v0

    iput v0, p0, Lc8/sef;->memCacheSize:I

    .line 63
    invoke-static {p1}, Lc8/qef;->access$400(Lc8/qef;)J

    move-result-wide v0

    iput-wide v0, p0, Lc8/sef;->fileCapacity:J

    .line 64
    invoke-static {p1}, Lc8/qef;->access$500(Lc8/qef;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/sef;->useTemplateIdAsFileName:Z

    .line 66
    invoke-direct {p0}, Lc8/sef;->createRootDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lc8/sef;->rootDir:Ljava/io/File;

    .line 67
    new-instance v0, Landroid/util/LruCache;

    iget v1, p0, Lc8/sef;->memCacheSize:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lc8/sef;->memCache:Landroid/util/LruCache;

    .line 68
    new-instance v0, Lc8/hef;

    iget-object v1, p0, Lc8/sef;->context:Landroid/content/Context;

    iget-object v2, p0, Lc8/sef;->rootDir:Ljava/io/File;

    iget-object v3, p0, Lc8/sef;->dbName:Ljava/lang/String;

    iget-wide v4, p0, Lc8/sef;->fileCapacity:J

    invoke-direct/range {v0 .. v5}, Lc8/hef;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)V

    iput-object v0, p0, Lc8/sef;->fileCache:Lc8/hef;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lc8/qef;Lc8/nef;)V
    .locals 0
    .param p1, "x0"    # Lc8/qef;
    .param p2, "x1"    # Lc8/nef;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc8/sef;-><init>(Lc8/qef;)V

    return-void
.end method

.method static synthetic access$600(Lc8/sef;[BLjava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lc8/sef;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lc8/sef;->writeTemplateToFile([BLjava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private createRootDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 274
    invoke-direct {p0}, Lc8/sef;->getAvailableParentDir()Ljava/io/File;

    move-result-object v0

    .line 275
    .local v0, "parentDir":Ljava/io/File;
    if-nez v0, :cond_1

    .line 276
    const/4 v1, 0x0

    .line 285
    :cond_0
    :goto_0
    return-object v1

    .line 279
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lc8/sef;->rootDirName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    .local v1, "rootDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private fetchTemplateFromRemote(Ljava/lang/String;Ljava/lang/String;Lc8/yef;)[B
    .locals 9
    .param p1, "templateId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "perfInfo"    # Lc8/yef;

    .prologue
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 150
    .local v4, "startTime":J
    iget-object v6, p0, Lc8/sef;->httpLoader:Lc8/ref;

    invoke-interface {v6, p2}, Lc8/ref;->loadUrl(Ljava/lang/String;)[B

    move-result-object v0

    .line 151
    .local v0, "bytes":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 153
    .local v2, "endTime":J
    const/4 v6, 0x3

    iput v6, p3, Lc8/yef;->phase:I

    .line 154
    sub-long v6, v2, v4

    iput-wide v6, p3, Lc8/yef;->networkCostTimeMillis:J

    .line 156
    if-eqz v0, :cond_0

    .line 157
    iget-object v6, p0, Lc8/sef;->memCache:Landroid/util/LruCache;

    invoke-virtual {v6, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getTemplateById #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] get template from server."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-object v1, v0

    .line 165
    .local v1, "finalBytes":[B
    new-instance v6, Lc8/nef;

    invoke-direct {v6, p0, p1, p2, v1}, Lc8/nef;-><init>(Lc8/sef;Ljava/lang/String;Ljava/lang/String;[B)V

    sget-object v7, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v6, v7, v8}, Lc8/nef;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 197
    .end local v0    # "bytes":[B
    .end local v1    # "finalBytes":[B
    :goto_0
    return-object v0

    .line 160
    .restart local v0    # "bytes":[B
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[getTemplateById #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] template from server is null."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAvailableParentDir()Ljava/io/File;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 295
    iget-object v3, p0, Lc8/sef;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 296
    .local v1, "parentDir":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 323
    :cond_0
    :goto_0
    return-object v2

    .line 300
    :cond_1
    iget-object v3, p0, Lc8/sef;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 301
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v1

    .line 302
    goto :goto_0

    .line 305
    :cond_2
    const-string/jumbo v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    :try_start_0
    iget-object v3, p0, Lc8/sef;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 309
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v2, v1

    .line 310
    goto :goto_0

    .line 313
    :cond_3
    iget-object v3, p0, Lc8/sef;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 315
    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TemplateCache"

    const-string/jumbo v4, "get external files dir exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private readAllBytes(Ljava/io/File;)[B
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v10, 0x7ffffff7

    .line 211
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 212
    .local v2, "len":J
    const-wide/32 v8, 0x7ffffff7

    cmp-long v8, v2, v8

    if-lez v8, :cond_0

    .line 213
    new-instance v8, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v9, "Required array size too large"

    invoke-direct {v8, v9}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 216
    :cond_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 218
    .local v7, "source":Ljava/io/FileInputStream;
    long-to-int v1, v2

    .line 219
    .local v1, "capacity":I
    new-array v0, v1, [B

    .line 220
    .local v0, "buf":[B
    const/4 v5, 0x0

    .line 225
    .local v5, "nread":I
    :goto_0
    sub-int v8, v1, v5

    invoke-virtual {v7, v0, v5, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .local v4, "n":I
    if-lez v4, :cond_1

    .line 226
    add-int/2addr v5, v4

    goto :goto_0

    .line 230
    :cond_1
    if-ltz v4, :cond_4

    invoke-virtual {v7}, Ljava/io/FileInputStream;->read()I

    move-result v4

    if-ltz v4, :cond_4

    .line 234
    sub-int v8, v10, v1

    if-gt v1, v8, :cond_2

    .line 235
    shl-int/lit8 v8, v1, 0x1

    const/16 v9, 0x2000

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 241
    :goto_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 242
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "nread":I
    .local v6, "nread":I
    int-to-byte v8, v4

    aput-byte v8, v0, v5

    move v5, v6

    .end local v6    # "nread":I
    .restart local v5    # "nread":I
    goto :goto_0

    .line 237
    :cond_2
    if-ne v1, v10, :cond_3

    .line 238
    new-instance v8, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v9, "Required array size too large"

    invoke-direct {v8, v9}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 239
    :cond_3
    const v1, 0x7ffffff7

    goto :goto_1

    .line 244
    :cond_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 246
    if-ne v1, v5, :cond_5

    .end local v0    # "buf":[B
    :goto_2
    return-object v0

    .restart local v0    # "buf":[B
    :cond_5
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_2
.end method

.method private writeTemplateToFile([BLjava/io/File;)Ljava/io/File;
    .locals 4
    .param p1, "content"    # [B
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 253
    .local v0, "output":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v0    # "output":Ljava/io/OutputStream;
    .local v1, "output":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    if-eqz v1, :cond_0

    .line 264
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v0, v1

    .line 270
    .end local v1    # "output":Ljava/io/OutputStream;
    .restart local v0    # "output":Ljava/io/OutputStream;
    :cond_1
    :goto_0
    return-object p2

    .line 268
    .end local v0    # "output":Ljava/io/OutputStream;
    .restart local v1    # "output":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1    # "output":Ljava/io/OutputStream;
    .restart local v0    # "output":Ljava/io/OutputStream;
    goto :goto_0

    .line 256
    :catch_1
    move-exception v2

    :goto_1
    if-eqz p2, :cond_2

    .line 258
    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    const/4 p2, 0x0

    .line 263
    :cond_2
    if-eqz v0, :cond_1

    .line 264
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 268
    :catch_2
    move-exception v2

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v2

    .line 263
    :goto_2
    if-eqz v0, :cond_3

    .line 264
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 267
    :cond_3
    :goto_3
    throw v2

    :catch_3
    move-exception v3

    goto :goto_3

    .line 262
    .end local v0    # "output":Ljava/io/OutputStream;
    .restart local v1    # "output":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "output":Ljava/io/OutputStream;
    .restart local v0    # "output":Ljava/io/OutputStream;
    goto :goto_2

    .line 256
    .end local v0    # "output":Ljava/io/OutputStream;
    .restart local v1    # "output":Ljava/io/OutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "output":Ljava/io/OutputStream;
    .restart local v0    # "output":Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized clearFileCache()V
    .locals 6

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/sef;->context:Landroid/content/Context;

    iget-object v1, p0, Lc8/sef;->rootDir:Ljava/io/File;

    iget-object v2, p0, Lc8/sef;->dbName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/hef;->deleteFiles(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lc8/hef;

    iget-object v1, p0, Lc8/sef;->context:Landroid/content/Context;

    iget-object v2, p0, Lc8/sef;->rootDir:Ljava/io/File;

    iget-object v3, p0, Lc8/sef;->dbName:Ljava/lang/String;

    iget-wide v4, p0, Lc8/sef;->fileCapacity:J

    invoke-direct/range {v0 .. v5}, Lc8/hef;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)V

    iput-object v0, p0, Lc8/sef;->fileCache:Lc8/hef;

    .line 99
    iget-object v0, p0, Lc8/sef;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/pef;->deleteCache(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearMemCache()V
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/sef;->memCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected fetchTemplateFromDisk(Ljava/lang/String;Lc8/yef;)[B
    .locals 10
    .param p1, "templateId"    # Ljava/lang/String;
    .param p2, "perfInfo"    # Lc8/yef;

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, "bytes":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 124
    .local v6, "startTime":J
    iget-object v5, p0, Lc8/sef;->fileCache:Lc8/hef;

    invoke-virtual {v5, p1}, Lc8/hef;->lookup(Ljava/lang/String;)Lc8/def;

    move-result-object v1

    .line 125
    .local v1, "cacheEntry":Lc8/def;
    if-eqz v1, :cond_0

    .line 126
    iget-object v4, v1, Lc8/def;->cacheFile:Ljava/io/File;

    .line 127
    .local v4, "file":Ljava/io/File;
    invoke-virtual {p0, v4}, Lc8/sef;->readTemplateFromFile(Ljava/io/File;)[B

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lez v5, :cond_0

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[getTemplateById #"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "] get template from file."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    iget-object v5, p0, Lc8/sef;->memCache:Landroid/util/LruCache;

    invoke-virtual {v5, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v4    # "file":Ljava/io/File;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 138
    .local v2, "endTime":J
    const/4 v5, 0x2

    iput v5, p2, Lc8/yef;->phase:I

    .line 139
    sub-long v8, v2, v6

    iput-wide v8, p2, Lc8/yef;->fileCostTimeMillis:J

    .line 141
    return-object v0
.end method

.method protected fetchTemplateFromMemory(Ljava/lang/String;Lc8/yef;)[B
    .locals 8
    .param p1, "templateId"    # Ljava/lang/String;
    .param p2, "perfInfo"    # Lc8/yef;

    .prologue
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 107
    .local v4, "startTime":J
    iget-object v1, p0, Lc8/sef;->memCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 108
    .local v0, "bytes":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 110
    .local v2, "endTime":J
    const/4 v1, 0x1

    iput v1, p2, Lc8/yef;->phase:I

    .line 111
    sub-long v6, v2, v4

    iput-wide v6, p2, Lc8/yef;->memCostTimeMillis:J

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getTemplateById #"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "] get template from memory."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    return-object v0
.end method

.method public getRootDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lc8/sef;->rootDir:Ljava/io/File;

    return-object v0
.end method

.method public getTemplateById(Ljava/lang/String;Ljava/lang/String;Lc8/yef;)[B
    .locals 2
    .param p1, "templateId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "perfInfo"    # Lc8/yef;

    .prologue
    .line 76
    invoke-virtual {p0, p1, p3}, Lc8/sef;->fetchTemplateFromMemory(Ljava/lang/String;Lc8/yef;)[B

    move-result-object v0

    .line 77
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 89
    .end local v0    # "bytes":[B
    .local v1, "bytes":[B
    :goto_0
    return-object v1

    .line 82
    .end local v1    # "bytes":[B
    .restart local v0    # "bytes":[B
    :cond_0
    invoke-virtual {p0, p1, p3}, Lc8/sef;->fetchTemplateFromDisk(Ljava/lang/String;Lc8/yef;)[B

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 84
    .end local v0    # "bytes":[B
    .restart local v1    # "bytes":[B
    goto :goto_0

    .line 88
    .end local v1    # "bytes":[B
    .restart local v0    # "bytes":[B
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lc8/sef;->fetchTemplateFromRemote(Ljava/lang/String;Ljava/lang/String;Lc8/yef;)[B

    move-result-object v0

    move-object v1, v0

    .line 89
    .end local v0    # "bytes":[B
    .restart local v1    # "bytes":[B
    goto :goto_0
.end method

.method protected readTemplateFromFile(Ljava/io/File;)[B
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, "bytes":[B
    :try_start_0
    invoke-direct {p0, p1}, Lc8/sef;->readAllBytes(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "TemplateCache"

    const-string/jumbo v3, "Read all bytes exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
