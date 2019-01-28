.class public final Lc8/Nsq;
.super Lc8/Vzq;
.source "OperatorMulticast.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Vzq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/GBq",
            "<-TT;+TR;>;>;"
        }
    .end annotation
.end field

.field final guard:Ljava/lang/Object;

.field guardedSubscription:Lc8/Pmq;

.field final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final subjectFactory:Lc8/Hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hnq",
            "<+",
            "Lc8/GBq",
            "<-TT;+TR;>;>;"
        }
    .end annotation
.end field

.field subscription:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final waitingForConnect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Omq",
            "<-TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Vlq;Lc8/Hnq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Hnq",
            "<+",
            "Lc8/GBq",
            "<-TT;+TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lc8/Nsq;, "Lrx/internal/operators/OperatorMulticast<TT;TR;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "subjectFactory":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/subjects/Subject<-TT;+TR;>;>;"
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc8/Nsq;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lc8/Vlq;Lc8/Hnq;)V

    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lc8/Vlq;Lc8/Hnq;)V
    .locals 1
    .param p1, "guard"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/GBq",
            "<-TT;+TR;>;>;",
            "Ljava/util/List",
            "<",
            "Lc8/Omq",
            "<-TR;>;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Hnq",
            "<+",
            "Lc8/GBq",
            "<-TT;+TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lc8/Nsq;, "Lrx/internal/operators/OperatorMulticast<TT;TR;>;"
    .local p2, "connectedSubject":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subjects/Subject<-TT;+TR;>;>;"
    .local p3, "waitingForConnect":Ljava/util/List;, "Ljava/util/List<Lrx/Subscriber<-TR;>;>;"
    .local p4, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "subjectFactory":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/subjects/Subject<-TT;+TR;>;>;"
    new-instance v0, Lc8/Ksq;

    invoke-direct {v0, p1, p2, p3}, Lc8/Ksq;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lc8/Vzq;-><init>(Lc8/Rlq;)V

    .line 68
    iput-object p1, p0, Lc8/Nsq;->guard:Ljava/lang/Object;

    .line 69
    iput-object p2, p0, Lc8/Nsq;->connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    iput-object p3, p0, Lc8/Nsq;->waitingForConnect:Ljava/util/List;

    .line 71
    iput-object p4, p0, Lc8/Nsq;->source:Lc8/Vlq;

    .line 72
    iput-object p5, p0, Lc8/Nsq;->subjectFactory:Lc8/Hnq;

    .line 73
    return-void
.end method


# virtual methods
.method public connect(Lc8/inq;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-",
            "Lc8/Pmq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lc8/Nsq;, "Lrx/internal/operators/OperatorMulticast<TT;TR;>;"
    .local p1, "connection":Lc8/inq;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    iget-object v6, p0, Lc8/Nsq;->guard:Ljava/lang/Object;

    monitor-enter v6

    .line 82
    :try_start_0
    iget-object v5, p0, Lc8/Nsq;->subscription:Lc8/Omq;

    if-eqz v5, :cond_1

    .line 84
    iget-object v5, p0, Lc8/Nsq;->guardedSubscription:Lc8/Pmq;

    invoke-interface {p1, v5}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 85
    monitor-exit v6

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v5, p0, Lc8/Nsq;->subjectFactory:Lc8/Hnq;

    invoke-interface {v5}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/GBq;

    .line 91
    .local v4, "subject":Lc8/GBq;, "Lrx/subjects/Subject<-TT;+TR;>;"
    invoke-static {v4}, Lc8/wAq;->from(Lc8/Wlq;)Lc8/Omq;

    move-result-object v5

    iput-object v5, p0, Lc8/Nsq;->subscription:Lc8/Omq;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 93
    .local v0, "gs":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/Subscription;>;"
    new-instance v5, Lc8/Lsq;

    invoke-direct {v5, p0, v0}, Lc8/Lsq;-><init>(Lc8/Nsq;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v5}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Pmq;

    iput-object v5, p0, Lc8/Nsq;->guardedSubscription:Lc8/Pmq;

    .line 115
    iget-object v5, p0, Lc8/Nsq;->waitingForConnect:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Omq;

    .line 116
    .local v2, "s":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    new-instance v5, Lc8/Msq;

    invoke-direct {v5, p0, v2, v2}, Lc8/Msq;-><init>(Lc8/Nsq;Lc8/Omq;Lc8/Omq;)V

    invoke-virtual {v4, v5}, Lc8/GBq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    goto :goto_1

    .line 137
    .end local v0    # "gs":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/Subscription;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    .end local v4    # "subject":Lc8/GBq;, "Lrx/subjects/Subject<-TT;+TR;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 132
    .restart local v0    # "gs":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/Subscription;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "subject":Lc8/GBq;, "Lrx/subjects/Subject<-TT;+TR;>;"
    :cond_2
    :try_start_1
    iget-object v5, p0, Lc8/Nsq;->waitingForConnect:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 134
    iget-object v5, p0, Lc8/Nsq;->connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 137
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    iget-object v5, p0, Lc8/Nsq;->guardedSubscription:Lc8/Pmq;

    invoke-interface {p1, v5}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 146
    iget-object v6, p0, Lc8/Nsq;->guard:Ljava/lang/Object;

    monitor-enter v6

    .line 147
    :try_start_2
    iget-object v3, p0, Lc8/Nsq;->subscription:Lc8/Omq;

    .line 148
    .local v3, "sub":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    if-eqz v3, :cond_0

    .line 150
    iget-object v5, p0, Lc8/Nsq;->source:Lc8/Vlq;

    invoke-virtual {v5, v3}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    goto :goto_0

    .line 148
    .end local v3    # "sub":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method
