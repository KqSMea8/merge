.class public final Lc8/ivq;
.super Lc8/Omq;
.source "OperatorTimeoutBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jvq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeoutSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field actual:J

.field final arbiter:Lc8/Jwq;

.field final inner:Lc8/Zlq;

.field final other:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final serial:Lc8/YBq;

.field final serializedSubscriber:Lc8/qAq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/qAq",
            "<TT;>;"
        }
    .end annotation
.end field

.field terminated:Z

.field final timeoutStub:Lc8/gvq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/gvq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/qAq;Lc8/gvq;Lc8/YBq;Lc8/Vlq;Lc8/Zlq;)V
    .locals 1
    .param p3, "serial"    # Lc8/YBq;
    .param p5, "inner"    # Lc8/Zlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qAq",
            "<TT;>;",
            "Lc8/gvq",
            "<TT;>;",
            "Lc8/YBq;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Zlq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lc8/ivq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    .local p1, "serializedSubscriber":Lc8/qAq;, "Lrx/observers/SerializedSubscriber<TT;>;"
    .local p2, "timeoutStub":Lc8/gvq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub<TT;>;"
    .local p4, "other":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 105
    iput-object p1, p0, Lc8/ivq;->serializedSubscriber:Lc8/qAq;

    .line 106
    iput-object p2, p0, Lc8/ivq;->timeoutStub:Lc8/gvq;

    .line 107
    iput-object p3, p0, Lc8/ivq;->serial:Lc8/YBq;

    .line 108
    iput-object p4, p0, Lc8/ivq;->other:Lc8/Vlq;

    .line 109
    iput-object p5, p0, Lc8/ivq;->inner:Lc8/Zlq;

    .line 110
    new-instance v0, Lc8/Jwq;

    invoke-direct {v0}, Lc8/Jwq;-><init>()V

    iput-object v0, p0, Lc8/ivq;->arbiter:Lc8/Jwq;

    .line 111
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 153
    .local p0, "this":Lc8/ivq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 154
    .local v0, "onCompletedWins":Z
    monitor-enter p0

    .line 155
    :try_start_0
    iget-boolean v1, p0, Lc8/ivq;->terminated:Z

    if-nez v1, :cond_0

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/ivq;->terminated:Z

    .line 157
    const/4 v0, 0x1

    .line 159
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    if-eqz v0, :cond_1

    .line 161
    iget-object v1, p0, Lc8/ivq;->serial:Lc8/YBq;

    invoke-virtual {v1}, Lc8/YBq;->unsubscribe()V

    .line 162
    iget-object v1, p0, Lc8/ivq;->serializedSubscriber:Lc8/qAq;

    invoke-virtual {v1}, Lc8/qAq;->onCompleted()V

    .line 164
    :cond_1
    return-void

    .line 159
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 138
    .local p0, "this":Lc8/ivq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 139
    .local v0, "onErrorWins":Z
    monitor-enter p0

    .line 140
    :try_start_0
    iget-boolean v1, p0, Lc8/ivq;->terminated:Z

    if-nez v1, :cond_0

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/ivq;->terminated:Z

    .line 142
    const/4 v0, 0x1

    .line 144
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    if-eqz v0, :cond_1

    .line 146
    iget-object v1, p0, Lc8/ivq;->serial:Lc8/YBq;

    invoke-virtual {v1}, Lc8/YBq;->unsubscribe()V

    .line 147
    iget-object v1, p0, Lc8/ivq;->serializedSubscriber:Lc8/qAq;

    invoke-virtual {v1, p1}, Lc8/qAq;->onError(Ljava/lang/Throwable;)V

    .line 149
    :cond_1
    return-void

    .line 144
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lc8/ivq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 122
    .local v2, "onNextWins":Z
    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v3, p0, Lc8/ivq;->terminated:Z

    if-nez v3, :cond_1

    .line 124
    iget-wide v4, p0, Lc8/ivq;->actual:J

    const-wide/16 v6, 0x1

    add-long v0, v4, v6

    iput-wide v0, p0, Lc8/ivq;->actual:J

    .line 125
    .local v0, "a":J
    const/4 v2, 0x1

    .line 129
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    if-eqz v2, :cond_0

    .line 131
    iget-object v3, p0, Lc8/ivq;->serializedSubscriber:Lc8/qAq;

    invoke-virtual {v3, p1}, Lc8/qAq;->onNext(Ljava/lang/Object;)V

    .line 132
    iget-object v4, p0, Lc8/ivq;->serial:Lc8/YBq;

    iget-object v3, p0, Lc8/ivq;->timeoutStub:Lc8/gvq;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lc8/ivq;->inner:Lc8/Zlq;

    invoke-interface {v3, p0, v5, p1, v6}, Lc8/gvq;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Pmq;

    invoke-virtual {v4, v3}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 134
    :cond_0
    return-void

    .line 127
    .end local v0    # "a":J
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lc8/ivq;->actual:J

    .restart local v0    # "a":J
    goto :goto_0

    .line 129
    .end local v0    # "a":J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onTimeout(J)V
    .locals 7
    .param p1, "seqId"    # J

    .prologue
    .line 167
    .local p0, "this":Lc8/ivq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    move-wide v0, p1

    .line 168
    .local v0, "expected":J
    const/4 v3, 0x0

    .line 169
    .local v3, "timeoutWins":Z
    monitor-enter p0

    .line 170
    :try_start_0
    iget-wide v4, p0, Lc8/ivq;->actual:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lc8/ivq;->terminated:Z

    if-nez v4, :cond_0

    .line 171
    const/4 v4, 0x1

    iput-boolean v4, p0, Lc8/ivq;->terminated:Z

    .line 172
    const/4 v3, 0x1

    .line 174
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    if-eqz v3, :cond_1

    .line 176
    iget-object v4, p0, Lc8/ivq;->other:Lc8/Vlq;

    if-nez v4, :cond_2

    .line 177
    iget-object v4, p0, Lc8/ivq;->serializedSubscriber:Lc8/qAq;

    new-instance v5, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v5}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v4, v5}, Lc8/qAq;->onError(Ljava/lang/Throwable;)V

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 174
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 179
    :cond_2
    new-instance v2, Lc8/hvq;

    invoke-direct {v2, p0}, Lc8/hvq;-><init>(Lc8/ivq;)V

    .line 200
    .local v2, "second":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    iget-object v4, p0, Lc8/ivq;->other:Lc8/Vlq;

    invoke-virtual {v4, v2}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 201
    iget-object v4, p0, Lc8/ivq;->serial:Lc8/YBq;

    invoke-virtual {v4, v2}, Lc8/YBq;->set(Lc8/Pmq;)V

    goto :goto_0
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 115
    .local p0, "this":Lc8/ivq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    iget-object v0, p0, Lc8/ivq;->arbiter:Lc8/Jwq;

    invoke-virtual {v0, p1}, Lc8/Jwq;->setProducer(Lc8/Xlq;)V

    .line 116
    return-void
.end method
