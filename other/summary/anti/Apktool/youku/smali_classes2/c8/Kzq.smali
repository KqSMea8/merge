.class public Lc8/Kzq;
.super Lc8/Omq;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Tzq;->forEach(Lc8/inq;)V
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

.field final synthetic val$exceptionFromOnError:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$onNext:Lc8/inq;


# direct methods
.method constructor <init>(Lc8/Tzq;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Lc8/inq;)V
    .locals 0

    .prologue
    .line 113
    .local p0, "this":Lc8/Kzq;, "Lrx/observables/BlockingObservable.1;"
    iput-object p1, p0, Lc8/Kzq;->this$0:Lc8/Tzq;

    iput-object p2, p0, Lc8/Kzq;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lc8/Kzq;->val$exceptionFromOnError:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lc8/Kzq;->val$onNext:Lc8/inq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lc8/Kzq;, "Lrx/observables/BlockingObservable.1;"
    iget-object v0, p0, Lc8/Kzq;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 117
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 129
    .local p0, "this":Lc8/Kzq;, "Lrx/observables/BlockingObservable.1;"
    iget-object v0, p0, Lc8/Kzq;->val$exceptionFromOnError:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lc8/Kzq;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 131
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
    .line 135
    .local p0, "this":Lc8/Kzq;, "Lrx/observables/BlockingObservable.1;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Kzq;->val$onNext:Lc8/inq;

    invoke-interface {v0, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 136
    return-void
.end method
