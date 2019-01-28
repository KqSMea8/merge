.class public Lc8/AG;
.super Ljava/lang/Object;
.source "ZipAppFileManager.java"


# static fields
.field private static zipAppFileManager:Lc8/AG;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string/jumbo v0, "PackageApp-ZipAppFileManager"

    iput-object v0, p0, Lc8/AG;->TAG:Ljava/lang/String;

    return-void
.end method

.method private deleteDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "fileDir"    # Ljava/lang/String;
    .param p2, "notDel"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 451
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 453
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    .line 469
    .end local v3    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return v6

    .line 456
    .restart local v3    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v2, v0, v4

    .line 457
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 459
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 460
    invoke-static {v2}, Lc8/JD;->deleteFile(Ljava/io/File;)Z

    .line 456
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 462
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 466
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 465
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private getFileAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p2, "isTmp"    # Z

    .prologue
    .line 410
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 411
    const-string/jumbo v0, ""

    .line 413
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/xB;->context:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1

    sget-object v0, Lc8/dH;->ZIPAPP_ROOT_TMP_DIR:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->genMidPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lc8/dH;->ZIPAPP_ROOT_APPS_DIR:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->genMidPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private getFileAbsolutePath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "isTmp"    # Z

    .prologue
    .line 419
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 420
    const-string/jumbo v0, ""

    .line 422
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/xB;->context:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1

    sget-object v0, Lc8/dH;->ZIPAPP_ROOT_TMP_DIR:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_2

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lc8/dH;->ZIPAPP_ROOT_APPS_DIR:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "isTmp"    # Z
    .param p3, "isPacakageApp"    # Z

    .prologue
    .line 428
    sget-object v1, Lc8/xB;->context:Landroid/app/Application;

    if-nez v1, :cond_0

    .line 429
    const-string/jumbo v1, ""

    .line 438
    :goto_0
    return-object v1

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 432
    .local v0, "path":Ljava/lang/StringBuilder;
    sget-object v1, Lc8/xB;->context:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    if-eqz p2, :cond_1

    sget-object v1, Lc8/dH;->ZIPAPP_ROOT_TMP_DIR:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    if-nez p1, :cond_3

    const-string/jumbo v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 434
    :cond_1
    if-eqz p3, :cond_2

    sget-object v1, Lc8/dH;->ZIPAPP_ROOT_APPS_DIR:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object v1, Lc8/dH;->ZIPAPP_ROOT_ZCACHE_DIR:Ljava/lang/String;

    goto :goto_1

    .line 436
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public static getInstance()Lc8/AG;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lc8/AG;->zipAppFileManager:Lc8/AG;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lc8/AG;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lc8/AG;->zipAppFileManager:Lc8/AG;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lc8/AG;

    invoke-direct {v0}, Lc8/AG;-><init>()V

    sput-object v0, Lc8/AG;->zipAppFileManager:Lc8/AG;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lc8/AG;->zipAppFileManager:Lc8/AG;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private saveFile(Ljava/lang/String;[B)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileData"    # [B

    .prologue
    .line 393
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {p1, v1}, Lc8/JD;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 397
    :goto_0
    return v1

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lc8/AG;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write file:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]  exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearAppsDir()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 263
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v3, v2}, Lc8/AG;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lc8/JD;->deleteFile(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public clearTmpDir(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isSelf"    # Z

    .prologue
    const/4 v1, 0x1

    .line 254
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1, v1, v1}, Lc8/AG;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lc8/JD;->deleteFile(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public copyZipApp(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Z
    .locals 3
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .prologue
    .line 241
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lc8/AG;->getZipRootDir(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "srcDir":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lc8/AG;->getZipRootDir(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "targetDir":Ljava/lang/String;
    invoke-static {v0, v1}, Lc8/KD;->copyDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public createZipAppInitDir()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 58
    sget-object v2, Lc8/xB;->context:Landroid/app/Application;

    if-nez v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    sget-object v2, Lc8/xB;->context:Landroid/app/Application;

    sget-object v3, Lc8/dH;->ZIPAPP_ROOT_APPS_DIR:Ljava/lang/String;

    invoke-static {v2, v3}, Lc8/KD;->createFolder(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 62
    .local v0, "fileDir":Ljava/io/File;
    iget-object v2, p0, Lc8/AG;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createDir: dir["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    sget-object v1, Lc8/xB;->context:Landroid/app/Application;

    sget-object v2, Lc8/dH;->ZIPAPP_ROOT_TMP_DIR:Ljava/lang/String;

    invoke-static {v1, v2}, Lc8/KD;->createFolder(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lc8/AG;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createDir: dir["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method public deleteHisZipApp(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Z
    .locals 5
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v3, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v4

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v3, v2, v1}, Lc8/AG;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "targetDir":Ljava/lang/String;
    iget-object v1, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lc8/AG;->deleteDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .end local v0    # "targetDir":Ljava/lang/String;
    :cond_0
    move v1, v2

    .line 199
    goto :goto_0
.end method

.method public deleteZipApp(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Z
    .locals 6
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p2, "isTmp"    # Z

    .prologue
    const/4 v3, 0x1

    .line 210
    iget-object v4, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    sget-object v2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v5

    if-ne v2, v5, :cond_1

    move v2, v3

    :goto_0
    invoke-direct {p0, v4, p2, v2}, Lc8/AG;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "targetDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-static {v0}, Lc8/JD;->deleteFile(Ljava/io/File;)Z

    move-result v3

    .line 215
    :cond_0
    return v3

    .line 210
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "targetDir":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDownLoadPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 295
    const-string/jumbo v0, ""

    .line 297
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/xB;->context:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/dH;->ZIPAPP_DOWNLOAD__DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGlobalConfigPath(Z)Ljava/lang/String;
    .locals 2
    .param p1, "isTmp"    # Z

    .prologue
    .line 318
    sget-object v0, Lc8/dH;->H5_APPS_NAME:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lc8/AG;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreloadInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "zipFileName"    # Ljava/lang/String;

    .prologue
    .line 226
    :try_start_0
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    .line 228
    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/AG;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "preload package not exists"

    invoke-static {v0, v1}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getRootPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 273
    const-string/jumbo v0, ""

    .line 275
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/xB;->context:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/dH;->ZIPAPP_ROOT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRootPathApps()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 306
    const-string/jumbo v0, ""

    .line 308
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/xB;->context:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/dH;->ZIPAPP_ROOT_APPS_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRootPathTmp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 285
    const-string/jumbo v0, ""

    .line 287
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/xB;->context:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/dH;->ZIPAPP_ROOT_TMP_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getZcacheConfigPath(Z)Ljava/lang/String;
    .locals 2
    .param p1, "isTmp"    # Z

    .prologue
    .line 328
    sget-object v0, Lc8/dH;->H5_ZCACHE_MAP:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lc8/AG;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "isTmp"    # Z

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->genMidPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, p3, v0}, Lc8/AG;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getZipRootDir(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Ljava/lang/String;
    .locals 3
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p2, "isTmp"    # Z

    .prologue
    .line 340
    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->genMidPath()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, p2, v0}, Lc8/AG;->getFileAbsolutePath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 364
    :try_start_0
    invoke-static {p1}, Lc8/JD;->exists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 365
    iget-object v3, p0, Lc8/AG;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_0
    return-object v2

    .line 368
    :cond_0
    invoke-static {p1}, Lc8/JD;->read(Ljava/lang/String;)[B

    move-result-object v0

    .line 369
    .local v0, "data":[B
    if-eqz v0, :cond_1

    array-length v3, v0

    if-gtz v3, :cond_2

    .line 370
    :cond_1
    iget-object v3, p0, Lc8/AG;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readConfig:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] data is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lc8/AG;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readFile:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":[B
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lc8/dH;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    goto :goto_0
.end method

.method public readGlobalConfig(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isTmp"    # Z

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lc8/AG;->getGlobalConfigPath(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/AG;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readZcacheConfig(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isTmp"    # Z

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lc8/AG;->getZcacheConfigPath(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/AG;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readZipAppRes(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "isTmp"    # Z

    .prologue
    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lc8/AG;->getZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/AG;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readZipAppResByte(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)[B
    .locals 2
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "isTmp"    # Z

    .prologue
    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lc8/AG;->getZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lc8/JD;->read(Ljava/lang/String;)[B

    move-result-object v0

    .line 135
    .local v0, "data":[B
    return-object v0
.end method

.method public declared-synchronized saveGlobalConfig([BZ)Z
    .locals 1
    .param p1, "fileData"    # [B
    .param p2, "isTmp"    # Z

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lc8/AG;->getGlobalConfigPath(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lc8/AG;->saveFile(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveZcacheConfig([BZ)Z
    .locals 1
    .param p1, "fileData"    # [B
    .param p2, "isTmp"    # Z

    .prologue
    .line 107
    invoke-virtual {p0, p2}, Lc8/AG;->getZcacheConfigPath(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lc8/AG;->saveFile(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public saveZipAppRes(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;[BZ)Z
    .locals 1
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileData"    # [B
    .param p4, "isTmp"    # Z

    .prologue
    .line 150
    invoke-virtual {p0, p1, p2, p4}, Lc8/AG;->getZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lc8/AG;->saveFile(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public unZipToTmp(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p2, "srcFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 161
    invoke-virtual {p0, p1, v5}, Lc8/AG;->getZipRootDir(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/JD;->deleteFile(Ljava/lang/String;)Z

    .line 162
    const-string/jumbo v4, ""

    .line 165
    .local v4, "unZipInfo":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, "scrFile":Ljava/io/File;
    sget-object v5, Lc8/DB;->commonConfig:Lc8/EB;

    iget-boolean v5, v5, Lc8/EB;->needZipDegrade:Z

    if-eqz v5, :cond_2

    .line 168
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Lc8/AG;->getZipRootDir(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lc8/KD;->unzip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 169
    .local v3, "success":Z
    if-eqz v3, :cond_0

    .line 170
    const-string/jumbo v4, "success"

    .line 178
    .end local v3    # "success":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 179
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 180
    iget-object v5, p0, Lc8/AG;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Delete temp file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .end local v2    # "scrFile":Ljava/io/File;
    :cond_1
    :goto_1
    return-object v4

    .line 173
    .restart local v2    # "scrFile":Ljava/io/File;
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->setReadOnly()Z

    .line 174
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Lc8/AG;->getZipRootDir(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lc8/KD;->unZipByFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/io/File;->setWritable(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v2    # "scrFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lc8/AG;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "unZipToTemp"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v1, v7}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 184
    sget-object v5, Lc8/DB;->commonConfig:Lc8/EB;

    iget-boolean v5, v5, Lc8/EB;->needZipDegrade:Z

    if-eqz v5, :cond_3

    const/4 v0, -0x1

    .line 185
    .local v0, "code":I
    :goto_2
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v5

    const-string/jumbo v6, "UnzipError"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getZipUrl()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v0, v7, v8}, Lc8/aG;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 184
    .end local v0    # "code":I
    :cond_3
    const/4 v0, -0x2

    goto :goto_2
.end method
