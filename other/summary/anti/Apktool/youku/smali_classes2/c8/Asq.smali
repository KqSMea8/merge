.class public final Lc8/Asq;
.super Ljava/lang/Object;
.source "OperatorMapPair.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zsq;,
        Lc8/ysq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<",
        "Lc8/Vlq",
        "<+TR;>;TT;>;"
    }
.end annotation


# instance fields
.field final collectionSelector:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TU;>;>;"
        }
    .end annotation
.end field

.field final resultSelector:Lc8/Jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Jnq",
            "<-TT;-TU;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Inq;Lc8/Jnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TU;>;>;",
            "Lc8/Jnq",
            "<-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lc8/Asq;, "Lrx/internal/operators/OperatorMapPair<TT;TU;TR;>;"
    .local p1, "collectionSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TU;>;>;"
    .local p2, "resultSelector":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lc8/Asq;->collectionSelector:Lc8/Inq;

    .line 61
    iput-object p2, p0, Lc8/Asq;->resultSelector:Lc8/Jnq;

    .line 62
    return-void
.end method

.method public static convertSelector(Lc8/Inq;)Lc8/Inq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TU;>;>;)",
            "Lc8/Inq",
            "<TT;",
            "Lc8/Vlq",
            "<TU;>;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "selector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TU;>;>;"
    new-instance v0, Lc8/xsq;

    invoke-direct {v0, p0}, Lc8/xsq;-><init>(Lc8/Inq;)V

    return-object v0
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<+TR;>;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lc8/Asq;, "Lrx/internal/operators/OperatorMapPair<TT;TU;TR;>;"
    .local p1, "o":Lc8/Omq;, "Lrx/Subscriber<-Lrx/Observable<+TR;>;>;"
    new-instance v0, Lc8/ysq;

    iget-object v1, p0, Lc8/Asq;->collectionSelector:Lc8/Inq;

    iget-object v2, p0, Lc8/Asq;->resultSelector:Lc8/Jnq;

    invoke-direct {v0, p1, v1, v2}, Lc8/ysq;-><init>(Lc8/Omq;Lc8/Inq;Lc8/Jnq;)V

    .line 67
    .local v0, "parent":Lc8/ysq;, "Lrx/internal/operators/OperatorMapPair$MapPairSubscriber<TT;TU;TR;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 68
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lc8/Asq;, "Lrx/internal/operators/OperatorMapPair<TT;TU;TR;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Asq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
