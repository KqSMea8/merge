.class public Lc8/dId;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ANExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/cId;
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 9
    .param p1, "maxNumThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 43
    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 45
    return-void
.end method


# virtual methods
.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lc8/cId;

    check-cast p1, Lc8/oJd;

    .end local p1    # "task":Ljava/lang/Runnable;
    invoke-direct {v0, p1}, Lc8/cId;-><init>(Lc8/oJd;)V

    .line 94
    .local v0, "futureTask":Lc8/cId;
    invoke-virtual {p0, v0}, Lc8/dId;->execute(Ljava/lang/Runnable;)V

    .line 95
    return-object v0
.end method
