.class public Lc8/oBb;
.super Ljava/lang/Object;
.source "UploadQueueMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final MSGTYPE_INTERVAL:Ljava/lang/String; = "i"

.field public static final MSGTYPE_REALTIME:Ljava/lang/String; = "r"

.field private static mUploadQueueMgr:Lc8/oBb;

.field private static queueCache:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lc8/oBb;->queueCache:Ljava/util/concurrent/BlockingQueue;

    .line 18
    new-instance v0, Lc8/oBb;

    invoke-direct {v0}, Lc8/oBb;-><init>()V

    sput-object v0, Lc8/oBb;->mUploadQueueMgr:Lc8/oBb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/oBb;->isRunning:Z

    return-void
.end method

.method public static getInstance()Lc8/oBb;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lc8/oBb;->mUploadQueueMgr:Lc8/oBb;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 7
    .param p1, "msgType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 49
    sget-object v1, Lc8/oBb;->queueCache:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    :try_start_0
    sget-object v1, Lc8/oBb;->queueCache:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 52
    const-string/jumbo v1, ""

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "queueCache put"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "queueCache size"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lc8/oBb;->queueCache:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, ""

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v1, ""

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "queueCache contains"

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 33
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lc8/oBb;->isRunning:Z

    if-eqz v2, :cond_2

    .line 35
    :try_start_0
    sget-object v2, Lc8/oBb;->queueCache:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36
    .local v1, "msgType":Ljava/lang/String;
    const-string/jumbo v2, ""

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "take queueCache size"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lc8/oBb;->queueCache:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const-string/jumbo v2, "i"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-static {}, Lc8/gBb;->getInstance()Lc8/gBb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/gBb;->upload()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v1    # "msgType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, ""

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 39
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "msgType":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "r"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-static {}, Lc8/fBb;->getInstance()Lc8/fBb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/fBb;->upload()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 46
    .end local v1    # "msgType":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public declared-synchronized start()V
    .locals 6

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/oBb;->isRunning:Z

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/oBb;->isRunning:Z

    .line 27
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lc8/oBb;->getInstance()Lc8/oBb;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_0
    monitor-exit p0

    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
