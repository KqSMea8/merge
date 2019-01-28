.class public final Lc8/krq;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/irq;,
        Lc8/jrq;,
        Lc8/hrq;
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
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final count:I

.field final skip:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "skip"    # I

    .prologue
    .line 53
    .local p0, "this":Lc8/krq;, "Lrx/internal/operators/OperatorBufferWithSize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-gtz p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "count must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-gtz p2, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "skip must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iput p1, p0, Lc8/krq;->count:I

    .line 61
    iput p2, p0, Lc8/krq;->skip:I

    .line 62
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
    .line 66
    .local p0, "this":Lc8/krq;, "Lrx/internal/operators/OperatorBufferWithSize<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    iget v3, p0, Lc8/krq;->skip:I

    iget v4, p0, Lc8/krq;->count:I

    if-ne v3, v4, :cond_0

    .line 67
    new-instance v0, Lc8/hrq;

    iget v3, p0, Lc8/krq;->count:I

    invoke-direct {v0, p1, v3}, Lc8/hrq;-><init>(Lc8/Omq;I)V

    .line 69
    .local v0, "parent":Lc8/hrq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 70
    invoke-virtual {v0}, Lc8/hrq;->createProducer()Lc8/Xlq;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 87
    .end local v0    # "parent":Lc8/hrq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    :goto_0
    return-object v0

    .line 74
    :cond_0
    iget v3, p0, Lc8/krq;->skip:I

    iget v4, p0, Lc8/krq;->count:I

    if-le v3, v4, :cond_1

    .line 75
    new-instance v2, Lc8/jrq;

    iget v3, p0, Lc8/krq;->count:I

    iget v4, p0, Lc8/krq;->skip:I

    invoke-direct {v2, p1, v3, v4}, Lc8/jrq;-><init>(Lc8/Omq;II)V

    .line 77
    .local v2, "parent":Lc8/jrq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    invoke-virtual {p1, v2}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 78
    invoke-virtual {v2}, Lc8/jrq;->createProducer()Lc8/Xlq;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    move-object v0, v2

    .line 80
    goto :goto_0

    .line 82
    .end local v2    # "parent":Lc8/jrq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    :cond_1
    new-instance v1, Lc8/irq;

    iget v3, p0, Lc8/krq;->count:I

    iget v4, p0, Lc8/krq;->skip:I

    invoke-direct {v1, p1, v3, v4}, Lc8/irq;-><init>(Lc8/Omq;II)V

    .line 84
    .local v1, "parent":Lc8/irq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 85
    invoke-virtual {v1}, Lc8/irq;->createProducer()Lc8/Xlq;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    move-object v0, v1

    .line 87
    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    .local p0, "this":Lc8/krq;, "Lrx/internal/operators/OperatorBufferWithSize<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/krq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
