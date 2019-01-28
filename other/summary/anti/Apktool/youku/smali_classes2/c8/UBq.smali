.class public final Lc8/UBq;
.super Ljava/lang/Object;
.source "MultipleAssignmentSubscription.java"

# interfaces
.implements Lc8/Pmq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/TBq;
    }
.end annotation


# instance fields
.field final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/TBq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lc8/TBq;

    const/4 v2, 0x0

    invoke-static {}, Lc8/bCq;->empty()Lc8/Pmq;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc8/TBq;-><init>(ZLc8/Pmq;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/UBq;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    return-void
.end method


# virtual methods
.method public get()Lc8/Pmq;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lc8/UBq;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/TBq;

    iget-object v0, v0, Lc8/TBq;->subscription:Lc8/Pmq;

    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lc8/UBq;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/TBq;

    iget-boolean v0, v0, Lc8/TBq;->isUnsubscribed:Z

    return v0
.end method

.method public set(Lc8/Pmq;)V
    .locals 5
    .param p1, "s"    # Lc8/Pmq;

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Subscription can not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_0
    iget-object v0, p0, Lc8/UBq;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subscriptions/MultipleAssignmentSubscription$State;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/TBq;

    .line 86
    .local v2, "oldState":Lc8/TBq;
    iget-boolean v3, v2, Lc8/TBq;->isUnsubscribed:Z

    if-eqz v3, :cond_2

    .line 87
    invoke-interface {p1}, Lc8/Pmq;->unsubscribe()V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_2
    invoke-virtual {v2, p1}, Lc8/TBq;->set(Lc8/Pmq;)Lc8/TBq;

    move-result-object v1

    .line 92
    .local v1, "newState":Lc8/TBq;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lc8/UBq;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subscriptions/MultipleAssignmentSubscription$State;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/TBq;

    .line 61
    .local v2, "oldState":Lc8/TBq;
    iget-boolean v3, v2, Lc8/TBq;->isUnsubscribed:Z

    if-eqz v3, :cond_1

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {v2}, Lc8/TBq;->unsubscribe()Lc8/TBq;

    move-result-object v1

    .line 66
    .local v1, "newState":Lc8/TBq;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    iget-object v3, v2, Lc8/TBq;->subscription:Lc8/Pmq;

    invoke-interface {v3}, Lc8/Pmq;->unsubscribe()V

    goto :goto_0
.end method
