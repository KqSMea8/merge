.class public Lc8/Cpf;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Fpf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheStats"
.end annotation


# instance fields
.field private mCount:J

.field private mInitialized:Z

.field private mSize:J


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Cpf;->mInitialized:Z

    .line 512
    iput-wide v2, p0, Lc8/Cpf;->mSize:J

    .line 513
    iput-wide v2, p0, Lc8/Cpf;->mCount:J

    return-void
.end method


# virtual methods
.method public declared-synchronized getCount()J
    .locals 2

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lc8/Cpf;->mCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()J
    .locals 2

    .prologue
    .line 539
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lc8/Cpf;->mSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized increment(JJ)V
    .locals 3
    .param p1, "sizeIncrement"    # J
    .param p3, "countIncrement"    # J

    .prologue
    .line 532
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/Cpf;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 533
    iget-wide v0, p0, Lc8/Cpf;->mSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lc8/Cpf;->mSize:J

    .line 534
    iget-wide v0, p0, Lc8/Cpf;->mCount:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lc8/Cpf;->mCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    :cond_0
    monitor-exit p0

    return-void

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    .prologue
    .line 516
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/Cpf;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 520
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lc8/Cpf;->mInitialized:Z

    .line 521
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/Cpf;->mCount:J

    .line 522
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/Cpf;->mSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    monitor-exit p0

    return-void

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(JJ)V
    .locals 1
    .param p1, "size"    # J
    .param p3, "count"    # J

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iput-wide p3, p0, Lc8/Cpf;->mCount:J

    .line 527
    iput-wide p1, p0, Lc8/Cpf;->mSize:J

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Cpf;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    monitor-exit p0

    return-void

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
