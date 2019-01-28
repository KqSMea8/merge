.class public Lc8/mef;
.super Ljava/lang/Object;
.source "LayoutFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/lef;,
        Lc8/kef;,
        Lc8/jef;
    }
.end annotation


# static fields
.field private static final BYTE_MEM_CACHE_SIZE:I = 0x10

.field private static final DB_NAME:Ljava/lang/String; = "home_page_layout.db"

.field private static final FILE_CAPACITY:J = 0x200000L

.field private static final ROOT_DIR_NAME:Ljava/lang/String; = "home_page_layout"

.field private static final TAG:Ljava/lang/String; = "LayoutFileManager"

.field private static volatile templateCache:Lc8/sef;


# instance fields
.field private final context:Landroid/content/Context;

.field private final finishedTaskNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/ref;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "httpLoader"    # Lc8/ref;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc8/mef;->finishedTaskNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/mef;->context:Landroid/content/Context;

    .line 36
    if-eqz p2, :cond_0

    .line 37
    invoke-direct {p0}, Lc8/mef;->getTemplateCache()Lc8/sef;

    move-result-object v0

    iput-object p2, v0, Lc8/sef;->httpLoader:Lc8/ref;

    .line 39
    :cond_0
    return-void
.end method

.method static synthetic access$300(Lc8/mef;)Lc8/sef;
    .locals 1
    .param p0, "x0"    # Lc8/mef;

    .prologue
    .line 16
    invoke-direct {p0}, Lc8/mef;->getTemplateCache()Lc8/sef;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lc8/mef;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lc8/mef;

    .prologue
    .line 16
    iget-object v0, p0, Lc8/mef;->finishedTaskNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private getTemplateCache()Lc8/sef;
    .locals 4

    .prologue
    .line 42
    sget-object v0, Lc8/mef;->templateCache:Lc8/sef;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lc8/sef;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lc8/mef;->templateCache:Lc8/sef;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lc8/qef;

    invoke-direct {v0}, Lc8/qef;-><init>()V

    iget-object v2, p0, Lc8/mef;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lc8/qef;->withContext(Landroid/content/Context;)Lc8/qef;

    move-result-object v0

    const-string/jumbo v2, "home_page_layout.db"

    invoke-virtual {v0, v2}, Lc8/qef;->withDbName(Ljava/lang/String;)Lc8/qef;

    move-result-object v0

    const-string/jumbo v2, "home_page_layout"

    invoke-virtual {v0, v2}, Lc8/qef;->withRootDirName(Ljava/lang/String;)Lc8/qef;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lc8/qef;->withMemCacheSize(I)Lc8/qef;

    move-result-object v0

    const-wide/32 v2, 0x200000

    invoke-virtual {v0, v2, v3}, Lc8/qef;->withFileCapacity(J)Lc8/qef;

    move-result-object v0

    invoke-virtual {v0}, Lc8/qef;->build()Lc8/sef;

    move-result-object v0

    sput-object v0, Lc8/mef;->templateCache:Lc8/sef;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lc8/mef;->templateCache:Lc8/sef;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public isLocalLayoutFileExists(Ljava/lang/String;)Z
    .locals 2
    .param p1, "layoutKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-direct {p0}, Lc8/mef;->getTemplateCache()Lc8/sef;

    move-result-object v0

    iget-object v0, v0, Lc8/sef;->memCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lc8/mef;->templateCache:Lc8/sef;

    invoke-virtual {v1}, Lc8/sef;->getRootDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readLocalLayoutFileAndUpdateDB(Ljava/lang/String;)[B
    .locals 7
    .param p1, "layoutKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lc8/mef;->getTemplateCache()Lc8/sef;

    move-result-object v4

    .line 84
    .local v4, "templateCache":Lc8/sef;
    const/4 v1, 0x0

    .line 87
    .local v1, "bytes":[B
    :try_start_0
    iget-object v5, v4, Lc8/sef;->memCache:Landroid/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [B

    move-object v1, v0

    .line 88
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 97
    .end local v1    # "bytes":[B
    .local v2, "bytes":[B
    :goto_0
    return-object v2

    .line 93
    .end local v2    # "bytes":[B
    .restart local v1    # "bytes":[B
    :cond_0
    new-instance v5, Lc8/yef;

    invoke-direct {v5}, Lc8/yef;-><init>()V

    invoke-virtual {v4, p1, v5}, Lc8/sef;->fetchTemplateFromDisk(Ljava/lang/String;Lc8/yef;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 97
    .end local v1    # "bytes":[B
    .restart local v2    # "bytes":[B
    goto :goto_0

    .line 94
    .end local v2    # "bytes":[B
    .restart local v1    # "bytes":[B
    :catch_0
    move-exception v3

    .line 95
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "LayoutFileManager"

    const-string/jumbo v6, "read local layout file exception"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public readLocalLayoutFileWithoutAccessDB(Ljava/lang/String;)[B
    .locals 4
    .param p1, "layoutKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-direct {p0}, Lc8/mef;->getTemplateCache()Lc8/sef;

    move-result-object v2

    .line 64
    .local v2, "templateCache":Lc8/sef;
    iget-object v3, v2, Lc8/sef;->memCache:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 65
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 77
    :goto_0
    return-object v3

    .line 70
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Lc8/sef;->getRootDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {v2, v1}, Lc8/sef;->readTemplateFromFile(Ljava/io/File;)[B

    move-result-object v0

    .line 73
    iget-object v3, v2, Lc8/sef;->memCache:Landroid/util/LruCache;

    invoke-virtual {v3, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    .line 74
    goto :goto_0

    .line 77
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public sendLayoutFileRequests(Ljava/util/List;Lc8/kef;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lc8/kef;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/lef;",
            ">;",
            "Lc8/kef;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "layoutFileRequests":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/android/trade/template/manager/LayoutFileManager$LayoutFileRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/lef;

    .line 103
    .local v1, "r":Lc8/lef;
    new-instance v2, Lc8/jef;

    invoke-direct {v2, p0}, Lc8/jef;-><init>(Lc8/mef;)V

    .line 105
    .local v2, "task":Lc8/jef;
    invoke-static {v2, v1}, Lc8/jef;->access$002(Lc8/jef;Lc8/lef;)Lc8/lef;

    .line 106
    invoke-static {v2, p2}, Lc8/jef;->access$102(Lc8/jef;Lc8/kef;)Lc8/kef;

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Lc8/jef;->access$202(Lc8/jef;I)I

    .line 109
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lc8/jef;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 111
    .end local v1    # "r":Lc8/lef;
    .end local v2    # "task":Lc8/jef;
    :cond_0
    return-void
.end method
