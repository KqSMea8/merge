.class public final Lc8/isq;
.super Ljava/lang/Object;
.source "OperatorEagerConcatMap.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/fsq;,
        Lc8/hsq;,
        Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TR;TT;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final mapper:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field private final maxConcurrent:I


# direct methods
.method public constructor <init>(Lc8/Inq;II)V
    .locals 0
    .param p2, "bufferSize"    # I
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TR;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lc8/isq;, "Lrx/internal/operators/OperatorEagerConcatMap<TT;TR;>;"
    .local p1, "mapper":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lc8/isq;->mapper:Lc8/Inq;

    .line 37
    iput p2, p0, Lc8/isq;->bufferSize:I

    .line 38
    iput p3, p0, Lc8/isq;->maxConcurrent:I

    .line 39
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lc8/isq;, "Lrx/internal/operators/OperatorEagerConcatMap<TT;TR;>;"
    .local p1, "t":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lc8/hsq;

    iget-object v1, p0, Lc8/isq;->mapper:Lc8/Inq;

    iget v2, p0, Lc8/isq;->bufferSize:I

    iget v3, p0, Lc8/isq;->maxConcurrent:I

    invoke-direct {v0, v1, v2, v3, p1}, Lc8/hsq;-><init>(Lc8/Inq;IILc8/Omq;)V

    .line 44
    .local v0, "outer":Lc8/hsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    invoke-virtual {v0}, Lc8/hsq;->init()V

    .line 45
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lc8/isq;, "Lrx/internal/operators/OperatorEagerConcatMap<TT;TR;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/isq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
