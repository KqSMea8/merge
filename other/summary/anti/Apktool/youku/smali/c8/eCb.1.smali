.class public Lc8/eCb;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/dCb;
    }
.end annotation


# static fields
.field public static final MSG_ABTEST:I = 0x3

.field public static final MSG_BACKGROUND:I = 0x4

.field public static final MSG_CLEAN:I = 0x5

.field public static final MSG_CLOSE_DB:I = 0x9

.field public static final MSG_COMMIT:I = 0x6

.field public static final MSG_CONFIG:I = 0x7

.field public static final MSG_ORANGE_CONFIG:I = 0x8

.field public static final MSG_STORE:I = 0x1

.field public static final MSG_UPLOAD:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "TaskExecutor"

.field public static instance:Lc8/eCb;

.field private static final integer:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static prop:I

.field private static threadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput v0, Lc8/eCb;->prop:I

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lc8/eCb;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lc8/eCb;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private static declared-synchronized getDefaulThreadPoolExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    .prologue
    .line 44
    const-class v1, Lc8/eCb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/eCb;->threadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x3

    new-instance v2, Lc8/dCb;

    sget v3, Lc8/eCb;->prop:I

    invoke-direct {v2, v3}, Lc8/dCb;-><init>(I)V

    invoke-static {v0, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lc8/eCb;->threadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    :cond_0
    sget-object v0, Lc8/eCb;->threadPoolExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lc8/eCb;
    .locals 2

    .prologue
    .line 51
    const-class v1, Lc8/eCb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/eCb;->instance:Lc8/eCb;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lc8/eCb;

    invoke-direct {v0}, Lc8/eCb;-><init>()V

    sput-object v0, Lc8/eCb;->instance:Lc8/eCb;

    .line 54
    :cond_0
    sget-object v0, Lc8/eCb;->instance:Lc8/eCb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 3
    .param p1, "future"    # Ljava/util/concurrent/ScheduledFuture;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J

    .prologue
    .line 59
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 62
    :cond_0
    invoke-static {}, Lc8/eCb;->getDefaulThreadPoolExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, p4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 63
    return-object p1
.end method

.method public final scheduleAtFixedRate(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .param p1, "future"    # Ljava/util/concurrent/ScheduledFuture;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "period"    # J

    .prologue
    .line 68
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 71
    :cond_0
    invoke-static {}, Lc8/eCb;->getDefaulThreadPoolExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 72
    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 78
    :try_start_0
    invoke-static {}, Lc8/eCb;->getDefaulThreadPoolExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
