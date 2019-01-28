.class public final Lc8/Hpq;
.super Ljava/lang/Object;
.source "OnSubscribeFlattenIterable.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Gpq;,
        Lc8/Fpq;
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
.field final mapper:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final prefetch:I

.field final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lc8/Vlq;Lc8/Inq;I)V
    .locals 0
    .param p3, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Inq",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lc8/Hpq;, "Lrx/internal/operators/OnSubscribeFlattenIterable<TT;TR;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "mapper":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lc8/Hpq;->source:Lc8/Vlq;

    .line 50
    iput-object p2, p0, Lc8/Hpq;->mapper:Lc8/Inq;

    .line 51
    iput p3, p0, Lc8/Hpq;->prefetch:I

    .line 52
    return-void
.end method

.method public static createFrom(Lc8/Vlq;Lc8/Inq;I)Lc8/Vlq;
    .locals 2
    .param p2, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Inq",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "mapper":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    instance-of v1, p0, Lc8/oyq;

    if-eqz v1, :cond_0

    .line 72
    check-cast p0, Lc8/oyq;

    .end local p0    # "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-virtual {p0}, Lc8/oyq;->get()Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, "scalar":Ljava/lang/Object;, "TT;"
    new-instance v1, Lc8/Gpq;

    invoke-direct {v1, v0, p1}, Lc8/Gpq;-><init>(Ljava/lang/Object;Lc8/Inq;)V

    invoke-static {v1}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v1

    .line 75
    .end local v0    # "scalar":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v1

    .restart local p0    # "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    :cond_0
    new-instance v1, Lc8/Hpq;

    invoke-direct {v1, p0, p1, p2}, Lc8/Hpq;-><init>(Lc8/Vlq;Lc8/Inq;I)V

    invoke-static {v1}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lc8/Hpq;, "Lrx/internal/operators/OnSubscribeFlattenIterable<TT;TR;>;"
    .local p1, "t":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lc8/Fpq;

    iget-object v1, p0, Lc8/Hpq;->mapper:Lc8/Inq;

    iget v2, p0, Lc8/Hpq;->prefetch:I

    invoke-direct {v0, p1, v1, v2}, Lc8/Fpq;-><init>(Lc8/Omq;Lc8/Inq;I)V

    .line 58
    .local v0, "parent":Lc8/Fpq;, "Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 59
    new-instance v1, Lc8/Epq;

    invoke-direct {v1, p0, v0}, Lc8/Epq;-><init>(Lc8/Hpq;Lc8/Fpq;)V

    invoke-virtual {p1, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 66
    iget-object v1, p0, Lc8/Hpq;->source:Lc8/Vlq;

    invoke-virtual {v1, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 67
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    .local p0, "this":Lc8/Hpq;, "Lrx/internal/operators/OnSubscribeFlattenIterable<TT;TR;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Hpq;->call(Lc8/Omq;)V

    return-void
.end method
