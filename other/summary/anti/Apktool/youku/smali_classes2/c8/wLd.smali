.class public Lc8/wLd;
.super Lc8/sLd;
.source "Tracker.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sessionExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lc8/wLd;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/wLd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lc8/rLd;)V
    .locals 1
    .param p1, "builder"    # Lc8/rLd;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lc8/sLd;-><init>(Lc8/rLd;)V

    .line 28
    iget v0, p0, Lc8/wLd;->threadCount:I

    invoke-static {v0}, Lc8/cLd;->setThreadCount(I)V

    .line 31
    invoke-virtual {p0}, Lc8/wLd;->resumeSessionChecking()V

    .line 32
    return-void
.end method

.method static synthetic access$001(Lc8/wLd;Lc8/iLd;)V
    .locals 0
    .param p0, "x0"    # Lc8/wLd;
    .param p1, "x1"    # Lc8/iLd;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lc8/sLd;->track(Lc8/iLd;)V

    return-void
.end method

.method static synthetic access$101(Lc8/wLd;Lc8/iLd;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/wLd;
    .param p1, "x1"    # Lc8/iLd;
    .param p2, "x2"    # Z

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lc8/sLd;->track(Lc8/iLd;Z)V

    return-void
.end method


# virtual methods
.method public resumeSessionChecking()V
    .locals 8

    .prologue
    .line 39
    sget-object v0, Lc8/wLd;->sessionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/wLd;->sessionContext:Z

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lc8/wLd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Session checking has been resumed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v7, p0, Lc8/wLd;->trackerSession:Lc8/nLd;

    .line 42
    .local v7, "session":Lc8/nLd;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 43
    sput-object v0, Lc8/wLd;->sessionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lc8/tLd;

    invoke-direct {v1, p0, v7}, Lc8/tLd;-><init>(Lc8/wLd;Lc8/nLd;)V

    iget-wide v2, p0, Lc8/wLd;->sessionCheckInterval:J

    iget-wide v4, p0, Lc8/wLd;->sessionCheckInterval:J

    iget-object v6, p0, Lc8/wLd;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 50
    .end local v7    # "session":Lc8/nLd;
    :cond_0
    return-void
.end method

.method public track(Lc8/iLd;)V
    .locals 1
    .param p1, "event"    # Lc8/iLd;

    .prologue
    .line 66
    new-instance v0, Lc8/uLd;

    invoke-direct {v0, p0, p1}, Lc8/uLd;-><init>(Lc8/wLd;Lc8/iLd;)V

    invoke-static {v0}, Lc8/cLd;->execute(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public track(Lc8/iLd;Z)V
    .locals 1
    .param p1, "event"    # Lc8/iLd;
    .param p2, "attemptEmit"    # Z

    .prologue
    .line 75
    new-instance v0, Lc8/vLd;

    invoke-direct {v0, p0, p1, p2}, Lc8/vLd;-><init>(Lc8/wLd;Lc8/iLd;Z)V

    invoke-static {v0}, Lc8/cLd;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method
