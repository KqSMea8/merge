.class public final Lc8/zuq;
.super Lc8/Omq;
.source "OperatorSwitchIfEmpty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Buq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final arbiter:Lc8/Jwq;

.field private final child:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/Omq;Lc8/Jwq;)V
    .locals 0
    .param p2, "arbiter"    # Lc8/Jwq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;",
            "Lc8/Jwq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lc8/zuq;, "Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 101
    iput-object p1, p0, Lc8/zuq;->child:Lc8/Omq;

    .line 102
    iput-object p2, p0, Lc8/zuq;->arbiter:Lc8/Jwq;

    .line 103
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lc8/zuq;, "Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber<TT;>;"
    iget-object v0, p0, Lc8/zuq;->child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 113
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 117
    .local p0, "this":Lc8/zuq;, "Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber<TT;>;"
    iget-object v0, p0, Lc8/zuq;->child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 118
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
    .line 122
    .local p0, "this":Lc8/zuq;, "Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/zuq;->child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lc8/zuq;->arbiter:Lc8/Jwq;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lc8/Jwq;->produced(J)V

    .line 124
    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "producer"    # Lc8/Xlq;

    .prologue
    .line 107
    .local p0, "this":Lc8/zuq;, "Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber<TT;>;"
    iget-object v0, p0, Lc8/zuq;->arbiter:Lc8/Jwq;

    invoke-virtual {v0, p1}, Lc8/Jwq;->setProducer(Lc8/Xlq;)V

    .line 108
    return-void
.end method
