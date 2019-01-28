.class public final Lc8/frq;
.super Ljava/lang/Object;
.source "OperatorBufferWithSingleObservable.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/erq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "TClosing:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final bufferClosingSelector:Lc8/Hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<+TTClosing;>;>;"
        }
    .end annotation
.end field

.field final initialCapacity:I


# direct methods
.method public constructor <init>(Lc8/Hnq;I)V
    .locals 0
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<+TTClosing;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lc8/frq;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>;"
    .local p1, "bufferClosingSelector":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/Observable<+TTClosing;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lc8/frq;->bufferClosingSelector:Lc8/Hnq;

    .line 57
    iput p2, p0, Lc8/frq;->initialCapacity:I

    .line 58
    return-void
.end method

.method public constructor <init>(Lc8/Vlq;I)V
    .locals 1
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TTClosing;>;I)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lc8/frq;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>;"
    .local p1, "bufferClosing":Lc8/Vlq;, "Lrx/Observable<+TTClosing;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lc8/crq;

    invoke-direct {v0, p0, p1}, Lc8/crq;-><init>(Lc8/frq;Lc8/Vlq;)V

    iput-object v0, p0, Lc8/frq;->bufferClosingSelector:Lc8/Hnq;

    .line 73
    iput p2, p0, Lc8/frq;->initialCapacity:I

    .line 74
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lc8/frq;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    :try_start_0
    iget-object v4, p0, Lc8/frq;->bufferClosingSelector:Lc8/Hnq;

    invoke-interface {v4}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Vlq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .local v1, "closing":Lc8/Vlq;, "Lrx/Observable<+TTClosing;>;"
    new-instance v0, Lc8/erq;

    new-instance v4, Lc8/qAq;

    invoke-direct {v4, p1}, Lc8/qAq;-><init>(Lc8/Omq;)V

    invoke-direct {v0, p0, v4}, Lc8/erq;-><init>(Lc8/frq;Lc8/Omq;)V

    .line 87
    .local v0, "bsub":Lc8/erq;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>.BufferingSubscriber;"
    new-instance v2, Lc8/drq;

    invoke-direct {v2, p0, v0}, Lc8/drq;-><init>(Lc8/frq;Lc8/erq;)V

    .line 105
    .local v2, "closingSubscriber":Lc8/Omq;, "Lrx/Subscriber<TTClosing;>;"
    invoke-virtual {p1, v2}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 106
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 108
    invoke-virtual {v1, v2}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 110
    .end local v0    # "bsub":Lc8/erq;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>.BufferingSubscriber;"
    .end local v1    # "closing":Lc8/Vlq;, "Lrx/Observable<+TTClosing;>;"
    .end local v2    # "closingSubscriber":Lc8/Omq;, "Lrx/Subscriber<TTClosing;>;"
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v3

    .line 82
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v3, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    .line 83
    invoke-static {}, Lc8/wAq;->empty()Lc8/Omq;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Lc8/frq;, "Lrx/internal/operators/OperatorBufferWithSingleObservable<TT;TTClosing;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/frq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
