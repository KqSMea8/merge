.class public final Lc8/Boq;
.super Ljava/lang/Object;
.source "BufferUntilSubscriber.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Coq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnSubscribeAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final state:Lrx/internal/operators/BufferUntilSubscriber$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/BufferUntilSubscriber$State",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/BufferUntilSubscriber$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/BufferUntilSubscriber$State",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lc8/Boq;, "Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction<TT;>;"
    .local p1, "state":Lrx/internal/operators/BufferUntilSubscriber$State;, "Lrx/internal/operators/BufferUntilSubscriber$State<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lc8/Boq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    .line 86
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lc8/Boq;, "Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction<TT;>;"
    .local p1, "s":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v3, p0, Lc8/Boq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Lrx/internal/operators/BufferUntilSubscriber$State;->casObserverRef(Lc8/Wlq;Lc8/Wlq;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    new-instance v3, Lc8/Aoq;

    invoke-direct {v3, p0}, Lc8/Aoq;-><init>(Lc8/Boq;)V

    invoke-static {v3}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 98
    const/4 v2, 0x0

    .line 99
    .local v2, "win":Z
    iget-object v3, p0, Lc8/Boq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v4, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 100
    :try_start_0
    iget-object v3, p0, Lc8/Boq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-boolean v3, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    if-nez v3, :cond_0

    .line 101
    iget-object v3, p0, Lc8/Boq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    .line 102
    const/4 v2, 0x1

    .line 104
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    if-eqz v2, :cond_2

    .line 106
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    .line 109
    .local v0, "nl":Lc8/cpq;, "Lrx/internal/operators/NotificationLite<TT;>;"
    :goto_0
    iget-object v3, p0, Lc8/Boq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v3, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 110
    iget-object v3, p0, Lc8/Boq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v3}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Wlq;

    invoke-virtual {v0, v3, v1}, Lc8/cpq;->accept(Lc8/Wlq;Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v0    # "nl":Lc8/cpq;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .end local v1    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 112
    .restart local v0    # "nl":Lc8/cpq;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lc8/Boq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v4, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 113
    :try_start_2
    iget-object v3, p0, Lc8/Boq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v3, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    iget-object v3, p0, Lc8/Boq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    .line 118
    monitor-exit v4

    .line 126
    .end local v0    # "nl":Lc8/cpq;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "win":Z
    :cond_2
    :goto_1
    return-void

    .line 120
    .restart local v0    # "nl":Lc8/cpq;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .restart local v1    # "o":Ljava/lang/Object;
    .restart local v2    # "win":Z
    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 124
    .end local v0    # "nl":Lc8/cpq;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "win":Z
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Only one subscriber allowed!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lc8/Boq;, "Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Boq;->call(Lc8/Omq;)V

    return-void
.end method
