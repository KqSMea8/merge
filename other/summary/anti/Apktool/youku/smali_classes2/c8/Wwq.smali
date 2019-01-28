.class public final Lc8/Wwq;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ywq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedSchedulerPool"
.end annotation


# instance fields
.field final cores:I

.field final eventLoops:[Lc8/Xwq;

.field n:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;I)V
    .locals 3
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "maxThreads"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p2, p0, Lc8/Wwq;->cores:I

    .line 68
    new-array v1, p2, [Lc8/Xwq;

    iput-object v1, p0, Lc8/Wwq;->eventLoops:[Lc8/Xwq;

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 70
    iget-object v1, p0, Lc8/Wwq;->eventLoops:[Lc8/Xwq;

    new-instance v2, Lc8/Xwq;

    invoke-direct {v2, p1}, Lc8/Xwq;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    aput-object v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public getEventLoop()Lc8/Xwq;
    .locals 6

    .prologue
    .line 75
    iget v0, p0, Lc8/Wwq;->cores:I

    .line 76
    .local v0, "c":I
    if-nez v0, :cond_0

    .line 77
    sget-object v1, Lc8/Ywq;->SHUTDOWN_WORKER:Lc8/Xwq;

    .line 80
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lc8/Wwq;->eventLoops:[Lc8/Xwq;

    iget-wide v2, p0, Lc8/Wwq;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lc8/Wwq;->n:J

    int-to-long v4, v0

    rem-long/2addr v2, v4

    long-to-int v2, v2

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lc8/Wwq;->eventLoops:[Lc8/Xwq;

    .local v0, "arr$":[Lc8/Xwq;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 85
    .local v3, "w":Lc8/Xwq;
    invoke-virtual {v3}, Lc8/Xwq;->unsubscribe()V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v3    # "w":Lc8/Xwq;
    :cond_0
    return-void
.end method
