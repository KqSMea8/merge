.class public Lc8/Ivq;
.super Ljava/lang/Object;
.source "OperatorUnsubscribeOn.java"

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
.field final scheduler:Lc8/amq;


# direct methods
.method public constructor <init>(Lc8/amq;)V
    .locals 0
    .param p1, "scheduler"    # Lc8/amq;

    .prologue
    .line 32
    .local p0, "this":Lc8/Ivq;, "Lrx/internal/operators/OperatorUnsubscribeOn<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lc8/Ivq;->scheduler:Lc8/amq;

    .line 34
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 2
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
    .line 38
    .local p0, "this":Lc8/Ivq;, "Lrx/internal/operators/OperatorUnsubscribeOn<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/Fvq;

    invoke-direct {v0, p0, p1}, Lc8/Fvq;-><init>(Lc8/Ivq;Lc8/Omq;)V

    .line 57
    .local v0, "parent":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    new-instance v1, Lc8/Hvq;

    invoke-direct {v1, p0, v0}, Lc8/Hvq;-><init>(Lc8/Ivq;Lc8/Omq;)V

    invoke-static {v1}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 74
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lc8/Ivq;, "Lrx/internal/operators/OperatorUnsubscribeOn<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Ivq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
