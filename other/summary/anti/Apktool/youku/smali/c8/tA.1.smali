.class public Lc8/tA;
.super Landroid/app/Application;
.source "AtlasBridgeApplication.java"


# instance fields
.field public mBridgeApplicationDelegate:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method private checkShowErrorNotification(Ljava/lang/String;)V
    .locals 9
    .param p1, "errorInfo"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 419
    const-string/jumbo v4, "err_log"

    invoke-virtual {p0, v4, v5}, Lc8/tA;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 420
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3, p1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 421
    .local v0, "errorCount":I
    const/4 v4, 0x3

    if-lt v0, v4, :cond_0

    .line 422
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 424
    invoke-virtual {p0}, Lc8/tA;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "icon"

    const-string/jumbo v7, "drawable"

    invoke-virtual {p0}, Lc8/tA;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string/jumbo v5, "\u63d0\u793a"

    .line 425
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string/jumbo v5, "\u5e94\u7528\u5b89\u88c5\u4e0d\u5b8c\u6574,\u8bf7\u60a8\u5378\u8f7d\u91cd\u65b0\u5b89\u88c5!"

    .line 426
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 428
    .local v1, "mBuilder":Landroid/app/Notification$Builder;
    const-string/jumbo v4, "notification"

    .line 429
    invoke-virtual {p0, v4}, Lc8/tA;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 430
    .local v2, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v4, 0x7b

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 434
    .end local v1    # "mBuilder":Landroid/app/Notification$Builder;
    .end local v2    # "mNotificationManager":Landroid/app/NotificationManager;
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v4, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private isApplicationNormalCreate(Landroid/content/Context;)Z
    .locals 13
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 368
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 369
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 370
    .local v8, "stackElements":[Ljava/lang/StackTraceElement;
    if-eqz v8, :cond_2

    .line 371
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v8

    if-ge v3, v10, :cond_2

    .line 372
    aget-object v10, v8, v3

    invoke-static {v10}, Lcom/ali/mobisecenhance/ReflectMap;->StackTraceElement_getClassName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "android.taobao.atlas.runtime.InstrumentationHook"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 409
    .end local v3    # "i":I
    :cond_0
    :goto_1
    return v9

    .line 371
    .restart local v3    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 379
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_0

    .line 382
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 383
    .local v0, "apkPath":Ljava/lang/String;
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 384
    .local v6, "nativeLibDir":Ljava/lang/String;
    if-eqz v0, :cond_3

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    .line 385
    :cond_3
    const-string/jumbo v10, "InvalidApkPath"

    invoke-direct {p0, v10}, Lc8/tA;->checkShowErrorNotification(Ljava/lang/String;)V

    goto :goto_1

    .line 389
    :cond_4
    if-eqz v6, :cond_5

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_6

    .line 390
    :cond_5
    const-string/jumbo v10, "AtlasBridgeApplication"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "can not find nativeLibDir : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_6
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 397
    .local v7, "pid":I
    :try_start_0
    const-string/jumbo v10, "activity"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 398
    .local v5, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 399
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v11, v7, :cond_7

    .line 400
    iget-object v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v11, Lc8/CA;->PROCESS:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "mActivityManager":Landroid/app/ActivityManager;
    :catch_0
    move-exception v10

    .line 405
    :cond_8
    sget-object v10, Lc8/CA;->PROCESS:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 406
    const-string/jumbo v10, "AtlasBridgeApplication"

    const-string/jumbo v11, "getProcess failed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 409
    :cond_9
    const/4 v9, 0x1

    goto/16 :goto_1
.end method

.method private storePackageVersion(Landroid/content/Context;)V
    .locals 8
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 481
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "storage/version_meta"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 482
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 484
    .local v3, "out":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 485
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 488
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 489
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .local v4, "out":Ljava/io/DataOutputStream;
    :try_start_1
    sget-object v5, Lc8/CA;->INSTALLED_VERSIONNAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 491
    sget-wide v6, Lc8/CA;->INSTALLED_VERSIONCODE:J

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 492
    sget-wide v6, Lc8/CA;->LASTUPDATETIME:J

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 493
    sget-object v5, Lc8/CA;->APK_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 499
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 501
    :goto_0
    return-void

    .line 495
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 498
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 499
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 500
    :goto_3
    throw v5

    .line 501
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v6

    goto :goto_3

    .line 498
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 495
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    goto :goto_1
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 22
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 257
    invoke-super/range {p0 .. p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 258
    invoke-direct/range {p0 .. p1}, Lc8/tA;->isApplicationNormalCreate(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 259
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/Process;->killProcess(I)V

    .line 262
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lc8/tA;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/tA;->isUpdated(Landroid/content/Context;)Z

    move-result v12

    .line 263
    .local v12, "isUpdated":Z
    invoke-virtual/range {p0 .. p0}, Lc8/tA;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    sput-object v17, Lc8/CA;->baseContext:Landroid/content/Context;

    .line 264
    invoke-virtual/range {p0 .. p0}, Lc8/tA;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v17, v0

    sput-object v17, Lc8/CA;->APK_PATH:Ljava/lang/String;

    .line 265
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lc8/CA;->RAW_APPLICATION_NAME:Ljava/lang/String;

    .line 266
    new-instance v6, Lc8/uA;

    invoke-direct {v6}, Lc8/uA;-><init>()V

    .line 267
    .local v6, "dexBooster":Lc8/uA;
    invoke-virtual/range {p0 .. p0}, Lc8/tA;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lc8/uA;->init(Landroid/content/Context;)V

    .line 268
    sput-object v6, Lc8/CA;->dexBooster:Lc8/uA;

    .line 270
    invoke-virtual/range {p0 .. p0}, Lc8/tA;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lc8/CA;->PROCESS:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 271
    .local v11, "isMainProcess":Z
    if-eqz v12, :cond_6

    .line 272
    if-nez v11, :cond_1

    .line 273
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/Process;->killProcess(I)V

    .line 275
    :cond_1
    new-instance v16, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lc8/tA;->getFilesDir()Ljava/io/File;

    move-result-object v17

    const-string/jumbo v18, "storage"

    invoke-direct/range {v16 .. v18}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    .local v16, "storageDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lc8/tA;->getFilesDir()Ljava/io/File;

    move-result-object v17

    const-string/jumbo v18, "bundleBaseline"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 277
    .local v4, "bundleBaseline":Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lc8/tA;->deleteDirectory(Ljava/io/File;)V

    .line 278
    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lc8/vA;->removeBaseLineInfo()V

    .line 279
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 280
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/Process;->killProcess(I)V

    .line 282
    :cond_3
    invoke-direct/range {p0 .. p1}, Lc8/tA;->storePackageVersion(Landroid/content/Context;)V

    .line 283
    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lc8/vA;->init()V

    .line 284
    const-string/jumbo v17, "APK_INSTALLED"

    const-string/jumbo v18, "true"

    invoke-static/range {v17 .. v18}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .end local v4    # "bundleBaseline":Ljava/io/File;
    .end local v16    # "storageDir":Ljava/io/File;
    :cond_4
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc8/tA;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    const-string/jumbo v18, "android.taobao.atlas.versionInfo.BaselineInfoManager"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 313
    .local v2, "BaselineInfoManagerClazz":Ljava/lang/Class;
    const-string/jumbo v17, "instance"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 314
    .local v10, "instanceMethod":Ljava/lang/reflect/Method;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v10, v2, v0}, Lc8/tA;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 315
    .local v9, "instance":Ljava/lang/Object;
    const-string/jumbo v17, "mVersionManager"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 316
    .local v13, "mVersionManager":Ljava/lang/reflect/Field;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 317
    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v13, v9, v0}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    invoke-virtual/range {p0 .. p0}, Lc8/tA;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    const-string/jumbo v18, "android.taobao.atlas.bridge.BridgeApplicationDelegate"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 320
    .local v3, "BridgeApplicationDelegateClazz":Ljava/lang/Class;
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/Class;

    .line 321
    .local v15, "parTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v17, 0x0

    const-class v18, Landroid/app/Application;

    aput-object v18, v15, v17

    .line 322
    const/16 v17, 0x1

    const-class v18, Ljava/lang/String;

    aput-object v18, v15, v17

    .line 323
    const/16 v17, 0x2

    const-class v18, Ljava/lang/String;

    aput-object v18, v15, v17

    .line 324
    const/16 v17, 0x3

    sget-object v18, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v18, v15, v17

    .line 325
    const/16 v17, 0x4

    sget-object v18, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v18, v15, v17

    .line 326
    const/16 v17, 0x5

    const-class v18, Ljava/lang/String;

    aput-object v18, v15, v17

    .line 327
    const/16 v17, 0x6

    sget-object v18, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v18, v15, v17

    .line 328
    const/16 v17, 0x7

    const-class v18, Ljava/lang/Object;

    aput-object v18, v15, v17

    .line 329
    invoke-virtual {v3, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 330
    .local v5, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p0, v17, v18

    const/16 v18, 0x1

    sget-object v19, Lc8/CA;->PROCESS:Ljava/lang/String;

    aput-object v19, v17, v18

    const/16 v18, 0x2

    sget-object v19, Lc8/CA;->INSTALLED_VERSIONNAME:Ljava/lang/String;

    aput-object v19, v17, v18

    const/16 v18, 0x3

    sget-wide v20, Lc8/CA;->INSTALLED_VERSIONCODE:J

    .line 331
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    sget-wide v20, Lc8/CA;->LASTUPDATETIME:J

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x5

    sget-object v19, Lc8/CA;->APK_PATH:Ljava/lang/String;

    aput-object v19, v17, v18

    const/16 v18, 0x6

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x7

    sget-object v19, Lc8/CA;->dexBooster:Lc8/uA;

    aput-object v19, v17, v18

    .line 330
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/tA;->mBridgeApplicationDelegate:Ljava/lang/Object;

    .line 332
    const-string/jumbo v17, "attachBaseContext"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 333
    .local v14, "method":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/tA;->mBridgeApplicationDelegate:Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v14, v0, v1}, Lc8/tA;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v2    # "BaselineInfoManagerClazz":Ljava/lang/Class;
    .end local v3    # "BridgeApplicationDelegateClazz":Ljava/lang/Class;
    .end local v5    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v9    # "instance":Ljava/lang/Object;
    .end local v10    # "instanceMethod":Ljava/lang/reflect/Method;
    .end local v13    # "mVersionManager":Ljava/lang/reflect/Field;
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .end local v15    # "parTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    return-void

    .line 286
    :cond_6
    sget-object v17, Lc8/CA;->PROCESS:Ljava/lang/String;

    const-string/jumbo v18, ":dex2oat"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 289
    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lc8/vA;->init()V

    .line 290
    invoke-static/range {p0 .. p0}, Lc8/xA;->checkLoadKernalDebugPatch(Landroid/app/Application;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 291
    invoke-static {}, Lc8/xA;->hasKernalPatch()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 293
    sget-object v17, Lc8/CA;->PROCESS:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lc8/xA;->checkloadKernalBundle(Landroid/app/Application;Ljava/lang/String;)Z

    move-result v8

    .line 294
    .local v8, "hasKernalPatched":Z
    if-nez v8, :cond_4

    .line 296
    if-eqz v11, :cond_7

    .line 297
    invoke-static {}, Lc8/vA;->instance()Lc8/vA;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lc8/vA;->rollbackHardly()V

    .line 299
    :cond_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 303
    .end local v8    # "hasKernalPatched":Z
    :cond_8
    if-eqz v11, :cond_4

    .line 304
    invoke-static {}, Lc8/xA;->clear()V

    goto/16 :goto_0

    .line 334
    :catch_0
    move-exception v7

    .line 335
    .local v7, "e":Ljava/lang/Throwable;
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17
.end method

.method public deleteDirectory(Ljava/io/File;)V
    .locals 3
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 516
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 520
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 523
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 524
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 525
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lc8/tA;->deleteDirectory(Ljava/io/File;)V

    .line 523
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 527
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 530
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 4

    .prologue
    .line 341
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 342
    .local v2, "rs":Landroid/content/res/Resources;
    if-nez v2, :cond_0

    .line 343
    invoke-virtual {p0}, Lc8/tA;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 345
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lc8/tA;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move-object v3, v2

    .line 351
    :goto_0
    return-object v3

    .line 346
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 348
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isUpdated(Landroid/content/Context;)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 437
    const/4 v3, 0x0

    .line 440
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 441
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 446
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    iget-object v12, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v12, Lc8/CA;->INSTALLED_VERSIONNAME:Ljava/lang/String;

    .line 447
    iget v12, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v12, v12

    sput-wide v12, Lc8/CA;->INSTALLED_VERSIONCODE:J

    .line 448
    iget-wide v12, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sput-wide v12, Lc8/CA;->LASTUPDATETIME:J

    .line 449
    sget-object v12, Lc8/CA;->INSTALLED_VERSIONNAME:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 451
    const-string/jumbo v12, "AtlasBridgeApplication"

    const-string/jumbo v13, "version name is empty "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-static {v12}, Landroid/os/Process;->killProcess(I)V

    .line 455
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    const-string/jumbo v13, "storage/version_meta"

    invoke-direct {v2, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 456
    .local v2, "metafile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 458
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 459
    .local v1, "in":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    .line 460
    .local v10, "storedVersionName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 461
    .local v8, "storedVersionCode":J
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 462
    .local v6, "storedLastUpdateTime":J
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 464
    .local v5, "storedApkPath":Ljava/lang/String;
    const-string/jumbo v12, "APP_VERSION_TAG"

    sget-object v13, Lc8/CA;->INSTALLED_VERSIONNAME:Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 466
    iget v12, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v12, v12

    cmp-long v12, v12, v8

    if-nez v12, :cond_1

    iget-object v12, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 467
    invoke-static {v12, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-wide v12, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v12, v12, v6

    if-nez v12, :cond_1

    .line 469
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 470
    invoke-virtual {p0}, Lc8/tA;->needRollback()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    if-nez v12, :cond_1

    .line 477
    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local v5    # "storedApkPath":Ljava/lang/String;
    .end local v6    # "storedLastUpdateTime":J
    .end local v8    # "storedVersionCode":J
    .end local v10    # "storedVersionName":Ljava/lang/String;
    :goto_1
    return v11

    .line 444
    .end local v2    # "metafile":Ljava/io/File;
    :catch_0
    move-exception v12

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-static {v12}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 473
    .restart local v2    # "metafile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 477
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    const/4 v11, 0x1

    goto :goto_1
.end method

.method public needRollback()Z
    .locals 4

    .prologue
    .line 505
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/tA;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "bundleBaseline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "baseLineDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "deprecated_mark"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 508
    .local v1, "deprecated":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    const/4 v2, 0x1

    .line 512
    .end local v1    # "deprecated":Ljava/io/File;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 356
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 357
    sget-object v2, Lc8/CA;->PROCESS:Ljava/lang/String;

    const-string/jumbo v3, ":dex2oat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    :try_start_0
    iget-object v2, p0, Lc8/tA;->mBridgeApplicationDelegate:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "onCreate"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 360
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lc8/tA;->mBridgeApplicationDelegate:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/tA;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
