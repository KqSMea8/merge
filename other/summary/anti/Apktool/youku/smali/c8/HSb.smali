.class public Lc8/HSb;
.super Ljava/lang/Object;
.source "CatcherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KSb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UCNativeExceptionCatcher"
.end annotation


# instance fields
.field volatile enable:Z

.field volatile initCrashsdkSuccess:Z

.field mSystemTombstonesDir:Ljava/io/File;

.field mSystemTombstonesDirPath:Ljava/lang/String;

.field mUCCrashsdkLogsDir:Ljava/io/File;

.field mUCCrashsdkLogsDirPath:Ljava/lang/String;

.field mUCCrashsdkTagsDir:Ljava/io/File;

.field mUCCrashsdkTagsDirPath:Ljava/lang/String;

.field mUCCrashsdkTombstonesDir:Ljava/io/File;

.field mUCCrashsdkTombstonesDirPath:Ljava/lang/String;

.field final synthetic this$0:Lc8/KSb;


# direct methods
.method public constructor <init>(Lc8/KSb;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 311
    iput-object p1, p0, Lc8/HSb;->this$0:Lc8/KSb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-boolean v0, p0, Lc8/HSb;->initCrashsdkSuccess:Z

    .line 301
    iput-boolean v0, p0, Lc8/HSb;->enable:Z

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lc8/KSb;->mStorageManager:Lc8/rTb;

    iget-object v1, v1, Lc8/rTb;->mProcessTombstoneDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "crashsdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/HSb;->mUCCrashsdkTombstonesDirPath:Ljava/lang/String;

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/HSb;->mUCCrashsdkTombstonesDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/HSb;->mUCCrashsdkTagsDirPath:Ljava/lang/String;

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/HSb;->mUCCrashsdkTombstonesDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "logs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/HSb;->mUCCrashsdkLogsDirPath:Ljava/lang/String;

    .line 316
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/HSb;->mUCCrashsdkTombstonesDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/HSb;->mUCCrashsdkTombstonesDir:Ljava/io/File;

    .line 317
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/HSb;->mUCCrashsdkTagsDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/HSb;->mUCCrashsdkTagsDir:Ljava/io/File;

    .line 318
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/HSb;->mUCCrashsdkLogsDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/HSb;->mUCCrashsdkLogsDir:Ljava/io/File;

    .line 319
    iget-object v0, p0, Lc8/HSb;->mUCCrashsdkTombstonesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/HSb;->mUCCrashsdkTombstonesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 320
    :cond_0
    iget-object v0, p0, Lc8/HSb;->mUCCrashsdkTagsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/HSb;->mUCCrashsdkTagsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 321
    :cond_1
    iget-object v0, p0, Lc8/HSb;->mUCCrashsdkLogsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lc8/HSb;->mUCCrashsdkLogsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 323
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/HSb;->initCrashsdkSo(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method private static _1load(Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/ali/mobisecenhance/Library;->isKeepSoload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    const/4 v1, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/Library;->before_System_load(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object p0, v2

    :cond_1
    const/4 v3, 0x0

    if-eqz v4, :cond_2

    :try_start_0
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_2
    :goto_0
    invoke-static {v0, v3}, Lcom/ali/mobisecenhance/Library;->after_System_loadLibrary(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$000(Lc8/HSb;)V
    .locals 0
    .param p0, "x0"    # Lc8/HSb;

    .prologue
    .line 298
    invoke-direct {p0}, Lc8/HSb;->doScan()V

    return-void
.end method

.method private doScan()V
    .locals 18

    .prologue
    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 428
    .local v12, "start":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/HSb;->mUCCrashsdkLogsDir:Ljava/io/File;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/HSb;->mUCCrashsdkLogsDir:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 429
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/HSb;->mUCCrashsdkLogsDir:Ljava/io/File;

    new-instance v15, Lc8/GSb;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lc8/GSb;-><init>(Lc8/HSb;)V

    invoke-virtual {v14, v15}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v10

    .line 443
    .local v10, "jniLogFiles":[Ljava/io/File;
    if-eqz v10, :cond_0

    array-length v14, v10

    if-lez v14, :cond_0

    .line 444
    move-object v2, v10

    .local v2, "arr$":[Ljava/io/File;
    array-length v11, v10

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v11, :cond_0

    aget-object v9, v2, v8

    .line 445
    .local v9, "jniLogFile":Ljava/io/File;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 446
    .local v5, "externalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/HSb;->this$0:Lc8/KSb;

    iget-object v14, v14, Lc8/KSb;->mReportBuilder:Lc8/iTb;

    invoke-virtual {v14, v9, v5}, Lc8/iTb;->buildNativeExceptionReport(Ljava/io/File;Ljava/util/Map;)Lc8/NSb;

    move-result-object v3

    .line 448
    .local v3, "crashReport":Lc8/NSb;
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/HSb;->this$0:Lc8/KSb;

    iget-object v14, v14, Lc8/KSb;->mSendManager:Lc8/qTb;

    invoke-virtual {v14, v3}, Lc8/qTb;->sendReport(Lc8/NSb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 452
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v3    # "crashReport":Lc8/NSb;
    .end local v5    # "externalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "i$":I
    .end local v9    # "jniLogFile":Ljava/io/File;
    .end local v10    # "jniLogFiles":[Ljava/io/File;
    .end local v11    # "len$":I
    :catch_0
    move-exception v4

    .line 453
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "find uc native log."

    invoke-static {v14, v4}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 455
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 456
    .local v6, "end":J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "find uc native log complete elapsed time:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v16, v6, v12

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 457
    return-void
.end method


# virtual methods
.method public addNativeHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 395
    iget-boolean v1, p0, Lc8/HSb;->initCrashsdkSuccess:Z

    if-nez v1, :cond_0

    .line 401
    :goto_0
    return-void

    .line 397
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "refresh native header info"

    invoke-static {v1, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 416
    iget-boolean v1, p0, Lc8/HSb;->initCrashsdkSuccess:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lc8/HSb;->enable:Z

    if-nez v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeUninstallBreakpad()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/HSb;->enable:Z

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "disable crashsdk"

    invoke-static {v1, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 404
    iget-boolean v1, p0, Lc8/HSb;->initCrashsdkSuccess:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lc8/HSb;->enable:Z

    if-eqz v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeInstallBreakpad()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/HSb;->enable:Z

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "enable crashsdk"

    invoke-static {v1, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method initCrashsdkSo(Ljava/lang/String;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 329
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "libcrashsdk.so"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/HSb;->_1load(Ljava/lang/String;)V

    .line 336
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 337
    .local v4, "start":J
    iget-object v3, p0, Lc8/HSb;->mUCCrashsdkTombstonesDirPath:Ljava/lang/String;

    const-string/jumbo v6, "tags"

    const-string/jumbo v7, "logs"

    invoke-static {v3, v6, v7}, Lcom/uc/crashsdk/JNIBridge;->nativeSetFolderNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Lc8/HSb;->this$0:Lc8/KSb;

    iget-object v3, v3, Lc8/KSb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v6, "PROCESS_NAME"

    invoke-virtual {v3, v6}, Lc8/kTb;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "processName":Ljava/lang/String;
    invoke-static {v2}, Lc8/vTb;->reverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeSetProcessNames(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v3, p0, Lc8/HSb;->this$0:Lc8/KSb;

    iget-object v3, v3, Lc8/KSb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v6, "APP_VERSION"

    invoke-virtual {v3, v6}, Lc8/kTb;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lc8/HSb;->this$0:Lc8/KSb;

    iget-object v6, v6, Lc8/KSb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v7, "APP_SUBVERSION"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Lc8/kTb;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lc8/HSb;->this$0:Lc8/KSb;

    iget-object v7, v7, Lc8/KSb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v8, "APP_BUILD"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Lc8/kTb;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-static {v3, v6, v7, v8}, Lcom/uc/crashsdk/JNIBridge;->nativeSetVersionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-static {v3, v6, v7}, Lcom/uc/crashsdk/JNIBridge;->nativeSetMobileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v3, 0x1

    const/4 v6, 0x1

    const-wide/32 v8, 0x100000

    invoke-static {v3, v6, v8, v9}, Lcom/uc/crashsdk/JNIBridge;->nativeSetLogStrategy(ZZJ)V

    .line 346
    const-string/jumbo v3, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "CrashSDK"

    invoke-static {v3, v6, v7}, Lcom/uc/crashsdk/JNIBridge;->nativeSetCrashLogFileNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CrashSDK nativeSetCrashLogFileNames complete elapsed time:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "ms."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 351
    const-string/jumbo v3, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "native"

    invoke-static {v3, v6, v7}, Lcom/uc/crashsdk/JNIBridge;->nativeSetCrashLogFileNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CrashSDK nativeSetCrashLogFileNames complete elapsed time:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "ms."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 356
    iget-object v3, p0, Lc8/HSb;->this$0:Lc8/KSb;

    iget-object v3, v3, Lc8/KSb;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    invoke-static {v3, v6, v7}, Lcom/uc/crashsdk/JNIBridge;->nativeSetPackageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CrashSDK nativeSetPackageInfo "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lc8/HSb;->this$0:Lc8/KSb;

    iget-object v6, v6, Lc8/KSb;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " complete elapsed time:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "ms."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 361
    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeInitNative()V

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CrashSDK nativeInitNative complete elapsed time:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "ms."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 366
    const/4 v3, 0x0

    const-string/jumbo v6, ".gz"

    const/high16 v7, 0x100000

    invoke-static {v3, v6, v7}, Lcom/uc/crashsdk/JNIBridge;->nativeSetZip(ZLjava/lang/String;I)V

    .line 370
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/HSb;->initCrashsdkSuccess:Z

    .line 374
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "processName":Ljava/lang/String;
    .end local v4    # "start":J
    :goto_1
    return-void

    .line 333
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    const-string/jumbo v3, "crashsdk"

    invoke-static {v3}, Lc8/ZA;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 371
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "init uc crashsdk"

    invoke-static {v3, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public refreshNativeInfo()V
    .locals 6

    .prologue
    .line 378
    iget-boolean v1, p0, Lc8/HSb;->initCrashsdkSuccess:Z

    if-nez v1, :cond_0

    .line 391
    :goto_0
    return-void

    .line 381
    :cond_0
    :try_start_0
    iget-object v1, p0, Lc8/HSb;->this$0:Lc8/KSb;

    iget-object v1, v1, Lc8/KSb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v2, "APP_VERSION"

    invoke-virtual {v1, v2}, Lc8/kTb;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/HSb;->this$0:Lc8/KSb;

    iget-object v2, v2, Lc8/KSb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v3, "APP_SUBVERSION"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lc8/kTb;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/HSb;->this$0:Lc8/KSb;

    iget-object v3, v3, Lc8/KSb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v4, "APP_BUILD"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lc8/kTb;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/uc/crashsdk/JNIBridge;->nativeSetVersionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeUpdateCrashLogNames()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "refresh native version info"

    invoke-static {v1, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
