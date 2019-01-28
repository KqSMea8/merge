.class public final Lc8/Buq;
.super Ljava/lang/Object;
.source "OperatorSwitchIfEmpty.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zuq;,
        Lc8/Auq;
    }
.end annotation

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
.field private final alternate:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TT;>;"
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
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lc8/Buq;, "Lrx/internal/operators/OperatorSwitchIfEmpty<TT;>;"
    .local p1, "alternate":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lc8/Buq;->alternate:Lc8/Vlq;

    .line 34
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
    .line 38
    .local p0, "this":Lc8/Buq;, "Lrx/internal/operators/OperatorSwitchIfEmpty<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v2, Lc8/YBq;

    invoke-direct {v2}, Lc8/YBq;-><init>()V

    .line 39
    .local v2, "ssub":Lc8/YBq;
    new-instance v0, Lc8/Jwq;

    invoke-direct {v0}, Lc8/Jwq;-><init>()V

    .line 40
    .local v0, "arbiter":Lc8/Jwq;
    new-instance v1, Lc8/Auq;

    iget-object v3, p0, Lc8/Buq;->alternate:Lc8/Vlq;

    invoke-direct {v1, p1, v2, v0, v3}, Lc8/Auq;-><init>(Lc8/Omq;Lc8/YBq;Lc8/Jwq;Lc8/Vlq;)V

    .line 41
    .local v1, "parent":Lc8/Auq;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    invoke-virtual {v2, v1}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 42
    invoke-virtual {p1, v2}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 43
    invoke-virtual {p1, v0}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 44
    return-object v1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lc8/Buq;, "Lrx/internal/operators/OperatorSwitchIfEmpty<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Buq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
