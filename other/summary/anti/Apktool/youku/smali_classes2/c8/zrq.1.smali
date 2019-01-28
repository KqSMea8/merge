.class public final Lc8/zrq;
.super Ljava/lang/Object;
.source "OperatorDebounceWithSelector.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final selector:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Inq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<TU;>;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lc8/zrq;, "Lrx/internal/operators/OperatorDebounceWithSelector<TT;TU;>;"
    .local p1, "selector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TU;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lc8/zrq;->selector:Lc8/Inq;

    .line 37
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 3
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
    .line 41
    .local p0, "this":Lc8/zrq;, "Lrx/internal/operators/OperatorDebounceWithSelector<TT;TU;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/qAq;

    invoke-direct {v0, p1}, Lc8/qAq;-><init>(Lc8/Omq;)V

    .line 42
    .local v0, "s":Lc8/qAq;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v1, Lc8/YBq;

    invoke-direct {v1}, Lc8/YBq;-><init>()V

    .line 43
    .local v1, "ssub":Lc8/YBq;
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 45
    new-instance v2, Lc8/yrq;

    invoke-direct {v2, p0, p1, v0, v1}, Lc8/yrq;-><init>(Lc8/zrq;Lc8/Omq;Lc8/qAq;Lc8/YBq;)V

    return-object v2
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lc8/zrq;, "Lrx/internal/operators/OperatorDebounceWithSelector<TT;TU;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/zrq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
