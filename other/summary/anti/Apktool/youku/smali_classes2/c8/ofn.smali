.class public Lc8/ofn;
.super Ljava/lang/Object;
.source "DownloadAccManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/nfn;
    }
.end annotation


# static fields
.field private static final EXCUTE_TIMER_INTERVAL:F = 1.0f

.field private static final KEY_DOWNLOAD_ACC:Ljava/lang/String; = "KEY_DOWNLOAD_ACC"

.field public static final STATE_ERROR:I = 0x5

.field public static final STATE_FINISH:I = 0x4

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_PAUSE:I = 0x2

.field public static final STATE_STARTED:I = 0x1

.field public static final STATE_STOPED:I = 0x3

.field private static final STRAGE_ACC:Ljava/lang/String; = "STRAGE_DOWNLOAD_ACC"

.field private static final TAG:Ljava/lang/String; = "DownloadAccManager"

.field private static instance:Lc8/ofn;

.field private static timer:Ljava/util/Timer;


# instance fields
.field private callBacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/nfn;",
            ">;"
        }
    .end annotation
.end field

.field private canDownloadAcc:Z

.field private legalInfo:Lc8/Sen;

.field private onChangeListener:Lc8/Ben;

.field private state:I

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/ofn;->callBacks:Ljava/util/List;

    .line 48
    iput v3, p0, Lc8/ofn;->state:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/ofn;->timerTask:Ljava/util/TimerTask;

    .line 59
    iput-boolean v3, p0, Lc8/ofn;->canDownloadAcc:Z

    .line 378
    new-instance v0, Lc8/kfn;

    invoke-direct {v0, p0}, Lc8/kfn;-><init>(Lc8/ofn;)V

    iput-object v0, p0, Lc8/ofn;->onChangeListener:Lc8/Ben;

    .line 62
    invoke-direct {p0}, Lc8/ofn;->getDownloadAcc()Z

    move-result v0

    iput-boolean v0, p0, Lc8/ofn;->canDownloadAcc:Z

    .line 63
    invoke-direct {p0}, Lc8/ofn;->loadLegalInfo()V

    .line 64
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lc8/ofn;->timer:Ljava/util/Timer;

    .line 65
    new-instance v0, Lc8/dfn;

    invoke-direct {v0, p0}, Lc8/dfn;-><init>(Lc8/ofn;)V

    .line 71
    invoke-virtual {v0}, Lc8/dfn;->start()V

    .line 72
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "video_download_config"

    aput-object v2, v1, v3

    new-instance v2, Lc8/ffn;

    invoke-direct {v2, p0}, Lc8/ffn;-><init>(Lc8/ofn;)V

    invoke-virtual {v0, v1, v2}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lc8/ofn;)V
    .locals 0
    .param p0, "x0"    # Lc8/ofn;

    .prologue
    .line 33
    invoke-direct {p0}, Lc8/ofn;->loadOrangeConfig()V

    return-void
.end method

.method static synthetic access$100(Lc8/ofn;)V
    .locals 0
    .param p0, "x0"    # Lc8/ofn;

    .prologue
    .line 33
    invoke-direct {p0}, Lc8/ofn;->reloadOrangeConfigAndResetAcc()V

    return-void
.end method

.method static synthetic access$200(Lc8/ofn;)I
    .locals 1
    .param p0, "x0"    # Lc8/ofn;

    .prologue
    .line 33
    iget v0, p0, Lc8/ofn;->state:I

    return v0
.end method

.method static synthetic access$300(Lc8/ofn;)Lc8/Sen;
    .locals 1
    .param p0, "x0"    # Lc8/ofn;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/ofn;->legalInfo:Lc8/Sen;

    return-object v0
.end method

.method static synthetic access$302(Lc8/ofn;Lc8/Sen;)Lc8/Sen;
    .locals 0
    .param p0, "x0"    # Lc8/ofn;
    .param p1, "x1"    # Lc8/Sen;

    .prologue
    .line 33
    iput-object p1, p0, Lc8/ofn;->legalInfo:Lc8/Sen;

    return-object p1
.end method

.method static synthetic access$400(Lc8/ofn;I)V
    .locals 0
    .param p0, "x0"    # Lc8/ofn;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lc8/ofn;->setState(I)V

    return-void
.end method

.method static synthetic access$500(Lc8/ofn;ILjava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lc8/ofn;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lc8/ofn;->notifyCallback(ILjava/util/Map;)V

    return-void
.end method

.method static synthetic access$600(Lc8/ofn;)Z
    .locals 1
    .param p0, "x0"    # Lc8/ofn;

    .prologue
    .line 33
    invoke-direct {p0}, Lc8/ofn;->canAutoDownloadAcced()Z

    move-result v0

    return v0
.end method

.method private canAutoDownloadAcced()Z
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lc8/ofn;->canDownloadAcc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ofn;->legalInfo:Lc8/Sen;

    iget v0, v0, Lc8/Sen;->totalAccTime:I

    iget-object v1, p0, Lc8/ofn;->legalInfo:Lc8/Sen;

    iget v1, v1, Lc8/Sen;->remainAccTime:I

    if-eq v0, v1, :cond_0

    .line 215
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTimer()V
    .locals 2

    .prologue
    .line 325
    :try_start_0
    iget-object v1, p0, Lc8/ofn;->timerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lc8/ofn;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 327
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/ofn;->timerTask:Ljava/util/TimerTask;

    .line 329
    :cond_0
    sget-object v1, Lc8/ofn;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 330
    sget-object v1, Lc8/ofn;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 331
    sget-object v1, Lc8/ofn;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 332
    const/4 v1, 0x0

    sput-object v1, Lc8/ofn;->timer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :cond_1
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private consumeLegalInfo(I)V
    .locals 2
    .param p1, "consumeCount"    # I

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "consumeLegalInfo ... consumeCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    new-instance v0, Lc8/hfn;

    invoke-direct {v0, p0}, Lc8/hfn;-><init>(Lc8/ofn;)V

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lc8/rfn;->consumeDownloadLegal(ILc8/qfn;Ljava/util/Map;)V

    .line 299
    return-void
.end method

.method private getDownloadAcc()Z
    .locals 1

    .prologue
    .line 516
    const-string/jumbo v0, "KEY_DOWNLOAD_ACC"

    invoke-static {v0}, Lc8/Iin;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lc8/ofn;
    .locals 2

    .prologue
    .line 92
    const-class v1, Lc8/ofn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/ofn;->instance:Lc8/ofn;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lc8/ofn;

    invoke-direct {v0}, Lc8/ofn;-><init>()V

    sput-object v0, Lc8/ofn;->instance:Lc8/ofn;

    .line 95
    :cond_0
    sget-object v0, Lc8/ofn;->instance:Lc8/ofn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initTimerTask()V
    .locals 1

    .prologue
    .line 302
    new-instance v0, Lc8/ifn;

    invoke-direct {v0, p0}, Lc8/ifn;-><init>(Lc8/ofn;)V

    iput-object v0, p0, Lc8/ofn;->timerTask:Ljava/util/TimerTask;

    .line 321
    return-void
.end method

.method private loadLegalInfo()V
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Lc8/rfn;->getLegalInfo()Lc8/Sen;

    move-result-object v0

    iput-object v0, p0, Lc8/ofn;->legalInfo:Lc8/Sen;

    .line 252
    return-void
.end method

.method private loadOrangeConfig()V
    .locals 8

    .prologue
    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 471
    .local v2, "time":J
    :try_start_0
    sget-object v4, Lc8/ddn;->context:Landroid/content/Context;

    invoke-static {v4}, Lc8/Lfn;->getDownloadAccRate(Landroid/content/Context;)F

    move-result v0

    .line 472
    .local v0, "rate":F
    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    .line 496
    .end local v0    # "rate":F
    :goto_0
    return-void

    .line 475
    .restart local v0    # "rate":F
    :cond_0
    const/4 v1, 0x0

    .line 476
    .local v1, "saveAcc":Z
    const/4 v4, 0x0

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_3

    .line 478
    const/4 v4, 0x0

    iput-boolean v4, p0, Lc8/ofn;->canDownloadAcc:Z

    .line 479
    const/4 v1, 0x1

    .line 487
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "load acc info , rate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , canDownloadAcc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lc8/ofn;->canDownloadAcc:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , saveAcc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    if-eqz v1, :cond_2

    .line 489
    invoke-direct {p0}, Lc8/ofn;->resetDownloadAccModel()V

    .line 490
    iget-boolean v4, p0, Lc8/ofn;->canDownloadAcc:Z

    invoke-direct {p0, v4}, Lc8/ofn;->saveDownloadAcc(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v0    # "rate":F
    .end local v1    # "saveAcc":Z
    :cond_2
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadOrangeConfig cost : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 482
    .restart local v0    # "rate":F
    .restart local v1    # "saveAcc":Z
    :cond_3
    :try_start_1
    iget-boolean v4, p0, Lc8/ofn;->canDownloadAcc:Z

    if-nez v4, :cond_1

    .line 483
    const-string/jumbo v4, "STRAGE_DOWNLOAD_ACC"

    float-to-double v6, v0

    invoke-static {v4, v6, v7}, Lc8/HDj;->switchHit(Ljava/lang/String;D)Z

    move-result v4

    iput-boolean v4, p0, Lc8/ofn;->canDownloadAcc:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 484
    const/4 v1, 0x1

    goto :goto_1

    .end local v0    # "rate":F
    .end local v1    # "saveAcc":Z
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method private notifyCallback(ILjava/util/Map;)V
    .locals 3
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lc8/ofn;->callBacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/nfn;

    .line 132
    .local v0, "callBack":Lc8/nfn;
    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1, p2}, Lc8/nfn;->onStateCallBack(ILjava/util/Map;)V

    goto :goto_0

    .line 136
    .end local v0    # "callBack":Lc8/nfn;
    :cond_1
    return-void
.end method

.method private reloadOrangeConfigAndResetAcc()V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Lc8/ofn;->loadOrangeConfig()V

    .line 502
    return-void
.end method

.method private resetDownloadAccModel()V
    .locals 1

    .prologue
    .line 506
    invoke-virtual {p0}, Lc8/ofn;->canDownloadAccForVipUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lc8/ofn;->canAutoDownloadAcced()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    :cond_0
    invoke-direct {p0}, Lc8/ofn;->startVipModel()V

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_1
    invoke-direct {p0}, Lc8/ofn;->stopVipModel()V

    goto :goto_0
.end method

.method private saveDownloadAcc(Z)V
    .locals 2
    .param p1, "acc"    # Z

    .prologue
    .line 513
    const-string/jumbo v0, "KEY_DOWNLOAD_ACC"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Iin;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 514
    return-void
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 341
    iput p1, p0, Lc8/ofn;->state:I

    .line 342
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 344
    :cond_0
    invoke-virtual {p0}, Lc8/ofn;->getAccUseTime()I

    move-result v0

    .line 345
    .local v0, "consume":I
    if-lez v0, :cond_1

    .line 346
    invoke-direct {p0, v0}, Lc8/ofn;->consumeLegalInfo(I)V

    .line 349
    .end local v0    # "consume":I
    :cond_1
    new-instance v1, Lc8/jfn;

    invoke-direct {v1, p0}, Lc8/jfn;-><init>(Lc8/ofn;)V

    .line 355
    invoke-virtual {v1}, Lc8/jfn;->start()V

    .line 356
    return-void
.end method

.method private startVipModel()V
    .locals 1

    .prologue
    .line 438
    new-instance v0, Lc8/lfn;

    invoke-direct {v0, p0}, Lc8/lfn;-><init>(Lc8/ofn;)V

    .line 448
    invoke-virtual {v0}, Lc8/lfn;->start()V

    .line 450
    return-void
.end method

.method private stopVipModel()V
    .locals 1

    .prologue
    .line 454
    new-instance v0, Lc8/mfn;

    invoke-direct {v0, p0}, Lc8/mfn;-><init>(Lc8/ofn;)V

    .line 465
    invoke-virtual {v0}, Lc8/mfn;->start()V

    .line 466
    return-void
.end method


# virtual methods
.method public canDownloadAcc()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lc8/ofn;->canDownloadAcc:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/uAo;->isVip()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/ofn;->legalInfo:Lc8/Sen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ofn;->legalInfo:Lc8/Sen;

    iget v0, v0, Lc8/Sen;->remainAccTime:I

    if-lez v0, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canDownloadAccForVipUser()Z
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "canDownloadAccForVipUser : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/ofn;->canDownloadAcc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    invoke-static {}, Lc8/uAo;->isVip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/ofn;->canDownloadAcc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public convertLegalInfo(Lcom/youku/service/download/response/VipDownloadLegalData;)Lc8/Sen;
    .locals 6
    .param p1, "data"    # Lcom/youku/service/download/response/VipDownloadLegalData;

    .prologue
    .line 394
    new-instance v2, Lc8/Sen;

    invoke-direct {v2}, Lc8/Sen;-><init>()V

    .line 395
    .local v2, "legalInfo":Lc8/Sen;
    if-nez p1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-object v2

    .line 399
    :cond_1
    iget-object v5, p1, Lcom/youku/service/download/response/VipDownloadLegalData;->model:Lc8/afn;

    iget-object v1, v5, Lc8/afn;->benefitItems:Ljava/util/Map;

    .line 400
    .local v1, "legalBenefitMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/youku/service/download/response/VipDownloadLegalData$LegalBenefit;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 409
    const v5, 0x1adb1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Zen;

    .line 410
    .local v0, "legalBenefit":Lc8/Zen;
    if-eqz v0, :cond_0

    .line 413
    iget-object v5, v0, Lc8/Zen;->quantity:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lc8/Sen;->totalAccTime:I

    .line 414
    invoke-virtual {p0}, Lc8/ofn;->getCurrentDay()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc8/Sen;->legalDate:Ljava/lang/String;

    .line 415
    iget v5, v2, Lc8/Sen;->totalAccTime:I

    iput v5, v2, Lc8/Sen;->remainAccTime:I

    .line 417
    iget-object v5, p1, Lcom/youku/service/download/response/VipDownloadLegalData;->model:Lc8/afn;

    iget-object v4, v5, Lc8/afn;->sceneContents:Ljava/util/List;

    .line 418
    .local v4, "sceneContents":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/download/response/VipDownloadLegalData$OpenVipData;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 419
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/bfn;

    .line 420
    .local v3, "openVipData":Lc8/bfn;
    if-eqz v3, :cond_0

    .line 421
    iget-object v5, v3, Lc8/bfn;->content_type:Ljava/lang/String;

    iput-object v5, v2, Lc8/Sen;->openVipJumpType:Ljava/lang/String;

    .line 422
    iget-object v5, v3, Lc8/bfn;->data_ext:Lc8/cfn;

    if-eqz v5, :cond_0

    .line 423
    iget-object v5, v3, Lc8/bfn;->data_ext:Lc8/cfn;

    iget-object v5, v5, Lc8/cfn;->link:Ljava/lang/String;

    iput-object v5, v2, Lc8/Sen;->openVipJumpValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAccRemainTime()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lc8/ofn;->legalInfo:Lc8/Sen;

    iget v0, v0, Lc8/Sen;->remainAccTime:I

    return v0
.end method

.method public getAccTotalTime()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lc8/ofn;->legalInfo:Lc8/Sen;

    iget v0, v0, Lc8/Sen;->totalAccTime:I

    return v0
.end method

.method public getAccUseTime()I
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lc8/ofn;->legalInfo:Lc8/Sen;

    iget v0, v0, Lc8/Sen;->totalAccTime:I

    iget-object v1, p0, Lc8/ofn;->legalInfo:Lc8/Sen;

    iget v1, v1, Lc8/Sen;->remainAccTime:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCurrentDay()Ljava/lang/String;
    .locals 4

    .prologue
    .line 431
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 432
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 433
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLegalInfo()Lc8/Sen;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lc8/ofn;->legalInfo:Lc8/Sen;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lc8/ofn;->state:I

    return v0
.end method

.method public hasDownloadingVideo()Z
    .locals 6

    .prologue
    .line 363
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v4

    invoke-virtual {v4}, Lc8/ben;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v1

    .line 364
    .local v1, "downloadInfoHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/youku/service/download/DownloadInfo;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 365
    :cond_0
    const/4 v3, 0x0

    .line 375
    :cond_1
    :goto_0
    return v3

    .line 367
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 368
    .local v2, "downloadInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/youku/service/download/DownloadInfo;>;"
    const/4 v3, 0x0

    .line 369
    .local v3, "hasDownloadingTask":Z
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/service/download/DownloadInfo;

    .line 370
    .local v0, "downloadInfo":Lcom/youku/service/download/DownloadInfo;
    if-eqz v0, :cond_3

    iget v5, v0, Lcom/youku/service/download/DownloadInfo;->state:I

    if-nez v5, :cond_3

    .line 371
    const/4 v3, 0x1

    .line 372
    goto :goto_0
.end method

.method public isDownloadAccing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 221
    iget v1, p0, Lc8/ofn;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseDownloadAcc()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lc8/ofn;->setState(I)V

    .line 161
    invoke-direct {p0}, Lc8/ofn;->cancelTimer()V

    .line 162
    return-void
.end method

.method public registerDownloadChangedListener()V
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v0

    iget-object v1, p0, Lc8/ofn;->onChangeListener:Lc8/Ben;

    invoke-virtual {v0, v1}, Lc8/ben;->registerOnChangedListener(Lc8/Ben;)V

    .line 152
    return-void
.end method

.method public registerDownloadSpeedUpCallBack(Lc8/nfn;)V
    .locals 1
    .param p1, "callBack"    # Lc8/nfn;

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lc8/ofn;->callBacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    return-void
.end method

.method public requestLegalInfo(Lc8/qfn;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qfn",
            "<",
            "Lcom/youku/service/download/response/VipDownloadLegalData;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "listener":Lc8/qfn;, "Lcom/youku/service/download/tryout/DownloadVipLegalManager$MtopResultListener<Lcom/youku/service/download/response/VipDownloadLegalData;>;"
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lc8/gfn;

    invoke-direct {v0, p0, p1}, Lc8/gfn;-><init>(Lc8/ofn;Lc8/qfn;)V

    .line 282
    .local v0, "mtopResultListener":Lc8/qfn;, "Lcom/youku/service/download/tryout/DownloadVipLegalManager$MtopResultListener<Lcom/youku/service/download/response/VipDownloadLegalData;>;"
    invoke-static {v0, p2}, Lc8/rfn;->queryDownloadLegal(Lc8/qfn;Ljava/util/Map;)V

    .line 283
    return-void
.end method

.method public showDownloadAcc()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lc8/ofn;->canDownloadAcc:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/uAo;->isVip()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/ofn;->legalInfo:Lc8/Sen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ofn;->legalInfo:Lc8/Sen;

    iget v0, v0, Lc8/Sen;->totalAccTime:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startDownloadAcc()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/ofn;->startDownloadAcc(Z)Z

    move-result v0

    return v0
.end method

.method public startDownloadAcc(Z)Z
    .locals 7
    .param p1, "auto"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDownloadAcc... state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/ofn;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , auto : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lc8/ofn;->canDownloadAcc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/ofn;->isDownloadAccing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/ofn;->hasDownloadingVideo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    :cond_0
    if-nez p1, :cond_1

    .line 116
    iget v0, p0, Lc8/ofn;->state:I

    invoke-direct {p0, v0, v2}, Lc8/ofn;->notifyCallback(ILjava/util/Map;)V

    .line 118
    :cond_1
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    .line 120
    :cond_2
    invoke-direct {p0, v6}, Lc8/ofn;->setState(I)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDownloadAcc... state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/ofn;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    iget v0, p0, Lc8/ofn;->state:I

    invoke-direct {p0, v0, v2}, Lc8/ofn;->notifyCallback(ILjava/util/Map;)V

    .line 123
    invoke-direct {p0}, Lc8/ofn;->initTimerTask()V

    .line 124
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 125
    sput-object v0, Lc8/ofn;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lc8/ofn;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 126
    invoke-direct {p0}, Lc8/ofn;->startVipModel()V

    move v0, v6

    .line 127
    goto :goto_0
.end method

.method public stopDownloadAcc()Z
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 142
    iget v0, p0, Lc8/ofn;->state:I

    if-eq v0, v1, :cond_0

    .line 143
    invoke-direct {p0}, Lc8/ofn;->stopVipModel()V

    .line 144
    invoke-direct {p0, v1}, Lc8/ofn;->setState(I)V

    .line 145
    invoke-direct {p0}, Lc8/ofn;->cancelTimer()V

    .line 147
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public unRegisterDownloadChangedListener()V
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v0

    iget-object v1, p0, Lc8/ofn;->onChangeListener:Lc8/Ben;

    invoke-virtual {v0, v1}, Lc8/ben;->unregisterOnChangeListener(Lc8/Ben;)V

    .line 156
    return-void
.end method

.method public unRegisterDownloadSpeedUpCallBack(Lc8/nfn;)V
    .locals 1
    .param p1, "callBack"    # Lc8/nfn;

    .prologue
    .line 231
    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lc8/ofn;->callBacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 234
    :cond_0
    return-void
.end method
