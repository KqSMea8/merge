.class public Lc8/sB;
.super Ljava/lang/Object;
.source "WVFileCacheFactory.java"


# static fields
.field private static cacheFactory:Lc8/sB;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/sB;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lc8/sB;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/sB;->cacheFactory:Lc8/sB;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lc8/sB;

    invoke-direct {v0}, Lc8/sB;-><init>()V

    sput-object v0, Lc8/sB;->cacheFactory:Lc8/sB;

    .line 28
    :cond_0
    sget-object v0, Lc8/sB;->cacheFactory:Lc8/sB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public createFileCache(Ljava/lang/String;Ljava/lang/String;IZ)Lc8/rB;
    .locals 7
    .param p1, "rootDir"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "capacity"    # I
    .param p4, "sdcard"    # Z

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    const-string/jumbo v4, "FileCacheFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createFileCache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " capacity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " sdcard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    if-eqz p2, :cond_1

    const/16 v4, 0xa

    if-ge p3, v4, :cond_4

    .line 39
    :cond_1
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 40
    const-string/jumbo v4, "FileCacheFactory"

    const-string/jumbo v5, "createFileCache: url is null, or capacity is too small"

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v1, v3

    .line 59
    :cond_3
    :goto_0
    return-object v1

    .line 46
    :cond_4
    if-eqz p4, :cond_6

    invoke-static {}, Lc8/YH;->checkSDCard()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 p4, 0x1

    .line 48
    :goto_1
    sget-object v4, Lc8/xB;->context:Landroid/app/Application;

    invoke-static {v4, p1, p2, p4}, Lc8/KD;->createBaseDir(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "baseDir":Ljava/lang/String;
    sget-object v4, Lc8/xB;->context:Landroid/app/Application;

    invoke-static {v4, p1, p2}, Lc8/KD;->createInnerfileStorage(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "infoDir":Ljava/lang/String;
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 52
    const-string/jumbo v4, "FileCacheFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "base dir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_5
    new-instance v1, Lc8/rB;

    invoke-direct {v1, v0, v2, p3, p4}, Lc8/rB;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 55
    .local v1, "fileCache":Lc8/rB;
    invoke-virtual {v1}, Lc8/rB;->init()Z

    move-result v4

    if-nez v4, :cond_3

    .line 58
    const-string/jumbo v4, "FileCacheFactory"

    const-string/jumbo v5, "init FileCache failed"

    invoke-static {v4, v5}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 59
    goto :goto_0

    .line 46
    .end local v0    # "baseDir":Ljava/lang/String;
    .end local v1    # "fileCache":Lc8/rB;
    .end local v2    # "infoDir":Ljava/lang/String;
    :cond_6
    const/4 p4, 0x0

    goto :goto_1
.end method
