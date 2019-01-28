.class public final Lc8/Tvq;
.super Ljava/lang/Object;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Rvq;,
        Lc8/Svq;,
        Lc8/Qvq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<",
        "Lc8/Vlq",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final size:I

.field final skip:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "skip"    # I

    .prologue
    .line 45
    .local p0, "this":Lc8/Tvq;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lc8/Tvq;->size:I

    .line 47
    iput p2, p0, Lc8/Tvq;->skip:I

    .line 48
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
            "Lc8/Vlq",
            "<TT;>;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lc8/Tvq;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iget v3, p0, Lc8/Tvq;->skip:I

    iget v4, p0, Lc8/Tvq;->size:I

    if-ne v3, v4, :cond_0

    .line 53
    new-instance v0, Lc8/Qvq;

    iget v3, p0, Lc8/Tvq;->size:I

    invoke-direct {v0, p1, v3}, Lc8/Qvq;-><init>(Lc8/Omq;I)V

    .line 55
    .local v0, "parent":Lc8/Qvq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    iget-object v3, v0, Lc8/Qvq;->cancel:Lc8/Pmq;

    invoke-virtual {p1, v3}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 56
    invoke-virtual {v0}, Lc8/Qvq;->createProducer()Lc8/Xlq;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 74
    .end local v0    # "parent":Lc8/Qvq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    :goto_0
    return-object v0

    .line 60
    :cond_0
    iget v3, p0, Lc8/Tvq;->skip:I

    iget v4, p0, Lc8/Tvq;->size:I

    if-le v3, v4, :cond_1

    .line 61
    new-instance v2, Lc8/Svq;

    iget v3, p0, Lc8/Tvq;->size:I

    iget v4, p0, Lc8/Tvq;->skip:I

    invoke-direct {v2, p1, v3, v4}, Lc8/Svq;-><init>(Lc8/Omq;II)V

    .line 63
    .local v2, "parent":Lc8/Svq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    iget-object v3, v2, Lc8/Svq;->cancel:Lc8/Pmq;

    invoke-virtual {p1, v3}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 64
    invoke-virtual {v2}, Lc8/Svq;->createProducer()Lc8/Xlq;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    move-object v0, v2

    .line 66
    goto :goto_0

    .line 69
    .end local v2    # "parent":Lc8/Svq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    :cond_1
    new-instance v1, Lc8/Rvq;

    iget v3, p0, Lc8/Tvq;->size:I

    iget v4, p0, Lc8/Tvq;->skip:I

    invoke-direct {v1, p1, v3, v4}, Lc8/Rvq;-><init>(Lc8/Omq;II)V

    .line 71
    .local v1, "parent":Lc8/Rvq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v3, v1, Lc8/Rvq;->cancel:Lc8/Pmq;

    invoke-virtual {p1, v3}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 72
    invoke-virtual {v1}, Lc8/Rvq;->createProducer()Lc8/Xlq;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    move-object v0, v1

    .line 74
    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lc8/Tvq;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Tvq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
