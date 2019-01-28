.class public Lc8/tH;
.super Ljava/lang/Object;
.source "LockObject.java"


# instance fields
.field private needwait:Z

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lc8/tH;->result:I

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/tH;->needwait:Z

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized lnotify()V
    .locals 1

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/tH;->needwait:Z

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/tH;->needwait:Z

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_0
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lwait()V
    .locals 1

    .prologue
    .line 18
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lc8/tH;->needwait:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 20
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    goto :goto_0

    .line 24
    :cond_0
    monitor-exit p0

    return-void

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
