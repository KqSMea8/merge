.class public final Lc8/YBq;
.super Ljava/lang/Object;
.source "SerialSubscription.java"

# interfaces
.implements Lc8/Pmq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/XBq;
    }
.end annotation


# instance fields
.field final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/XBq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lc8/XBq;

    const/4 v2, 0x0

    invoke-static {}, Lc8/bCq;->empty()Lc8/Pmq;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc8/XBq;-><init>(ZLc8/Pmq;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/YBq;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    return-void
.end method


# virtual methods
.method public get()Lc8/Pmq;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lc8/YBq;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/XBq;

    iget-object v0, v0, Lc8/XBq;->subscription:Lc8/Pmq;

    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lc8/YBq;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/XBq;

    iget-boolean v0, v0, Lc8/XBq;->isUnsubscribed:Z

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
    iget-object v0, p0, Lc8/YBq;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subscriptions/SerialSubscription$State;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/XBq;

    .line 86
    .local v2, "oldState":Lc8/XBq;
    iget-boolean v3, v2, Lc8/XBq;->isUnsubscribed:Z

    if-eqz v3, :cond_2

    .line 87
    invoke-interface {p1}, Lc8/Pmq;->unsubscribe()V

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_2
    invoke-virtual {v2, p1}, Lc8/XBq;->set(Lc8/Pmq;)Lc8/XBq;

    move-result-object v1

    .line 92
    .local v1, "newState":Lc8/XBq;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    iget-object v3, v2, Lc8/XBq;->subscription:Lc8/Pmq;

    invoke-interface {v3}, Lc8/Pmq;->unsubscribe()V

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lc8/YBq;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subscriptions/SerialSubscription$State;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/XBq;

    .line 60
    .local v2, "oldState":Lc8/XBq;
    iget-boolean v3, v2, Lc8/XBq;->isUnsubscribed:Z

    if-eqz v3, :cond_1

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {v2}, Lc8/XBq;->unsubscribe()Lc8/XBq;

    move-result-object v1

    .line 65
    .local v1, "newState":Lc8/XBq;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    iget-object v3, v2, Lc8/XBq;->subscription:Lc8/Pmq;

    invoke-interface {v3}, Lc8/Pmq;->unsubscribe()V

    goto :goto_0
.end method
