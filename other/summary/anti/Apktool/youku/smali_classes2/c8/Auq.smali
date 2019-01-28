.class public final Lc8/Auq;
.super Lc8/Omq;
.source "OperatorSwitchIfEmpty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Buq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParentSubscriber"
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
.field private final alternate:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final arbiter:Lc8/Jwq;

.field private final child:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private empty:Z

.field private final ssub:Lc8/YBq;


# direct methods
.method constructor <init>(Lc8/Omq;Lc8/YBq;Lc8/Jwq;Lc8/Vlq;)V
    .locals 1
    .param p2, "ssub"    # Lc8/YBq;
    .param p3, "arbiter"    # Lc8/Jwq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;",
            "Lc8/YBq;",
            "Lc8/Jwq;",
            "Lc8/Vlq",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lc8/Auq;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .local p4, "alternate":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Auq;->empty:Z

    .line 56
    iput-object p1, p0, Lc8/Auq;->child:Lc8/Omq;

    .line 57
    iput-object p2, p0, Lc8/Auq;->ssub:Lc8/YBq;

    .line 58
    iput-object p3, p0, Lc8/Auq;->arbiter:Lc8/Jwq;

    .line 59
    iput-object p4, p0, Lc8/Auq;->alternate:Lc8/Vlq;

    .line 60
    return-void
.end method

.method private subscribeToAlternate()V
    .locals 3

    .prologue
    .line 77
    .local p0, "this":Lc8/Auq;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    new-instance v0, Lc8/zuq;

    iget-object v1, p0, Lc8/Auq;->child:Lc8/Omq;

    iget-object v2, p0, Lc8/Auq;->arbiter:Lc8/Jwq;

    invoke-direct {v0, v1, v2}, Lc8/zuq;-><init>(Lc8/Omq;Lc8/Jwq;)V

    .line 78
    .local v0, "as":Lc8/zuq;, "Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber<TT;>;"
    iget-object v1, p0, Lc8/Auq;->ssub:Lc8/YBq;

    invoke-virtual {v1, v0}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 79
    iget-object v1, p0, Lc8/Auq;->alternate:Lc8/Vlq;

    invoke-virtual {v1, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 80
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lc8/Auq;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    iget-boolean v0, p0, Lc8/Auq;->empty:Z

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lc8/Auq;->child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lc8/Auq;->child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lc8/Auq;->subscribeToAlternate()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    .local p0, "this":Lc8/Auq;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Auq;->child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 85
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
    .line 89
    .local p0, "this":Lc8/Auq;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Auq;->empty:Z

    .line 90
    iget-object v0, p0, Lc8/Auq;->child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lc8/Auq;->arbiter:Lc8/Jwq;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lc8/Jwq;->produced(J)V

    .line 92
    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "producer"    # Lc8/Xlq;

    .prologue
    .line 64
    .local p0, "this":Lc8/Auq;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Auq;->arbiter:Lc8/Jwq;

    invoke-virtual {v0, p1}, Lc8/Jwq;->setProducer(Lc8/Xlq;)V

    .line 65
    return-void
.end method
