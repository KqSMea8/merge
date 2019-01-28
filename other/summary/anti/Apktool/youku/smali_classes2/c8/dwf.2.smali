.class public Lc8/dwf;
.super Ljava/lang/Object;
.source "DefaultSchedulerSupplier.java"

# interfaces
.implements Lc8/Hxf;
.implements Lc8/Oyf;


# instance fields
.field private final mCentralScheduler:Lc8/Nyf;

.field private mDecodeScheduler:Lc8/Nyf;

.field private mIsLastSpeedSlow:Z

.field private final mMaxNetworkRunningAtFast:I

.field private final mMaxNetworkRunningAtSlow:I

.field private mNetworkScheduler:Lc8/Pyf;

.field private mUiThreadScheduler:Lc8/Nyf;


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x3

    .line 26
    const/4 v1, 0x0

    const/4 v3, 0x6

    const/16 v4, 0x8

    const/16 v6, 0x5dc

    const/4 v9, 0x2

    const/4 v10, -0x1

    move-object v0, p0

    move v7, v2

    move v8, v5

    invoke-direct/range {v0 .. v10}, Lc8/dwf;-><init>(Lc8/Nyf;IIIIIIIII)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lc8/Nyf;IIIIIIII)V
    .locals 11
    .param p1, "central"    # Lc8/Nyf;
    .param p2, "coreSize"    # I
    .param p3, "maxRunning"    # I
    .param p4, "keepAlive"    # I
    .param p5, "queueSize"    # I
    .param p6, "patienceSize"    # I
    .param p7, "maxDecodeRunning"    # I
    .param p8, "maxNetworkRunningAtFast"    # I
    .param p9, "maxNetworkRunningAtSlow"    # I

    .prologue
    .line 32
    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lc8/dwf;-><init>(Lc8/Nyf;IIIIIIIII)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lc8/Nyf;IIIIIIIII)V
    .locals 8
    .param p1, "central"    # Lc8/Nyf;
    .param p2, "coreSize"    # I
    .param p3, "maxRunning"    # I
    .param p4, "keepAlive"    # I
    .param p5, "queueSize"    # I
    .param p6, "patienceSize"    # I
    .param p7, "maxDecodeRunning"    # I
    .param p8, "maxNetworkRunningAtFast"    # I
    .param p9, "maxNetworkRunningAtSlow"    # I
    .param p10, "networkRunningExpired"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v1, Lc8/Eyf;

    const-string/jumbo v2, "Phenix-Scheduler"

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lc8/Eyf;-><init>(Ljava/lang/String;IIIII)V

    iput-object v1, p0, Lc8/dwf;->mCentralScheduler:Lc8/Nyf;

    .line 43
    :goto_0
    move/from16 v0, p8

    iput v0, p0, Lc8/dwf;->mMaxNetworkRunningAtFast:I

    .line 44
    move/from16 v0, p9

    iput v0, p0, Lc8/dwf;->mMaxNetworkRunningAtSlow:I

    .line 45
    if-lez p10, :cond_1

    .line 46
    new-instance v1, Lc8/Iyf;

    iget-object v2, p0, Lc8/dwf;->mCentralScheduler:Lc8/Nyf;

    iget v3, p0, Lc8/dwf;->mMaxNetworkRunningAtFast:I

    move/from16 v0, p10

    invoke-direct {v1, v2, v3, v0}, Lc8/Iyf;-><init>(Lc8/Nyf;II)V

    iput-object v1, p0, Lc8/dwf;->mNetworkScheduler:Lc8/Pyf;

    .line 50
    :goto_1
    new-instance v1, Lc8/Byf;

    iget-object v2, p0, Lc8/dwf;->mCentralScheduler:Lc8/Nyf;

    invoke-direct {v1, v2, p7}, Lc8/Byf;-><init>(Lc8/Nyf;I)V

    iput-object v1, p0, Lc8/dwf;->mDecodeScheduler:Lc8/Nyf;

    .line 51
    return-void

    .line 40
    :cond_0
    new-instance v1, Lc8/Gyf;

    invoke-direct {v1, p1, p3, p5, p6}, Lc8/Gyf;-><init>(Lc8/Nyf;III)V

    iput-object v1, p0, Lc8/dwf;->mCentralScheduler:Lc8/Nyf;

    goto :goto_0

    .line 48
    :cond_1
    new-instance v1, Lc8/Byf;

    iget-object v2, p0, Lc8/dwf;->mCentralScheduler:Lc8/Nyf;

    iget v3, p0, Lc8/dwf;->mMaxNetworkRunningAtFast:I

    invoke-direct {v1, v2, v3}, Lc8/Byf;-><init>(Lc8/Nyf;I)V

    iput-object v1, p0, Lc8/dwf;->mNetworkScheduler:Lc8/Pyf;

    goto :goto_1
.end method


# virtual methods
.method public forCpuBound()Lc8/Nyf;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lc8/dwf;->mCentralScheduler:Lc8/Nyf;

    return-object v0
.end method

.method public forDecode()Lc8/Nyf;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lc8/dwf;->mDecodeScheduler:Lc8/Nyf;

    return-object v0
.end method

.method public forIoBound()Lc8/Nyf;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lc8/dwf;->mCentralScheduler:Lc8/Nyf;

    return-object v0
.end method

.method public forNetwork()Lc8/Nyf;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lc8/dwf;->mNetworkScheduler:Lc8/Pyf;

    return-object v0
.end method

.method public forUiThread()Lc8/Nyf;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lc8/dwf;->mUiThreadScheduler:Lc8/Nyf;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lc8/Qyf;

    invoke-direct {v0}, Lc8/Qyf;-><init>()V

    iput-object v0, p0, Lc8/dwf;->mUiThreadScheduler:Lc8/Nyf;

    .line 94
    :cond_0
    iget-object v0, p0, Lc8/dwf;->mUiThreadScheduler:Lc8/Nyf;

    return-object v0
.end method

.method public declared-synchronized onNetworkQualityChanged(Z)V
    .locals 5
    .param p1, "isSpeedSlow"    # Z

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/dwf;->mIsLastSpeedSlow:Z

    if-ne v0, p1, :cond_1

    .line 56
    const-string/jumbo v1, "Network"

    const-string/jumbo v2, "network speed not changed, still %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "SLOW"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lc8/qwf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_1
    monitor-exit p0

    return-void

    .line 56
    :cond_0
    :try_start_1
    const-string/jumbo v0, "FAST"

    goto :goto_0

    .line 59
    :cond_1
    if-eqz p1, :cond_2

    .line 60
    const-string/jumbo v0, "Network"

    const-string/jumbo v1, "network speed changed from FAST to SLOW"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/qwf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lc8/dwf;->mNetworkScheduler:Lc8/Pyf;

    iget v1, p0, Lc8/dwf;->mMaxNetworkRunningAtSlow:I

    invoke-interface {v0, v1}, Lc8/Pyf;->setMaxRunningCount(I)V

    .line 66
    :goto_2
    iput-boolean p1, p0, Lc8/dwf;->mIsLastSpeedSlow:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 63
    :cond_2
    :try_start_2
    const-string/jumbo v0, "Network"

    const-string/jumbo v1, "network speed changed from SLOW to FAST"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/qwf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lc8/dwf;->mNetworkScheduler:Lc8/Pyf;

    iget v1, p0, Lc8/dwf;->mMaxNetworkRunningAtFast:I

    invoke-interface {v0, v1}, Lc8/Pyf;->setMaxRunningCount(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
