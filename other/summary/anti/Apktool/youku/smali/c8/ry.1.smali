.class public Lc8/ry;
.super Ljava/lang/Object;
.source "BundleArchive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/atlas/framework/bundlestorage/BundleArchive$MisMatchException;
    }
.end annotation


# static fields
.field public static final DEXPATCH_DIR:Ljava/lang/String; = "dexpatch/"


# instance fields
.field private bundleDir:Ljava/io/File;

.field private final currentRevision:Lc8/uy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;J)V
    .locals 5
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "bundleDir"    # Ljava/io/File;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "uniqueTag"    # Ljava/lang/String;
    .param p5, "dexPatchVersion"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/ry;->bundleDir:Ljava/io/File;

    .line 283
    const-wide/16 v2, 0x0

    cmp-long v1, p5, v2

    if-lez v1, :cond_0

    .line 284
    iput-object p2, p0, Lc8/ry;->bundleDir:Ljava/io/File;

    .line 285
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dexpatch/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    .local v0, "revisionDir":Ljava/io/File;
    new-instance v1, Lc8/uy;

    invoke-direct {v1, p1, v0, p3}, Lc8/uy;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    iput-object v1, p0, Lc8/ry;->currentRevision:Lc8/uy;

    .line 292
    :goto_0
    return-void

    .line 288
    .end local v0    # "revisionDir":Ljava/io/File;
    :cond_0
    iput-object p2, p0, Lc8/ry;->bundleDir:Ljava/io/File;

    .line 289
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    .restart local v0    # "revisionDir":Ljava/io/File;
    new-instance v1, Lc8/uy;

    invoke-direct {v1, p1, v0, p3}, Lc8/uy;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    iput-object v1, p0, Lc8/ry;->currentRevision:Lc8/uy;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;J)V
    .locals 5
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "bundleDir"    # Ljava/io/File;
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "uniqueTag"    # Ljava/lang/String;
    .param p5, "dexPatchVersion"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/ry;->bundleDir:Ljava/io/File;

    .line 269
    const-wide/16 v2, 0x0

    cmp-long v1, p5, v2

    if-lez v1, :cond_0

    .line 270
    iput-object p2, p0, Lc8/ry;->bundleDir:Ljava/io/File;

    .line 272
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dexpatch/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 273
    .local v0, "revisionDir":Ljava/io/File;
    new-instance v1, Lc8/uy;

    invoke-direct {v1, p1, v0, p3}, Lc8/uy;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;)V

    iput-object v1, p0, Lc8/ry;->currentRevision:Lc8/uy;

    .line 279
    :goto_0
    return-void

    .line 275
    .end local v0    # "revisionDir":Ljava/io/File;
    :cond_0
    iput-object p2, p0, Lc8/ry;->bundleDir:Ljava/io/File;

    .line 276
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 277
    .restart local v0    # "revisionDir":Ljava/io/File;
    new-instance v1, Lc8/uy;

    invoke-direct {v1, p1, v0, p3}, Lc8/uy;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;)V

    iput-object v1, p0, Lc8/ry;->currentRevision:Lc8/uy;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;J)V
    .locals 8
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "bundleDir"    # Ljava/io/File;
    .param p3, "uniqueTag"    # Ljava/lang/String;
    .param p4, "dexPatchVersion"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object v6, p0, Lc8/ry;->bundleDir:Ljava/io/File;

    .line 231
    iput-object p2, p0, Lc8/ry;->bundleDir:Ljava/io/File;

    .line 232
    sget-object v4, Landroid/taobao/atlas/runtime/RuntimeVariables;->sCurrentProcessName:Ljava/lang/String;

    sget-object v5, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lc8/py;->updateHappend:Z

    if-nez v4, :cond_0

    .line 233
    invoke-virtual {p0, p3, p4, p5}, Lc8/ry;->purge(Ljava/lang/String;J)V

    .line 236
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-lez v4, :cond_2

    .line 238
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dexpatch/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    .local v3, "revisionDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 240
    new-instance v3, Ljava/io/File;

    .end local v3    # "revisionDir":Ljava/io/File;
    invoke-direct {v3, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    .restart local v3    # "revisionDir":Ljava/io/File;
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 246
    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v4

    invoke-virtual {v4, p1}, Lc8/iB;->isUpdated(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 247
    new-instance v4, Landroid/taobao/atlas/framework/bundlestorage/BundleArchive$MisMatchException;

    const-string/jumbo v5, "can not find bundle"

    invoke-direct {v4, v5}, Landroid/taobao/atlas/framework/bundlestorage/BundleArchive$MisMatchException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 243
    .end local v3    # "revisionDir":Ljava/io/File;
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v3    # "revisionDir":Ljava/io/File;
    goto :goto_0

    .line 249
    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "can not find bundle"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 252
    :cond_4
    const/4 v0, 0x0

    .line 254
    .local v0, "archiveRevision":Lc8/uy;
    :try_start_0
    new-instance v1, Lc8/uy;

    invoke-direct {v1, p1, v3}, Lc8/uy;-><init>(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .end local v0    # "archiveRevision":Lc8/uy;
    .local v1, "archiveRevision":Lc8/uy;
    if-eqz v1, :cond_5

    .line 260
    iput-object v1, p0, Lc8/ry;->currentRevision:Lc8/uy;

    .line 264
    :goto_1
    return-void

    .line 262
    :cond_5
    iput-object v6, p0, Lc8/ry;->currentRevision:Lc8/uy;

    goto :goto_1

    .line 255
    .end local v1    # "archiveRevision":Lc8/uy;
    .restart local v0    # "archiveRevision":Lc8/uy;
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 257
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_6

    .line 260
    iput-object v0, p0, Lc8/ry;->currentRevision:Lc8/uy;

    .line 262
    :goto_2
    throw v4

    :cond_6
    iput-object v6, p0, Lc8/ry;->currentRevision:Lc8/uy;

    goto :goto_2
.end method


# virtual methods
.method public findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lc8/ry;->currentRevision:Lc8/uy;

    invoke-virtual {v0, p1, p2}, Lc8/uy;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v0, p0, Lc8/ry;->currentRevision:Lc8/uy;

    invoke-virtual {v0, p1}, Lc8/uy;->findSoLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getArchiveFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lc8/ry;->currentRevision:Lc8/uy;

    invoke-virtual {v0}, Lc8/uy;->getRevisionFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getBundleDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lc8/ry;->bundleDir:Ljava/io/File;

    return-object v0
.end method

.method public getCurrentRevision()Lc8/uy;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lc8/ry;->currentRevision:Lc8/uy;

    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lc8/ry;->currentRevision:Lc8/uy;

    invoke-virtual {v0, p1}, Lc8/uy;->getResources(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isDexOpted()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lc8/ry;->currentRevision:Lc8/uy;

    invoke-virtual {v0}, Lc8/uy;->isDexOpted()Z

    move-result v0

    return v0
.end method

.method public newRevision(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;J)Lc8/uy;
    .locals 7
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "bundleDir"    # Ljava/io/File;
    .param p3, "input"    # Ljava/io/File;
    .param p4, "uniqueTag"    # Ljava/lang/String;
    .param p5, "dexPatchVersion"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->sCurrentProcessName:Ljava/lang/String;

    sget-object v4, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 297
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "can not update bundle in child process"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 299
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, p5, v4

    if-lez v3, :cond_1

    .line 300
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dexpatch/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 301
    .local v2, "revisionDir":Ljava/io/File;
    new-instance v0, Lc8/uy;

    invoke-direct {v0, p1, v2, p3}, Lc8/uy;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    .local v0, "newRevision":Lc8/uy;
    move-object v1, v0

    .line 306
    .end local v0    # "newRevision":Lc8/uy;
    .local v1, "newRevision":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 304
    .end local v1    # "newRevision":Ljava/lang/Object;
    .end local v2    # "revisionDir":Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 305
    .restart local v2    # "revisionDir":Ljava/io/File;
    new-instance v0, Lc8/uy;

    invoke-direct {v0, p1, v2, p3}, Lc8/uy;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    .restart local v0    # "newRevision":Lc8/uy;
    move-object v1, v0

    .line 306
    .restart local v1    # "newRevision":Ljava/lang/Object;
    goto :goto_0
.end method

.method public optDexFile()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lc8/ry;->currentRevision:Lc8/uy;

    invoke-virtual {v0}, Lc8/uy;->optDexFile()V

    .line 328
    return-void
.end method

.method public declared-synchronized purge(Ljava/lang/String;J)V
    .locals 10
    .param p1, "uniqueTag"    # Ljava/lang/String;
    .param p2, "dexPatchVersion"    # J

    .prologue
    const/4 v5, 0x0

    .line 350
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lc8/ry;->bundleDir:Ljava/io/File;

    const-string/jumbo v7, "dexpatch/"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 351
    .local v0, "dexPatchDir":Ljava/io/File;
    new-instance v6, Lc8/qy;

    invoke-direct {v6, p0, p2, p3}, Lc8/qy;-><init>(Lc8/ry;J)V

    invoke-virtual {v0, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 360
    .local v1, "dexPatchs":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 361
    array-length v7, v1

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v4, v1, v6

    .line 362
    .local v4, "patch":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 363
    invoke-static {v4}, Lc8/py;->deleteDirectory(Ljava/io/File;)V

    .line 361
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 369
    .end local v4    # "patch":Ljava/io/File;
    :cond_1
    iget-object v6, p0, Lc8/ry;->bundleDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 370
    .local v3, "dirs":[Ljava/io/File;
    array-length v6, v3

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v2, v3, v5

    .line 371
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "dexpatch"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 372
    const-string/jumbo v7, "BundleArchive"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "purge "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lc8/ry;->bundleDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {v2}, Lc8/py;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 377
    .end local v2    # "dir":Ljava/io/File;
    :cond_3
    monitor-exit p0

    return-void

    .line 350
    .end local v0    # "dexPatchDir":Ljava/io/File;
    .end local v1    # "dexPatchs":[Ljava/io/File;
    .end local v3    # "dirs":[Ljava/io/File;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
