.class public Lc8/uy;
.super Ljava/lang/Object;
.source "BundleArchiveRevision.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/atlas/framework/bundlestorage/BundleArchiveRevision$DexLoadException;
    }
.end annotation


# static fields
.field static final BUNDLE_FILE_NAME:Ljava/lang/String; = "bundle.zip"

.field static final BUNDLE_LEX_FILE:Ljava/lang/String; = "bundle.lex"

.field static final BUNDLE_ODEX_FILE:Ljava/lang/String; = "bundle.dex"

.field static final FILE_PROTOCOL:Ljava/lang/String; = "file:"

.field static final REFERENCE_PROTOCOL:Ljava/lang/String; = "reference:"


# instance fields
.field private final bundleFile:Ljava/io/File;

.field private dexClassLoader:Ljava/lang/ClassLoader;

.field private dexFile:Ldalvik/system/DexFile;

.field private externalStorage:Z

.field private isDexOptDone:Z

.field private final location:Ljava/lang/String;

.field private manifest:Ljava/util/jar/Manifest;

.field private patchDexFileForDebug:Ldalvik/system/DexFile;

.field private final revisionDir:Ljava/io/File;

.field private final revisionLocation:Ljava/lang/String;

.field private zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 5
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "revisionDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-boolean v4, p0, Lc8/uy;->isDexOptDone:Z

    .line 274
    iput-boolean v4, p0, Lc8/uy;->externalStorage:Z

    .line 335
    iput-object p1, p0, Lc8/uy;->location:Ljava/lang/String;

    .line 336
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    iput-boolean v4, p0, Lc8/uy;->externalStorage:Z

    .line 341
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "meta"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 342
    .local v1, "metafile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 344
    .local v0, "in":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/uy;->revisionLocation:Ljava/lang/String;

    .line 345
    invoke-static {v0}, Lc8/YA;->quietClose(Ljava/io/Closeable;)V

    .line 346
    iput-object p2, p0, Lc8/uy;->revisionDir:Ljava/io/File;

    .line 350
    iget-object v2, p0, Lc8/uy;->revisionLocation:Ljava/lang/String;

    const-string/jumbo v3, "reference:"

    invoke-static {v2, v3}, Lc8/aB;->startWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 351
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lc8/uy;->revisionLocation:Ljava/lang/String;

    const-string/jumbo v4, "reference:"

    invoke-static {v3, v4}, Lc8/aB;->substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    .line 355
    :goto_1
    return-void

    .line 339
    .end local v0    # "in":Ljava/io/DataInputStream;
    .end local v1    # "metafile":Ljava/io/File;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/uy;->externalStorage:Z

    goto :goto_0

    .line 348
    .restart local v1    # "metafile":Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not find meta file in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 353
    .restart local v0    # "in":Ljava/io/DataInputStream;
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "bundle.zip"

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    goto :goto_1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "revisionDir"    # Ljava/io/File;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-boolean v3, p0, Lc8/uy;->isDexOptDone:Z

    .line 274
    iput-boolean v3, p0, Lc8/uy;->externalStorage:Z

    .line 301
    iput-object p2, p0, Lc8/uy;->revisionDir:Ljava/io/File;

    .line 302
    iput-object p1, p0, Lc8/uy;->location:Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lc8/uy;->revisionDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    iget-object v1, p0, Lc8/uy;->revisionDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 306
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    iput-boolean v3, p0, Lc8/uy;->externalStorage:Z

    .line 311
    :goto_0
    invoke-direct {p0, p3}, Lc8/uy;->shouldCopyInstallFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 312
    invoke-direct {p0, p2, p3}, Lc8/uy;->isSameDriver(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 313
    const-string/jumbo v1, "file:"

    iput-object v1, p0, Lc8/uy;->revisionLocation:Ljava/lang/String;

    .line 314
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "bundle.zip"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    .line 315
    iget-object v1, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    invoke-virtual {p3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 316
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 317
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    invoke-static {v1, v2}, Lc8/OA;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 324
    .end local v0    # "result":Z
    :cond_1
    :goto_1
    iget-object v1, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    invoke-virtual {p0, v1}, Lc8/uy;->installSoLib(Ljava/io/File;)V

    .line 330
    :goto_2
    invoke-virtual {p0}, Lc8/uy;->updateMetadata()V

    .line 331
    return-void

    .line 309
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/uy;->externalStorage:Z

    goto :goto_0

    .line 320
    :cond_3
    const-string/jumbo v1, "file:"

    iput-object v1, p0, Lc8/uy;->revisionLocation:Ljava/lang/String;

    .line 321
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "bundle.zip"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    .line 322
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    invoke-static {v1, v2}, Lc8/OA;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    goto :goto_1

    .line 326
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reference:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/uy;->revisionLocation:Ljava/lang/String;

    .line 327
    iput-object p3, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    .line 328
    invoke-virtual {p0, p3}, Lc8/uy;->installSoLib(Ljava/io/File;)V

    goto :goto_2
.end method

.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "revisionDir"    # Ljava/io/File;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-boolean v2, p0, Lc8/uy;->isDexOptDone:Z

    .line 274
    iput-boolean v2, p0, Lc8/uy;->externalStorage:Z

    .line 278
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-class v0, Landroid/app/PreVerifier;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 282
    :cond_0
    iput-object p2, p0, Lc8/uy;->revisionDir:Ljava/io/File;

    .line 283
    iput-object p1, p0, Lc8/uy;->location:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lc8/uy;->revisionDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lc8/uy;->revisionDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 287
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    iput-boolean v2, p0, Lc8/uy;->externalStorage:Z

    .line 292
    :goto_0
    const-string/jumbo v0, "file:"

    iput-object v0, p0, Lc8/uy;->revisionLocation:Ljava/lang/String;

    .line 293
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "bundle.zip"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    .line 294
    iget-object v0, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    invoke-static {p3, v0}, Lc8/OA;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 295
    iget-object v0, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lc8/uy;->installSoLib(Ljava/io/File;)V

    .line 296
    invoke-virtual {p0}, Lc8/uy;->updateMetadata()V

    .line 297
    return-void

    .line 290
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/uy;->externalStorage:Z

    goto :goto_0
.end method

.method private static _1loadClass(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p0 .. p2}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static _3forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private ensureZipFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    iget-object v0, p0, Lc8/uy;->zipFile:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_0

    .line 865
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lc8/uy;->zipFile:Ljava/util/zip/ZipFile;

    .line 867
    :cond_0
    return-void
.end method

.method private extractEntry(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V
    .locals 14
    .param p1, "zip"    # Ljava/util/zip/ZipFile;
    .param p2, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p3, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, "entryName":Ljava/lang/String;
    const-string/jumbo v9, "%s%s%s%s%s"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p3, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "lib"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    .line 707
    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 706
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 708
    .local v8, "targetPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 709
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 710
    .local v2, "decompressDirFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 711
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 732
    .end local v2    # "decompressDirFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    const/4 v9, 0x0

    const-string/jumbo v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 715
    .local v4, "fileDir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
    .local v5, "fileDirFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 717
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 719
    :cond_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 722
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 723
    .local v0, "bi":Ljava/io/BufferedInputStream;
    const/16 v9, 0x400

    new-array v6, v9, [B

    .line 724
    .local v6, "readContent":[B
    invoke-virtual {v0, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .line 725
    .local v7, "readCount":I
    :goto_1
    const/4 v9, -0x1

    if-eq v7, v9, :cond_3

    .line 726
    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 727
    invoke-virtual {v0, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    goto :goto_1

    .line 729
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 730
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0
.end method

.method private findPatchClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/String;
    .param p2, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 799
    iget-object v0, p0, Lc8/uy;->patchDexFileForDebug:Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lc8/uy;->patchDexFileForDebug:Ldalvik/system/DexFile;

    invoke-static {v0, p1, p2}, Lc8/uy;->_1loadClass(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 802
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSameDriver(Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .param p1, "file1"    # Ljava/io/File;
    .param p2, "file2"    # Ljava/io/File;

    .prologue
    .line 858
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "/"

    const-string/jumbo v4, "/"

    invoke-static {v2, v3, v4}, Lc8/aB;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, "mount1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "/"

    const-string/jumbo v4, "/"

    invoke-static {v2, v3, v4}, Lc8/aB;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 860
    .local v1, "mount2":Ljava/lang/String;
    invoke-static {v0, v1}, Lc8/aB;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private optPatchDexFile()V
    .locals 10

    .prologue
    .line 806
    new-instance v0, Ljava/io/File;

    sget-object v4, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v5, "debug_storage"

    invoke-virtual {v4, v5}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lc8/uy;->location:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 807
    .local v0, "debugBundleDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "patch.zip"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 808
    .local v3, "patchFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 813
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    sget-object v5, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "debug_storage"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v5, p0, Lc8/uy;->location:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 814
    .local v2, "internalDebugBundleDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 815
    sget-object v4, Landroid/taobao/atlas/runtime/RuntimeVariables;->sDexLoadBooster:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "loadDex"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sget-object v5, Landroid/taobao/atlas/runtime/RuntimeVariables;->sDexLoadBooster:Ljava/lang/Object;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 816
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "patch.dex"

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    .line 815
    invoke-static {v4, v5, v6}, Lc8/uy;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldalvik/system/DexFile;

    iput-object v4, p0, Lc8/uy;->patchDexFileForDebug:Ldalvik/system/DexFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    .end local v2    # "internalDebugBundleDir":Ljava/io/File;
    :cond_0
    return-void

    .line 817
    :catch_0
    move-exception v1

    .line 818
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private shouldCopyInstallFile(Ljava/io/File;)Z
    .locals 3
    .param p1, "bundleFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 359
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "bundle file not exists"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 361
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 362
    .local v0, "libDir":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lc8/xy;->LexFile:Lc8/Ay;

    if-eqz v1, :cond_1

    sget-object v1, Lc8/xy;->LexFile:Lc8/Ay;

    .line 363
    invoke-virtual {v1}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 364
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mt65"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 366
    :cond_2
    const/4 v1, 0x1

    .line 368
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkDexValid(Ldalvik/system/DexFile;)Z
    .locals 5
    .param p1, "dexFile"    # Ldalvik/system/DexFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 632
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v3

    iget-object v4, p0, Lc8/uy;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc8/Xx;->getBundleInfo(Ljava/lang/String;)Lc8/Yx;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Yx;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, "applicationName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 634
    const/4 v1, 0x0

    .line 636
    .local v1, "clazz":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 639
    :goto_0
    if-nez v1, :cond_0

    .line 641
    :try_start_1
    new-instance v3, Lc8/sy;

    invoke-direct {v3, p0}, Lc8/sy;-><init>(Lc8/uy;)V

    invoke-static {p1, v0, v3}, Lc8/uy;->_1loadClass(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 654
    .end local v1    # "clazz":Ljava/lang/Class;
    :goto_1
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 650
    .restart local v1    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 9
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
    .line 737
    :try_start_0
    sget-object v0, Lc8/xy;->LexFile:Lc8/Ay;

    if-eqz v0, :cond_2

    sget-object v0, Lc8/xy;->LexFile:Lc8/Ay;

    invoke-virtual {v0}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 738
    iget-object v0, p0, Lc8/uy;->dexClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 739
    new-instance v8, Ljava/io/File;

    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "lib"

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 740
    .local v8, "libDir":Ljava/io/File;
    new-instance v0, Lc8/ty;

    iget-object v1, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lc8/uy;->revisionDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc8/ty;-><init>(Lc8/uy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lc8/uy;->dexClassLoader:Ljava/lang/ClassLoader;

    .line 762
    .end local v8    # "libDir":Ljava/io/File;
    :cond_0
    sget-object v0, Lc8/xy;->DexClassLoader_findClass:Lc8/Dy;

    iget-object v1, p0, Lc8/uy;->dexClassLoader:Ljava/lang/ClassLoader;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 795
    :cond_1
    :goto_0
    return-object v6

    .line 766
    :cond_2
    invoke-virtual {p0}, Lc8/uy;->isDexOpted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 767
    invoke-virtual {p0}, Lc8/uy;->optDexFile()V

    .line 770
    :cond_3
    iget-object v0, p0, Lc8/uy;->dexFile:Ldalvik/system/DexFile;

    if-nez v0, :cond_4

    .line 771
    invoke-virtual {p0}, Lc8/uy;->optDexFile()V

    .line 773
    :cond_4
    invoke-static {}, Lc8/py;->isDeubgMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 774
    invoke-direct {p0, p1, p2}, Lc8/uy;->findPatchClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 775
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v6, :cond_1

    .line 778
    iget-object v0, p0, Lc8/uy;->patchDexFileForDebug:Ldalvik/system/DexFile;

    if-nez v0, :cond_1

    .line 782
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    iget-object v0, p0, Lc8/uy;->dexFile:Ldalvik/system/DexFile;

    invoke-static {v0, p1, p2}, Lc8/uy;->_1loadClass(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 783
    .restart local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 786
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v7

    .line 787
    .local v7, "e":Ljava/lang/Exception;
    instance-of v0, v7, Ljava/lang/ClassNotFoundException;

    if-nez v0, :cond_7

    .line 789
    instance-of v0, v7, Landroid/taobao/atlas/framework/bundlestorage/BundleArchiveRevision$DexLoadException;

    if-eqz v0, :cond_6

    .line 790
    check-cast v7, Landroid/taobao/atlas/framework/bundlestorage/BundleArchiveRevision$DexLoadException;

    .end local v7    # "e":Ljava/lang/Exception;
    throw v7

    .line 792
    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_6
    const-string/jumbo v0, "Framework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception while find class in archive revision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 794
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public findDebugSoLibrary(Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .param p1, "libraryName"    # Ljava/lang/String;

    .prologue
    .line 465
    new-instance v2, Ljava/io/File;

    sget-object v8, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v9, "debug_storage"

    invoke-virtual {v8, v9}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    iget-object v9, p0, Lc8/uy;->location:Ljava/lang/String;

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 466
    .local v2, "debugBundleDir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "patch.zip"

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 467
    .local v7, "patchFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 468
    invoke-virtual {p0}, Lc8/uy;->mappingDebugInternalDirectory()Ljava/io/File;

    move-result-object v3

    .line 469
    .local v3, "debugInternalDirectory":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v8, "%s%s%s%s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "lib"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 500
    .end local v3    # "debugInternalDirectory":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    :goto_0
    return-object v5

    .line 473
    .restart local v3    # "debugInternalDirectory":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    .line 475
    .local v0, "bundleZip":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    .end local v0    # "bundleZip":Ljava/util/zip/ZipFile;
    .local v1, "bundleZip":Ljava/util/zip/ZipFile;
    :try_start_1
    const-string/jumbo v4, "lib/armeabi"

    .line 477
    .local v4, "extractTag":Ljava/lang/String;
    sget-object v8, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v9, "x86"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 478
    const-string/jumbo v8, "lib/x86/"

    invoke-virtual {v1, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 479
    const-string/jumbo v4, "lib/x86"

    .line 482
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 484
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    .local v6, "libEntry":Ljava/util/zip/ZipEntry;
    if-eqz v6, :cond_2

    .line 485
    invoke-direct {p0, v1, v6, v3}, Lc8/uy;->extractEntry(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V

    .line 490
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-eqz v8, :cond_3

    .line 496
    invoke-static {v1}, Lc8/YA;->quietClose(Ljava/util/zip/ZipFile;)V

    goto :goto_0

    .line 493
    :cond_3
    :try_start_2
    invoke-static {v1}, Lc8/YA;->quietClose(Ljava/util/zip/ZipFile;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 496
    invoke-static {v1}, Lc8/YA;->quietClose(Ljava/util/zip/ZipFile;)V

    .line 500
    .end local v1    # "bundleZip":Ljava/util/zip/ZipFile;
    .end local v3    # "debugInternalDirectory":Ljava/io/File;
    .end local v4    # "extractTag":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "libEntry":Ljava/util/zip/ZipEntry;
    :cond_4
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 496
    .restart local v0    # "bundleZip":Ljava/util/zip/ZipFile;
    .restart local v3    # "debugInternalDirectory":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :catch_0
    move-exception v8

    :goto_2
    invoke-static {v0}, Lc8/YA;->quietClose(Ljava/util/zip/ZipFile;)V

    goto :goto_1

    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v0}, Lc8/YA;->quietClose(Ljava/util/zip/ZipFile;)V

    throw v8

    .end local v0    # "bundleZip":Ljava/util/zip/ZipFile;
    .restart local v1    # "bundleZip":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bundleZip":Ljava/util/zip/ZipFile;
    .restart local v0    # "bundleZip":Ljava/util/zip/ZipFile;
    goto :goto_3

    .end local v0    # "bundleZip":Ljava/util/zip/ZipFile;
    .restart local v1    # "bundleZip":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bundleZip":Ljava/util/zip/ZipFile;
    .restart local v0    # "bundleZip":Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

.method public findSoLibrary(Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .param p1, "libraryName"    # Ljava/lang/String;

    .prologue
    .line 505
    invoke-static {}, Lc8/py;->isDeubgMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 506
    invoke-virtual {p0, p1}, Lc8/uy;->findDebugSoLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 507
    .local v6, "soFile":Ljava/io/File;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v3, v6

    .line 548
    .end local v6    # "soFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v3

    .line 513
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "%s%s%s%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lc8/uy;->mappingInternalDirectory()Ljava/io/File;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "lib"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_0

    .line 517
    :cond_2
    new-instance v4, Ljava/io/File;

    const-string/jumbo v7, "%s%s%s%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lc8/uy;->mappingInternalDirectoryOld()Ljava/io/File;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "lib"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    .local v4, "file2":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_3

    move-object v3, v4

    .line 519
    goto :goto_0

    .line 521
    :cond_3
    iget-object v7, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    if-eqz v7, :cond_7

    .line 522
    const/4 v0, 0x0

    .line 524
    .local v0, "bundleZip":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v7, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    .end local v0    # "bundleZip":Ljava/util/zip/ZipFile;
    .local v1, "bundleZip":Ljava/util/zip/ZipFile;
    :try_start_1
    const-string/jumbo v2, "lib/armeabi"

    .line 526
    .local v2, "extractTag":Ljava/lang/String;
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v8, "x86"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 527
    const-string/jumbo v7, "lib/x86/"

    invoke-virtual {v1, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 528
    const-string/jumbo v2, "lib/x86"

    .line 531
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 533
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .local v5, "libEntry":Ljava/util/zip/ZipEntry;
    if-eqz v5, :cond_5

    .line 534
    invoke-virtual {p0}, Lc8/uy;->mappingInternalDirectory()Ljava/io/File;

    move-result-object v7

    invoke-direct {p0, v1, v5, v7}, Lc8/uy;->extractEntry(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V

    .line 539
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v7, :cond_6

    .line 545
    invoke-static {v1}, Lc8/YA;->quietClose(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 542
    :cond_6
    :try_start_2
    invoke-static {v1}, Lc8/YA;->quietClose(Ljava/util/zip/ZipFile;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 545
    invoke-static {v1}, Lc8/YA;->quietClose(Ljava/util/zip/ZipFile;)V

    .line 548
    .end local v1    # "bundleZip":Ljava/util/zip/ZipFile;
    .end local v2    # "extractTag":Ljava/lang/String;
    .end local v5    # "libEntry":Ljava/util/zip/ZipEntry;
    :cond_7
    :goto_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 545
    .restart local v0    # "bundleZip":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v7

    :goto_2
    invoke-static {v0}, Lc8/YA;->quietClose(Ljava/util/zip/ZipFile;)V

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v0}, Lc8/YA;->quietClose(Ljava/util/zip/ZipFile;)V

    throw v7

    .end local v0    # "bundleZip":Ljava/util/zip/ZipFile;
    .restart local v1    # "bundleZip":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bundleZip":Ljava/util/zip/ZipFile;
    .restart local v0    # "bundleZip":Ljava/util/zip/ZipFile;
    goto :goto_3

    .end local v0    # "bundleZip":Ljava/util/zip/ZipFile;
    .restart local v1    # "bundleZip":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bundleZip":Ljava/util/zip/ZipFile;
    .restart local v0    # "bundleZip":Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

.method public getDebugPatchFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 824
    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v3, "debug_storage"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lc8/uy;->location:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 825
    .local v0, "debugBundleDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "patch.zip"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 826
    .local v1, "patchFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 827
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 829
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getResources(Ljava/lang/String;)Ljava/util/List;
    .locals 5
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
    .line 836
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 838
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    invoke-direct {p0}, Lc8/uy;->ensureZipFile()V

    .line 840
    iget-object v3, p0, Lc8/uy;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/uy;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 847
    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "jar:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "!/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 848
    .local v2, "url":Ljava/net/URL;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    .end local v2    # "url":Ljava/net/URL;
    :cond_0
    return-object v1

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getRevisionDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lc8/uy;->revisionDir:Ljava/io/File;

    return-object v0
.end method

.method public getRevisionFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    return-object v0
.end method

.method public installSoLib(Ljava/io/File;)V
    .locals 10
    .param p1, "bundle"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    const/4 v5, 0x0

    .line 671
    .local v5, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    .end local v5    # "zip":Ljava/util/zip/ZipFile;
    .local v6, "zip":Ljava/util/zip/ZipFile;
    :try_start_1
    const-string/jumbo v4, "lib/armeabi"

    .line 673
    .local v4, "extractTag":Ljava/lang/String;
    sget-object v8, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v9, "x86"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 674
    invoke-static {}, Lc8/py;->isDeubgMode()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 675
    const-string/jumbo v4, "lib/x86"

    .line 682
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "entries":Ljava/util/Enumeration;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 683
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 684
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 685
    .local v3, "entryName":Ljava/lang/String;
    const-string/jumbo v8, "../"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 688
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 689
    invoke-virtual {p0}, Lc8/uy;->mappingInternalDirectory()Ljava/io/File;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lc8/uy;->extractEntry(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 692
    .end local v2    # "entries":Ljava/util/Enumeration;
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "extractTag":Ljava/lang/String;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v1

    move-object v5, v6

    .line 693
    .end local v6    # "zip":Ljava/util/zip/ZipFile;
    .local v1, "e":Ljava/io/IOException;
    .restart local v5    # "zip":Ljava/util/zip/ZipFile;
    :goto_2
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 694
    .local v0, "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v8, "installSoLib"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    invoke-static {}, Lc8/hB;->getInstance()Lc8/hB;

    move-result-object v8

    const-string/jumbo v9, "container_solib_unzip_fail"

    invoke-virtual {v8, v9, v0, v1}, Lc8/hB;->report(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 696
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 698
    .end local v0    # "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v5, :cond_2

    .line 699
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    :cond_2
    throw v8

    .line 677
    .end local v5    # "zip":Ljava/util/zip/ZipFile;
    .restart local v4    # "extractTag":Ljava/lang/String;
    .restart local v6    # "zip":Ljava/util/zip/ZipFile;
    :cond_3
    :try_start_3
    const-string/jumbo v8, "lib/x86/"

    invoke-virtual {v6, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 678
    const-string/jumbo v4, "lib/x86"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 698
    .restart local v2    # "entries":Ljava/util/Enumeration;
    :cond_4
    if-eqz v6, :cond_5

    .line 699
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V

    .line 702
    :cond_5
    return-void

    .line 698
    .end local v2    # "entries":Ljava/util/Enumeration;
    .end local v4    # "extractTag":Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "zip":Ljava/util/zip/ZipFile;
    .restart local v5    # "zip":Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 692
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public isDexOpted()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 552
    iget-boolean v4, p0, Lc8/uy;->isDexOptDone:Z

    if-nez v4, :cond_1

    .line 565
    :cond_0
    :goto_0
    return v2

    .line 556
    :cond_1
    iget-object v4, p0, Lc8/uy;->dexFile:Ldalvik/system/DexFile;

    if-eqz v4, :cond_2

    move v2, v3

    .line 557
    goto :goto_0

    .line 560
    :cond_2
    sget-object v4, Lc8/xy;->LexFile:Lc8/Ay;

    if-eqz v4, :cond_3

    sget-object v4, Lc8/xy;->LexFile:Lc8/Ay;

    invoke-virtual {v4}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 561
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lc8/uy;->mappingInternalDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "bundle.lex"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 562
    .local v0, "lexFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 564
    .end local v0    # "lexFile":Ljava/io/File;
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lc8/uy;->mappingInternalDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "bundle.dex"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 565
    .local v1, "odexFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public mappingDebugInternalDirectory()Ljava/io/File;
    .locals 8

    .prologue
    .line 403
    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "storage/%s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lc8/uy;->location:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_debug_internal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lc8/uy;->revisionDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 404
    .local v0, "internalLibDir":Ljava/io/File;
    const/4 v1, 0x2

    .line 406
    .local v1, "retryCount":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 407
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 409
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 412
    add-int/lit8 v1, v1, -0x1

    .line 413
    if-gtz v1, :cond_0

    .line 414
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 415
    const-string/jumbo v2, "BundleArchiveRevision"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "create internal LibDir Failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/uy;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_3
    return-object v0
.end method

.method public mappingInternalDirectory()Ljava/io/File;
    .locals 8

    .prologue
    .line 421
    iget-boolean v2, p0, Lc8/uy;->externalStorage:Z

    if-eqz v2, :cond_4

    .line 422
    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "storage/%s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lc8/uy;->location:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_internal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lc8/uy;->revisionDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 423
    .local v0, "internalLibDir":Ljava/io/File;
    const/4 v1, 0x2

    .line 425
    .local v1, "retryCount":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 426
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 428
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 431
    add-int/lit8 v1, v1, -0x1

    .line 432
    if-gtz v1, :cond_0

    .line 433
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 434
    const-string/jumbo v2, "BundleArchiveRevision"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "create internal LibDir Failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/uy;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local v0    # "internalLibDir":Ljava/io/File;
    .end local v1    # "retryCount":I
    :cond_3
    :goto_0
    return-object v0

    :cond_4
    iget-object v0, p0, Lc8/uy;->revisionDir:Ljava/io/File;

    goto :goto_0
.end method

.method public mappingInternalDirectoryOld()Ljava/io/File;
    .locals 7

    .prologue
    .line 443
    iget-boolean v2, p0, Lc8/uy;->externalStorage:Z

    if-eqz v2, :cond_4

    .line 444
    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "storage/%s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lc8/uy;->location:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lc8/uy;->revisionDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 445
    .local v0, "internalLibDir":Ljava/io/File;
    const/4 v1, 0x2

    .line 447
    .local v1, "retryCount":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 448
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 450
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 453
    add-int/lit8 v1, v1, -0x1

    .line 454
    if-gtz v1, :cond_0

    .line 455
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 456
    const-string/jumbo v2, "BundleArchiveRevision"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "create internal LibDir Failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/uy;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v0    # "internalLibDir":Ljava/io/File;
    .end local v1    # "retryCount":I
    :cond_3
    :goto_0
    return-object v0

    :cond_4
    iget-object v0, p0, Lc8/uy;->revisionDir:Ljava/io/File;

    goto :goto_0
.end method

.method public declared-synchronized optDexFile()V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 571
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lc8/uy;->isDexOpted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    .line 628
    :goto_0
    monitor-exit p0

    return-void

    .line 574
    :cond_0
    :try_start_1
    sget-object v8, Lc8/xy;->LexFile:Lc8/Ay;

    if-eqz v8, :cond_1

    sget-object v8, Lc8/xy;->LexFile:Lc8/Ay;

    invoke-virtual {v8}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 577
    new-instance v7, Lcom/ali/mobisecenhance/DexClassLoader;

    iget-object v8, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lc8/uy;->mappingInternalDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {}, Lcom/ali/mobisecenhance/ReflectMap;->ClassLoader_getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/ali/mobisecenhance/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 578
    const/4 v7, 0x1

    iput-boolean v7, p0, Lc8/uy;->isDexOptDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 582
    :cond_1
    :try_start_2
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lc8/uy;->mappingInternalDirectory()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "bundle.dex"

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 585
    .local v6, "odexFile":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    .line 588
    .local v0, "START":J
    :try_start_3
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v8

    invoke-virtual {v8, v6}, Lc8/TA;->LockExclusive(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 589
    const-string/jumbo v8, "Framework"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to get file lock for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_2
    iget-object v8, p0, Lc8/uy;->dexFile:Ldalvik/system/DexFile;

    if-nez v8, :cond_5

    .line 593
    iget-boolean v8, p0, Lc8/uy;->externalStorage:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lc8/uy;->externalStorage:Z

    if-eqz v8, :cond_8

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_8

    sget-boolean v8, Lc8/Zf;->IS_VM_MULTIDEX_CAPABLE:Z

    if-eqz v8, :cond_8

    .line 594
    :cond_3
    iget-boolean v8, p0, Lc8/uy;->externalStorage:Z

    if-eqz v8, :cond_7

    .line 595
    .local v4, "interpretOnly":Z
    :goto_1
    iget-object v7, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v8

    const-wide/32 v10, 0x500000

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    .line 596
    const/4 v4, 0x1

    .line 598
    :cond_4
    const-string/jumbo v7, "BundleArchiveRevision"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "interpretOnly = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    sget-object v7, Landroid/taobao/atlas/runtime/RuntimeVariables;->sDexLoadBooster:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "loadDex"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sget-object v8, Landroid/taobao/atlas/runtime/RuntimeVariables;->sDexLoadBooster:Ljava/lang/Object;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    .line 601
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    .line 600
    invoke-static {v7, v8, v9}, Lc8/uy;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldalvik/system/DexFile;

    iput-object v7, p0, Lc8/uy;->dexFile:Ldalvik/system/DexFile;

    .line 609
    .end local v4    # "interpretOnly":Z
    :cond_5
    :goto_2
    invoke-static {}, Lc8/py;->isDeubgMode()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 610
    invoke-direct {p0}, Lc8/uy;->optPatchDexFile()V

    .line 614
    :cond_6
    const/4 v7, 0x1

    iput-boolean v7, p0, Lc8/uy;->isDexOptDone:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 624
    :try_start_4
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v7

    invoke-virtual {v7, v6}, Lc8/TA;->unLock(Ljava/io/File;)V

    .line 626
    :goto_3
    const-string/jumbo v7, "Framework"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bundle archieve dexopt bundle "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " cost time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_7
    move v4, v7

    .line 594
    goto/16 :goto_1

    .line 604
    :cond_8
    :try_start_5
    const-string/jumbo v7, "android.taobao.atlas.startup.DexFileCompat"

    invoke-static {v7}, Lc8/uy;->_3forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "loadDex"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    .line 605
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 606
    .local v5, "m":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v7, v8}, Lc8/uy;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldalvik/system/DexFile;

    iput-object v7, p0, Lc8/uy;->dexFile:Ldalvik/system/DexFile;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    .line 615
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 616
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 617
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 619
    :cond_9
    const-string/jumbo v7, "Framework"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed optDexFile \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' >>> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 621
    .local v2, "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v7, "optDexFile"

    iget-object v8, p0, Lc8/uy;->bundleFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    invoke-static {}, Lc8/hB;->getInstance()Lc8/hB;

    move-result-object v7

    const-string/jumbo v8, "container_dexopt_fail"

    invoke-virtual {v7, v8, v2, v3}, Lc8/hB;->report(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 624
    :try_start_7
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v7

    invoke-virtual {v7, v6}, Lc8/TA;->unLock(Ljava/io/File;)V

    goto/16 :goto_3

    .end local v2    # "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v8

    invoke-virtual {v8, v6}, Lc8/TA;->unLock(Ljava/io/File;)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method updateMetadata()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lc8/uy;->revisionDir:Ljava/io/File;

    const-string/jumbo v6, "meta"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 377
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 379
    .local v3, "out":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 380
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 383
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 384
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .local v4, "out":Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v5, p0, Lc8/uy;->revisionLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 390
    invoke-static {v4}, Lc8/YA;->quietClose(Ljava/io/Closeable;)V

    .line 391
    return-void

    .line 387
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    :try_start_2
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Could not save meta data "

    invoke-direct {v5, v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_1
    invoke-static {v3}, Lc8/YA;->quietClose(Ljava/io/Closeable;)V

    throw v5

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    goto :goto_1

    .line 387
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    goto :goto_0
.end method
