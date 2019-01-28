.class public Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;
.super Ljava/lang/Object;
.source "MiniAddDex.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDexFileInLib(Landroid/content/Context;Ljava/lang/String;)Ldalvik/system/DexFile;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 276
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "libclasses.so"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "dexpath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v1, "dexfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 279
    sget-object v8, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    sget-object v9, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dexfile exsited "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "miniLogRecord"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v0, Ljava/io/File;

    const-string/jumbo v8, "shell.dex"

    invoke-direct {v0, p1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .local v0, "dest":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 283
    invoke-static {v1, v0}, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->copyFileUsingFileStreams(Ljava/io/File;Ljava/io/File;)V

    .line 286
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 287
    sget-object v8, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    sget-object v9, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dest exsited "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "miniLogRecord"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v5, Ljava/io/File;

    const-string/jumbo v8, "shell.odex"

    invoke-direct {v5, p1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .local v5, "odex":Ljava/io/File;
    const/4 v6, 0x0

    .line 293
    .local v6, "result":Ldalvik/system/DexFile;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v6

    .line 294
    const-class v8, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->addDexFileToDexPathList(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v0    # "dest":Ljava/io/File;
    .end local v5    # "odex":Ljava/io/File;
    .end local v6    # "result":Ldalvik/system/DexFile;
    :goto_0
    return-object v6

    .line 296
    .restart local v0    # "dest":Ljava/io/File;
    .restart local v5    # "odex":Ljava/io/File;
    .restart local v6    # "result":Ldalvik/system/DexFile;
    :catch_0
    move-exception v3

    .line 298
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 300
    const-string/jumbo v8, "minidexopt"

    invoke-static {v8}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 302
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "miniLogRecord"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "minilogReord":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->doDexOptSelf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, "zipPath":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 306
    throw v3

    .line 308
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v13}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v6

    .line 309
    const-class v8, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->addDexFileToDexPathList(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 319
    .end local v0    # "dest":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "minilogReord":Ljava/lang/String;
    .end local v5    # "odex":Ljava/io/File;
    .end local v6    # "result":Ldalvik/system/DexFile;
    .end local v7    # "zipPath":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static addDexFileToClassLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseDir"    # Ljava/lang/String;
    .param p2, "addDexName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 327
    sget-object v4, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    sget-object v5, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build.VERSION.SDK_INT is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    const/4 v0, 0x0

    .line 351
    :cond_0
    :goto_0
    return-object v0

    .line 331
    :cond_1
    invoke-static {p0, p1}, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->addDexFileInLib(Landroid/content/Context;Ljava/lang/String;)Ldalvik/system/DexFile;

    move-result-object v0

    .line 332
    .local v0, "dexfile":Ldalvik/system/DexFile;
    if-nez v0, :cond_0

    .line 337
    invoke-static {p0, p1, p2}, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->extractLibraryFromApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "dexpath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "shell.odex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "output":Ljava/lang/String;
    const/4 v2, 0x0

    .line 340
    .local v2, "logrecord":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 341
    const-string v4, "%s extract from %s to %s not exsited ..."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v9

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 343
    sget-object v4, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    sget-object v5, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "miniLogRecord"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v6}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_2
    invoke-static {v1, v3, v9}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    .line 348
    const-class v4, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->addDexFileToDexPathList(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;)V

    .line 350
    sget-object v4, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    sget-object v5, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loader is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static addDexFileToDexPathList(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;)V
    .locals 4
    .param p0, "dexFile"    # Ldalvik/system/DexFile;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 207
    if-eqz p0, :cond_0

    .line 208
    :try_start_0
    invoke-static {p0}, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->makeDexElement(Ldalvik/system/DexFile;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    .local v0, "dexElement":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 210
    const/4 v2, 0x0

    const-string/jumbo v3, "pathList"

    invoke-static {v2, p1, v3}, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 211
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "dexElements"

    .line 210
    invoke-static {v2, v3, v0}, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->addObjToArrayField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v0    # "dexElement":Ljava/lang/Object;
    :cond_0
    return-void

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static addObjToArrayField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p0, "classObject"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 192
    const/4 v3, 0x0

    invoke-static {v3, p0, p1}, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 193
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 195
    .local v2, "oldArrayObj":[Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    .line 194
    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    .line 196
    .local v1, "newArrayObj":[Ljava/lang/Object;
    aput-object p2, v1, v5

    .line 197
    const/4 v3, 0x1

    array-length v4, v2

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method private static copyFileUsingFileStreams(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    const/4 v2, 0x0

    .line 258
    .local v2, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 260
    .local v4, "output":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 261
    .end local v2    # "input":Ljava/io/InputStream;
    .local v3, "input":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 262
    .end local v4    # "output":Ljava/io/OutputStream;
    .local v5, "output":Ljava/io/OutputStream;
    const/16 v6, 0x400

    :try_start_2
    new-array v0, v6, [B

    .line 264
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-lez v1, :cond_0

    .line 265
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 268
    .end local v0    # "buf":[B
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 269
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    throw v6

    .line 268
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 269
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 271
    return-void

    .line 268
    .end local v0    # "buf":[B
    .end local v1    # "bytesRead":I
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    goto :goto_1

    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_1
.end method

.method protected static native doDexOptSelf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static extractLibraryFromApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseDir"    # Ljava/lang/String;
    .param p2, "addDexName"    # Ljava/lang/String;

    .prologue
    .line 223
    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "shell.dex"

    invoke-direct {v5, p1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .local v5, "library":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 226
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v2, "apkFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 229
    .local v0, "apk":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .end local v0    # "apk":Ljava/util/zip/ZipFile;
    .local v1, "apk":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 232
    .local v3, "e":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->tryUnzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 233
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 237
    .end local v1    # "apk":Ljava/util/zip/ZipFile;
    .restart local v0    # "apk":Ljava/util/zip/ZipFile;
    .local v4, "ex":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    new-instance v6, Ljava/lang/UnsatisfiedLinkError;

    const-string v7, "fail to extract arch "

    invoke-direct {v6, v7}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 238
    .local v6, "unsatisfiedLinkError":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v6, v4}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 239
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v6    # "unsatisfiedLinkError":Ljava/lang/UnsatisfiedLinkError;
    :catchall_0
    move-exception v7

    .line 243
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 247
    :goto_2
    throw v7

    .line 243
    .end local v0    # "apk":Ljava/util/zip/ZipFile;
    .restart local v1    # "apk":Ljava/util/zip/ZipFile;
    .restart local v3    # "e":Ljava/util/zip/ZipEntry;
    :cond_0
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 251
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    :goto_3
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 244
    .restart local v3    # "e":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v3

    .line 246
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 244
    .end local v1    # "apk":Ljava/util/zip/ZipFile;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "apk":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v3

    .line 246
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 242
    .end local v0    # "apk":Ljava/util/zip/ZipFile;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "apk":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "apk":Ljava/util/zip/ZipFile;
    .restart local v0    # "apk":Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 236
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method public static getCRC32(Ljava/io/File;)J
    .locals 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 35
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 37
    .local v1, "crc32":Ljava/util/zip/CRC32;
    const-wide/16 v2, 0x0

    .line 38
    .local v2, "crc":J
    const/4 v5, 0x0

    .line 40
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    const/16 v8, 0x2000

    :try_start_1
    new-array v0, v8, [B

    .line 43
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, "length":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 44
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8, v7}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 47
    .end local v0    # "buffer":[B
    .end local v7    # "length":I
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 48
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_1
    const-wide/16 v2, 0x0

    .line 51
    if-eqz v5, :cond_0

    .line 52
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 58
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-wide v2

    .line 46
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "length":I
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v2

    .line 51
    if-eqz v6, :cond_2

    .line 52
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v5, v6

    .line 56
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 54
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .line 55
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 57
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 54
    .end local v0    # "buffer":[B
    .end local v7    # "length":I
    .local v4, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 55
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 50
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 51
    :goto_3
    if-eqz v5, :cond_3

    .line 52
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 56
    :cond_3
    :goto_4
    throw v8

    .line 54
    :catch_3
    move-exception v4

    .line 55
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 50
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 47
    :catch_4
    move-exception v4

    goto :goto_1
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p1, "classObject"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_2

    .line 167
    if-nez p1, :cond_1

    .line 168
    const/4 v0, 0x0

    .line 179
    :cond_0
    :goto_0
    return-object v0

    .line 170
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 173
    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    .line 175
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 176
    .local v0, "declaredField":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v0    # "declaredField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 182
    goto :goto_1

    .line 184
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :cond_3
    new-instance v2, Ljava/lang/NoSuchFieldException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static makeDexElement(Ldalvik/system/DexFile;)Ljava/lang/Object;
    .locals 13
    .param p0, "dexFile"    # Ldalvik/system/DexFile;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 107
    new-array v2, v12, [Ljava/lang/Class;

    const-class v8, Ljava/io/File;

    aput-object v8, v2, v10

    const-class v8, Ljava/util/zip/ZipFile;

    aput-object v8, v2, v9

    const-class v8, Ldalvik/system/DexFile;

    aput-object v8, v2, v11

    .line 109
    .local v2, "constructorA":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v3, v12, [Ljava/lang/Class;

    const-class v8, Ljava/io/File;

    aput-object v8, v3, v10

    const-class v8, Ljava/io/File;

    aput-object v8, v3, v9

    const-class v8, Ldalvik/system/DexFile;

    aput-object v8, v3, v11

    .line 111
    .local v3, "constructorB":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v8, 0x4

    new-array v4, v8, [Ljava/lang/Class;

    const-class v8, Ljava/io/File;

    aput-object v8, v4, v10

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v9

    const-class v8, Ljava/io/File;

    aput-object v8, v4, v11

    const-class v8, Ldalvik/system/DexFile;

    aput-object v8, v4, v12

    .line 114
    .local v4, "constructorC":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 116
    .local v0, "cElementClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v8, "dalvik.system.DexPathList$Element"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 117
    if-nez v0, :cond_0

    .line 118
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :catch_0
    move-exception v5

    .line 121
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 127
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v1, :cond_2

    .line 128
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 129
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p0, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 159
    :cond_1
    :goto_0
    return-object v7

    .line 133
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_1
    move-exception v8

    .line 138
    :cond_2
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 139
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v1, :cond_3

    .line 140
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 141
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object p0, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    goto :goto_0

    .line 143
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_2
    move-exception v8

    .line 149
    :cond_3
    :try_start_3
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 150
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v1, :cond_1

    .line 151
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 152
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p0, v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    goto :goto_0

    .line 155
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_3
    move-exception v6

    .line 156
    .local v6, "ee":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "make DexElement fail"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static tryUnzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "localPath"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 66
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    if-nez v4, :cond_0

    .line 67
    const-string v8, "ObRecordLog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tryUnzip: can not find entry "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in zip file."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v8, 0x0

    .line 100
    :goto_0
    return v8

    .line 72
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v6, "localFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v8

    invoke-static {v6}, Lcom/ali/mobisecenhance/ld/startup/MiniAddDex;->getCRC32(Ljava/io/File;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    .line 77
    :cond_1
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 78
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 80
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 82
    .local v5, "foStream":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 83
    invoke-virtual {p0, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 84
    .local v1, "bufferedInputStream2":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    .local v2, "bufferedOutputStream2":Ljava/io/BufferedOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 87
    .local v0, "bArr":[B
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    :goto_1
    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 89
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 88
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 93
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 94
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "bArr":[B
    .end local v1    # "bufferedInputStream2":Ljava/io/BufferedInputStream;
    .end local v2    # "bufferedOutputStream2":Ljava/io/BufferedOutputStream;
    .end local v5    # "foStream":Ljava/io/FileOutputStream;
    .end local v7    # "read":I
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v3

    .line 96
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "ObRecordLog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unzip "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " found a exception. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v8, 0x0

    goto/16 :goto_0
.end method
