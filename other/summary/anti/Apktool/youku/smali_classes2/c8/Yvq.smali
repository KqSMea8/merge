.class public final Lc8/Yvq;
.super Ljava/lang/Object;
.source "OperatorWindowWithStartEndObservable.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Xvq;,
        Lc8/Vvq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
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
.field final windowClosingSelector:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TU;+",
            "Lc8/Vlq",
            "<+TV;>;>;"
        }
    .end annotation
.end field

.field final windowOpenings:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TU;>;"
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
            "<+TU;>;",
            "Lc8/Inq",
            "<-TU;+",
            "Lc8/Vlq",
            "<+TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lc8/Yvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>;"
    .local p1, "windowOpenings":Lc8/Vlq;, "Lrx/Observable<+TU;>;"
    .local p2, "windowClosingSelector":Lc8/Inq;, "Lrx/functions/Func1<-TU;+Lrx/Observable<+TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lc8/Yvq;->windowOpenings:Lc8/Vlq;

    .line 45
    iput-object p2, p0, Lc8/Yvq;->windowClosingSelector:Lc8/Inq;

    .line 46
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 4
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
    .line 50
    .local p0, "this":Lc8/Yvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    new-instance v0, Lc8/SBq;

    invoke-direct {v0}, Lc8/SBq;-><init>()V

    .line 51
    .local v0, "csub":Lc8/SBq;
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 53
    new-instance v2, Lc8/Xvq;

    invoke-direct {v2, p0, p1, v0}, Lc8/Xvq;-><init>(Lc8/Yvq;Lc8/Omq;Lc8/SBq;)V

    .line 55
    .local v2, "sub":Lc8/Xvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    new-instance v1, Lc8/Uvq;

    invoke-direct {v1, p0, v2}, Lc8/Uvq;-><init>(Lc8/Yvq;Lc8/Xvq;)V

    .line 78
    .local v1, "open":Lc8/Omq;, "Lrx/Subscriber<TU;>;"
    invoke-virtual {v0, v2}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 79
    invoke-virtual {v0, v1}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 81
    iget-object v3, p0, Lc8/Yvq;->windowOpenings:Lc8/Vlq;

    invoke-virtual {v3, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 83
    return-object v2
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    .local p0, "this":Lc8/Yvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Yvq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
