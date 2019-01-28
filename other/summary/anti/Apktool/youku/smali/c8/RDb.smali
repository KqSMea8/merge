.class public Lc8/RDb;
.super Ljava/lang/Object;
.source "CleanTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "CleanTask"

.field private static cleanTask:Lc8/RDb; = null

.field private static future:Ljava/util/concurrent/ScheduledFuture; = null

.field private static init:Z = false

.field private static final timeout:J = 0x493e0L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lc8/RDb;->init:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static destroy()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lc8/RDb;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/RDb;->future:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lc8/RDb;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 43
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lc8/RDb;->init:Z

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lc8/RDb;->cleanTask:Lc8/RDb;

    .line 45
    return-void
.end method

.method static init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 31
    sget-boolean v0, Lc8/RDb;->init:Z

    if-nez v0, :cond_0

    .line 32
    const-string/jumbo v0, "CleanTask"

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "init TimeoutEventManager"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    new-instance v0, Lc8/RDb;

    invoke-direct {v0}, Lc8/RDb;-><init>()V

    sput-object v0, Lc8/RDb;->cleanTask:Lc8/RDb;

    .line 34
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    sget-object v1, Lc8/RDb;->future:Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Lc8/RDb;->cleanTask:Lc8/RDb;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->scheduleAtFixedRate(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lc8/RDb;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 35
    sput-boolean v6, Lc8/RDb;->init:Z

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 49
    const-string/jumbo v0, "CleanTask"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "clean TimeoutEvent"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lc8/aEb;->getRepo()Lc8/aEb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/aEb;->cleanExpiredEvent()V

    .line 51
    return-void
.end method
