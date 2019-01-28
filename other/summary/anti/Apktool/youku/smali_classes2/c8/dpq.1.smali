.class public Lc8/dpq;
.super Ljava/lang/Object;
.source "OnSubscribeAmb.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hpq;->call(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hpq;

.field final synthetic val$choice:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$selection:Lc8/gpq;


# direct methods
.method constructor <init>(Lc8/hpq;Ljava/util/concurrent/atomic/AtomicReference;Lc8/gpq;)V
    .locals 0

    .prologue
    .line 373
    .local p0, "this":Lc8/dpq;, "Lrx/internal/operators/OnSubscribeAmb.1;"
    iput-object p1, p0, Lc8/dpq;->this$0:Lc8/hpq;

    iput-object p2, p0, Lc8/dpq;->val$choice:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lc8/dpq;->val$selection:Lc8/gpq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 378
    .local p0, "this":Lc8/dpq;, "Lrx/internal/operators/OnSubscribeAmb.1;"
    iget-object v1, p0, Lc8/dpq;->val$choice:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fpq;

    .local v0, "c":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Lc8/fpq;->unsubscribe()V

    .line 386
    :cond_0
    iget-object v1, p0, Lc8/dpq;->val$selection:Lc8/gpq;

    iget-object v1, v1, Lc8/gpq;->ambSubscribers:Ljava/util/Collection;

    invoke-static {v1}, Lc8/hpq;->unsubscribeAmbSubscribers(Ljava/util/Collection;)V

    .line 387
    return-void
.end method
