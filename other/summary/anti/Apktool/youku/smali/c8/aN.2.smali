.class public Lc8/aN;
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
.field private delegate:Lc8/LM;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lc8/LM;)V
    .locals 0
    .param p1, "future"    # Lc8/LM;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lc8/aN;->delegate:Lc8/LM;

    .line 26
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 6
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v2, p0, Lc8/aN;->delegate:Lc8/LM;

    if-nez v2, :cond_0

    .line 41
    :goto_0
    return v1

    .line 37
    :cond_0
    :try_start_0
    iget-object v2, p0, Lc8/aN;->delegate:Lc8/LM;

    invoke-interface {v2, p1}, Lc8/LM;->cancel(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "anet.FutureResponse"

    const-string/jumbo v3, "[cancel]"

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0, v5}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public get()Lc8/vM;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v2, p0, Lc8/aN;->delegate:Lc8/LM;

    if-eqz v2, :cond_0

    .line 70
    :try_start_0
    iget-object v2, p0, Lc8/aN;->delegate:Lc8/LM;

    const-wide/16 v4, 0x4e20

    invoke-interface {v2, v4, v5}, Lc8/LM;->get(J)Lanetwork/channel/aidl/NetworkResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 75
    :cond_0
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "anet.FutureResponse"

    const-string/jumbo v3, "[get]"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v0, v4}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lc8/vM;
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v2, p0, Lc8/aN;->delegate:Lc8/LM;

    if-eqz v2, :cond_0

    .line 82
    :try_start_0
    iget-object v2, p0, Lc8/aN;->delegate:Lc8/LM;

    invoke-interface {v2, p1, p2}, Lc8/LM;->get(J)Lanetwork/channel/aidl/NetworkResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    :cond_0
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "anet.FutureResponse"

    const-string/jumbo v3, "[get(long timeout, TimeUnit unit)]"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v0, v4}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
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
    .line 18
    invoke-virtual {p0}, Lc8/aN;->get()Lc8/vM;

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
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lc8/aN;->get(JLjava/util/concurrent/TimeUnit;)Lc8/vM;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 47
    :try_start_0
    iget-object v2, p0, Lc8/aN;->delegate:Lc8/LM;

    invoke-interface {v2}, Lc8/LM;->isCancelled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 51
    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "anet.FutureResponse"

    const-string/jumbo v3, "[isCancelled]"

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0, v5}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isDone()Z
    .locals 5

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lc8/aN;->delegate:Lc8/LM;

    invoke-interface {v1}, Lc8/LM;->isDone()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 63
    :goto_0
    return v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "anet.FutureResponse"

    const-string/jumbo v2, "[isDone]"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 63
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setFuture(Lc8/LM;)V
    .locals 0
    .param p1, "future"    # Lc8/LM;

    .prologue
    .line 91
    iput-object p1, p0, Lc8/aN;->delegate:Lc8/LM;

    .line 92
    return-void
.end method
