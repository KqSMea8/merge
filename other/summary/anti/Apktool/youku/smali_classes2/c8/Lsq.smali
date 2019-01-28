.class public Lc8/Lsq;
.super Ljava/lang/Object;
.source "OperatorMulticast.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Nsq;->connect(Lc8/inq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nsq;

.field final synthetic val$gs:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lc8/Nsq;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 93
    .local p0, "this":Lc8/Lsq;, "Lrx/internal/operators/OperatorMulticast.2;"
    iput-object p1, p0, Lc8/Lsq;->this$0:Lc8/Nsq;

    iput-object p2, p0, Lc8/Lsq;->val$gs:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 97
    .local p0, "this":Lc8/Lsq;, "Lrx/internal/operators/OperatorMulticast.2;"
    iget-object v1, p0, Lc8/Lsq;->this$0:Lc8/Nsq;

    iget-object v2, v1, Lc8/Nsq;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 98
    :try_start_0
    iget-object v1, p0, Lc8/Lsq;->this$0:Lc8/Nsq;

    iget-object v1, v1, Lc8/Nsq;->guardedSubscription:Lc8/Pmq;

    iget-object v3, p0, Lc8/Lsq;->val$gs:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_1

    .line 99
    iget-object v1, p0, Lc8/Lsq;->this$0:Lc8/Nsq;

    iget-object v0, v1, Lc8/Nsq;->subscription:Lc8/Omq;

    .line 100
    .local v0, "s":Lc8/Pmq;
    iget-object v1, p0, Lc8/Lsq;->this$0:Lc8/Nsq;

    const/4 v3, 0x0

    iput-object v3, v1, Lc8/Nsq;->subscription:Lc8/Omq;

    .line 101
    iget-object v1, p0, Lc8/Lsq;->this$0:Lc8/Nsq;

    const/4 v3, 0x0

    iput-object v3, v1, Lc8/Nsq;->guardedSubscription:Lc8/Pmq;

    .line 102
    iget-object v1, p0, Lc8/Lsq;->this$0:Lc8/Nsq;

    iget-object v1, v1, Lc8/Nsq;->connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 106
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Lc8/Pmq;->unsubscribe()V

    .line 110
    .end local v0    # "s":Lc8/Pmq;
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
