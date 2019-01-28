.class public final Lc8/orq;
.super Ljava/lang/Object;
.source "OperatorBufferWithStartEndObservable.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/nrq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "TOpening:",
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
.field final bufferClosing:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TTOpening;+",
            "Lc8/Vlq",
            "<+TTClosing;>;>;"
        }
    .end annotation
.end field

.field final bufferOpening:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TTOpening;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Vlq;Lc8/Inq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TTOpening;>;",
            "Lc8/Inq",
            "<-TTOpening;+",
            "Lc8/Vlq",
            "<+TTClosing;>;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lc8/orq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>;"
    .local p1, "bufferOpenings":Lc8/Vlq;, "Lrx/Observable<+TTOpening;>;"
    .local p2, "bufferClosingSelector":Lc8/Inq;, "Lrx/functions/Func1<-TTOpening;+Lrx/Observable<+TTClosing;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lc8/orq;->bufferOpening:Lc8/Vlq;

    .line 64
    iput-object p2, p0, Lc8/orq;->bufferClosing:Lc8/Inq;

    .line 65
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 3
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
    .line 70
    .local p0, "this":Lc8/orq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    new-instance v0, Lc8/nrq;

    new-instance v2, Lc8/qAq;

    invoke-direct {v2, p1}, Lc8/qAq;-><init>(Lc8/Omq;)V

    invoke-direct {v0, p0, v2}, Lc8/nrq;-><init>(Lc8/orq;Lc8/Omq;)V

    .line 72
    .local v0, "bsub":Lc8/nrq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>.BufferingSubscriber;"
    new-instance v1, Lc8/lrq;

    invoke-direct {v1, p0, v0}, Lc8/lrq;-><init>(Lc8/orq;Lc8/nrq;)V

    .line 90
    .local v1, "openSubscriber":Lc8/Omq;, "Lrx/Subscriber<TTOpening;>;"
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 91
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 93
    iget-object v2, p0, Lc8/orq;->bufferOpening:Lc8/Vlq;

    invoke-virtual {v2, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 95
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    .local p0, "this":Lc8/orq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/orq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
