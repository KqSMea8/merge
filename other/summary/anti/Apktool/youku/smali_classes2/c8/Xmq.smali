.class public Lc8/Xmq;
.super Lc8/Zlq;
.source "LooperScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandlerWorker"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final hook:Lc8/Umq;

.field private volatile unsubscribed:Z


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 50
    invoke-direct {p0}, Lc8/Zlq;-><init>()V

    .line 51
    iput-object p1, p0, Lc8/Xmq;->handler:Landroid/os/Handler;

    .line 52
    invoke-static {}, Lc8/Tmq;->getInstance()Lc8/Tmq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Tmq;->getSchedulersHook()Lc8/Umq;

    move-result-object v0

    iput-object v0, p0, Lc8/Xmq;->hook:Lc8/Umq;

    .line 53
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lc8/Xmq;->unsubscribed:Z

    return v0
.end method

.method public schedule(Lc8/hnq;)Lc8/Pmq;
    .locals 3
    .param p1, "action"    # Lc8/hnq;

    .prologue
    .line 91
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lc8/Xmq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;
    .locals 6
    .param p1, "action"    # Lc8/hnq;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 68
    iget-boolean v2, p0, Lc8/Xmq;->unsubscribed:Z

    if-eqz v2, :cond_1

    .line 69
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v1

    .line 86
    :cond_0
    :goto_0
    return-object v1

    .line 72
    :cond_1
    iget-object v2, p0, Lc8/Xmq;->hook:Lc8/Umq;

    invoke-virtual {v2, p1}, Lc8/Umq;->onSchedule(Lc8/hnq;)Lc8/hnq;

    move-result-object p1

    .line 74
    new-instance v1, Lc8/Ymq;

    iget-object v2, p0, Lc8/Xmq;->handler:Landroid/os/Handler;

    invoke-direct {v1, p1, v2}, Lc8/Ymq;-><init>(Lc8/hnq;Landroid/os/Handler;)V

    .line 76
    .local v1, "scheduledAction":Lc8/Ymq;
    iget-object v2, p0, Lc8/Xmq;->handler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 77
    .local v0, "message":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    iget-object v2, p0, Lc8/Xmq;->handler:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 81
    iget-boolean v2, p0, Lc8/Xmq;->unsubscribed:Z

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lc8/Xmq;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v1

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Xmq;->unsubscribed:Z

    .line 58
    iget-object v0, p0, Lc8/Xmq;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 59
    return-void
.end method
