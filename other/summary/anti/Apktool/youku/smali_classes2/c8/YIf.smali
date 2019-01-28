.class public Lc8/YIf;
.super Ljava/lang/Object;
.source "MonitorTimerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/XIf;
    }
.end annotation


# static fields
.field public static final REPORT_IGNORE:I = 0x0

.field public static final REPORT_IMMEDIATELY:I = -0x1


# instance fields
.field public deadLineTime:J

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/YIf;->deadLineTime:J

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/YIf;->mHandler:Landroid/os/Handler;

    .line 21
    new-instance v0, Lc8/WIf;

    invoke-direct {v0, p0}, Lc8/WIf;-><init>(Lc8/YIf;)V

    iput-object v0, p0, Lc8/YIf;->mRunnable:Ljava/lang/Runnable;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lc8/YIf;)V
    .locals 0
    .param p0, "x0"    # Lc8/YIf;

    .prologue
    .line 12
    invoke-direct {p0}, Lc8/YIf;->reportImmediately()V

    return-void
.end method

.method public static instance()Lc8/YIf;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lc8/XIf;->access$100()Lc8/YIf;

    move-result-object v0

    return-object v0
.end method

.method private reportImmediately()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lc8/YIf;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lc8/YIf;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    invoke-static {}, Lc8/cJf;->getReportProcessor()Lc8/cJf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/cJf;->putMonitorReportTask(Z)V

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/YIf;->deadLineTime:J

    .line 71
    return-void
.end method


# virtual methods
.method public declared-synchronized decideMonitorTimerPolicy(JLjava/lang/Runnable;)Z
    .locals 11
    .param p1, "timePolicy"    # J
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    monitor-enter p0

    cmp-long v6, v8, p1

    if-nez v6, :cond_1

    .line 62
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 44
    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v6, v6, p1

    if-nez v6, :cond_3

    .line 45
    if-eqz p3, :cond_2

    .line 46
    :try_start_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 48
    :cond_2
    invoke-direct {p0}, Lc8/YIf;->reportImmediately()V

    move v4, v5

    .line 49
    goto :goto_0

    .line 51
    :cond_3
    if-eqz p3, :cond_4

    .line 52
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 54
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 55
    .local v0, "currentTime":J
    add-long v2, v0, p1

    .line 56
    .local v2, "newDeadLineTime":J
    iget-wide v6, p0, Lc8/YIf;->deadLineTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    iget-wide v6, p0, Lc8/YIf;->deadLineTime:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_5

    iget-wide v6, p0, Lc8/YIf;->deadLineTime:J

    cmp-long v6, v6, v2

    if-ltz v6, :cond_0

    .line 59
    :cond_5
    iget-object v4, p0, Lc8/YIf;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lc8/YIf;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    iget-object v4, p0, Lc8/YIf;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lc8/YIf;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    iput-wide v2, p0, Lc8/YIf;->deadLineTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    .line 62
    goto :goto_0

    .line 42
    .end local v0    # "currentTime":J
    .end local v2    # "newDeadLineTime":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
