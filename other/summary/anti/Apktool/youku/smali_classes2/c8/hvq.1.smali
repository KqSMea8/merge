.class public Lc8/hvq;
.super Lc8/Omq;
.source "OperatorTimeoutBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ivq;->onTimeout(J)V
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
.field final synthetic this$0:Lc8/ivq;


# direct methods
.method constructor <init>(Lc8/ivq;)V
    .locals 0

    .prologue
    .line 179
    .local p0, "this":Lc8/hvq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber.1;"
    iput-object p1, p0, Lc8/hvq;->this$0:Lc8/ivq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 192
    .local p0, "this":Lc8/hvq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber.1;"
    iget-object v0, p0, Lc8/hvq;->this$0:Lc8/ivq;

    iget-object v0, v0, Lc8/ivq;->serializedSubscriber:Lc8/qAq;

    invoke-virtual {v0}, Lc8/qAq;->onCompleted()V

    .line 193
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 187
    .local p0, "this":Lc8/hvq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber.1;"
    iget-object v0, p0, Lc8/hvq;->this$0:Lc8/ivq;

    iget-object v0, v0, Lc8/ivq;->serializedSubscriber:Lc8/qAq;

    invoke-virtual {v0, p1}, Lc8/qAq;->onError(Ljava/lang/Throwable;)V

    .line 188
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
    .line 182
    .local p0, "this":Lc8/hvq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/hvq;->this$0:Lc8/ivq;

    iget-object v0, v0, Lc8/ivq;->serializedSubscriber:Lc8/qAq;

    invoke-virtual {v0, p1}, Lc8/qAq;->onNext(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 197
    .local p0, "this":Lc8/hvq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber.1;"
    iget-object v0, p0, Lc8/hvq;->this$0:Lc8/ivq;

    iget-object v0, v0, Lc8/ivq;->arbiter:Lc8/Jwq;

    invoke-virtual {v0, p1}, Lc8/Jwq;->setProducer(Lc8/Xlq;)V

    .line 198
    return-void
.end method
