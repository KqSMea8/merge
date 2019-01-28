.class public final Lc8/Otq;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ntq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TR;TT;>;"
    }
.end annotation


# static fields
.field private static final NO_INITIAL_VALUE:Ljava/lang/Object;


# instance fields
.field final accumulator:Lc8/Jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Jnq",
            "<TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field private final initialValueFactory:Lc8/Hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hnq",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/Otq;->NO_INITIAL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc8/Hnq;Lc8/Jnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Hnq",
            "<TR;>;",
            "Lc8/Jnq",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lc8/Otq;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "initialValueFactory":Lc8/Hnq;, "Lrx/functions/Func0<TR;>;"
    .local p2, "accumulator":Lc8/Jnq;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lc8/Otq;->initialValueFactory:Lc8/Hnq;

    .line 75
    iput-object p2, p0, Lc8/Otq;->accumulator:Lc8/Jnq;

    .line 76
    return-void
.end method

.method public constructor <init>(Lc8/Jnq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Jnq",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lc8/Otq;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "accumulator":Lc8/Jnq;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    sget-object v0, Lc8/Otq;->NO_INITIAL_VALUE:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lc8/Otq;-><init>(Ljava/lang/Object;Lc8/Jnq;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lc8/Jnq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lc8/Jnq",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lc8/Otq;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "accumulator":Lc8/Jnq;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    new-instance v0, Lc8/Ktq;

    invoke-direct {v0, p1}, Lc8/Ktq;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lc8/Otq;-><init>(Lc8/Hnq;Lc8/Jnq;)V

    .line 71
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 4
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
    .line 93
    .local p0, "this":Lc8/Otq;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    iget-object v3, p0, Lc8/Otq;->initialValueFactory:Lc8/Hnq;

    invoke-interface {v3}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "initialValue":Ljava/lang/Object;, "TR;"
    sget-object v3, Lc8/Otq;->NO_INITIAL_VALUE:Ljava/lang/Object;

    if-ne v0, v3, :cond_0

    .line 96
    new-instance v2, Lc8/Ltq;

    invoke-direct {v2, p0, p1, p1}, Lc8/Ltq;-><init>(Lc8/Otq;Lc8/Omq;Lc8/Omq;)V

    .line 165
    :goto_0
    return-object v2

    .line 129
    :cond_0
    new-instance v1, Lc8/Ntq;

    invoke-direct {v1, v0, p1}, Lc8/Ntq;-><init>(Ljava/lang/Object;Lc8/Omq;)V

    .line 131
    .local v1, "ip":Lc8/Ntq;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    new-instance v2, Lc8/Mtq;

    invoke-direct {v2, p0, v0, v1}, Lc8/Mtq;-><init>(Lc8/Otq;Ljava/lang/Object;Lc8/Ntq;)V

    .line 163
    .local v2, "parent":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v2}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 164
    invoke-virtual {p1, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lc8/Otq;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Otq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
