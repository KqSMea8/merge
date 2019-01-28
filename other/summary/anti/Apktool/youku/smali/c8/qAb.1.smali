.class public Lc8/qAb;
.super Ljava/lang/Object;
.source "SessionTimeAndIndexMgr.java"

# interfaces
.implements Lc8/PDb;


# static fields
.field private static SESSION_TIMEOUT_AFTER_BACKGROUND:J

.field private static instance:Lc8/qAb;


# instance fields
.field private final m2202LogIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mChangeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

.field private mChangeSessionTask:Ljava/lang/Runnable;

.field private final mLogIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSessionTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lc8/qAb;

    invoke-direct {v0}, Lc8/qAb;-><init>()V

    sput-object v0, Lc8/qAb;->instance:Lc8/qAb;

    .line 29
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lc8/qAb;->SESSION_TIMEOUT_AFTER_BACKGROUND:J

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/qAb;->mSessionTime:J

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/qAb;->mChangeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc8/qAb;->mLogIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc8/qAb;->m2202LogIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    new-instance v0, Lc8/pAb;

    invoke-direct {v0, p0}, Lc8/pAb;-><init>(Lc8/qAb;)V

    iput-object v0, p0, Lc8/qAb;->mChangeSessionTask:Ljava/lang/Runnable;

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/qAb;->mSessionTime:J

    .line 49
    invoke-static {p0}, Lc8/QDb;->registerCallback(Lc8/PDb;)V

    .line 50
    return-void
.end method

.method static synthetic access$002(Lc8/qAb;J)J
    .locals 1
    .param p0, "x0"    # Lc8/qAb;
    .param p1, "x1"    # J

    .prologue
    .line 13
    iput-wide p1, p0, Lc8/qAb;->mSessionTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lc8/qAb;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lc8/qAb;

    .prologue
    .line 13
    iget-object v0, p0, Lc8/qAb;->mLogIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lc8/qAb;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lc8/qAb;

    .prologue
    .line 13
    iget-object v0, p0, Lc8/qAb;->m2202LogIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static getInstance()Lc8/qAb;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lc8/qAb;->instance:Lc8/qAb;

    return-object v0
.end method


# virtual methods
.method public getSessionTimestamp()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lc8/qAb;->mSessionTime:J

    return-wide v0
.end method

.method public logIndexIncrementAndGet()J
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lc8/qAb;->mLogIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public m2202LogIndexIncrementAndGet()J
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lc8/qAb;->m2202LogIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public onBackground()V
    .locals 6

    .prologue
    .line 54
    invoke-static {}, Lc8/NBb;->d()V

    .line 55
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    iget-object v1, p0, Lc8/qAb;->mChangeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    iget-object v2, p0, Lc8/qAb;->mChangeSessionTask:Ljava/lang/Runnable;

    sget-wide v4, Lc8/qAb;->SESSION_TIMEOUT_AFTER_BACKGROUND:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lc8/qAb;->mChangeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 56
    return-void
.end method

.method public onForeground()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lc8/qAb;->mChangeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/qAb;->mChangeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lc8/qAb;->mChangeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 63
    :cond_0
    return-void
.end method
