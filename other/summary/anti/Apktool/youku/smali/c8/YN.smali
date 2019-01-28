.class public Lc8/YN;
.super Ljava/lang/Object;
.source "FutureResponse.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<",
        "Lc8/vM;",
        ">;"
    }
.end annotation


# instance fields
.field private isCanceled:Z

.field private task:Lc8/hO;


# direct methods
.method public constructor <init>(Lc8/hO;)V
    .locals 0
    .param p1, "task"    # Lc8/hO;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lc8/YN;->task:Lc8/hO;

    .line 21
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "b"    # Z

    .prologue
    const/4 v1, 0x1

    .line 25
    iget-boolean v0, p0, Lc8/YN;->isCanceled:Z

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lc8/YN;->task:Lc8/hO;

    invoke-virtual {v0}, Lc8/hO;->cancelTask()V

    .line 27
    iput-boolean v1, p0, Lc8/YN;->isCanceled:Z

    .line 29
    :cond_0
    return v1
.end method

.method public get()Lc8/vM;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "NOT SUPPORT!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lc8/vM;
    .locals 2
    .param p1, "l"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "NOT SUPPORT!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lc8/YN;->get()Lc8/vM;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lc8/YN;->get(JLjava/util/concurrent/TimeUnit;)Lc8/vM;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lc8/YN;->isCanceled:Z

    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "NOT SUPPORT!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
