.class public Lc8/Pzq;
.super Lc8/Omq;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Tzq;->subscribe(Lc8/Omq;)V
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

.field final synthetic val$theProducer:[Lc8/Xlq;


# direct methods
.method constructor <init>(Lc8/Tzq;Ljava/util/concurrent/BlockingQueue;Lc8/cpq;[Lc8/Xlq;)V
    .locals 0

    .prologue
    .line 559
    .local p0, "this":Lc8/Pzq;, "Lrx/observables/BlockingObservable.6;"
    iput-object p1, p0, Lc8/Pzq;->this$0:Lc8/Tzq;

    iput-object p2, p0, Lc8/Pzq;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lc8/Pzq;->val$nl:Lc8/cpq;

    iput-object p4, p0, Lc8/Pzq;->val$theProducer:[Lc8/Xlq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 570
    .local p0, "this":Lc8/Pzq;, "Lrx/observables/BlockingObservable.6;"
    iget-object v0, p0, Lc8/Pzq;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lc8/Pzq;->val$nl:Lc8/cpq;

    invoke-virtual {v1}, Lc8/cpq;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 571
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 566
    .local p0, "this":Lc8/Pzq;, "Lrx/observables/BlockingObservable.6;"
    iget-object v0, p0, Lc8/Pzq;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lc8/Pzq;->val$nl:Lc8/cpq;

    invoke-virtual {v1, p1}, Lc8/cpq;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 567
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
    .line 562
    .local p0, "this":Lc8/Pzq;, "Lrx/observables/BlockingObservable.6;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Pzq;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lc8/Pzq;->val$nl:Lc8/cpq;

    invoke-virtual {v1, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 563
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 581
    .local p0, "this":Lc8/Pzq;, "Lrx/observables/BlockingObservable.6;"
    iget-object v0, p0, Lc8/Pzq;->val$queue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lc8/Tzq;->ON_START:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 582
    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 2
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 575
    .local p0, "this":Lc8/Pzq;, "Lrx/observables/BlockingObservable.6;"
    iget-object v0, p0, Lc8/Pzq;->val$theProducer:[Lc8/Xlq;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 576
    iget-object v0, p0, Lc8/Pzq;->val$queue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lc8/Tzq;->SET_PRODUCER:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 577
    return-void
.end method
