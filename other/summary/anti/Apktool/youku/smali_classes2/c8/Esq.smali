.class public final Lc8/Esq;
.super Ljava/lang/Object;
.source "OperatorMaterialize.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Dsq;,
        Lc8/Csq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<",
        "Lc8/Qlq",
        "<TT;>;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    .local p0, "this":Lc8/Esq;, "Lrx/internal/operators/OperatorMaterialize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static instance()Lc8/Esq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/Esq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lc8/Csq;->INSTANCE:Lc8/Esq;

    return-object v0
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Lc8/Qlq",
            "<TT;>;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lc8/Esq;, "Lrx/internal/operators/OperatorMaterialize<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-Lrx/Notification<TT;>;>;"
    new-instance v0, Lc8/Dsq;

    invoke-direct {v0, p1}, Lc8/Dsq;-><init>(Lc8/Omq;)V

    .line 57
    .local v0, "parent":Lc8/Dsq;, "Lrx/internal/operators/OperatorMaterialize$ParentSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 58
    new-instance v1, Lc8/Bsq;

    invoke-direct {v1, p0, v0}, Lc8/Bsq;-><init>(Lc8/Esq;Lc8/Dsq;)V

    invoke-virtual {p1, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 66
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lc8/Esq;, "Lrx/internal/operators/OperatorMaterialize<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Esq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
