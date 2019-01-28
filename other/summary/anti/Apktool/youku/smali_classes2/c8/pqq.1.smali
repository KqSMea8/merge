.class public Lc8/pqq;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zqq;->call(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zqq;

.field final synthetic val$arbiter:Lc8/Jwq;

.field final synthetic val$child:Lc8/Omq;

.field final synthetic val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$sourceSubscriptions:Lc8/YBq;

.field final synthetic val$terminals:Lc8/wBq;


# direct methods
.method constructor <init>(Lc8/zqq;Lc8/Omq;Lc8/wBq;Lc8/Jwq;Ljava/util/concurrent/atomic/AtomicLong;Lc8/YBq;)V
    .locals 0

    .prologue
    .line 213
    .local p0, "this":Lc8/pqq;, "Lrx/internal/operators/OnSubscribeRedo.2;"
    iput-object p1, p0, Lc8/pqq;->this$0:Lc8/zqq;

    iput-object p2, p0, Lc8/pqq;->val$child:Lc8/Omq;

    iput-object p3, p0, Lc8/pqq;->val$terminals:Lc8/wBq;

    iput-object p4, p0, Lc8/pqq;->val$arbiter:Lc8/Jwq;

    iput-object p5, p0, Lc8/pqq;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p6, p0, Lc8/pqq;->val$sourceSubscriptions:Lc8/YBq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 216
    .local p0, "this":Lc8/pqq;, "Lrx/internal/operators/OnSubscribeRedo.2;"
    iget-object v1, p0, Lc8/pqq;->val$child:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v0, Lc8/oqq;

    invoke-direct {v0, p0}, Lc8/oqq;-><init>(Lc8/pqq;)V

    .line 272
    .local v0, "terminalDelegatingSubscriber":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    iget-object v1, p0, Lc8/pqq;->val$sourceSubscriptions:Lc8/YBq;

    invoke-virtual {v1, v0}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 273
    iget-object v1, p0, Lc8/pqq;->this$0:Lc8/zqq;

    iget-object v1, v1, Lc8/zqq;->source:Lc8/Vlq;

    invoke-virtual {v1, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    goto :goto_0
.end method
