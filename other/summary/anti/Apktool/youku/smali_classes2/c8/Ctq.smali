.class public Lc8/Ctq;
.super Ljava/lang/Object;
.source "OperatorRetryWithPredicate.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Dtq;->onNext(Lc8/Vlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Dtq;

.field final synthetic val$o:Lc8/Vlq;


# direct methods
.method constructor <init>(Lc8/Dtq;Lc8/Vlq;)V
    .locals 0

    .prologue
    .line 79
    .local p0, "this":Lc8/Ctq;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber.1;"
    iput-object p1, p0, Lc8/Ctq;->this$0:Lc8/Dtq;

    iput-object p2, p0, Lc8/Ctq;->val$o:Lc8/Vlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 83
    .local p0, "this":Lc8/Ctq;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber.1;"
    move-object v0, p0

    .line 84
    .local v0, "_self":Lc8/hnq;
    iget-object v2, p0, Lc8/Ctq;->this$0:Lc8/Dtq;

    iget-object v2, v2, Lc8/Dtq;->attempts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 88
    new-instance v1, Lc8/Btq;

    invoke-direct {v1, p0, v0}, Lc8/Btq;-><init>(Lc8/Ctq;Lc8/hnq;)V

    .line 126
    .local v1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    iget-object v2, p0, Lc8/Ctq;->this$0:Lc8/Dtq;

    iget-object v2, v2, Lc8/Dtq;->serialSubscription:Lc8/YBq;

    invoke-virtual {v2, v1}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 127
    iget-object v2, p0, Lc8/Ctq;->val$o:Lc8/Vlq;

    invoke-virtual {v2, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 128
    return-void
.end method
