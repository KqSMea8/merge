.class public final Lc8/psq;
.super Lc8/Xzq;
.source "OperatorGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qsq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupedUnicast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Xzq",
        "<TK;TT;>;"
    }
.end annotation


# instance fields
.field final state:Lrx/internal/operators/OperatorGroupBy$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorGroupBy$State",
            "<TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lrx/internal/operators/OperatorGroupBy$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lrx/internal/operators/OperatorGroupBy$State",
            "<TT;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "this":Lc8/psq;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "state":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    invoke-direct {p0, p1, p2}, Lc8/Xzq;-><init>(Ljava/lang/Object;Lc8/Rlq;)V

    .line 406
    iput-object p2, p0, Lc8/psq;->state:Lrx/internal/operators/OperatorGroupBy$State;

    .line 407
    return-void
.end method

.method public static createWith(Ljava/lang/Object;ILc8/osq;Z)Lc8/psq;
    .locals 2
    .param p1, "bufferSize"    # I
    .param p3, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Lc8/osq",
            "<*TK;TT;>;Z)",
            "Lc8/psq",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p2, "parent":Lc8/osq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<*TK;TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$State;

    invoke-direct {v0, p1, p2, p0, p3}, Lrx/internal/operators/OperatorGroupBy$State;-><init>(ILc8/osq;Ljava/lang/Object;Z)V

    .line 401
    .local v0, "state":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    new-instance v1, Lc8/psq;

    invoke-direct {v1, p0, v0}, Lc8/psq;-><init>(Ljava/lang/Object;Lrx/internal/operators/OperatorGroupBy$State;)V

    return-object v1
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 418
    .local p0, "this":Lc8/psq;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TT;>;"
    iget-object v0, p0, Lc8/psq;->state:Lrx/internal/operators/OperatorGroupBy$State;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorGroupBy$State;->onComplete()V

    .line 419
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 414
    .local p0, "this":Lc8/psq;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TT;>;"
    iget-object v0, p0, Lc8/psq;->state:Lrx/internal/operators/OperatorGroupBy$State;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorGroupBy$State;->onError(Ljava/lang/Throwable;)V

    .line 415
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
    .line 410
    .local p0, "this":Lc8/psq;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/psq;->state:Lrx/internal/operators/OperatorGroupBy$State;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorGroupBy$State;->onNext(Ljava/lang/Object;)V

    .line 411
    return-void
.end method
