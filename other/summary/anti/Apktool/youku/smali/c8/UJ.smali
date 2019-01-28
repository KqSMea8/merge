.class public Lc8/UJ;
.super Ljava/lang/Object;
.source "BandWidthSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/TJ;
    }
.end annotation


# static fields
.field private static volatile isNetworkMeterStarted:Z

.field static mKalmanDataSize:J

.field static mKalmanTimeUsed:J

.field static mReceivedDataCount:I

.field static mReceivedRequestFinishedTimePre:J

.field static mReceivedRequestStartTimePre:J

.field static mSpeedKalmanCount:J

.field static speed:D

.field static speedPre:D

.field static speedPrePre:D

.field static speedThreshold:D


# instance fields
.field private currentNetworkSpeed:I

.field private mNetWorkKalmanFilter:Lc8/WJ;

.field private mSinceLastNotification:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 13
    sput-boolean v4, Lc8/UJ;->isNetworkMeterStarted:Z

    .line 18
    sput v4, Lc8/UJ;->mReceivedDataCount:I

    .line 19
    sput-wide v0, Lc8/UJ;->mReceivedRequestStartTimePre:J

    .line 20
    sput-wide v0, Lc8/UJ;->mReceivedRequestFinishedTimePre:J

    .line 21
    sput-wide v0, Lc8/UJ;->mKalmanTimeUsed:J

    .line 22
    sput-wide v0, Lc8/UJ;->mKalmanDataSize:J

    .line 23
    sput-wide v0, Lc8/UJ;->mSpeedKalmanCount:J

    .line 24
    sput-wide v2, Lc8/UJ;->speedPrePre:D

    .line 25
    sput-wide v2, Lc8/UJ;->speedPre:D

    .line 26
    sput-wide v2, Lc8/UJ;->speed:D

    .line 27
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    sput-wide v0, Lc8/UJ;->speedThreshold:D

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lc8/UJ;->currentNetworkSpeed:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lc8/UJ;->mSinceLastNotification:I

    .line 32
    new-instance v0, Lc8/WJ;

    invoke-direct {v0}, Lc8/WJ;-><init>()V

    iput-object v0, p0, Lc8/UJ;->mNetWorkKalmanFilter:Lc8/WJ;

    .line 43
    new-instance v0, Lc8/RJ;

    invoke-direct {v0, p0}, Lc8/RJ;-><init>(Lc8/UJ;)V

    invoke-static {v0}, Lc8/FK;->addStatusChangeListener(Lc8/EK;)V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lc8/RJ;)V
    .locals 0
    .param p1, "x0"    # Lc8/RJ;

    .prologue
    .line 10
    invoke-direct {p0}, Lc8/UJ;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lc8/UJ;)Lc8/WJ;
    .locals 1
    .param p0, "x0"    # Lc8/UJ;

    .prologue
    .line 10
    iget-object v0, p0, Lc8/UJ;->mNetWorkKalmanFilter:Lc8/WJ;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 10
    sget-boolean v0, Lc8/UJ;->isNetworkMeterStarted:Z

    return v0
.end method

.method static synthetic access$300(Lc8/UJ;)I
    .locals 1
    .param p0, "x0"    # Lc8/UJ;

    .prologue
    .line 10
    iget v0, p0, Lc8/UJ;->mSinceLastNotification:I

    return v0
.end method

.method static synthetic access$302(Lc8/UJ;I)I
    .locals 0
    .param p0, "x0"    # Lc8/UJ;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lc8/UJ;->mSinceLastNotification:I

    return p1
.end method

.method static synthetic access$308(Lc8/UJ;)I
    .locals 2
    .param p0, "x0"    # Lc8/UJ;

    .prologue
    .line 10
    iget v0, p0, Lc8/UJ;->mSinceLastNotification:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc8/UJ;->mSinceLastNotification:I

    return v0
.end method

.method static synthetic access$402(Lc8/UJ;I)I
    .locals 0
    .param p0, "x0"    # Lc8/UJ;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lc8/UJ;->currentNetworkSpeed:I

    return p1
.end method

.method public static getInstance()Lc8/UJ;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lc8/TJ;->instance:Lc8/UJ;

    return-object v0
.end method


# virtual methods
.method public getNetSpeedValue()D
    .locals 2

    .prologue
    .line 61
    sget-wide v0, Lc8/UJ;->speed:D

    return-wide v0
.end method

.method public getNetworkSpeed()I
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lc8/FK;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lc8/UJ;->currentNetworkSpeed:I

    goto :goto_0
.end method

.method public onDataReceived(JJJ)V
    .locals 9
    .param p1, "mRequestStartTime"    # J
    .param p3, "mRequestFinishedTime"    # J
    .param p5, "mRequestDataSize"    # J

    .prologue
    .line 87
    sget-boolean v0, Lc8/UJ;->isNetworkMeterStarted:Z

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v0, Lc8/SJ;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lc8/SJ;-><init>(Lc8/UJ;JJJ)V

    invoke-static {v0}, Lc8/EL;->submitScheduledTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public declared-synchronized startNetworkMeter()V
    .locals 7

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "awcn.BandWidthSampler"

    const-string/jumbo v2, "[startNetworkMeter]"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "NetworkStatus"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lc8/FK;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Lc8/FK;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v1

    sget-object v2, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v1, v2, :cond_0

    .line 71
    const/4 v1, 0x0

    sput-boolean v1, Lc8/UJ;->isNetworkMeterStarted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lc8/UJ;->isNetworkMeterStarted:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "awcn.BandWidthSampler"

    const-string/jumbo v2, "startNetworkMeter fail."

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
