.class public final Lc8/Dtq;
.super Lc8/Omq;
.source "OperatorRetryWithPredicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Etq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<",
        "Lc8/Vlq",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final attempts:Ljava/util/concurrent/atomic/AtomicInteger;

.field final child:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final inner:Lc8/Zlq;

.field final pa:Lc8/Jwq;

.field final predicate:Lc8/Jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Jnq",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final serialSubscription:Lc8/YBq;


# direct methods
.method public constructor <init>(Lc8/Omq;Lc8/Jnq;Lc8/Zlq;Lc8/YBq;Lc8/Jwq;)V
    .locals 1
    .param p3, "inner"    # Lc8/Zlq;
    .param p4, "serialSubscription"    # Lc8/YBq;
    .param p5, "pa"    # Lc8/Jwq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;",
            "Lc8/Jnq",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lc8/Zlq;",
            "Lc8/YBq;",
            "Lc8/Jwq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lc8/Dtq;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .local p2, "predicate":Lc8/Jnq;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/Dtq;->attempts:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    iput-object p1, p0, Lc8/Dtq;->child:Lc8/Omq;

    .line 60
    iput-object p2, p0, Lc8/Dtq;->predicate:Lc8/Jnq;

    .line 61
    iput-object p3, p0, Lc8/Dtq;->inner:Lc8/Zlq;

    .line 62
    iput-object p4, p0, Lc8/Dtq;->serialSubscription:Lc8/YBq;

    .line 63
    iput-object p5, p0, Lc8/Dtq;->pa:Lc8/Jwq;

    .line 64
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 70
    .local p0, "this":Lc8/Dtq;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    .local p0, "this":Lc8/Dtq;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Dtq;->child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public onNext(Lc8/Vlq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lc8/Dtq;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber<TT;>;"
    .local p1, "o":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    iget-object v0, p0, Lc8/Dtq;->inner:Lc8/Zlq;

    new-instance v1, Lc8/Ctq;

    invoke-direct {v1, p0, p1}, Lc8/Ctq;-><init>(Lc8/Dtq;Lc8/Vlq;)V

    invoke-virtual {v0, v1}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    .line 130
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Lc8/Dtq;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber<TT;>;"
    check-cast p1, Lc8/Vlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Dtq;->onNext(Lc8/Vlq;)V

    return-void
.end method
