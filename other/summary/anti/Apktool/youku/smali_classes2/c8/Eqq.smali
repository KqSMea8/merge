.class public final Lc8/Eqq;
.super Ljava/lang/Object;
.source "OnSubscribeReduceSeed.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Dqq;
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
        "Lc8/Rlq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final reducer:Lc8/Jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Jnq",
            "<TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Vlq;Ljava/lang/Object;Lc8/Jnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;TR;",
            "Lc8/Jnq",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lc8/Eqq;, "Lrx/internal/operators/OnSubscribeReduceSeed<TT;TR;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p2, "initialValue":Ljava/lang/Object;, "TR;"
    .local p3, "reducer":Lc8/Jnq;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lc8/Eqq;->source:Lc8/Vlq;

    .line 34
    iput-object p2, p0, Lc8/Eqq;->initialValue:Ljava/lang/Object;

    .line 35
    iput-object p3, p0, Lc8/Eqq;->reducer:Lc8/Jnq;

    .line 36
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lc8/Eqq;, "Lrx/internal/operators/OnSubscribeReduceSeed<TT;TR;>;"
    .local p1, "t":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lc8/Dqq;

    iget-object v1, p0, Lc8/Eqq;->initialValue:Ljava/lang/Object;

    iget-object v2, p0, Lc8/Eqq;->reducer:Lc8/Jnq;

    invoke-direct {v0, p1, v1, v2}, Lc8/Dqq;-><init>(Lc8/Omq;Ljava/lang/Object;Lc8/Jnq;)V

    iget-object v1, p0, Lc8/Eqq;->source:Lc8/Vlq;

    invoke-virtual {v0, v1}, Lc8/Dqq;->subscribeTo(Lc8/Vlq;)V

    .line 41
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    .local p0, "this":Lc8/Eqq;, "Lrx/internal/operators/OnSubscribeReduceSeed<TT;TR;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Eqq;->call(Lc8/Omq;)V

    return-void
.end method
