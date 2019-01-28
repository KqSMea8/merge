.class public Lc8/Ezq;
.super Lc8/Omq;
.source "AsyncOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gzq;->subscribeBufferToObservable(Lc8/Vlq;)V
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
.field remaining:J

.field final synthetic this$0:Lc8/Gzq;

.field final synthetic val$buffer:Lc8/Coq;

.field final synthetic val$expected:J


# direct methods
.method constructor <init>(Lc8/Gzq;JLc8/Coq;)V
    .locals 2

    .prologue
    .line 601
    .local p0, "this":Lc8/Ezq;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager.1;"
    iput-object p1, p0, Lc8/Ezq;->this$0:Lc8/Gzq;

    iput-wide p2, p0, Lc8/Ezq;->val$expected:J

    iput-object p4, p0, Lc8/Ezq;->val$buffer:Lc8/Coq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 602
    iget-wide v0, p0, Lc8/Ezq;->val$expected:J

    iput-wide v0, p0, Lc8/Ezq;->remaining:J

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 614
    .local p0, "this":Lc8/Ezq;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager.1;"
    iget-object v2, p0, Lc8/Ezq;->val$buffer:Lc8/Coq;

    invoke-virtual {v2}, Lc8/Coq;->onCompleted()V

    .line 615
    iget-wide v0, p0, Lc8/Ezq;->remaining:J

    .line 616
    .local v0, "r":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 617
    iget-object v2, p0, Lc8/Ezq;->this$0:Lc8/Gzq;

    invoke-virtual {v2, v0, v1}, Lc8/Gzq;->requestRemaining(J)V

    .line 619
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 610
    .local p0, "this":Lc8/Ezq;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager.1;"
    iget-object v0, p0, Lc8/Ezq;->val$buffer:Lc8/Coq;

    invoke-virtual {v0, p1}, Lc8/Coq;->onError(Ljava/lang/Throwable;)V

    .line 611
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, "this":Lc8/Ezq;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-wide v0, p0, Lc8/Ezq;->remaining:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lc8/Ezq;->remaining:J

    .line 606
    iget-object v0, p0, Lc8/Ezq;->val$buffer:Lc8/Coq;

    invoke-virtual {v0, p1}, Lc8/Coq;->onNext(Ljava/lang/Object;)V

    .line 607
    return-void
.end method
