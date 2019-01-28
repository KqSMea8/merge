.class public Lc8/epq;
.super Ljava/lang/Object;
.source "OnSubscribeAmb.java"

# interfaces
.implements Lc8/Xlq;


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
    .line 414
    .local p0, "this":Lc8/epq;, "Lrx/internal/operators/OnSubscribeAmb.2;"
    iput-object p1, p0, Lc8/epq;->this$0:Lc8/hpq;

    iput-object p2, p0, Lc8/epq;->val$choice:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lc8/epq;->val$selection:Lc8/gpq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .line 419
    .local p0, "this":Lc8/epq;, "Lrx/internal/operators/OnSubscribeAmb.2;"
    iget-object v3, p0, Lc8/epq;->val$choice:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/fpq;

    .local v1, "c":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    if-eqz v1, :cond_1

    .line 421
    invoke-static {v1, p1, p2}, Lc8/fpq;->access$000(Lc8/fpq;J)V

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v3, p0, Lc8/epq;->val$selection:Lc8/gpq;

    iget-object v3, v3, Lc8/gpq;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fpq;

    .line 425
    .local v0, "ambSubscriber":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    invoke-virtual {v0}, Lc8/fpq;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 428
    iget-object v3, p0, Lc8/epq;->val$choice:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    .line 429
    invoke-static {v0, p1, p2}, Lc8/fpq;->access$000(Lc8/fpq;J)V

    goto :goto_0

    .line 434
    :cond_3
    invoke-static {v0, p1, p2}, Lc8/fpq;->access$000(Lc8/fpq;J)V

    goto :goto_1
.end method
