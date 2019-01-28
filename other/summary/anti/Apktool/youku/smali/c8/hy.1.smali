.class public final Lc8/hy;
.super Ljava/lang/Object;
.source "BundleImpl.java"

# interfaces
.implements Lc8/Seq;


# instance fields
.field archive:Lc8/ry;

.field bundleDir:Ljava/io/File;

.field classloader:Lc8/fy;

.field disabled:Z

.field final location:Ljava/lang/String;

.field state:I


# direct methods
.method constructor <init>(Lc8/gy;)V
    .locals 18
    .param p1, "bcontext"    # Lc8/gy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 297
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 261
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lc8/hy;->disabled:Z

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 299
    .local v16, "start":J
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/gy;->location:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/hy;->location:Ljava/lang/String;

    .line 300
    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/hy;->location:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/iB;->getDexPatchBundleVersion(Ljava/lang/String;)J

    move-result-wide v6

    .line 301
    .local v6, "dexPatchVersion":J
    const/16 v2, 0x2766

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lc8/py;->notifyBundleListeners(ILc8/Seq;)V

    .line 302
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lc8/hy;->state:I

    .line 304
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_1

    .line 306
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/gy;->dexPatchDir:Ljava/io/File;

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/hy;->bundleDir:Ljava/io/File;

    .line 307
    new-instance v2, Lc8/ry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/hy;->location:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/hy;->bundleDir:Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v5, v0, Lc8/gy;->bundle_tag:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lc8/ry;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/hy;->archive:Lc8/ry;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 331
    :goto_0
    invoke-direct/range {p0 .. p0}, Lc8/hy;->resolveBundle()V

    .line 332
    sget-object v2, Lc8/py;->bundles:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/hy;->location:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lc8/py;->notifyBundleListeners(ILc8/Seq;)V

    .line 337
    sget-boolean v2, Lc8/py;->DEBUG_BUNDLES:Z

    if-eqz v2, :cond_0

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lc8/hy;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " loaded. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    :cond_0
    return-void

    .line 309
    :catch_0
    move-exception v2

    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/gy;->bundleDir:Ljava/io/File;

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/hy;->bundleDir:Ljava/io/File;

    .line 310
    new-instance v8, Lc8/ry;

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/hy;->location:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/hy;->bundleDir:Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v11, v0, Lc8/gy;->bundle_tag:Ljava/lang/String;

    const-wide/16 v12, -0x1

    invoke-direct/range {v8 .. v13}, Lc8/ry;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lc8/hy;->archive:Lc8/ry;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 316
    :catch_1
    move-exception v15

    .line 317
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v14, "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "BundleImpl"

    const-string/jumbo v3, "BundleImpl create failed!"

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    instance-of v2, v15, Landroid/taobao/atlas/framework/bundlestorage/BundleArchive$MisMatchException;

    if-eqz v2, :cond_2

    .line 321
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/hy;->archive:Lc8/ry;

    .line 322
    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v2

    invoke-virtual {v2}, Lc8/iB;->rollbackHardly()V

    .line 323
    invoke-static {}, Lc8/hB;->getInstance()Lc8/hB;

    move-result-object v2

    const-string/jumbo v3, "dd_bundle_mismatch"

    invoke-virtual {v2, v3, v14, v15}, Lc8/hB;->report(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 324
    throw v15

    .line 313
    .end local v14    # "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/gy;->bundleDir:Ljava/io/File;

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/hy;->bundleDir:Ljava/io/File;

    .line 314
    new-instance v8, Lc8/ry;

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/hy;->location:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/hy;->bundleDir:Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v11, v0, Lc8/gy;->bundle_tag:Ljava/lang/String;

    const-wide/16 v12, -0x1

    invoke-direct/range {v8 .. v13}, Lc8/ry;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lc8/hy;->archive:Lc8/ry;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 326
    .restart local v14    # "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v15    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lc8/hB;->getInstance()Lc8/hB;

    move-result-object v2

    const-string/jumbo v3, "bundle_resolve_fail"

    invoke-virtual {v2, v3, v14, v15}, Lc8/hB;->report(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 327
    new-instance v2, Lorg/osgi/framework/BundleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not load bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/hy;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;ZJ)V
    .locals 9
    .param p1, "bundleDir"    # Ljava/io/File;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "stream"    # Ljava/io/InputStream;
    .param p4, "file"    # Ljava/io/File;
    .param p5, "unique_tag"    # Ljava/lang/String;
    .param p6, "installForCurrentVersion"    # Z
    .param p7, "dexPatchVersion"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/hy;->disabled:Z

    .line 272
    iput-object p2, p0, Lc8/hy;->location:Ljava/lang/String;

    .line 273
    iput-object p1, p0, Lc8/hy;->bundleDir:Ljava/io/File;

    .line 274
    if-eqz p6, :cond_0

    .line 275
    const/16 v0, 0x2766

    invoke-static {v0, p0}, Lc8/py;->notifyBundleListeners(ILc8/Seq;)V

    .line 277
    :cond_0
    if-eqz p3, :cond_3

    .line 278
    new-instance v1, Lc8/ry;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lc8/ry;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;J)V

    iput-object v1, p0, Lc8/hy;->archive:Lc8/ry;

    .line 282
    :cond_1
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lc8/hy;->state:I

    .line 283
    if-eqz p6, :cond_2

    .line 284
    invoke-direct {p0}, Lc8/hy;->resolveBundle()V

    .line 285
    sget-object v0, Lc8/py;->bundles:Ljava/util/Map;

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lc8/py;->notifyBundleListeners(ILc8/Seq;)V

    .line 289
    :cond_2
    return-void

    .line 279
    :cond_3
    if-eqz p4, :cond_1

    .line 280
    new-instance v1, Lc8/ry;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lc8/ry;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;J)V

    iput-object v1, p0, Lc8/hy;->archive:Lc8/ry;

    goto :goto_0
.end method

.method private declared-synchronized resolveBundle()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 345
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lc8/hy;->archive:Lc8/ry;

    if-nez v5, :cond_0

    .line 346
    new-instance v5, Lorg/osgi/framework/BundleException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Not a valid bundle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/hy;->location:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 349
    :cond_0
    :try_start_1
    iget v5, p0, Lc8/hy;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v5, v6, :cond_1

    .line 374
    :goto_0
    monitor-exit p0

    return-void

    .line 353
    :cond_1
    :try_start_2
    iget-object v5, p0, Lc8/hy;->classloader:Lc8/fy;

    if-nez v5, :cond_4

    .line 355
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v5

    iget-object v6, p0, Lc8/hy;->location:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lc8/Xx;->getDependencyForBundle(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 356
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v6

    invoke-virtual {v6}, Lc8/ry;->getCurrentRevision()Lc8/uy;

    move-result-object v6

    invoke-virtual {v6}, Lc8/uy;->mappingInternalDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/lib:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    .line 357
    invoke-virtual {v6}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "java.library.path"

    .line 358
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "nativeLibDir":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 360
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 361
    .local v4, "str":Ljava/lang/String;
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v6

    invoke-virtual {v6, v4}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v2

    check-cast v2, Lc8/hy;

    .line 362
    .local v2, "impl":Lc8/hy;
    if-eqz v2, :cond_2

    .line 363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 364
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v6

    invoke-virtual {v6}, Lc8/ry;->getCurrentRevision()Lc8/uy;

    move-result-object v6

    invoke-virtual {v6}, Lc8/uy;->mappingInternalDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "lib"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    .local v1, "dependencyLibDir":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 369
    .end local v1    # "dependencyLibDir":Ljava/io/File;
    .end local v2    # "impl":Lc8/hy;
    .end local v4    # "str":Ljava/lang/String;
    :cond_3
    new-instance v5, Lc8/fy;

    invoke-direct {v5, p0, v0, v3}, Lc8/fy;-><init>(Lc8/hy;Ljava/util/List;Ljava/lang/String;)V

    iput-object v5, p0, Lc8/hy;->classloader:Lc8/fy;

    .line 371
    .end local v0    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "nativeLibDir":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x4

    iput v5, p0, Lc8/hy;->state:I

    .line 373
    const/4 v5, 0x0

    invoke-static {v5, p0}, Lc8/py;->notifyBundleListeners(ILc8/Seq;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public checkResources()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 496
    invoke-virtual {p0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v4

    invoke-virtual {v4}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/cz;->checkAsset(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 509
    :cond_0
    :goto_0
    return v3

    .line 500
    :cond_1
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v4

    iget-object v5, p0, Lc8/hy;->location:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lc8/Xx;->getBundleInfo(Ljava/lang/String;)Lc8/Yx;

    move-result-object v4

    invoke-virtual {v4}, Lc8/Yx;->getTotalDependency()Ljava/util/List;

    move-result-object v1

    .line 501
    .local v1, "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 502
    .local v0, "bundleName":Ljava/lang/String;
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v5

    invoke-virtual {v5, v0}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v2

    check-cast v2, Lc8/hy;

    .line 503
    .local v2, "dependencyBundle":Lc8/hy;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 504
    invoke-virtual {v2}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v5

    invoke-virtual {v5}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/cz;->checkAsset(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 509
    .end local v0    # "bundleName":Ljava/lang/String;
    .end local v2    # "dependencyBundle":Lc8/hy;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public checkValidate()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v2, p0, Lc8/hy;->classloader:Lc8/fy;

    if-eqz v2, :cond_2

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 482
    iget-object v2, p0, Lc8/hy;->classloader:Lc8/fy;

    invoke-virtual {v2}, Lc8/fy;->validateClasses()Z

    move-result v0

    .line 483
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 491
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v1

    .line 487
    .restart local v0    # "result":Z
    :cond_1
    invoke-virtual {p0}, Lc8/hy;->checkResources()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 491
    .end local v0    # "result":Z
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getArchive()Lc8/ry;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lc8/hy;->archive:Lc8/ry;

    return-object v0
.end method

.method public getBundleId()J
    .locals 2

    .prologue
    .line 384
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lc8/hy;->classloader:Lc8/fy;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lc8/hy;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 415
    iget v0, p0, Lc8/hy;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 416
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lc8/hy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has been uninstalled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_0
    iget-object v0, p0, Lc8/hy;->classloader:Lc8/fy;

    invoke-virtual {v0, p1}, Lc8/fy;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lc8/hy;->state:I

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lc8/hy;->disabled:Z

    return v0
.end method

.method public declared-synchronized optDexFile()V
    .locals 1

    .prologue
    .line 571
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ry;->optDexFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    monitor-exit p0

    return-void

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setActive()V
    .locals 1

    .prologue
    .line 474
    const/16 v0, 0x20

    iput v0, p0, Lc8/hy;->state:I

    .line 475
    return-void
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-virtual {p0}, Lc8/hy;->startBundle()V

    .line 441
    return-void
.end method

.method public declared-synchronized startBundle()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 454
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lc8/hy;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 455
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot start uninstalled bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lc8/hy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 457
    :cond_0
    :try_start_1
    iget v0, p0, Lc8/hy;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 471
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 460
    :cond_2
    :try_start_2
    iget v0, p0, Lc8/hy;->state:I

    if-ne v0, v2, :cond_3

    .line 461
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can not start bundle which is not resolved"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_3
    const/16 v0, 0x8

    iput v0, p0, Lc8/hy;->state:I

    .line 464
    const/16 v0, 0x2767

    invoke-static {v0, p0}, Lc8/py;->notifyBundleListeners(ILc8/Seq;)V

    .line 465
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lc8/py;->notifyBundleListeners(ILc8/Seq;)V

    .line 466
    sget-boolean v0, Lc8/py;->DEBUG_BUNDLES:Z

    if-eqz v0, :cond_1

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Bundle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/hy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " started."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation

    .prologue
    .line 445
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot stop bundle now"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lc8/hy;->location:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized uninstall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 550
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lc8/hy;->state:I

    if-ne v1, v2, :cond_0

    .line 551
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lc8/hy;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is already uninstalled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 553
    :cond_0
    :try_start_1
    iget v1, p0, Lc8/hy;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 555
    :try_start_2
    invoke-virtual {p0}, Lc8/hy;->stop()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 561
    :cond_1
    :goto_0
    const/4 v1, 0x1

    :try_start_3
    iput v1, p0, Lc8/hy;->state:I

    .line 563
    iget-object v1, p0, Lc8/hy;->classloader:Lc8/fy;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lc8/fy;->cleanup(Z)V

    .line 564
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/hy;->classloader:Lc8/fy;

    .line 566
    sget-object v1, Lc8/py;->bundles:Ljava/util/Map;

    invoke-virtual {p0}, Lc8/hy;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const/16 v1, 0x10

    invoke-static {v1, p0}, Lc8/py;->notifyBundleListeners(ILc8/Seq;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 568
    monitor-exit p0

    return-void

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x2

    :try_start_4
    invoke-static {v1, p0, v0}, Lc8/py;->notifyFrameworkListeners(ILc8/Seq;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
