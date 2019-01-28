.class public final Lc8/Ymq;
.super Ljava/lang/Object;
.source "LooperScheduler.java"

# interfaces
.implements Lc8/Pmq;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScheduledAction"
.end annotation


# instance fields
.field private final action:Lc8/hnq;

.field private final handler:Landroid/os/Handler;

.field private volatile unsubscribed:Z


# direct methods
.method constructor <init>(Lc8/hnq;Landroid/os/Handler;)V
    .locals 0
    .param p1, "action"    # Lc8/hnq;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lc8/Ymq;->action:Lc8/hnq;

    .line 102
    iput-object p2, p0, Lc8/Ymq;->handler:Landroid/os/Handler;

    .line 103
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lc8/Ymq;->unsubscribed:Z

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 107
    :try_start_0
    iget-object v3, p0, Lc8/Ymq;->action:Lc8/hnq;

    invoke-interface {v3}, Lc8/hnq;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    instance-of v3, v0, Lrx/exceptions/OnErrorNotImplementedException;

    if-eqz v3, :cond_0

    .line 112
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Exception thrown on Scheduler.Worker thread. Add `onError` handling."

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .local v1, "ie":Ljava/lang/IllegalStateException;
    :goto_1
    invoke-static {}, Lc8/bBq;->getInstance()Lc8/bBq;

    move-result-object v3

    invoke-virtual {v3}, Lc8/bBq;->getErrorHandler()Lc8/CAq;

    move-result-object v3

    invoke-virtual {v3, v1}, Lc8/CAq;->handleError(Ljava/lang/Throwable;)V

    .line 117
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 118
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 114
    .end local v1    # "ie":Ljava/lang/IllegalStateException;
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Fatal Exception thrown on Scheduler.Worker thread."

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v1    # "ie":Ljava/lang/IllegalStateException;
    goto :goto_1
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ymq;->unsubscribed:Z

    .line 124
    iget-object v0, p0, Lc8/Ymq;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method
