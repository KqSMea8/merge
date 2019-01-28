.class public Lc8/btf;
.super Ljava/lang/Object;
.source "OThreadPoolExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/atf;,
        Lc8/Zsf;
    }
.end annotation


# static fields
.field private static final POOL_WAIT_TIMES:I = 0x3c

.field public static final PRIORITY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OThreadPool"

.field private static corePoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static eventPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static final integer:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lc8/btf;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    new-instance v0, Lc8/atf;

    const/4 v1, 0x4

    new-instance v2, Lc8/Zsf;

    invoke-direct {v2}, Lc8/Zsf;-><init>()V

    invoke-direct {v0, v1, v2}, Lc8/atf;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lc8/btf;->corePoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 16
    new-instance v0, Lc8/atf;

    const/4 v1, 0x2

    new-instance v2, Lc8/Zsf;

    invoke-direct {v2}, Lc8/Zsf;-><init>()V

    invoke-direct {v0, v1, v2}, Lc8/atf;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lc8/btf;->eventPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lc8/btf;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lc8/btf;->execute(Ljava/lang/Runnable;J)V

    .line 50
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;J)V
    .locals 5
    .param p0, "command"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Lc8/btf;->getCoreExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1, p2, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "OThreadPool"

    const-string/jumbo v2, "execute"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static executeEvent(Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lc8/btf;->getEventExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "OThreadPool"

    const-string/jumbo v2, "executeEvent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getCoreExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lc8/btf;->corePoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method private static getEventExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lc8/btf;->eventPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method
