.class public abstract Lc8/hLj;
.super Landroid/os/Handler;
.source "PauseHandler.java"


# instance fields
.field final messageQueueBuffer:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc8/hLj;->messageQueueBuffer:Ljava/util/Vector;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/hLj;->paused:Z

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 72
    iget-boolean v1, p0, Lc8/hLj;->paused:Z

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {p0, p1}, Lc8/hLj;->storeMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 75
    .local v0, "msgCopy":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 76
    iget-object v1, p0, Lc8/hLj;->messageQueueBuffer:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v0    # "msgCopy":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p0, p1}, Lc8/hLj;->processMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public final pause()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/hLj;->paused:Z

    .line 45
    return-void
.end method

.method protected abstract processMessage(Landroid/os/Message;)V
.end method

.method public final resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    iput-boolean v2, p0, Lc8/hLj;->paused:Z

    .line 33
    :goto_0
    iget-object v1, p0, Lc8/hLj;->messageQueueBuffer:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 34
    iget-object v1, p0, Lc8/hLj;->messageQueueBuffer:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 35
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lc8/hLj;->messageQueueBuffer:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 36
    invoke-virtual {p0, v0}, Lc8/hLj;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 38
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected abstract storeMessage(Landroid/os/Message;)Z
.end method
