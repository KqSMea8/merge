.class public Lc8/Ksq;
.super Ljava/lang/Object;
.source "OperatorMulticast.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Nsq;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lc8/Vlq;Lc8/Hnq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$guard:Ljava/lang/Object;

.field final synthetic val$waitingForConnect:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 54
    .local p0, "this":Lc8/Ksq;, "Lrx/internal/operators/OperatorMulticast.1;"
    iput-object p1, p0, Lc8/Ksq;->val$guard:Ljava/lang/Object;

    iput-object p2, p0, Lc8/Ksq;->val$connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lc8/Ksq;->val$waitingForConnect:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lc8/Ksq;, "Lrx/internal/operators/OperatorMulticast.1;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    iget-object v1, p0, Lc8/Ksq;->val$guard:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v0, p0, Lc8/Ksq;->val$connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lc8/Ksq;->val$waitingForConnect:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :goto_0
    monitor-exit v1

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lc8/Ksq;->val$connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/GBq;

    invoke-virtual {v0, p1}, Lc8/GBq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 54
    .local p0, "this":Lc8/Ksq;, "Lrx/internal/operators/OperatorMulticast.1;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Ksq;->call(Lc8/Omq;)V

    return-void
.end method
