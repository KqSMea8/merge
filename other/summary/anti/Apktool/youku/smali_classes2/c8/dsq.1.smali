.class public Lc8/dsq;
.super Ljava/lang/Object;
.source "OperatorDoOnSubscribe.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final subscribe:Lc8/hnq;


# direct methods
.method public constructor <init>(Lc8/hnq;)V
    .locals 0
    .param p1, "subscribe"    # Lc8/hnq;

    .prologue
    .line 34
    .local p0, "this":Lc8/dsq;, "Lrx/internal/operators/OperatorDoOnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lc8/dsq;->subscribe:Lc8/hnq;

    .line 36
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 1
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
    .line 40
    .local p0, "this":Lc8/dsq;, "Lrx/internal/operators/OperatorDoOnSubscribe<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lc8/dsq;->subscribe:Lc8/hnq;

    invoke-interface {v0}, Lc8/hnq;->call()V

    .line 43
    invoke-static {p1}, Lc8/wAq;->wrap(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lc8/dsq;, "Lrx/internal/operators/OperatorDoOnSubscribe<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/dsq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
