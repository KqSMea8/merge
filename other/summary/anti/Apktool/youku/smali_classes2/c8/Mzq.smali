.class public Lc8/Mzq;
.super Lc8/Omq;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Tzq;->blockForSingle(Lc8/Vlq;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Tzq;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lc8/Tzq;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 445
    .local p0, "this":Lc8/Mzq;, "Lrx/observables/BlockingObservable.3;"
    iput-object p1, p0, Lc8/Mzq;->this$0:Lc8/Tzq;

    iput-object p2, p0, Lc8/Mzq;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lc8/Mzq;->val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lc8/Mzq;->val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 448
    .local p0, "this":Lc8/Mzq;, "Lrx/observables/BlockingObservable.3;"
    iget-object v0, p0, Lc8/Mzq;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 449
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 453
    .local p0, "this":Lc8/Mzq;, "Lrx/observables/BlockingObservable.3;"
    iget-object v0, p0, Lc8/Mzq;->val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 454
    iget-object v0, p0, Lc8/Mzq;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 455
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Lc8/Mzq;, "Lrx/observables/BlockingObservable.3;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Mzq;->val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 460
    return-void
.end method
