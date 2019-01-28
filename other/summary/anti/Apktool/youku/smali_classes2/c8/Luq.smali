.class public final Lc8/Luq;
.super Lc8/Omq;
.source "OperatorTakeTimed.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Muq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TakeSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;",
        "Lc8/hnq;"
    }
.end annotation


# instance fields
.field final child:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Omq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lc8/Luq;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lc8/Omq;-><init>(Lc8/Omq;)V

    .line 57
    iput-object p1, p0, Lc8/Luq;->child:Lc8/Omq;

    .line 58
    return-void
.end method


# virtual methods
.method public call()V
    .locals 0

    .prologue
    .line 79
    .local p0, "this":Lc8/Luq;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    invoke-virtual {p0}, Lc8/Luq;->onCompleted()V

    .line 80
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lc8/Luq;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Luq;->child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 74
    invoke-virtual {p0}, Lc8/Luq;->unsubscribe()V

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    .local p0, "this":Lc8/Luq;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Luq;->child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 68
    invoke-virtual {p0}, Lc8/Luq;->unsubscribe()V

    .line 69
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
    .line 62
    .local p0, "this":Lc8/Luq;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Luq;->child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 63
    return-void
.end method
