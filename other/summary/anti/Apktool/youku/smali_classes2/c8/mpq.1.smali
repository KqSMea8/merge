.class public final Lc8/mpq;
.super Ljava/lang/Object;
.source "OnSubscribeCombineLatest.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/lpq;,
        Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;
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
        "Lc8/Rlq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final combiner:Lc8/Rnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Rnq",
            "<+TR;>;"
        }
    .end annotation
.end field

.field final delayError:Z

.field final sources:[Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lc8/Vlq",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final sourcesIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lc8/Rnq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;",
            "Lc8/Rnq",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lc8/mpq;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    .local p1, "sourcesIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    .local p2, "combiner":Lc8/Rnq;, "Lrx/functions/FuncN<+TR;>;"
    const/4 v1, 0x0

    sget v4, Lc8/fyq;->SIZE:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lc8/mpq;-><init>([Lc8/Vlq;Ljava/lang/Iterable;Lc8/Rnq;IZ)V

    .line 38
    return-void
.end method

.method public constructor <init>([Lc8/Vlq;Ljava/lang/Iterable;Lc8/Rnq;IZ)V
    .locals 0
    .param p4, "bufferSize"    # I
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lc8/Vlq",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;",
            "Lc8/Rnq",
            "<+TR;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lc8/mpq;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    .local p1, "sources":[Lc8/Vlq;, "[Lrx/Observable<+TT;>;"
    .local p2, "sourcesIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    .local p3, "combiner":Lc8/Rnq;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lc8/mpq;->sources:[Lc8/Vlq;

    .line 45
    iput-object p2, p0, Lc8/mpq;->sourcesIterable:Ljava/lang/Iterable;

    .line 46
    iput-object p3, p0, Lc8/mpq;->combiner:Lc8/Rnq;

    .line 47
    iput p4, p0, Lc8/mpq;->bufferSize:I

    .line 48
    iput-boolean p5, p0, Lc8/mpq;->delayError:Z

    .line 49
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/mpq;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    .local p1, "s":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    const/4 v2, 0x0

    .line 55
    iget-object v11, p0, Lc8/mpq;->sources:[Lc8/Vlq;

    .line 56
    .local v11, "sources":[Lc8/Vlq;, "[Lrx/Observable<+TT;>;"
    const/4 v3, 0x0

    .line 57
    .local v3, "count":I
    if-nez v11, :cond_3

    .line 58
    iget-object v1, p0, Lc8/mpq;->sourcesIterable:Ljava/lang/Iterable;

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 60
    iget-object v9, p0, Lc8/mpq;->sourcesIterable:Ljava/lang/Iterable;

    check-cast v9, Ljava/util/List;

    .line 61
    .local v9, "list":Ljava/util/List;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lc8/Vlq;

    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "sources":[Lc8/Vlq;, "[Lrx/Observable<+TT;>;"
    check-cast v11, [Lc8/Vlq;

    .line 62
    .restart local v11    # "sources":[Lc8/Vlq;, "[Lrx/Observable<+TT;>;"
    array-length v3, v11

    .line 78
    .end local v9    # "list":Ljava/util/List;
    :cond_0
    :goto_0
    if-nez v3, :cond_4

    .line 79
    invoke-virtual {p1}, Lc8/Omq;->onCompleted()V

    .line 85
    :goto_1
    return-void

    .line 64
    :cond_1
    const/16 v1, 0x8

    new-array v11, v1, [Lc8/Vlq;

    .line 65
    iget-object v1, p0, Lc8/mpq;->sourcesIterable:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc8/Vlq;

    .line 66
    .local v10, "p":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    array-length v1, v11

    if-ne v3, v1, :cond_2

    .line 67
    shr-int/lit8 v1, v3, 0x2

    add-int/2addr v1, v3

    new-array v6, v1, [Lc8/Vlq;

    .line 68
    .local v6, "b":[Lc8/Vlq;, "[Lrx/Observable<+TT;>;"
    invoke-static {v11, v2, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    move-object v11, v6

    .line 71
    .end local v6    # "b":[Lc8/Vlq;, "[Lrx/Observable<+TT;>;"
    :cond_2
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "count":I
    .local v7, "count":I
    aput-object v10, v11, v3

    move v3, v7

    .line 72
    .end local v7    # "count":I
    .restart local v3    # "count":I
    goto :goto_2

    .line 75
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "p":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    :cond_3
    array-length v3, v11

    goto :goto_0

    .line 83
    :cond_4
    new-instance v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    iget-object v2, p0, Lc8/mpq;->combiner:Lc8/Rnq;

    iget v4, p0, Lc8/mpq;->bufferSize:I

    iget-boolean v5, p0, Lc8/mpq;->delayError:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;-><init>(Lc8/Omq;Lc8/Rnq;IIZ)V

    .line 84
    .local v0, "lc":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    invoke-virtual {v0, v11}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->subscribe([Lc8/Vlq;)V

    goto :goto_1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lc8/mpq;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/mpq;->call(Lc8/Omq;)V

    return-void
.end method
