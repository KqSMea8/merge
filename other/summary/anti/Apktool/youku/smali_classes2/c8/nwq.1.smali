.class public final Lc8/nwq;
.super Ljava/lang/Object;
.source "OperatorWithLatestFromMany.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/mwq;,
        Lc8/lwq;
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
.field final combiner:Lc8/Rnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Rnq",
            "<TR;>;"
        }
    .end annotation
.end field

.field final main:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final others:[Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lc8/Vlq",
            "<*>;"
        }
    .end annotation
.end field

.field final othersIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lc8/Vlq",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Vlq;[Lc8/Vlq;Ljava/lang/Iterable;Lc8/Rnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;[",
            "Lc8/Vlq",
            "<*>;",
            "Ljava/lang/Iterable",
            "<",
            "Lc8/Vlq",
            "<*>;>;",
            "Lc8/Rnq",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lc8/nwq;, "Lrx/internal/operators/OperatorWithLatestFromMany<TT;TR;>;"
    .local p1, "main":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p2, "others":[Lc8/Vlq;, "[Lrx/Observable<*>;"
    .local p3, "othersIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lrx/Observable<*>;>;"
    .local p4, "combiner":Lc8/Rnq;, "Lrx/functions/FuncN<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lc8/nwq;->main:Lc8/Vlq;

    .line 39
    iput-object p2, p0, Lc8/nwq;->others:[Lc8/Vlq;

    .line 40
    iput-object p3, p0, Lc8/nwq;->othersIterable:Ljava/lang/Iterable;

    .line 41
    iput-object p4, p0, Lc8/nwq;->combiner:Lc8/Rnq;

    .line 42
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lc8/nwq;, "Lrx/internal/operators/OperatorWithLatestFromMany<TT;TR;>;"
    .local p1, "t":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    new-instance v7, Lc8/qAq;

    invoke-direct {v7, p1}, Lc8/qAq;-><init>(Lc8/Omq;)V

    .line 50
    .local v7, "serial":Lc8/qAq;, "Lrx/observers/SerializedSubscriber<TR;>;"
    const/4 v3, 0x0

    .line 52
    .local v3, "n":I
    iget-object v9, p0, Lc8/nwq;->others:[Lc8/Vlq;

    if-eqz v9, :cond_1

    .line 53
    iget-object v8, p0, Lc8/nwq;->others:[Lc8/Vlq;

    .line 54
    .local v8, "sources":[Lc8/Vlq;, "[Lrx/Observable<*>;"
    array-length v3, v8

    .line 65
    :cond_0
    new-instance v6, Lc8/lwq;

    iget-object v9, p0, Lc8/nwq;->combiner:Lc8/Rnq;

    invoke-direct {v6, p1, v9, v3}, Lc8/lwq;-><init>(Lc8/Omq;Lc8/Rnq;I)V

    .line 67
    .local v6, "parent":Lc8/lwq;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    invoke-virtual {v7, v6}, Lc8/qAq;->add(Lc8/Pmq;)V

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 71
    invoke-virtual {v7}, Lc8/qAq;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 83
    :goto_1
    return-void

    .line 56
    .end local v0    # "i":I
    .end local v6    # "parent":Lc8/lwq;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    .end local v8    # "sources":[Lc8/Vlq;, "[Lrx/Observable<*>;"
    :cond_1
    const/16 v9, 0x8

    new-array v8, v9, [Lc8/Vlq;

    .line 57
    .restart local v8    # "sources":[Lc8/Vlq;, "[Lrx/Observable<*>;"
    iget-object v9, p0, Lc8/nwq;->othersIterable:Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Vlq;

    .line 58
    .local v5, "o":Lc8/Vlq;, "Lrx/Observable<*>;"
    array-length v9, v8

    if-ne v3, v9, :cond_2

    .line 59
    shr-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v3

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "sources":[Lc8/Vlq;, "[Lrx/Observable<*>;"
    check-cast v8, [Lc8/Vlq;

    .line 61
    .restart local v8    # "sources":[Lc8/Vlq;, "[Lrx/Observable<*>;"
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "n":I
    .local v4, "n":I
    aput-object v5, v8, v3

    move v3, v4

    .line 62
    .end local v4    # "n":I
    .restart local v3    # "n":I
    goto :goto_2

    .line 75
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "o":Lc8/Vlq;, "Lrx/Observable<*>;"
    .restart local v0    # "i":I
    .restart local v6    # "parent":Lc8/lwq;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    :cond_3
    new-instance v2, Lc8/mwq;

    add-int/lit8 v9, v0, 0x1

    invoke-direct {v2, v6, v9}, Lc8/mwq;-><init>(Lc8/lwq;I)V

    .line 76
    .local v2, "inner":Lc8/mwq;
    invoke-virtual {v6, v2}, Lc8/lwq;->add(Lc8/Pmq;)V

    .line 78
    aget-object v5, v8, v0

    .line 79
    .restart local v5    # "o":Lc8/Vlq;, "Lrx/Observable<*>;"
    invoke-virtual {v5, v2}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v2    # "inner":Lc8/mwq;
    .end local v5    # "o":Lc8/Vlq;, "Lrx/Observable<*>;"
    :cond_4
    iget-object v9, p0, Lc8/nwq;->main:Lc8/Vlq;

    invoke-virtual {v9, v6}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    goto :goto_1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lc8/nwq;, "Lrx/internal/operators/OperatorWithLatestFromMany<TT;TR;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/nwq;->call(Lc8/Omq;)V

    return-void
.end method
