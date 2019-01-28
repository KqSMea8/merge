.class public Lc8/KA;
.super Ljava/lang/Object;
.source "BundleReleaser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/JA;
    }
.end annotation


# static fields
.field private static final DEX_SUFFIX:Ljava/lang/String; = ".dex"

.field public static final MSG_ID_DEX_OPT_DONE:I = 0x2

.field private static final MSG_ID_DEX_RELEASE_DONE:I = 0x1

.field private static final MSG_ID_RELEASE_DONE:I = 0x5

.field private static final MSG_ID_RELEASE_FAILED:I = 0x6

.field private static final MSG_ID_RESOURCE_RELEASE_DONE:I = 0x3

.field private static final MSG_ID_SOLIB_RELEASE_DONE:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private apkFile:Ljava/io/File;

.field private dexFiles:[Ldalvik/system/DexFile;

.field private externalStorage:Z

.field private handler:Landroid/os/Handler;

.field private hasReleased:Z

.field private isReleasing:Z

.field private processCallBack:Lc8/JA;

.field private reversionDir:Ljava/io/File;

.field private service:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 243
    const-class v0, Lc8/KA;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/KA;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2
    .param p1, "reversionDir"    # Ljava/io/File;
    .param p2, "hasReleased"    # Z

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-boolean v0, p0, Lc8/KA;->isReleasing:Z

    .line 252
    iput-boolean v0, p0, Lc8/KA;->externalStorage:Z

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/KA;->dexFiles:[Ldalvik/system/DexFile;

    .line 261
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const-class v0, Landroid/app/PreVerifier;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 264
    :cond_0
    iput-boolean p2, p0, Lc8/KA;->hasReleased:Z

    .line 265
    iput-object p1, p0, Lc8/KA;->reversionDir:Ljava/io/File;

    .line 266
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/KA;->externalStorage:Z

    .line 269
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 270
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_2

    .line 271
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 273
    :cond_2
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lc8/FA;

    invoke-direct {v1, p0}, Lc8/FA;-><init>(Lc8/KA;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/KA;->handler:Landroid/os/Handler;

    .line 285
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lc8/KA;->service:Ljava/util/concurrent/ExecutorService;

    .line 286
    return-void
.end method

.method static synthetic access$000(Lc8/KA;Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Lc8/KA;
    .param p1, "x1"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lc8/KA;->handleMsg(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lc8/KA;)Z
    .locals 1
    .param p0, "x0"    # Lc8/KA;

    .prologue
    .line 235
    iget-boolean v0, p0, Lc8/KA;->externalStorage:Z

    return v0
.end method

.method static synthetic access$200(Lc8/KA;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lc8/KA;

    .prologue
    .line 235
    invoke-direct {p0}, Lc8/KA;->dexOptDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lc8/KA;Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/KA;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Lc8/KA;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lc8/KA;)[Ldalvik/system/DexFile;
    .locals 1
    .param p0, "x0"    # Lc8/KA;

    .prologue
    .line 235
    iget-object v0, p0, Lc8/KA;->dexFiles:[Ldalvik/system/DexFile;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lc8/KA;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lc8/KA;Ldalvik/system/DexFile;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lc8/KA;
    .param p1, "x1"    # Ldalvik/system/DexFile;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Lc8/KA;->verifyDexFile(Ldalvik/system/DexFile;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lc8/KA;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/KA;

    .prologue
    .line 235
    iget-object v0, p0, Lc8/KA;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private dexOptDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 546
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/KA;->reversionDir:Ljava/io/File;

    const-string/jumbo v2, "opt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 547
    .local v0, "optDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 548
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 550
    :cond_0
    return-object v0
.end method

.method private dexOptimization()V
    .locals 8

    .prologue
    const/16 v7, 0x15

    .line 420
    sget-object v5, Lc8/KA;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "dexOptimization start"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v5, p0, Lc8/KA;->reversionDir:Ljava/io/File;

    new-instance v6, Lc8/GA;

    invoke-direct {v6, p0}, Lc8/GA;-><init>(Lc8/KA;)V

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 431
    .local v4, "validDexes":[Ljava/io/File;
    sget-object v5, Lc8/KA;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "start new DexFile"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    array-length v5, v4

    new-array v5, v5, [Ldalvik/system/DexFile;

    iput-object v5, p0, Lc8/KA;->dexFiles:[Ldalvik/system/DexFile;

    .line 433
    sget-object v5, Lc8/KA;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "start enable verify"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-boolean v5, p0, Lc8/KA;->externalStorage:Z

    if-nez v5, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_0

    iget-boolean v5, p0, Lc8/KA;->hasReleased:Z

    if-nez v5, :cond_0

    .line 435
    sget-object v5, Lc8/CA;->dexBooster:Lc8/uA;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lc8/uA;->setVerificationEnabled(Z)V

    .line 436
    sget-object v5, Lc8/KA;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "enable verify"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    sget-object v5, Lc8/KA;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "start dexopt"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    array-length v5, v4

    invoke-direct {v0, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 440
    .local v0, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 441
    move v3, v2

    .line 442
    .local v3, "j":I
    iget-object v5, p0, Lc8/KA;->service:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lc8/HA;

    invoke-direct {v6, p0, v4, v3, v0}, Lc8/HA;-><init>(Lc8/KA;[Ljava/io/File;ILjava/util/concurrent/CountDownLatch;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    .end local v3    # "j":I
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_1
    iget-boolean v5, p0, Lc8/KA;->externalStorage:Z

    if-nez v5, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_2

    iget-boolean v5, p0, Lc8/KA;->hasReleased:Z

    if-nez v5, :cond_2

    .line 485
    sget-object v5, Lc8/CA;->dexBooster:Lc8/uA;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lc8/uA;->setVerificationEnabled(Z)V

    .line 487
    :cond_2
    sget-object v5, Lc8/KA;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "dex opt done"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v5, p0, Lc8/KA;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lc8/KA;->handler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 489
    return-void

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private handleMsg(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 289
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v1, v2

    .line 333
    :cond_1
    :goto_1
    return v1

    .line 291
    :pswitch_1
    iput-boolean v2, p0, Lc8/KA;->isReleasing:Z

    .line 292
    iget-object v2, p0, Lc8/KA;->processCallBack:Lc8/JA;

    if-eqz v2, :cond_2

    .line 293
    iget-object v2, p0, Lc8/KA;->processCallBack:Lc8/JA;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lc8/JA;->onFinish(I)V

    .line 295
    :cond_2
    :try_start_0
    sget-object v2, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;->RESOURCE:Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

    invoke-virtual {p0, v2}, Lc8/KA;->release(Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 301
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_2
    iget-object v1, p0, Lc8/KA;->processCallBack:Lc8/JA;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lc8/KA;->processCallBack:Lc8/JA;

    invoke-interface {v1}, Lc8/JA;->onFailed()V

    goto :goto_0

    .line 307
    :pswitch_3
    iget-object v2, p0, Lc8/KA;->processCallBack:Lc8/JA;

    if-eqz v2, :cond_3

    .line 308
    iget-object v2, p0, Lc8/KA;->processCallBack:Lc8/JA;

    invoke-interface {v2, v1}, Lc8/JA;->onFinish(I)V

    .line 310
    :cond_3
    invoke-direct {p0}, Lc8/KA;->dexOptimization()V

    goto :goto_1

    .line 314
    :pswitch_4
    iget-object v2, p0, Lc8/KA;->processCallBack:Lc8/JA;

    if-eqz v2, :cond_1

    .line 315
    iget-object v2, p0, Lc8/KA;->processCallBack:Lc8/JA;

    invoke-interface {v2}, Lc8/JA;->onAllFinish()V

    goto :goto_1

    .line 320
    :pswitch_5
    iget-object v1, p0, Lc8/KA;->processCallBack:Lc8/JA;

    if-eqz v1, :cond_4

    .line 321
    iget-object v1, p0, Lc8/KA;->processCallBack:Lc8/JA;

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Lc8/JA;->onFinish(I)V

    .line 324
    :cond_4
    :try_start_1
    sget-object v1, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;->SOLIB:Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

    invoke-virtual {p0, v1}, Lc8/KA;->release(Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 325
    :catch_1
    move-exception v0

    .line 326
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method static isVMMultidexCapable(Ljava/lang/String;)Z
    .locals 7
    .param p0, "versionString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x2

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "isMultidexCapable":Z
    if-eqz p0, :cond_1

    .line 571
    const-string/jumbo v5, "(\\d+)\\.(\\d+)(\\.\\d+)?"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 572
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 574
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 575
    .local v1, "major":I
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 576
    .local v3, "minor":I
    if-gt v1, v6, :cond_0

    if-ne v1, v6, :cond_2

    if-lez v3, :cond_2

    :cond_0
    move v0, v4

    .line 584
    .end local v1    # "major":I
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "minor":I
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VM with version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_3

    const-string/jumbo v4, " has multidex support"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    return v0

    .line 576
    .restart local v1    # "major":I
    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "minor":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 584
    .end local v1    # "major":I
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "minor":I
    :cond_3
    const-string/jumbo v4, " does not have multidex support"

    goto :goto_1

    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/io/File;
    .param p2, "optimizedDirectory"    # Ljava/io/File;

    .prologue
    .line 528
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "fileName":Ljava/lang/String;
    const-string/jumbo v4, ".dex"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 530
    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 531
    .local v1, "lastDot":I
    if-gez v1, :cond_1

    .line 532
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".dex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    .end local v1    # "lastDot":I
    :cond_0
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 541
    .local v2, "result":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 534
    .end local v2    # "result":Ljava/io/File;
    .restart local v1    # "lastDot":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 535
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 536
    const-string/jumbo v4, ".dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private verifyDexFile(Ldalvik/system/DexFile;Ljava/lang/String;)Z
    .locals 3
    .param p1, "dexFile"    # Ldalvik/system/DexFile;
    .param p2, "optimizedPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 492
    if-eqz p1, :cond_3

    .line 493
    iget-boolean v2, p0, Lc8/KA;->externalStorage:Z

    if-eqz v2, :cond_1

    .line 504
    :cond_0
    :goto_0
    return v0

    .line 496
    :cond_1
    invoke-virtual {p0, p1}, Lc8/KA;->checkDexValid(Ldalvik/system/DexFile;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 497
    goto :goto_0

    .line 499
    :cond_2
    iget-boolean v1, p0, Lc8/KA;->hasReleased:Z

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 500
    sget-object v1, Lc8/CA;->dexBooster:Lc8/uA;

    invoke-virtual {v1, p2}, Lc8/uA;->isOdexValid(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 504
    goto :goto_0
.end method


# virtual methods
.method public checkDexValid(Ldalvik/system/DexFile;)Z
    .locals 8
    .param p1, "odexFile"    # Ldalvik/system/DexFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 508
    invoke-static {}, Lc8/LA;->isArt()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 509
    sget-object v0, Lc8/CA;->RAW_APPLICATION_NAME:Ljava/lang/String;

    .line 511
    .local v0, "applicationName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 512
    .local v2, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 513
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v6, "/"

    const-string/jumbo v7, "."

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 523
    .end local v0    # "applicationName":Ljava/lang/String;
    .end local v2    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    return v3

    .restart local v0    # "applicationName":Ljava/lang/String;
    .restart local v2    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    move v3, v5

    .line 517
    goto :goto_0

    .line 518
    .end local v2    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 519
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v5

    .line 520
    goto :goto_0

    .end local v0    # "applicationName":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    move v3, v4

    .line 523
    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 554
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 555
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 557
    :cond_0
    iget-object v0, p0, Lc8/KA;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 558
    iput-object v2, p0, Lc8/KA;->handler:Landroid/os/Handler;

    .line 559
    iget-object v0, p0, Lc8/KA;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 560
    return-void
.end method

.method public getDexFile()[Ldalvik/system/DexFile;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lc8/KA;->dexFiles:[Ldalvik/system/DexFile;

    return-object v0
.end method

.method public release(Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;)V
    .locals 6
    .param p1, "releaseType"    # Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    sget-object v3, Lc8/IA;->$SwitchMap$android$taobao$atlas$startup$patch$releaser$ReleaseType:[I

    invoke-virtual {p1}, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 417
    :goto_0
    return-void

    .line 365
    :pswitch_0
    :try_start_0
    sget-object v3, Lc8/KA;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "DexReleaser start!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v3, p0, Lc8/KA;->apkFile:Ljava/io/File;

    iget-object v4, p0, Lc8/KA;->reversionDir:Ljava/io/File;

    iget-boolean v5, p0, Lc8/KA;->externalStorage:Z

    invoke-static {v3, v4, v5}, Lc8/LA;->releaseDexes(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v2

    .line 367
    .local v2, "result":Z
    sget-object v3, Lc8/KA;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DexReleaser done!----->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v3, p0, Lc8/KA;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 369
    .local v1, "message":Landroid/os/Message;
    if-eqz v2, :cond_0

    .line 370
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 374
    :goto_1
    iget-object v3, p0, Lc8/KA;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 372
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "message":Landroid/os/Message;
    .restart local v2    # "result":Z
    :cond_0
    const/4 v3, 0x6

    :try_start_1
    iput v3, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 381
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "result":Z
    :pswitch_1
    :try_start_2
    sget-object v3, Lc8/KA;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "ResourceReleaser start!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v3, p0, Lc8/KA;->apkFile:Ljava/io/File;

    iget-object v4, p0, Lc8/KA;->reversionDir:Ljava/io/File;

    invoke-static {v3, v4}, Lc8/NA;->releaseResource(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    .line 383
    .restart local v2    # "result":Z
    sget-object v3, Lc8/KA;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ResourceReleaser done!----->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v3, p0, Lc8/KA;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 386
    .restart local v1    # "message":Landroid/os/Message;
    if-eqz v2, :cond_1

    .line 387
    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->what:I

    .line 391
    :goto_2
    iget-object v3, p0, Lc8/KA;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 392
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "result":Z
    :catch_1
    move-exception v0

    .line 393
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 389
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "message":Landroid/os/Message;
    .restart local v2    # "result":Z
    :cond_1
    const/4 v3, 0x6

    :try_start_3
    iput v3, v1, Landroid/os/Message;->what:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 398
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "result":Z
    :pswitch_2
    :try_start_4
    sget-object v3, Lc8/KA;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "NativeLibReleaser start!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v3, p0, Lc8/KA;->apkFile:Ljava/io/File;

    iget-object v4, p0, Lc8/KA;->reversionDir:Ljava/io/File;

    invoke-static {v3, v4}, Lc8/MA;->releaseLibs(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    .line 400
    .restart local v2    # "result":Z
    sget-object v3, Lc8/KA;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NativeLibReleaser done!----->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v3, p0, Lc8/KA;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 402
    .restart local v1    # "message":Landroid/os/Message;
    if-eqz v2, :cond_2

    .line 403
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->what:I

    .line 407
    :goto_3
    iget-object v3, p0, Lc8/KA;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 408
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "result":Z
    :catch_2
    move-exception v0

    .line 409
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 405
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "message":Landroid/os/Message;
    .restart local v2    # "result":Z
    :cond_2
    const/4 v3, 0x6

    :try_start_5
    iput v3, v1, Landroid/os/Message;->what:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release(Lc8/JA;Ljava/io/File;Z)V
    .locals 3
    .param p1, "processCallBack"    # Lc8/JA;
    .param p2, "bundleFile"    # Ljava/io/File;
    .param p3, "start"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    sget-object v0, Lc8/KA;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release doing--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lc8/KA;->isReleasing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iput-object p2, p0, Lc8/KA;->apkFile:Ljava/io/File;

    .line 340
    iget-boolean v0, p0, Lc8/KA;->isReleasing:Z

    if-eqz v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 343
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/KA;->isReleasing:Z

    .line 344
    iput-object p1, p0, Lc8/KA;->processCallBack:Lc8/JA;

    .line 345
    if-nez p3, :cond_1

    .line 346
    sget-object v0, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;->DEX:Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

    invoke-virtual {p0, v0}, Lc8/KA;->release(Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;)V

    goto :goto_0

    .line 348
    :cond_1
    invoke-direct {p0}, Lc8/KA;->dexOptimization()V

    .line 349
    iget-object v0, p0, Lc8/KA;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lc8/JA;->onFinish(I)V

    .line 351
    invoke-interface {p1}, Lc8/JA;->onAllFinish()V

    goto :goto_0

    .line 354
    :cond_2
    invoke-interface {p1}, Lc8/JA;->onFailed()V

    goto :goto_0
.end method
