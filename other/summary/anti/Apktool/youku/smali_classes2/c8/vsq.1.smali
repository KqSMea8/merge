.class public final Lc8/vsq;
.super Lc8/Omq;
.source "OperatorMapNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wsq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapNotificationSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final COMPLETED_FLAG:J = -0x8000000000000000L

.field static final REQUESTED_MASK:J = 0x7fffffffffffffffL


# instance fields
.field final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

.field final onCompleted:Lc8/Hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hnq",
            "<+TR;>;"
        }
    .end annotation
.end field

.field final onError:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-",
            "Ljava/lang/Throwable;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final onNext:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field

.field produced:J

.field final producer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/Xlq;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Omq;Lc8/Inq;Lc8/Inq;Lc8/Hnq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;",
            "Lc8/Inq",
            "<-TT;+TR;>;",
            "Lc8/Inq",
            "<-",
            "Ljava/lang/Throwable;",
            "+TR;>;",
            "Lc8/Hnq",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lc8/vsq;, "Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber<TT;TR;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    .local p2, "onNext":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TR;>;"
    .local p3, "onError":Lc8/Inq;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+TR;>;"
    .local p4, "onCompleted":Lc8/Hnq;, "Lrx/functions/Func0<+TR;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 83
    iput-object p1, p0, Lc8/vsq;->actual:Lc8/Omq;

    .line 84
    iput-object p2, p0, Lc8/vsq;->onNext:Lc8/Inq;

    .line 85
    iput-object p3, p0, Lc8/vsq;->onError:Lc8/Inq;

    .line 86
    iput-object p4, p0, Lc8/vsq;->onCompleted:Lc8/Hnq;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lc8/vsq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lc8/vsq;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lc8/vsq;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 90
    return-void
.end method


# virtual methods
.method accountProduced()V
    .locals 4

    .prologue
    .line 125
    .local p0, "this":Lc8/vsq;, "Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber<TT;TR;>;"
    iget-wide v0, p0, Lc8/vsq;->produced:J

    .line 126
    .local v0, "p":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/vsq;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lc8/vsq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2, v0, v1}, Lc8/ioq;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 129
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 115
    .local p0, "this":Lc8/vsq;, "Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber<TT;TR;>;"
    invoke-virtual {p0}, Lc8/vsq;->accountProduced()V

    .line 117
    :try_start_0
    iget-object v1, p0, Lc8/vsq;->onCompleted:Lc8/Hnq;

    invoke-interface {v1}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lc8/vsq;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    invoke-virtual {p0}, Lc8/vsq;->tryEmit()V

    .line 122
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lc8/vsq;->actual:Lc8/Omq;

    invoke-static {v0, v1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 104
    .local p0, "this":Lc8/vsq;, "Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber<TT;TR;>;"
    invoke-virtual {p0}, Lc8/vsq;->accountProduced()V

    .line 106
    :try_start_0
    iget-object v1, p0, Lc8/vsq;->onError:Lc8/Inq;

    invoke-interface {v1, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lc8/vsq;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    invoke-virtual {p0}, Lc8/vsq;->tryEmit()V

    .line 111
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lc8/vsq;->actual:Lc8/Omq;

    invoke-static {v0, v1, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lc8/vsq;, "Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-wide v2, p0, Lc8/vsq;->produced:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lc8/vsq;->produced:J

    .line 96
    iget-object v1, p0, Lc8/vsq;->actual:Lc8/Omq;

    iget-object v2, p0, Lc8/vsq;->onNext:Lc8/Inq;

    invoke-interface {v2, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Omq;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lc8/vsq;->actual:Lc8/Omq;

    invoke-static {v0, v1, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method requestInner(J)V
    .locals 13
    .param p1, "n"    # J

    .prologue
    .line 164
    .local p0, "this":Lc8/vsq;, "Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber<TT;TR;>;"
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 165
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "n >= 0 required but it was "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 167
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-nez v8, :cond_3

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 188
    .local v2, "r":J
    :cond_2
    invoke-static {v2, v3, p1, p2}, Lc8/ioq;->addCap(JJ)J

    move-result-wide v4

    .line 189
    .local v4, "u":J
    iget-object v8, p0, Lc8/vsq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v8

    if-nez v8, :cond_5

    .line 171
    .end local v2    # "r":J
    .end local v4    # "u":J
    :cond_3
    iget-object v8, p0, Lc8/vsq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 173
    .restart local v2    # "r":J
    const-wide/high16 v8, -0x8000000000000000L

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 174
    const-wide v8, 0x7fffffffffffffffL

    and-long v6, v2, v8

    .line 175
    .local v6, "v":J
    invoke-static {v6, v7, p1, p2}, Lc8/ioq;->addCap(JJ)J

    move-result-wide v8

    const-wide/high16 v10, -0x8000000000000000L

    or-long v4, v8, v10

    .line 176
    .restart local v4    # "u":J
    iget-object v8, p0, Lc8/vsq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 177
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_1

    .line 178
    iget-object v8, p0, Lc8/vsq;->actual:Lc8/Omq;

    invoke-virtual {v8}, Lc8/Omq;->isUnsubscribed()Z

    move-result v8

    if-nez v8, :cond_4

    .line 179
    iget-object v8, p0, Lc8/vsq;->actual:Lc8/Omq;

    iget-object v9, p0, Lc8/vsq;->value:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 181
    :cond_4
    iget-object v8, p0, Lc8/vsq;->actual:Lc8/Omq;

    invoke-virtual {v8}, Lc8/Omq;->isUnsubscribed()Z

    move-result v8

    if-nez v8, :cond_1

    .line 182
    iget-object v8, p0, Lc8/vsq;->actual:Lc8/Omq;

    invoke-virtual {v8}, Lc8/Omq;->onCompleted()V

    goto :goto_0

    .line 195
    .end local v6    # "v":J
    :cond_5
    iget-object v1, p0, Lc8/vsq;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 196
    .local v1, "localProducer":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/Producer;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xlq;

    .line 197
    .local v0, "actualProducer":Lc8/Xlq;
    if-eqz v0, :cond_6

    .line 198
    invoke-interface {v0, p1, p2}, Lc8/Xlq;->request(J)V

    goto :goto_0

    .line 200
    :cond_6
    iget-object v8, p0, Lc8/vsq;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v8, p1, p2}, Lc8/ioq;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 201
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "actualProducer":Lc8/Xlq;
    check-cast v0, Lc8/Xlq;

    .line 202
    .restart local v0    # "actualProducer":Lc8/Xlq;
    if-eqz v0, :cond_1

    .line 203
    iget-object v8, p0, Lc8/vsq;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    .line 204
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_1

    .line 205
    invoke-interface {v0, v2, v3}, Lc8/Xlq;->request(J)V

    goto/16 :goto_0
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 6
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .local p0, "this":Lc8/vsq;, "Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber<TT;TR;>;"
    const-wide/16 v4, 0x0

    .line 133
    iget-object v2, p0, Lc8/vsq;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lc8/vsq;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    .line 135
    .local v0, "r":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 136
    invoke-interface {p1, v0, v1}, Lc8/Xlq;->request(J)V

    .line 138
    :cond_0
    return-void

    .line 139
    .end local v0    # "r":J
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Producer already set!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method tryEmit()V
    .locals 10

    .prologue
    .local p0, "this":Lc8/vsq;, "Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber<TT;TR;>;"
    const-wide/16 v8, 0x0

    const-wide/high16 v6, -0x8000000000000000L

    .line 145
    :cond_0
    iget-object v2, p0, Lc8/vsq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 146
    .local v0, "r":J
    and-long v2, v0, v6

    cmp-long v2, v2, v8

    if-nez v2, :cond_3

    .line 149
    iget-object v2, p0, Lc8/vsq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    or-long v4, v0, v6

    invoke-virtual {v2, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    cmp-long v2, v0, v8

    if-nez v2, :cond_1

    iget-object v2, p0, Lc8/vsq;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 151
    :cond_1
    iget-object v2, p0, Lc8/vsq;->actual:Lc8/Omq;

    invoke-virtual {v2}, Lc8/Omq;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 152
    iget-object v2, p0, Lc8/vsq;->actual:Lc8/Omq;

    iget-object v3, p0, Lc8/vsq;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 154
    :cond_2
    iget-object v2, p0, Lc8/vsq;->actual:Lc8/Omq;

    invoke-virtual {v2}, Lc8/Omq;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 155
    iget-object v2, p0, Lc8/vsq;->actual:Lc8/Omq;

    invoke-virtual {v2}, Lc8/Omq;->onCompleted()V

    .line 161
    :cond_3
    return-void
.end method
