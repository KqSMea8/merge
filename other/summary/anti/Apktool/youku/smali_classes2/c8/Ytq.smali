.class public Lc8/Ytq;
.super Lc8/Omq;
.source "OperatorSkip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ztq;->call(Lc8/Omq;)Lc8/Omq;
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
.field skipped:I

.field final synthetic this$0:Lc8/Ztq;

.field final synthetic val$child:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Ztq;Lc8/Omq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 43
    .local p0, "this":Lc8/Ytq;, "Lrx/internal/operators/OperatorSkip.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/Ytq;->this$0:Lc8/Ztq;

    iput-object p3, p0, Lc8/Ytq;->val$child:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lc8/Ytq;, "Lrx/internal/operators/OperatorSkip.1;"
    iget-object v0, p0, Lc8/Ytq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 50
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    .local p0, "this":Lc8/Ytq;, "Lrx/internal/operators/OperatorSkip.1;"
    iget-object v0, p0, Lc8/Ytq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 55
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
    .line 59
    .local p0, "this":Lc8/Ytq;, "Lrx/internal/operators/OperatorSkip.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lc8/Ytq;->skipped:I

    iget-object v1, p0, Lc8/Ytq;->this$0:Lc8/Ztq;

    iget v1, v1, Lc8/Ztq;->toSkip:I

    if-lt v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lc8/Ytq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget v0, p0, Lc8/Ytq;->skipped:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/Ytq;->skipped:I

    goto :goto_0
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 2
    .param p1, "producer"    # Lc8/Xlq;

    .prologue
    .line 68
    .local p0, "this":Lc8/Ytq;, "Lrx/internal/operators/OperatorSkip.1;"
    iget-object v0, p0, Lc8/Ytq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 69
    iget-object v0, p0, Lc8/Ytq;->this$0:Lc8/Ztq;

    iget v0, v0, Lc8/Ztq;->toSkip:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lc8/Xlq;->request(J)V

    .line 70
    return-void
.end method
