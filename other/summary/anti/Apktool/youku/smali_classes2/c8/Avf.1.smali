.class public Lc8/Avf;
.super Ljava/lang/Object;
.source "SchedulerBuilder.java"

# interfaces
.implements Lc8/rvf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/rvf",
        "<",
        "Lc8/Oyf;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CORE_SIZE:I = 0x3

.field public static final DEFAULT_KEEP_ALIVE:I = 0x8

.field public static final DEFAULT_MAX_RUNNING:I = 0x6

.field public static final DEFAULT_PATIENCE_CAPACITY:I = 0x5dc

.field public static final DEFAULT_QUEUE_CAPACITY:I = 0x5

.field public static final INVALID_NETWORK_RUNNING_EXPIRED:I = -0x1

.field public static final MAX_DECODE_RUNNING:I = 0x3

.field public static final MAX_NETWORK_RUNNING_AT_FAST:I = 0x5

.field public static final MAX_NETWORK_RUNNING_AT_SLOW:I = 0x2

.field public static final MIN_PATIENCE_CAPACITY:I = 0x1f4

.field public static final VALID_NETWORK_RUNNING_EXPIRED:I = 0x61a8


# instance fields
.field private mCentralScheduler:Lc8/Nyf;

.field private mCoreSize:I

.field private mHaveBuilt:Z

.field private mKeepAliveSeconds:I

.field private mMaxDecodeRunning:I

.field private mMaxNetworkRunningAtFast:I

.field private mMaxNetworkRunningAtSlow:I

.field private mMaxRunning:I

.field private mNetworkRunningExpired:I

.field private mPatienceSize:I

.field private mQueueSize:I

.field private mSchedulerSupplier:Lc8/Oyf;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v1, p0, Lc8/Avf;->mMaxDecodeRunning:I

    .line 26
    iput v2, p0, Lc8/Avf;->mMaxNetworkRunningAtFast:I

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lc8/Avf;->mMaxNetworkRunningAtSlow:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lc8/Avf;->mNetworkRunningExpired:I

    .line 29
    iput v1, p0, Lc8/Avf;->mCoreSize:I

    .line 30
    const/4 v0, 0x6

    iput v0, p0, Lc8/Avf;->mMaxRunning:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Lc8/Avf;->mKeepAliveSeconds:I

    .line 32
    iput v2, p0, Lc8/Avf;->mQueueSize:I

    .line 33
    const/16 v0, 0x5dc

    iput v0, p0, Lc8/Avf;->mPatienceSize:I

    return-void
.end method


# virtual methods
.method public declared-synchronized build()Lc8/Oyf;
    .locals 11

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/Avf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Avf;->mSchedulerSupplier:Lc8/Oyf;

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    iget-object v0, p0, Lc8/Avf;->mSchedulerSupplier:Lc8/Oyf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :goto_0
    monitor-exit p0

    return-object v0

    .line 120
    :cond_1
    :try_start_1
    new-instance v0, Lc8/dwf;

    iget-object v1, p0, Lc8/Avf;->mCentralScheduler:Lc8/Nyf;

    iget v2, p0, Lc8/Avf;->mCoreSize:I

    iget v3, p0, Lc8/Avf;->mMaxRunning:I

    iget v4, p0, Lc8/Avf;->mKeepAliveSeconds:I

    iget v5, p0, Lc8/Avf;->mQueueSize:I

    iget v6, p0, Lc8/Avf;->mPatienceSize:I

    iget v7, p0, Lc8/Avf;->mMaxDecodeRunning:I

    iget v8, p0, Lc8/Avf;->mMaxNetworkRunningAtFast:I

    iget v9, p0, Lc8/Avf;->mMaxNetworkRunningAtSlow:I

    iget v10, p0, Lc8/Avf;->mNetworkRunningExpired:I

    invoke-direct/range {v0 .. v10}, Lc8/dwf;-><init>(Lc8/Nyf;IIIIIIIII)V

    iput-object v0, p0, Lc8/Avf;->mSchedulerSupplier:Lc8/Oyf;

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Avf;->mHaveBuilt:Z

    .line 123
    iget-object v0, p0, Lc8/Avf;->mSchedulerSupplier:Lc8/Oyf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lc8/Avf;->build()Lc8/Oyf;

    move-result-object v0

    return-object v0
.end method

.method public central(Lc8/Nyf;)Lc8/Avf;
    .locals 2
    .param p1, "scheduler"    # Lc8/Nyf;

    .prologue
    .line 44
    iget-boolean v0, p0, Lc8/Avf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "SchedulerSupplier has been built, not allow central() now"

    invoke-static {v0, v1}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 45
    iput-object p1, p0, Lc8/Avf;->mCentralScheduler:Lc8/Nyf;

    .line 46
    return-object p0

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public coreSize(I)Lc8/Avf;
    .locals 4
    .param p1, "core"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    iget-boolean v0, p0, Lc8/Avf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "SchedulerSupplier has been built, not allow coreSize() now"

    invoke-static {v0, v3}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 51
    if-lez p1, :cond_1

    :goto_1
    const-string/jumbo v0, "core size must be greater than zero"

    invoke-static {v1, v0}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 52
    iput p1, p0, Lc8/Avf;->mCoreSize:I

    .line 53
    return-object p0

    :cond_0
    move v0, v2

    .line 50
    goto :goto_0

    :cond_1
    move v1, v2

    .line 51
    goto :goto_1
.end method

.method public keepAlive(I)Lc8/Avf;
    .locals 4
    .param p1, "seconds"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    iget-boolean v0, p0, Lc8/Avf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "SchedulerSupplier has been built, not allow keepAlive() now"

    invoke-static {v0, v3}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 69
    if-lez p1, :cond_1

    :goto_1
    const-string/jumbo v0, "keep alive time must be greater than zero"

    invoke-static {v1, v0}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 70
    iput p1, p0, Lc8/Avf;->mKeepAliveSeconds:I

    .line 71
    return-object p0

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0

    :cond_1
    move v1, v2

    .line 69
    goto :goto_1
.end method

.method public maxDecodeRunning(I)Lc8/Avf;
    .locals 4
    .param p1, "max"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    iget-boolean v0, p0, Lc8/Avf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "SchedulerSupplier has been built, not allow maxDecodeRunning() now"

    invoke-static {v0, v3}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 90
    iget v0, p0, Lc8/Avf;->mMaxRunning:I

    if-gt p1, v0, :cond_1

    :goto_1
    const-string/jumbo v0, "max decode running cannot be greater than max running"

    invoke-static {v1, v0}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 91
    iput p1, p0, Lc8/Avf;->mMaxDecodeRunning:I

    .line 92
    return-object p0

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0

    :cond_1
    move v1, v2

    .line 90
    goto :goto_1
.end method

.method public maxNetworkRunningAtFast(I)Lc8/Avf;
    .locals 4
    .param p1, "max"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    iget-boolean v0, p0, Lc8/Avf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "SchedulerSupplier has been built, not allow maxNetworkRunningAtFast() now"

    invoke-static {v0, v3}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 97
    iget v0, p0, Lc8/Avf;->mMaxRunning:I

    if-gt p1, v0, :cond_1

    :goto_1
    const-string/jumbo v0, "max network running at fast cannot be greater than max running"

    invoke-static {v1, v0}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 98
    iput p1, p0, Lc8/Avf;->mMaxNetworkRunningAtFast:I

    .line 99
    return-object p0

    :cond_0
    move v0, v2

    .line 96
    goto :goto_0

    :cond_1
    move v1, v2

    .line 97
    goto :goto_1
.end method

.method public maxNetworkRunningAtSlow(I)Lc8/Avf;
    .locals 4
    .param p1, "max"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    iget-boolean v0, p0, Lc8/Avf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "SchedulerSupplier has been built, not allow maxNetworkRunningAtSlow() now"

    invoke-static {v0, v3}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 104
    iget v0, p0, Lc8/Avf;->mMaxRunning:I

    if-gt p1, v0, :cond_1

    :goto_1
    const-string/jumbo v0, "max network running at slow cannot be greater than max running"

    invoke-static {v1, v0}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 105
    iput p1, p0, Lc8/Avf;->mMaxNetworkRunningAtSlow:I

    .line 106
    return-object p0

    :cond_0
    move v0, v2

    .line 103
    goto :goto_0

    :cond_1
    move v1, v2

    .line 104
    goto :goto_1
.end method

.method public maxRunning(I)Lc8/Avf;
    .locals 4
    .param p1, "max"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    iget-boolean v0, p0, Lc8/Avf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "SchedulerSupplier has been built, not allow maxRunning() now"

    invoke-static {v0, v3}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lc8/Avf;->mCentralScheduler:Lc8/Nyf;

    if-nez v0, :cond_2

    .line 59
    iget v0, p0, Lc8/Avf;->mCoreSize:I

    if-lt p1, v0, :cond_1

    :goto_1
    const-string/jumbo v0, "max running cannot be lower than core size"

    invoke-static {v1, v0}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 63
    :goto_2
    iput p1, p0, Lc8/Avf;->mMaxRunning:I

    .line 64
    return-object p0

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0

    :cond_1
    move v1, v2

    .line 59
    goto :goto_1

    .line 61
    :cond_2
    if-lez p1, :cond_3

    :goto_3
    const-string/jumbo v0, "max running must be greater than zero"

    invoke-static {v1, v0}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public networkRunningExpired(I)Lc8/Avf;
    .locals 2
    .param p1, "expired"    # I

    .prologue
    .line 110
    iget-boolean v0, p0, Lc8/Avf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "SchedulerSupplier has been built, not allow networkRunningExpired() now"

    invoke-static {v0, v1}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 111
    iput p1, p0, Lc8/Avf;->mNetworkRunningExpired:I

    .line 112
    return-object p0

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public patienceSize(I)Lc8/Avf;
    .locals 4
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    iget-boolean v0, p0, Lc8/Avf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "SchedulerSupplier has been built, not allow patienceSize() now"

    invoke-static {v0, v3}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 83
    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_1

    :goto_1
    const-string/jumbo v0, "patience size cannot be lower than 500"

    invoke-static {v1, v0}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 84
    iput p1, p0, Lc8/Avf;->mPatienceSize:I

    .line 85
    return-object p0

    :cond_0
    move v0, v2

    .line 82
    goto :goto_0

    :cond_1
    move v1, v2

    .line 83
    goto :goto_1
.end method

.method public queueSize(I)Lc8/Avf;
    .locals 4
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    iget-boolean v0, p0, Lc8/Avf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "SchedulerSupplier has been built, not allow queueSize() now"

    invoke-static {v0, v3}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 76
    if-lez p1, :cond_1

    :goto_1
    const-string/jumbo v0, "queue size must be greater than zero"

    invoke-static {v1, v0}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 77
    iput p1, p0, Lc8/Avf;->mQueueSize:I

    .line 78
    return-object p0

    :cond_0
    move v0, v2

    .line 75
    goto :goto_0

    :cond_1
    move v1, v2

    .line 76
    goto :goto_1
.end method

.method public with(Lc8/Oyf;)Lc8/Avf;
    .locals 2
    .param p1, "supplier"    # Lc8/Oyf;

    .prologue
    .line 38
    iget-boolean v0, p0, Lc8/Avf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "SchedulerSupplier has been built, not allow with() now"

    invoke-static {v0, v1}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lc8/Avf;->mSchedulerSupplier:Lc8/Oyf;

    .line 40
    return-object p0

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic with(Ljava/lang/Object;)Lc8/rvf;
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lc8/Oyf;

    invoke-virtual {p0, p1}, Lc8/Avf;->with(Lc8/Oyf;)Lc8/Avf;

    move-result-object v0

    return-object v0
.end method
