.class public final Lc8/zdf;
.super Ljava/lang/Object;
.source "PendingPostQueue.java"


# instance fields
.field private head:Lc8/ydf;

.field private tail:Lc8/ydf;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized enqueue(Lc8/ydf;)V
    .locals 2
    .param p1, "pendingPost"    # Lc8/ydf;

    .prologue
    .line 9
    monitor-enter p0

    if-nez p1, :cond_0

    .line 10
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be enqueued"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 12
    :cond_0
    :try_start_1
    iget-object v0, p0, Lc8/zdf;->tail:Lc8/ydf;

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lc8/zdf;->tail:Lc8/ydf;

    iput-object p1, v0, Lc8/ydf;->next:Lc8/ydf;

    .line 14
    iput-object p1, p0, Lc8/zdf;->tail:Lc8/ydf;

    .line 20
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    .line 15
    :cond_1
    :try_start_2
    iget-object v0, p0, Lc8/zdf;->head:Lc8/ydf;

    if-nez v0, :cond_2

    .line 16
    iput-object p1, p0, Lc8/zdf;->tail:Lc8/ydf;

    iput-object p1, p0, Lc8/zdf;->head:Lc8/ydf;

    goto :goto_0

    .line 18
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Head present, but no tail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method declared-synchronized poll()Lc8/ydf;
    .locals 2

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/zdf;->head:Lc8/ydf;

    .line 25
    .local v0, "pendingPost":Lc8/ydf;
    iget-object v1, p0, Lc8/zdf;->head:Lc8/ydf;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lc8/zdf;->head:Lc8/ydf;

    iget-object v1, v1, Lc8/ydf;->next:Lc8/ydf;

    iput-object v1, p0, Lc8/zdf;->head:Lc8/ydf;

    .line 27
    iget-object v1, p0, Lc8/zdf;->head:Lc8/ydf;

    if-nez v1, :cond_0

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/zdf;->tail:Lc8/ydf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_0
    monitor-exit p0

    return-object v0

    .line 24
    .end local v0    # "pendingPost":Lc8/ydf;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized poll(I)Lc8/ydf;
    .locals 2
    .param p1, "maxMillisToWait"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/zdf;->head:Lc8/ydf;

    if-nez v0, :cond_0

    .line 36
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 38
    :cond_0
    invoke-virtual {p0}, Lc8/zdf;->poll()Lc8/ydf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
