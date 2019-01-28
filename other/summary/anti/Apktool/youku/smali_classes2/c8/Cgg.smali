.class public Lc8/Cgg;
.super Ljava/lang/Object;
.source "WXSoInstallMgrSdk.java"


# static fields
.field private static final ARMEABI:Ljava/lang/String; = "armeabi"

.field private static final ARMEABI_Size:I = 0x36af4c

.field static final LOGTAG:Ljava/lang/String; = "INIT_SO"

.field private static final MIPS:Ljava/lang/String; = "mips"

.field private static final STARTUPSO:Ljava/lang/String; = "/libweexjsb.so"

.field private static final STARTUPSOANDROID15:Ljava/lang/String; = "/libweexjst.so"

.field private static final X86:Ljava/lang/String; = "x86"

.field private static final X86_Size:I = 0x423c80

.field static mContext:Landroid/content/Context;

.field private static mSoLoader:Lc8/GVf;

.field private static mStatisticsListener:Lc8/OUf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    sput-object v0, Lc8/Cgg;->mContext:Landroid/content/Context;

    .line 79
    sput-object v0, Lc8/Cgg;->mSoLoader:Lc8/GVf;

    .line 80
    sput-object v0, Lc8/Cgg;->mStatisticsListener:Lc8/OUf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method private static _cpuType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 253
    new-instance v1, Landroid/os/Build;

    invoke-direct {v1}, Landroid/os/Build;-><init>()V

    const-string/jumbo v2, "CPU_ABI"

    invoke-static {v1, v2}, Lc8/Cgg;->_getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "abi":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    :cond_0
    const-string/jumbo v0, "armeabi"

    .line 257
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 258
    return-object v0
.end method

.method private static _getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "build"    # Landroid/os/Build;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 244
    :try_start_0
    const-class v1, Landroid/os/Build;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 245
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 247
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Unknown"

    goto :goto_0
.end method

.method static _loadUnzipSo(Ljava/lang/String;ILc8/HVf;)Z
    .locals 5
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I
    .param p2, "utAdapter"    # Lc8/HVf;

    .prologue
    .line 353
    :try_start_0
    invoke-static {p0, p1}, Lc8/Cgg;->isExist(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    sget-object v2, Lc8/Cgg;->mSoLoader:Lc8/GVf;

    if-eqz v2, :cond_1

    .line 357
    sget-object v2, Lc8/Cgg;->mSoLoader:Lc8/GVf;

    invoke-static {p0, p1}, Lc8/Cgg;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc8/GVf;->doLoad(Ljava/lang/String;)V

    .line 361
    :goto_0
    const-string/jumbo v2, "2000"

    const-string/jumbo v3, "Load file extract from apk successfully."

    invoke-static {p2, v2, v3}, Lc8/Cgg;->commit(Lc8/HVf;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    const/4 v1, 0x1

    .line 371
    .local v1, "initSuc":Z
    :goto_1
    return v1

    .line 359
    .end local v1    # "initSuc":Z
    :cond_1
    invoke-static {p0, p1}, Lc8/Cgg;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/Cgg;->_1load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_COPY_FROM_APK:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_COPY_FROM_APK:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v4}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lc8/Cgg;->commit(Lc8/HVf;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/4 v1, 0x0

    .line 369
    .restart local v1    # "initSuc":Z
    const-string/jumbo v2, ""

    invoke-static {v2, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static _targetSoFile(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 303
    sget-object v0, Lc8/Cgg;->mContext:Landroid/content/Context;

    .line 304
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 305
    const-string/jumbo v3, ""

    .line 314
    :goto_0
    return-object v3

    .line 308
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 311
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 314
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "bk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static checkSoIsValid(Ljava/lang/String;J)Z
    .locals 13
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "size"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 268
    sget-object v0, Lc8/Cgg;->mContext:Landroid/content/Context;

    .line 269
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    move v6, v7

    .line 293
    :goto_0
    return v6

    .line 273
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 274
    .local v4, "start":J
    const-class v6, Lc8/Cgg;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    instance-of v6, v6, Ldalvik/system/PathClassLoader;

    if-eqz v6, :cond_4

    .line 276
    const-class v6, Lc8/Cgg;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    check-cast v6, Ldalvik/system/PathClassLoader;

    invoke-virtual {v6, p0}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    .line 278
    goto :goto_0

    .line 280
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v6, p1, v10

    if-nez v6, :cond_3

    .line 283
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "weex so size check path :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/xgg;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v8

    .line 284
    goto :goto_0

    :cond_3
    move v6, v7

    .line 286
    goto :goto_0

    .line 289
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "start":J
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "weex so size check fail exception :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/xgg;->e(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_4
    move v6, v8

    .line 293
    goto/16 :goto_0
.end method

.method static commit(Lc8/HVf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "utAdapter"    # Lc8/HVf;
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 474
    sget-object v0, Lc8/Cgg;->mStatisticsListener:Lc8/OUf;

    if-eqz v0, :cond_0

    .line 475
    sget-object v0, Lc8/Cgg;->mStatisticsListener:Lc8/OUf;

    const-string/jumbo v2, "0"

    invoke-interface {v0, v2, p1, p2}, Lc8/OUf;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_0
    if-nez p0, :cond_1

    .line 490
    :goto_0
    return-void

    .line 481
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 482
    new-instance v4, Lc8/OXf;

    invoke-direct {v4}, Lc8/OXf;-><init>()V

    .line 483
    .local v4, "p":Lc8/OXf;
    iput-object p1, v4, Lc8/OXf;->errCode:Ljava/lang/String;

    .line 484
    iput-object p2, v4, Lc8/OXf;->errMsg:Ljava/lang/String;

    .line 485
    const-string/jumbo v3, "environment"

    move-object v0, p0

    move-object v2, v1

    move-object v5, v1

    invoke-interface/range {v0 .. v5}, Lc8/HVf;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/OXf;Ljava/util/Map;)V

    goto :goto_0

    .line 487
    .end local v4    # "p":Lc8/OXf;
    :cond_2
    const-string/jumbo v8, "environment"

    move-object v5, p0

    move-object v6, v1

    move-object v7, v1

    move-object v9, v1

    move-object v10, v1

    invoke-interface/range {v5 .. v10}, Lc8/HVf;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/OXf;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static copyStartUpSo()V
    .locals 14

    .prologue
    .line 184
    const/4 v4, 0x1

    .line 185
    .local v4, "installOnSdcard":Z
    :try_start_0
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 197
    .local v10, "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 199
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "cacheFile":Ljava/lang/String;
    const/4 v9, 0x1

    .line 203
    .local v9, "pieSupport":Z
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x10

    if-ge v12, v13, :cond_1

    .line 204
    const/4 v9, 0x0

    .line 205
    new-instance v5, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/libweexjst.so"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v5, "newfile":Ljava/io/File;
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 240
    .end local v0    # "cacheFile":Ljava/lang/String;
    .end local v5    # "newfile":Ljava/io/File;
    .end local v9    # "pieSupport":Z
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 207
    .restart local v0    # "cacheFile":Ljava/lang/String;
    .restart local v9    # "pieSupport":Z
    .restart local v10    # "pkgName":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/libweexjsb.so"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v5    # "newfile":Ljava/io/File;
    goto :goto_0

    .line 213
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "/data/data/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/lib"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, "path":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string/jumbo v12, "/cache"

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_3

    .line 215
    const-string/jumbo v12, "/cache"

    const-string/jumbo v13, "/lib"

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 219
    :cond_3
    if-eqz v9, :cond_4

    .line 220
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/libweexjsb.so"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 225
    .local v11, "soName":Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v6, "oldfile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 227
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 228
    .local v3, "inputStream":Ljava/io/FileInputStream;
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 229
    .local v1, "data":[B
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 230
    .local v7, "outputStream":Ljava/io/FileOutputStream;
    :goto_3
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    .line 231
    invoke-virtual {v7, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 237
    .end local v0    # "cacheFile":Ljava/lang/String;
    .end local v1    # "data":[B
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "newfile":Ljava/io/File;
    .end local v6    # "oldfile":Ljava/io/File;
    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "pieSupport":Z
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "soName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 222
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "cacheFile":Ljava/lang/String;
    .restart local v5    # "newfile":Ljava/io/File;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "pieSupport":Z
    .restart local v10    # "pkgName":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/libweexjst.so"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "soName":Ljava/lang/String;
    goto :goto_2

    .line 233
    .restart local v1    # "data":[B
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "oldfile":Ljava/io/File;
    .restart local v7    # "outputStream":Ljava/io/FileOutputStream;
    :cond_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 234
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static init(Landroid/content/Context;Lc8/GVf;Lc8/OUf;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "loader"    # Lc8/GVf;
    .param p2, "listener"    # Lc8/OUf;

    .prologue
    .line 85
    sput-object p0, Lc8/Cgg;->mContext:Landroid/content/Context;

    .line 86
    sput-object p1, Lc8/Cgg;->mSoLoader:Lc8/GVf;

    .line 87
    sput-object p2, Lc8/Cgg;->mStatisticsListener:Lc8/OUf;

    .line 88
    return-void
.end method

.method public static initSo(Ljava/lang/String;ILc8/HVf;)Z
    .locals 9
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I
    .param p2, "utAdapter"    # Lc8/HVf;

    .prologue
    const/4 v5, 0x0

    .line 112
    invoke-static {}, Lc8/Cgg;->_cpuType()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "cpuType":Ljava/lang/String;
    const-string/jumbo v6, "mips"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    invoke-static {}, Lc8/Cgg;->copyStartUpSo()V

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "InitSuc":Z
    const-wide/32 v6, 0x51ddc

    invoke-static {p0, v6, v7}, Lc8/Cgg;->checkSoIsValid(Ljava/lang/String;J)Z

    move-result v6

    if-nez v6, :cond_2

    const-wide/32 v6, 0xb90744

    invoke-static {p0, v6, v7}, Lc8/Cgg;->checkSoIsValid(Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 129
    :cond_2
    :try_start_0
    sget-object v6, Lc8/Cgg;->mSoLoader:Lc8/GVf;

    if-eqz v6, :cond_3

    .line 130
    sget-object v6, Lc8/Cgg;->mSoLoader:Lc8/GVf;

    invoke-interface {v6, p0}, Lc8/GVf;->doLoadLibrary(Ljava/lang/String;)V

    .line 134
    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p2, v6, v7}, Lc8/Cgg;->commit(Lc8/HVf;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4

    .line 136
    const/4 v0, 0x1

    .line 146
    :goto_2
    if-nez v0, :cond_0

    .line 149
    :try_start_1
    invoke-static {p0, p1}, Lc8/Cgg;->isExist(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 150
    invoke-static {p0, p1, p2}, Lc8/Cgg;->_loadUnzipSo(Ljava/lang/String;ILc8/HVf;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    move-result v4

    .line 151
    .local v4, "res":Z
    if-eqz v4, :cond_6

    move v0, v4

    .line 152
    goto :goto_0

    .line 132
    .end local v4    # "res":Z
    :cond_3
    :try_start_2
    invoke-static {p0}, Lc8/ZA;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 137
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e2":Ljava/lang/Throwable;
    :goto_3
    const-string/jumbo v6, "armeabi"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "x86"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 139
    :cond_4
    sget-object v6, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_LOAD_SO:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v6}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_LOAD_SO:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v8}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p2, v6, v7}, Lc8/Cgg;->commit(Lc8/HVf;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 155
    .end local v3    # "e2":Ljava/lang/Throwable;
    .restart local v4    # "res":Z
    :cond_6
    :try_start_3
    invoke-static {p0, p1}, Lc8/Cgg;->removeSoIfExit(Ljava/lang/String;I)V

    .line 160
    .end local v4    # "res":Z
    :cond_7
    const-string/jumbo v6, "mips"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    if-eqz v6, :cond_8

    move v0, v5

    .line 161
    goto/16 :goto_0

    .line 164
    :cond_8
    :try_start_4
    invoke-static {p0, p1, p2}, Lc8/Cgg;->unZipSelectedFiles(Ljava/lang/String;ILc8/HVf;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    move-result v0

    goto/16 :goto_0

    .line 165
    :catch_1
    move-exception v3

    .line 166
    .local v3, "e2":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 171
    .end local v3    # "e2":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/Throwable;
    :goto_4
    const/4 v0, 0x0

    .line 173
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 171
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v2

    goto :goto_4

    .line 137
    :catch_4
    move-exception v3

    goto :goto_3
.end method

.method public static isCPUSupport()Z
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lc8/Cgg;->_cpuType()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "cpuType":Ljava/lang/String;
    const-string/jumbo v1, "mips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isExist(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 338
    invoke-static {p0, p1}, Lc8/Cgg;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "file":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "a":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method public static isX86()Z
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lc8/Cgg;->_cpuType()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "cpuType":Ljava/lang/String;
    const-string/jumbo v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method static removeSoIfExit(Ljava/lang/String;I)V
    .locals 3
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 325
    invoke-static {p0, p1}, Lc8/Cgg;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "file":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "a":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 331
    :cond_0
    return-void
.end method

.method static unZipSelectedFiles(Ljava/lang/String;ILc8/HVf;)Z
    .locals 17
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I
    .param p2, "utAdapter"    # Lc8/HVf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "lib/armeabi/lib"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".so"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 379
    .local v11, "sourcePath":Ljava/lang/String;
    const-string/jumbo v14, ""

    .line 380
    .local v14, "zipPath":Ljava/lang/String;
    sget-object v4, Lc8/Cgg;->mContext:Landroid/content/Context;

    .line 381
    .local v4, "context":Landroid/content/Context;
    if-nez v4, :cond_1

    .line 382
    const/4 v15, 0x0

    .line 470
    :cond_0
    :goto_0
    return v15

    .line 385
    :cond_1
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 386
    .local v1, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_2

    .line 387
    iget-object v14, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 391
    :cond_2
    new-instance v13, Ljava/util/zip/ZipFile;

    invoke-direct {v13, v14}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 394
    .local v13, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .local v6, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 395
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 396
    .local v7, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-eqz v15, :cond_3

    .line 398
    const/4 v8, 0x0

    .line 399
    .local v8, "in":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 400
    .local v9, "os":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 401
    .local v3, "channel":Ljava/nio/channels/FileChannel;
    const/4 v12, 0x0

    .line 405
    .local v12, "total":I
    :try_start_1
    invoke-static/range {p0 .. p1}, Lc8/Cgg;->removeSoIfExit(Ljava/lang/String;I)V

    .line 408
    invoke-virtual {v13, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 409
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "lib"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "bk"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".so"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 411
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 413
    const/16 v15, 0x400

    new-array v2, v15, [B

    .line 416
    .local v2, "buffers":[B
    :goto_1
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "realLength":I
    if-lez v10, :cond_4

    .line 418
    const/4 v15, 0x0

    invoke-static {v2, v15, v10}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 419
    add-int/2addr v12, v10

    goto :goto_1

    .line 423
    :cond_4
    if-eqz v8, :cond_5

    .line 425
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 431
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 433
    :try_start_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 439
    :cond_6
    :goto_3
    if-eqz v9, :cond_7

    .line 441
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 447
    :cond_7
    :goto_4
    if-eqz v13, :cond_8

    .line 448
    :try_start_5
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V

    .line 449
    const/4 v13, 0x0

    .line 453
    :cond_8
    if-lez v12, :cond_f

    .line 454
    invoke-static/range {p0 .. p2}, Lc8/Cgg;->_loadUnzipSo(Ljava/lang/String;ILc8/HVf;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v15

    .line 465
    if-eqz v13, :cond_0

    .line 466
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V

    goto/16 :goto_0

    .line 426
    :catch_0
    move-exception v5

    .line 427
    .local v5, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 460
    .end local v2    # "buffers":[B
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "os":Ljava/io/FileOutputStream;
    .end local v10    # "realLength":I
    .end local v12    # "total":I
    :catch_1
    move-exception v5

    .line 461
    .local v5, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 465
    if-eqz v13, :cond_9

    .line 466
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V

    .line 470
    .end local v5    # "e":Ljava/io/IOException;
    :cond_9
    :goto_5
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 434
    .restart local v2    # "buffers":[B
    .restart local v3    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v7    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v10    # "realLength":I
    .restart local v12    # "total":I
    :catch_2
    move-exception v5

    .line 435
    .local v5, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 465
    .end local v2    # "buffers":[B
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "os":Ljava/io/FileOutputStream;
    .end local v10    # "realLength":I
    .end local v12    # "total":I
    :catchall_0
    move-exception v15

    if-eqz v13, :cond_a

    .line 466
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V

    .line 467
    :cond_a
    throw v15

    .line 442
    .restart local v2    # "buffers":[B
    .restart local v3    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v7    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v10    # "realLength":I
    .restart local v12    # "total":I
    :catch_3
    move-exception v5

    .line 443
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 423
    .end local v2    # "buffers":[B
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "realLength":I
    :catchall_1
    move-exception v15

    if-eqz v8, :cond_b

    .line 425
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 431
    :cond_b
    :goto_6
    if-eqz v3, :cond_c

    .line 433
    :try_start_b
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 439
    :cond_c
    :goto_7
    if-eqz v9, :cond_d

    .line 441
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 447
    :cond_d
    :goto_8
    if-eqz v13, :cond_e

    .line 448
    :try_start_d
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V

    .line 449
    const/4 v13, 0x0

    :cond_e
    throw v15

    .line 426
    :catch_4
    move-exception v5

    .line 427
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 434
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v5

    .line 435
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 442
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v5

    .line 443
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_8

    .line 456
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "buffers":[B
    .restart local v10    # "realLength":I
    :cond_f
    const/4 v15, 0x0

    .line 465
    if-eqz v13, :cond_0

    .line 466
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V

    goto/16 :goto_0

    .line 465
    .end local v2    # "buffers":[B
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "os":Ljava/io/FileOutputStream;
    .end local v10    # "realLength":I
    .end local v12    # "total":I
    :cond_10
    if-eqz v13, :cond_9

    .line 466
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_5
.end method
