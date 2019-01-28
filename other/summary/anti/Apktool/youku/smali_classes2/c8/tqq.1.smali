.class public Lc8/tqq;
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

.field final synthetic val$child:Lc8/Omq;

.field final synthetic val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$restarts:Lc8/Vlq;

.field final synthetic val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$subscribeToSource:Lc8/hnq;

.field final synthetic val$worker:Lc8/Zlq;


# direct methods
.method constructor <init>(Lc8/zqq;Lc8/Vlq;Lc8/Omq;Ljava/util/concurrent/atomic/AtomicLong;Lc8/Zlq;Lc8/hnq;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 315
    .local p0, "this":Lc8/tqq;, "Lrx/internal/operators/OnSubscribeRedo.4;"
    iput-object p1, p0, Lc8/tqq;->this$0:Lc8/zqq;

    iput-object p2, p0, Lc8/tqq;->val$restarts:Lc8/Vlq;

    iput-object p3, p0, Lc8/tqq;->val$child:Lc8/Omq;

    iput-object p4, p0, Lc8/tqq;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p5, p0, Lc8/tqq;->val$worker:Lc8/Zlq;

    iput-object p6, p0, Lc8/tqq;->val$subscribeToSource:Lc8/hnq;

    iput-object p7, p0, Lc8/tqq;->val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 318
    .local p0, "this":Lc8/tqq;, "Lrx/internal/operators/OnSubscribeRedo.4;"
    iget-object v0, p0, Lc8/tqq;->val$restarts:Lc8/Vlq;

    new-instance v1, Lc8/sqq;

    iget-object v2, p0, Lc8/tqq;->val$child:Lc8/Omq;

    invoke-direct {v1, p0, v2}, Lc8/sqq;-><init>(Lc8/tqq;Lc8/Omq;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 350
    return-void
.end method
