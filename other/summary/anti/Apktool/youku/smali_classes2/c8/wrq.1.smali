.class public Lc8/wrq;
.super Ljava/lang/Object;
.source "OperatorCast.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vrq;
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
        "Lc8/Tlq",
        "<TR;TT;>;"
    }
.end annotation


# instance fields
.field final castClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lc8/wrq;, "Lrx/internal/operators/OperatorCast<TT;TR;>;"
    .local p1, "castClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lc8/wrq;->castClass:Ljava/lang/Class;

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
            "<-TR;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lc8/wrq;, "Lrx/internal/operators/OperatorCast<TT;TR;>;"
    .local p1, "o":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lc8/vrq;

    iget-object v1, p0, Lc8/wrq;->castClass:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Lc8/vrq;-><init>(Lc8/Omq;Ljava/lang/Class;)V

    .line 39
    .local v0, "parent":Lc8/vrq;, "Lrx/internal/operators/OperatorCast$CastSubscriber<TT;TR;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 40
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lc8/wrq;, "Lrx/internal/operators/OperatorCast<TT;TR;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/wrq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
