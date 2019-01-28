.class public Lc8/vA;
.super Ljava/lang/Object;
.source "KernalVersionManager.java"


# static fields
.field private static volatile mInstance:Lc8/vA;

.field private static sBaseInfoManager:Lc8/vA;


# instance fields
.field private final BASELINEINFO:Ljava/io/File;

.field private final BASELINEINFO_DIR:Ljava/io/File;

.field private final BASELINEINFO_NEW:Ljava/io/File;

.field public CURRENT_STORAGE_LOCATION:Ljava/lang/String;

.field private CURRENT_UPDATE_BUNDLES:Ljava/lang/String;

.field private CURRENT_VERSIONAME:Ljava/lang/String;

.field private DEXPATCH_BUNDLES:Ljava/lang/String;

.field public DEXPATCH_STORAGE_LOCATION:Ljava/lang/String;

.field private LAST_STORAGE_LOCATION:Ljava/lang/String;

.field private LAST_UPDATE_BUNDLES:Ljava/lang/String;

.field private LAST_VERSIONNAME:Ljava/lang/String;

.field public cachePreVersion:Z

.field private currentUpdateBundles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public dexPatchBundles:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/vA;->currentUpdateBundles:Ljava/util/HashMap;

    .line 249
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/vA;->dexPatchBundles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/vA;->cachePreVersion:Z

    .line 290
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "bundleBaseline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/vA;->BASELINEINFO_DIR:Ljava/io/File;

    .line 291
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/vA;->BASELINEINFO_DIR:Ljava/io/File;

    const-string/jumbo v2, "updateInfo"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/vA;->BASELINEINFO:Ljava/io/File;

    .line 292
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/vA;->BASELINEINFO_DIR:Ljava/io/File;

    const-string/jumbo v2, "updateInfo_new"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/vA;->BASELINEINFO_NEW:Ljava/io/File;

    .line 293
    return-void
.end method

.method private getStorageState(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 684
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 685
    const-string/jumbo v3, "mounted"

    .line 703
    :goto_0
    return-object v3

    .line 687
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 688
    .local v2, "version":I
    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 689
    invoke-static {p1}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 693
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 694
    .local v1, "canonicalPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 695
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "canonicalExternal":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 698
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .end local v0    # "canonicalExternal":Ljava/lang/String;
    .end local v1    # "canonicalPath":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 703
    :cond_2
    const-string/jumbo v3, "unknown"

    goto :goto_0
.end method

.method public static instance()Lc8/vA;
    .locals 2

    .prologue
    .line 256
    sget-object v0, Lc8/vA;->mInstance:Lc8/vA;

    if-nez v0, :cond_1

    .line 257
    const-class v1, Lc8/vA;

    monitor-enter v1

    .line 258
    :try_start_0
    sget-object v0, Lc8/vA;->mInstance:Lc8/vA;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Lc8/vA;

    invoke-direct {v0}, Lc8/vA;-><init>()V

    sput-object v0, Lc8/vA;->mInstance:Lc8/vA;

    .line 261
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_1
    sget-object v0, Lc8/vA;->mInstance:Lc8/vA;

    return-object v0

    .line 261
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private shouldSyncUpdateInThisProcess()Z
    .locals 3

    .prologue
    .line 655
    sget-object v0, Lc8/CA;->PROCESS:Ljava/lang/String;

    .line 656
    .local v0, "processName":Ljava/lang/String;
    if-eqz v0, :cond_1

    sget-object v1, Lc8/CA;->baseContext:Landroid/content/Context;

    .line 657
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 658
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ":safemode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 660
    :cond_0
    const/4 v1, 0x1

    .line 662
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public currentVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lc8/vA;->CURRENT_VERSIONAME:Ljava/lang/String;

    return-object v0
.end method

.method public deleteDirectory(Ljava/io/File;)V
    .locals 3
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 404
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 405
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 408
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 409
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lc8/vA;->deleteDirectory(Ljava/io/File;)V

    .line 408
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 415
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public getBaseBundleVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    .prologue
    .line 419
    iget-object v0, p0, Lc8/vA;->currentUpdateBundles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDexPatchBundleVersion(Ljava/lang/String;)J
    .locals 2
    .param p1, "bundleName"    # Ljava/lang/String;

    .prologue
    .line 423
    iget-object v0, p0, Lc8/vA;->dexPatchBundles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lc8/vA;->dexPatchBundles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 426
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getUpdateBundles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lc8/vA;->currentUpdateBundles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 18

    .prologue
    .line 296
    invoke-static {}, Lc8/EA;->getInstance()Lc8/EA;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vA;->BASELINEINFO_DIR:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lc8/EA;->LockExclusive(Ljava/io/File;)Z

    .line 297
    invoke-direct/range {p0 .. p0}, Lc8/vA;->shouldSyncUpdateInThisProcess()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 298
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/vA;->BASELINEINFO_NEW:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 299
    sget-object v15, Lc8/CA;->baseContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lc8/vA;->killChildProcesses(Landroid/content/Context;)V

    .line 300
    const/4 v12, 0x3

    .line 302
    .local v12, "retry":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/vA;->BASELINEINFO:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 303
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/vA;->BASELINEINFO:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 305
    :cond_1
    add-int/lit8 v12, v12, -0x1

    .line 306
    if-lez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/vA;->BASELINEINFO:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 307
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/vA;->BASELINEINFO_NEW:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 308
    .local v10, "length":J
    const/4 v12, 0x3

    .line 310
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/vA;->BASELINEINFO_NEW:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vA;->BASELINEINFO:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 313
    add-int/lit8 v12, v12, -0x1

    .line 314
    if-gtz v12, :cond_3

    .line 315
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/vA;->BASELINEINFO:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v15, v10, v16

    if-eqz v15, :cond_5

    .line 316
    new-instance v15, Ljava/lang/RuntimeException;

    const-string/jumbo v16, "rename baselineinfo fail"

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 320
    .end local v10    # "length":J
    .end local v12    # "retry":I
    :cond_5
    invoke-static {}, Lc8/EA;->getInstance()Lc8/EA;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vA;->BASELINEINFO_DIR:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lc8/EA;->unLock(Ljava/io/File;)V

    .line 322
    const-string/jumbo v2, ""

    .line 323
    .local v2, "baselineVersion":Ljava/lang/String;
    const-string/jumbo v14, ""

    .line 324
    .local v14, "updateBundles":Ljava/lang/String;
    const-string/jumbo v9, ""

    .line 325
    .local v9, "lastVersionName":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 326
    .local v8, "lastUpdateBundles":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 327
    .local v7, "lastStorageLocation":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 328
    .local v3, "currentStorageLocation":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 329
    .local v5, "dexpatchStorageLocation":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 330
    .local v4, "dexPatchBundles":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/vA;->BASELINEINFO:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 344
    :try_start_0
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v15, Ljava/io/BufferedInputStream;

    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vA;->BASELINEINFO:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v15 .. v16}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 345
    .local v6, "input":Ljava/io/DataInputStream;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    .line 346
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    .line 347
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 348
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    .line 350
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 352
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 353
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lc8/vA;->cachePreVersion:Z

    .line 354
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 356
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .local v13, "storage":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lc8/vA;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "mounted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 358
    :cond_6
    const-string/jumbo v4, ""

    .line 359
    const-string/jumbo v5, ""

    .line 363
    .end local v13    # "storage":Ljava/io/File;
    :cond_7
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 365
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .restart local v13    # "storage":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lc8/vA;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "mounted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 367
    :cond_8
    new-instance v15, Ljava/io/IOException;

    const-string/jumbo v16, "update bundle location storage is not usable"

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v6    # "input":Ljava/io/DataInputStream;
    .end local v13    # "storage":Ljava/io/File;
    :catch_0
    move-exception v15

    sget-object v15, Lc8/CA;->PROCESS:Ljava/lang/String;

    sget-object v16, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 376
    invoke-virtual/range {p0 .. p0}, Lc8/vA;->rollbackHardly()V

    .line 378
    :cond_9
    sget-object v15, Lc8/CA;->baseContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lc8/vA;->killChildProcesses(Landroid/content/Context;)V

    .line 379
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    invoke-static {v15}, Landroid/os/Process;->killProcess(I)V

    .line 382
    :cond_a
    :goto_0
    move-object/from16 v0, p0

    iput-object v9, v0, Lc8/vA;->LAST_VERSIONNAME:Ljava/lang/String;

    .line 383
    move-object/from16 v0, p0

    iput-object v8, v0, Lc8/vA;->LAST_UPDATE_BUNDLES:Ljava/lang/String;

    .line 384
    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/vA;->CURRENT_VERSIONAME:Ljava/lang/String;

    .line 385
    move-object/from16 v0, p0

    iput-object v14, v0, Lc8/vA;->CURRENT_UPDATE_BUNDLES:Ljava/lang/String;

    .line 386
    move-object/from16 v0, p0

    iput-object v4, v0, Lc8/vA;->DEXPATCH_BUNDLES:Ljava/lang/String;

    .line 387
    move-object/from16 v0, p0

    iput-object v7, v0, Lc8/vA;->LAST_STORAGE_LOCATION:Ljava/lang/String;

    .line 388
    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/vA;->CURRENT_STORAGE_LOCATION:Ljava/lang/String;

    .line 389
    move-object/from16 v0, p0

    iput-object v5, v0, Lc8/vA;->DEXPATCH_STORAGE_LOCATION:Ljava/lang/String;

    .line 390
    invoke-virtual/range {p0 .. p0}, Lc8/vA;->parseUpdatedBundles()V

    .line 391
    return-void

    .line 372
    .restart local v6    # "input":Ljava/io/DataInputStream;
    :cond_b
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v15

    goto :goto_0
.end method

.method public isCachePreVersion()Z
    .locals 3

    .prologue
    .line 443
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 444
    .local v0, "flag":Z
    if-eqz v0, :cond_0

    .line 445
    const-string/jumbo v1, "KernalVersionManager"

    const-string/jumbo v2, "can no be inlined"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    iget-boolean v1, p0, Lc8/vA;->cachePreVersion:Z

    return v1
.end method

.method public isDexPatched(Ljava/lang/String;)Z
    .locals 4
    .param p1, "bundleName"    # Ljava/lang/String;

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lc8/vA;->getDexPatchBundleVersion(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdated(Ljava/lang/String;)Z
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Lc8/vA;->getBaseBundleVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    const/4 v0, 0x1

    .line 455
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public killChildProcesses(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 668
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    int-to-long v4, v6

    .line 669
    .local v4, "uid":J
    const-string/jumbo v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 670
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 671
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 672
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 673
    .local v2, "b":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    int-to-long v6, v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_0

    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 674
    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 681
    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v2    # "b":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "i":I
    .end local v4    # "uid":J
    :catch_0
    move-exception v6

    :cond_1
    return-void
.end method

.method public lastVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lc8/vA;->LAST_VERSIONNAME:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized parseUpdatedBundles()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 464
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lc8/vA;->CURRENT_UPDATE_BUNDLES:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 465
    iget-object v4, p0, Lc8/vA;->CURRENT_UPDATE_BUNDLES:Ljava/lang/String;

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "bundles":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 467
    array-length v5, v1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 468
    .local v0, "bundleInfo":Ljava/lang/String;
    const-string/jumbo v6, "@"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "infoItems":[Ljava/lang/String;
    iget-object v6, p0, Lc8/vA;->currentUpdateBundles:Ljava/util/HashMap;

    const/4 v7, 0x0

    aget-object v7, v2, v7

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 473
    .end local v0    # "bundleInfo":Ljava/lang/String;
    .end local v1    # "bundles":[Ljava/lang/String;
    .end local v2    # "infoItems":[Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lc8/vA;->DEXPATCH_BUNDLES:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 474
    iget-object v4, p0, Lc8/vA;->DEXPATCH_BUNDLES:Ljava/lang/String;

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 475
    .restart local v1    # "bundles":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    .line 476
    array-length v4, v1

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 477
    .restart local v0    # "bundleInfo":Ljava/lang/String;
    const-string/jumbo v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 478
    .restart local v2    # "infoItems":[Ljava/lang/String;
    iget-object v5, p0, Lc8/vA;->dexPatchBundles:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 482
    .end local v0    # "bundleInfo":Ljava/lang/String;
    .end local v1    # "bundles":[Ljava/lang/String;
    .end local v2    # "infoItems":[Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 464
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public removeBaseLineInfo()V
    .locals 3

    .prologue
    .line 394
    iget-object v1, p0, Lc8/vA;->BASELINEINFO_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lc8/vA;->BASELINEINFO_DIR:Ljava/io/File;

    invoke-virtual {p0, v1}, Lc8/vA;->deleteDirectory(Ljava/io/File;)V

    .line 397
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "bundleupdate"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 398
    .local v0, "bundleupdate":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    invoke-virtual {p0, v0}, Lc8/vA;->deleteDirectory(Ljava/io/File;)V

    .line 401
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 277
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/vA;->LAST_VERSIONNAME:Ljava/lang/String;

    .line 278
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/vA;->LAST_UPDATE_BUNDLES:Ljava/lang/String;

    .line 279
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/vA;->LAST_STORAGE_LOCATION:Ljava/lang/String;

    .line 280
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/vA;->CURRENT_STORAGE_LOCATION:Ljava/lang/String;

    .line 281
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/vA;->DEXPATCH_STORAGE_LOCATION:Ljava/lang/String;

    .line 282
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/vA;->CURRENT_VERSIONAME:Ljava/lang/String;

    .line 283
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/vA;->CURRENT_UPDATE_BUNDLES:Ljava/lang/String;

    .line 284
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/vA;->DEXPATCH_BUNDLES:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lc8/vA;->currentUpdateBundles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 286
    iget-object v0, p0, Lc8/vA;->dexPatchBundles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 287
    return-void
.end method

.method public rollback()V
    .locals 8

    .prologue
    .line 503
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lc8/vA;->BASELINEINFO_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 504
    .local v0, "baseinfoDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 505
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 518
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "baselineInfo"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 520
    .local v2, "out":Ljava/io/DataOutputStream;
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 521
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 522
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 523
    iget-boolean v3, p0, Lc8/vA;->cachePreVersion:Z

    if-eqz v3, :cond_1

    .line 524
    iget-object v3, p0, Lc8/vA;->LAST_VERSIONNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 525
    iget-object v3, p0, Lc8/vA;->LAST_UPDATE_BUNDLES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 526
    iget-object v3, p0, Lc8/vA;->LAST_STORAGE_LOCATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 532
    :goto_0
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 533
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 534
    iget-boolean v3, p0, Lc8/vA;->cachePreVersion:Z

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 535
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 536
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 542
    .end local v2    # "out":Ljava/io/DataOutputStream;
    :goto_1
    return-void

    .line 528
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :cond_1
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 529
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 530
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 537
    .end local v2    # "out":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    .line 538
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 539
    invoke-virtual {p0}, Lc8/vA;->rollbackHardly()V

    goto :goto_1
.end method

.method public rollbackHardly()V
    .locals 4

    .prologue
    .line 486
    :try_start_0
    iget-object v0, p0, Lc8/vA;->BASELINEINFO_DIR:Ljava/io/File;

    .line 487
    .local v0, "baseLineDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 488
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 490
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "deprecated_mark"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 491
    .local v1, "deprecated":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 492
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 494
    :cond_1
    iget-object v2, p0, Lc8/vA;->BASELINEINFO:Ljava/io/File;

    .line 495
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 496
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v0    # "baseLineDir":Ljava/io/File;
    .end local v1    # "deprecated":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public saveDexPatchInfo(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 12
    .param p2, "storageLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 547
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 548
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "-1"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lc8/vA;->dexPatchBundles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 549
    iget-object v7, p0, Lc8/vA;->dexPatchBundles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 551
    :cond_0
    iget-object v9, p0, Lc8/vA;->dexPatchBundles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 555
    .end local v3    # "entry":Ljava/util/Map$Entry;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, ""

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    .local v1, "bundleList":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lc8/vA;->dexPatchBundles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 558
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 559
    .restart local v3    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 560
    const-string/jumbo v7, "@"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 562
    const-string/jumbo v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 565
    .end local v3    # "entry":Ljava/util/Map$Entry;
    :cond_2
    iget-object v0, p0, Lc8/vA;->BASELINEINFO_DIR:Ljava/io/File;

    .line 566
    .local v0, "baseinfoFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 567
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 569
    :cond_3
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lc8/vA;->BASELINEINFO:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 570
    .local v5, "newBaselineInfoFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 571
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 574
    :cond_4
    new-instance v6, Ljava/io/DataOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 575
    .local v6, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "bundleListStr":Ljava/lang/String;
    iget-object v7, p0, Lc8/vA;->LAST_VERSIONNAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 587
    iget-object v7, p0, Lc8/vA;->LAST_UPDATE_BUNDLES:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lc8/vA;->LAST_UPDATE_BUNDLES:Ljava/lang/String;

    :goto_2
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 588
    iget-object v7, p0, Lc8/vA;->LAST_STORAGE_LOCATION:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lc8/vA;->LAST_STORAGE_LOCATION:Ljava/lang/String;

    :goto_3
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 591
    iget-object v7, p0, Lc8/vA;->CURRENT_VERSIONAME:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lc8/CA;->INSTALLED_VERSIONNAME:Ljava/lang/String;

    :goto_4
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 592
    iget-object v7, p0, Lc8/vA;->CURRENT_UPDATE_BUNDLES:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 593
    iget-object v7, p0, Lc8/vA;->CURRENT_STORAGE_LOCATION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 596
    if-eqz p2, :cond_8

    .end local p2    # "storageLocation":Ljava/lang/String;
    :goto_5
    invoke-virtual {v6, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 597
    iget-boolean v7, p0, Lc8/vA;->cachePreVersion:Z

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 598
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 599
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 600
    return-void

    .line 587
    .restart local p2    # "storageLocation":Ljava/lang/String;
    :cond_5
    const-string/jumbo v7, ""

    goto :goto_2

    .line 588
    :cond_6
    const-string/jumbo v7, ""

    goto :goto_3

    .line 591
    :cond_7
    iget-object v7, p0, Lc8/vA;->CURRENT_VERSIONAME:Ljava/lang/String;

    goto :goto_4

    .line 596
    :cond_8
    const-string/jumbo p2, ""

    goto :goto_5
.end method

.method public saveUpdateInfo(Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;)V
    .locals 11
    .param p1, "newBaselineVersion"    # Ljava/lang/String;
    .param p3, "cachePreVersion"    # Z
    .param p4, "storageLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    .local p2, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, ""

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    .local v1, "bundleList":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 606
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 607
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 608
    const-string/jumbo v7, "@"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 610
    const-string/jumbo v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 612
    .end local v3    # "entry":Ljava/util/Map$Entry;
    :cond_0
    iget-object v0, p0, Lc8/vA;->BASELINEINFO_DIR:Ljava/io/File;

    .line 613
    .local v0, "baseinfoFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 614
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 616
    :cond_1
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lc8/vA;->BASELINEINFO_NEW:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 617
    .local v5, "newBaselineInfoFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 618
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 620
    :cond_2
    new-instance v6, Ljava/io/DataOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 621
    .local v6, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, "bundleListStr":Ljava/lang/String;
    if-eqz p3, :cond_6

    .line 635
    iget-object v7, p0, Lc8/vA;->CURRENT_VERSIONAME:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lc8/vA;->CURRENT_VERSIONAME:Ljava/lang/String;

    :goto_1
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 636
    iget-object v7, p0, Lc8/vA;->CURRENT_UPDATE_BUNDLES:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lc8/vA;->CURRENT_UPDATE_BUNDLES:Ljava/lang/String;

    :goto_2
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 637
    iget-object v7, p0, Lc8/vA;->CURRENT_STORAGE_LOCATION:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lc8/vA;->CURRENT_STORAGE_LOCATION:Ljava/lang/String;

    :goto_3
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 643
    :goto_4
    invoke-virtual {v6, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 645
    if-eqz p4, :cond_7

    .end local p4    # "storageLocation":Ljava/lang/String;
    :goto_5
    invoke-virtual {v6, p4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 647
    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 648
    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v6, p3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 650
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 651
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 652
    return-void

    .line 635
    .restart local p4    # "storageLocation":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, ""

    goto :goto_1

    .line 636
    :cond_4
    const-string/jumbo v7, ""

    goto :goto_2

    .line 637
    :cond_5
    const-string/jumbo v7, ""

    goto :goto_3

    .line 639
    :cond_6
    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 640
    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 641
    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_4

    .line 645
    :cond_7
    const-string/jumbo p4, ""

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 269
    const-string/jumbo v1, "%s@%s--%s--dexPatchBundles:%s"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lc8/vA;->LAST_VERSIONNAME:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, p0, Lc8/vA;->CURRENT_VERSIONAME:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lc8/vA;->LAST_UPDATE_BUNDLES:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-object v0, p0, Lc8/vA;->DEXPATCH_BUNDLES:Ljava/lang/String;

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v2, v3

    .line 269
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 272
    :cond_0
    iget-object v0, p0, Lc8/vA;->DEXPATCH_BUNDLES:Ljava/lang/String;

    goto :goto_0
.end method
