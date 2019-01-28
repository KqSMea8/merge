.class public Lc8/fWe;
.super Ljava/lang/Object;
.source "UploadMgr.java"


# static fields
.field private static final DEFAULT_DELAY:I = 0xea60

.field private static final DEFAULT_INTERVAL:I = 0x2bf20

.field private static mInstance:Lc8/fWe;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUploadFuture:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lc8/fWe;->mInstance:Lc8/fWe;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/fWe;->mContext:Landroid/content/Context;

    .line 17
    iput-object p1, p0, Lc8/fWe;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lc8/fWe;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const-class v1, Lc8/fWe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/fWe;->mInstance:Lc8/fWe;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lc8/fWe;

    invoke-direct {v0, p0}, Lc8/fWe;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/fWe;->mInstance:Lc8/fWe;

    .line 24
    :cond_0
    sget-object v0, Lc8/fWe;->mInstance:Lc8/fWe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startIntervalMode()V
    .locals 8

    .prologue
    .line 47
    invoke-static {}, Lc8/vWe;->getInstance()Lc8/vWe;

    move-result-object v1

    iget-object v2, p0, Lc8/fWe;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    new-instance v3, Lc8/iWe;

    iget-object v0, p0, Lc8/fWe;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Lc8/iWe;-><init>(Landroid/content/Context;)V

    const-wide/32 v4, 0xea60

    const-wide/32 v6, 0x2bf20

    invoke-virtual/range {v1 .. v7}, Lc8/vWe;->scheduleAtFixedRate(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;JJ)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lc8/fWe;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 49
    return-void
.end method


# virtual methods
.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/fWe;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lc8/fWe;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 34
    :cond_0
    invoke-direct {p0}, Lc8/fWe;->startIntervalMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/fWe;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lc8/fWe;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
