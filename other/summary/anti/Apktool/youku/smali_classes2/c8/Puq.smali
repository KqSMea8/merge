.class public final Lc8/Puq;
.super Ljava/lang/Object;
.source "OperatorTakeUntil.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final other:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Vlq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lc8/Puq;, "Lrx/internal/operators/OperatorTakeUntil<TT;TE;>;"
    .local p1, "other":Lc8/Vlq;, "Lrx/Observable<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lc8/Puq;->other:Lc8/Vlq;

    .line 36
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
    .local p0, "this":Lc8/Puq;, "Lrx/internal/operators/OperatorTakeUntil<TT;TE;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    const/4 v3, 0x0

    .line 40
    new-instance v1, Lc8/qAq;

    invoke-direct {v1, p1, v3}, Lc8/qAq;-><init>(Lc8/Omq;Z)V

    .line 42
    .local v1, "serial":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    new-instance v0, Lc8/Nuq;

    invoke-direct {v0, p0, v1, v3, v1}, Lc8/Nuq;-><init>(Lc8/Puq;Lc8/Omq;ZLc8/Omq;)V

    .line 65
    .local v0, "main":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    new-instance v2, Lc8/Ouq;

    invoke-direct {v2, p0, v0}, Lc8/Ouq;-><init>(Lc8/Puq;Lc8/Omq;)V

    .line 88
    .local v2, "so":Lc8/Omq;, "Lrx/Subscriber<TE;>;"
    invoke-virtual {v1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 89
    invoke-virtual {v1, v2}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 91
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 93
    iget-object v3, p0, Lc8/Puq;->other:Lc8/Vlq;

    invoke-virtual {v3, v2}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 95
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lc8/Puq;, "Lrx/internal/operators/OperatorTakeUntil<TT;TE;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Puq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
