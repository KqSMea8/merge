.class public Lc8/ovq;
.super Lc8/jvq;
.source "OperatorTimeoutWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/jvq",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc8/Hnq;Lc8/Inq;Lc8/Vlq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<TU;>;>;",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<TV;>;>;",
            "Lc8/Vlq",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lc8/ovq;, "Lrx/internal/operators/OperatorTimeoutWithSelector<TT;TU;TV;>;"
    .local p1, "firstTimeoutSelector":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    .local p2, "timeoutSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    .local p3, "other":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lc8/lvq;

    invoke-direct {v0, p1}, Lc8/lvq;-><init>(Lc8/Hnq;)V

    new-instance v1, Lc8/nvq;

    invoke-direct {v1, p2}, Lc8/nvq;-><init>(Lc8/Inq;)V

    invoke-static {}, Lc8/hBq;->immediate()Lc8/amq;

    move-result-object v2

    invoke-direct {p0, v0, v1, p3, v2}, Lc8/jvq;-><init>(Lc8/fvq;Lc8/gvq;Lc8/Vlq;Lc8/amq;)V

    .line 109
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lc8/Omq;)Lc8/Omq;
    .locals 1
    .param p1, "x0"    # Lc8/Omq;

    .prologue
    .line 33
    .local p0, "this":Lc8/ovq;, "Lrx/internal/operators/OperatorTimeoutWithSelector<TT;TU;TV;>;"
    invoke-super {p0, p1}, Lc8/jvq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
