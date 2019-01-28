.class public final Lc8/Lrq;
.super Ljava/lang/Object;
.source "OperatorDelayWithSelector.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final itemDelay:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TT;>;"
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
            "<+TT;>;",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lc8/Lrq;, "Lrx/internal/operators/OperatorDelayWithSelector<TT;TV;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "itemDelay":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lc8/Lrq;->source:Lc8/Vlq;

    .line 39
    iput-object p2, p0, Lc8/Lrq;->itemDelay:Lc8/Inq;

    .line 40
    return-void
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
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lc8/Lrq;, "Lrx/internal/operators/OperatorDelayWithSelector<TT;TV;>;"
    .local p1, "_child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/qAq;

    invoke-direct {v0, p1}, Lc8/qAq;-><init>(Lc8/Omq;)V

    .line 45
    .local v0, "child":Lc8/qAq;, "Lrx/observers/SerializedSubscriber<TT;>;"
    invoke-static {}, Lc8/yBq;->create()Lc8/yBq;

    move-result-object v1

    .line 47
    .local v1, "delayedEmissions":Lc8/yBq;, "Lrx/subjects/PublishSubject<Lrx/Observable<TT;>;>;"
    invoke-static {v1}, Lc8/Vlq;->merge(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v2

    invoke-static {v0}, Lc8/wAq;->from(Lc8/Wlq;)Lc8/Omq;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    move-result-object v2

    invoke-virtual {p1, v2}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 49
    new-instance v2, Lc8/Krq;

    invoke-direct {v2, p0, p1, v1, v0}, Lc8/Krq;-><init>(Lc8/Lrq;Lc8/Omq;Lc8/yBq;Lc8/qAq;)V

    return-object v2
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lc8/Lrq;, "Lrx/internal/operators/OperatorDelayWithSelector<TT;TV;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Lrq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
