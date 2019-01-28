.class public final Lc8/Etq;
.super Ljava/lang/Object;
.source "OperatorRetryWithPredicate.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Dtq;
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
        "Lc8/Vlq",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final predicate:Lc8/Jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Jnq",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Jnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Jnq",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lc8/Etq;, "Lrx/internal/operators/OperatorRetryWithPredicate<TT;>;"
    .local p1, "predicate":Lc8/Jnq;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lc8/Etq;->predicate:Lc8/Jnq;

    .line 30
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)",
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lc8/Etq;, "Lrx/internal/operators/OperatorRetryWithPredicate<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-static {}, Lc8/hBq;->trampoline()Lc8/amq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v3

    .line 35
    .local v3, "inner":Lc8/Zlq;
    invoke-virtual {p1, v3}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 37
    new-instance v4, Lc8/YBq;

    invoke-direct {v4}, Lc8/YBq;-><init>()V

    .line 39
    .local v4, "serialSubscription":Lc8/YBq;
    invoke-virtual {p1, v4}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 40
    new-instance v5, Lc8/Jwq;

    invoke-direct {v5}, Lc8/Jwq;-><init>()V

    .line 41
    .local v5, "pa":Lc8/Jwq;
    invoke-virtual {p1, v5}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 42
    new-instance v0, Lc8/Dtq;

    iget-object v2, p0, Lc8/Etq;->predicate:Lc8/Jnq;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lc8/Dtq;-><init>(Lc8/Omq;Lc8/Jnq;Lc8/Zlq;Lc8/YBq;Lc8/Jwq;)V

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    .local p0, "this":Lc8/Etq;, "Lrx/internal/operators/OperatorRetryWithPredicate<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Etq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
