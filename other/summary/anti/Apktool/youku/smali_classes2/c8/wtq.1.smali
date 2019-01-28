.class public final Lc8/wtq;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Atq;->create(Lc8/Vlq;Lc8/Hnq;)Lc8/Vzq;
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
.field final synthetic val$bufferFactory:Lc8/Hnq;

.field final synthetic val$curr:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lc8/Hnq;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lc8/wtq;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lc8/wtq;->val$bufferFactory:Lc8/Hnq;

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
    .line 209
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :cond_0
    iget-object v3, p0, Lc8/wtq;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/ztq;

    .line 211
    .local v1, "r":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    if-nez v1, :cond_1

    .line 213
    new-instance v2, Lc8/ztq;

    iget-object v3, p0, Lc8/wtq;->val$bufferFactory:Lc8/Hnq;

    invoke-interface {v3}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/xtq;

    invoke-direct {v2, v3}, Lc8/ztq;-><init>(Lc8/xtq;)V

    .line 215
    .local v2, "u":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    invoke-virtual {v2}, Lc8/ztq;->init()V

    .line 217
    iget-object v3, p0, Lc8/wtq;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    move-object v1, v2

    .line 227
    .end local v2    # "u":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    :cond_1
    new-instance v0, Lrx/internal/operators/OperatorReplay$InnerProducer;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;-><init>(Lc8/ztq;Lc8/Omq;)V

    .line 231
    .local v0, "inner":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    invoke-virtual {v1, v0}, Lc8/ztq;->add(Lrx/internal/operators/OperatorReplay$InnerProducer;)Z

    .line 234
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 237
    iget-object v3, v1, Lc8/ztq;->buffer:Lc8/xtq;

    invoke-interface {v3, v0}, Lc8/xtq;->replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 241
    invoke-virtual {p1, v0}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 244
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 202
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/wtq;->call(Lc8/Omq;)V

    return-void
.end method
