.class public final Lc8/itq;
.super Ljava/lang/Object;
.source "OperatorPublish.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ntq;->create(Lc8/Vlq;)Lc8/Vzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$curr:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lc8/itq;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :cond_0
    iget-object v3, p0, Lc8/itq;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/mtq;

    .line 58
    .local v1, "r":Lc8/mtq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc8/mtq;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    :cond_1
    new-instance v2, Lc8/mtq;

    iget-object v3, p0, Lc8/itq;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v3}, Lc8/mtq;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 62
    .local v2, "u":Lc8/mtq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    invoke-virtual {v2}, Lc8/mtq;->init()V

    .line 64
    iget-object v3, p0, Lc8/itq;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    move-object v1, v2

    .line 74
    .end local v2    # "u":Lc8/mtq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    :cond_2
    new-instance v0, Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/OperatorPublish$InnerProducer;-><init>(Lc8/mtq;Lc8/Omq;)V

    .line 79
    .local v0, "inner":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    invoke-virtual {v1, v0}, Lc8/mtq;->add(Lrx/internal/operators/OperatorPublish$InnerProducer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 111
    invoke-virtual {p1, v0}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 114
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/itq;->call(Lc8/Omq;)V

    return-void
.end method
