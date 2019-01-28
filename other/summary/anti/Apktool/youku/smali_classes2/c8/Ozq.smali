.class public Lc8/Ozq;
.super Lc8/Omq;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Tzq;->subscribe(Lc8/Wlq;)V
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

.field final synthetic val$nl:Lc8/cpq;

.field final synthetic val$queue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lc8/Tzq;Ljava/util/concurrent/BlockingQueue;Lc8/cpq;)V
    .locals 0

    .prologue
    .line 513
    .local p0, "this":Lc8/Ozq;, "Lrx/observables/BlockingObservable.5;"
    iput-object p1, p0, Lc8/Ozq;->this$0:Lc8/Tzq;

    iput-object p2, p0, Lc8/Ozq;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lc8/Ozq;->val$nl:Lc8/cpq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 524
    .local p0, "this":Lc8/Ozq;, "Lrx/observables/BlockingObservable.5;"
    iget-object v0, p0, Lc8/Ozq;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lc8/Ozq;->val$nl:Lc8/cpq;

    invoke-virtual {v1}, Lc8/cpq;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 525
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 520
    .local p0, "this":Lc8/Ozq;, "Lrx/observables/BlockingObservable.5;"
    iget-object v0, p0, Lc8/Ozq;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lc8/Ozq;->val$nl:Lc8/cpq;

    invoke-virtual {v1, p1}, Lc8/cpq;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 521
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, "this":Lc8/Ozq;, "Lrx/observables/BlockingObservable.5;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Ozq;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lc8/Ozq;->val$nl:Lc8/cpq;

    invoke-virtual {v1, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 517
    return-void
.end method
