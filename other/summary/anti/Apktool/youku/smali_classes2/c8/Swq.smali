.class public final Lc8/Swq;
.super Lc8/amq;
.source "CachedThreadScheduler.java"

# interfaces
.implements Lc8/lxq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Rwq;,
        Lc8/Qwq;,
        Lc8/Owq;
    }
.end annotation


# static fields
.field private static final KEEP_ALIVE_TIME:J = 0x3cL

.field private static final KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

.field static final NONE:Lc8/Owq;

.field static final SHUTDOWN_THREADWORKER:Lc8/Rwq;


# instance fields
.field final pool:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/Owq;",
            ">;"
        }
    .end annotation
.end field

.field final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lc8/Swq;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 39
    new-instance v0, Lc8/Rwq;

    sget-object v1, Lrx/internal/util/RxThreadFactory;->NONE:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lc8/Rwq;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 40
    sput-object v0, Lc8/Swq;->SHUTDOWN_THREADWORKER:Lc8/Rwq;

    invoke-virtual {v0}, Lc8/Rwq;->unsubscribe()V

    .line 42
    new-instance v0, Lc8/Owq;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v4, v2, v3, v4}, Lc8/Owq;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    .line 43
    sput-object v0, Lc8/Swq;->NONE:Lc8/Owq;

    invoke-virtual {v0}, Lc8/Owq;->shutdown()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 144
    invoke-direct {p0}, Lc8/amq;-><init>()V

    .line 145
    iput-object p1, p0, Lc8/Swq;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lc8/Swq;->NONE:Lc8/Owq;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/Swq;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    .line 147
    invoke-virtual {p0}, Lc8/Swq;->start()V

    .line 148
    return-void
.end method


# virtual methods
.method public createWorker()Lc8/Zlq;
    .locals 2

    .prologue
    .line 174
    new-instance v1, Lc8/Qwq;

    iget-object v0, p0, Lc8/Swq;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Owq;

    invoke-direct {v1, v0}, Lc8/Qwq;-><init>(Lc8/Owq;)V

    return-object v1
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 161
    :cond_0
    iget-object v1, p0, Lc8/Swq;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Owq;

    .line 162
    .local v0, "curr":Lc8/Owq;
    sget-object v1, Lc8/Swq;->NONE:Lc8/Owq;

    if-ne v0, v1, :cond_1

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lc8/Swq;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lc8/Swq;->NONE:Lc8/Owq;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0}, Lc8/Owq;->shutdown()V

    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    .line 152
    new-instance v0, Lc8/Owq;

    iget-object v1, p0, Lc8/Swq;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v2, 0x3c

    sget-object v4, Lc8/Swq;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/Owq;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    .line 154
    .local v0, "update":Lc8/Owq;
    iget-object v1, p0, Lc8/Swq;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lc8/Swq;->NONE:Lc8/Owq;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-virtual {v0}, Lc8/Owq;->shutdown()V

    .line 157
    :cond_0
    return-void
.end method
