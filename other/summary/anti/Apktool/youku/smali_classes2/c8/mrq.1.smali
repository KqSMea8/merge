.class public Lc8/mrq;
.super Lc8/Omq;
.source "OperatorBufferWithStartEndObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nrq;->startBuffer(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TTClosing;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/nrq;

.field final synthetic val$chunk:Ljava/util/List;


# direct methods
.method constructor <init>(Lc8/nrq;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 170
    .local p0, "this":Lc8/mrq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber.1;"
    iput-object p1, p0, Lc8/mrq;->this$1:Lc8/nrq;

    iput-object p2, p0, Lc8/mrq;->val$chunk:Ljava/util/List;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 185
    .local p0, "this":Lc8/mrq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber.1;"
    iget-object v0, p0, Lc8/mrq;->this$1:Lc8/nrq;

    iget-object v0, v0, Lc8/nrq;->closingSubscriptions:Lc8/SBq;

    invoke-virtual {v0, p0}, Lc8/SBq;->remove(Lc8/Pmq;)V

    .line 186
    iget-object v0, p0, Lc8/mrq;->this$1:Lc8/nrq;

    iget-object v1, p0, Lc8/mrq;->val$chunk:Ljava/util/List;

    invoke-virtual {v0, v1}, Lc8/nrq;->endBuffer(Ljava/util/List;)V

    .line 187
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 180
    .local p0, "this":Lc8/mrq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber.1;"
    iget-object v0, p0, Lc8/mrq;->this$1:Lc8/nrq;

    invoke-virtual {v0, p1}, Lc8/nrq;->onError(Ljava/lang/Throwable;)V

    .line 181
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTClosing;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lc8/mrq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber.1;"
    .local p1, "t":Ljava/lang/Object;, "TTClosing;"
    iget-object v0, p0, Lc8/mrq;->this$1:Lc8/nrq;

    iget-object v0, v0, Lc8/nrq;->closingSubscriptions:Lc8/SBq;

    invoke-virtual {v0, p0}, Lc8/SBq;->remove(Lc8/Pmq;)V

    .line 175
    iget-object v0, p0, Lc8/mrq;->this$1:Lc8/nrq;

    iget-object v1, p0, Lc8/mrq;->val$chunk:Ljava/util/List;

    invoke-virtual {v0, v1}, Lc8/nrq;->endBuffer(Ljava/util/List;)V

    .line 176
    return-void
.end method
