.class public Lc8/uqq;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lc8/Xlq;


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

.field final synthetic val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$subscribeToSource:Lc8/hnq;

.field final synthetic val$worker:Lc8/Zlq;


# direct methods
.method constructor <init>(Lc8/zqq;Ljava/util/concurrent/atomic/AtomicLong;Lc8/Jwq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/Zlq;Lc8/hnq;)V
    .locals 0

    .prologue
    .line 353
    .local p0, "this":Lc8/uqq;, "Lrx/internal/operators/OnSubscribeRedo.5;"
    iput-object p1, p0, Lc8/uqq;->this$0:Lc8/zqq;

    iput-object p2, p0, Lc8/uqq;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lc8/uqq;->val$arbiter:Lc8/Jwq;

    iput-object p4, p0, Lc8/uqq;->val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lc8/uqq;->val$worker:Lc8/Zlq;

    iput-object p6, p0, Lc8/uqq;->val$subscribeToSource:Lc8/hnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 357
    .local p0, "this":Lc8/uqq;, "Lrx/internal/operators/OnSubscribeRedo.5;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 358
    iget-object v0, p0, Lc8/uqq;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lc8/ioq;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 359
    iget-object v0, p0, Lc8/uqq;->val$arbiter:Lc8/Jwq;

    invoke-virtual {v0, p1, p2}, Lc8/Jwq;->request(J)V

    .line 360
    iget-object v0, p0, Lc8/uqq;->val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lc8/uqq;->val$worker:Lc8/Zlq;

    iget-object v1, p0, Lc8/uqq;->val$subscribeToSource:Lc8/hnq;

    invoke-virtual {v0, v1}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    .line 364
    :cond_0
    return-void
.end method
