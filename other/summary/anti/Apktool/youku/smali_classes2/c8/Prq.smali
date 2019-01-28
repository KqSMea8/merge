.class public final Lc8/Prq;
.super Ljava/lang/Object;
.source "OperatorDematerialize.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Nrq;,
        Lc8/Orq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;",
        "Lc8/Qlq",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    .local p0, "this":Lc8/Prq;, "Lrx/internal/operators/OperatorDematerialize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static instance()Lc8/Prq;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lc8/Orq;->INSTANCE:Lc8/Prq;

    return-object v0
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
            "<-",
            "Lc8/Qlq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lc8/Prq;, "Lrx/internal/operators/OperatorDematerialize<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/Mrq;

    invoke-direct {v0, p0, p1, p1}, Lc8/Mrq;-><init>(Lc8/Prq;Lc8/Omq;Lc8/Omq;)V

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lc8/Prq;, "Lrx/internal/operators/OperatorDematerialize<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Prq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
