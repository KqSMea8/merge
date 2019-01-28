.class public final Lc8/Jsq;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Hsq;,
        Lc8/Isq;,
        Lrx/internal/operators/OperatorMerge$MergeProducer;,
        Lc8/Fsq;,
        Lc8/Gsq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;",
        "Lc8/Vlq",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final delayErrors:Z

.field final maxConcurrent:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0
    .param p1, "delayErrors"    # Z
    .param p2, "maxConcurrent"    # I

    .prologue
    .line 98
    .local p0, "this":Lc8/Jsq;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-boolean p1, p0, Lc8/Jsq;->delayErrors:Z

    .line 100
    iput p2, p0, Lc8/Jsq;->maxConcurrent:I

    .line 101
    return-void
.end method

.method public static instance(Z)Lc8/Jsq;
    .locals 1
    .param p0, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lc8/Jsq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    if-eqz p0, :cond_0

    .line 77
    sget-object v0, Lc8/Fsq;->INSTANCE:Lc8/Jsq;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/Gsq;->INSTANCE:Lc8/Jsq;

    goto :goto_0
.end method

.method public static instance(ZI)Lc8/Jsq;
    .locals 3
    .param p0, "delayErrors"    # Z
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZI)",
            "Lc8/Jsq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 89
    if-gtz p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxConcurrent > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    .line 93
    invoke-static {p0}, Lc8/Jsq;->instance(Z)Lc8/Jsq;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lc8/Jsq;

    invoke-direct {v0, p0, p1}, Lc8/Jsq;-><init>(ZI)V

    goto :goto_0
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)",
            "Lc8/Omq",
            "<",
            "Lc8/Vlq",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lc8/Jsq;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v1, Lc8/Isq;

    iget-boolean v2, p0, Lc8/Jsq;->delayErrors:Z

    iget v3, p0, Lc8/Jsq;->maxConcurrent:I

    invoke-direct {v1, p1, v2, v3}, Lc8/Isq;-><init>(Lc8/Omq;ZI)V

    .line 106
    .local v1, "subscriber":Lc8/Isq;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorMerge$MergeProducer;-><init>(Lc8/Isq;)V

    .line 107
    .local v0, "producer":Lrx/internal/operators/OperatorMerge$MergeProducer;, "Lrx/internal/operators/OperatorMerge$MergeProducer<TT;>;"
    iput-object v0, v1, Lc8/Isq;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    .line 109
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 110
    invoke-virtual {p1, v0}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 112
    return-object v1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    .local p0, "this":Lc8/Jsq;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Jsq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
