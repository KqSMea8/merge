.class public final Lc8/Tpq;
.super Ljava/lang/Object;
.source "OnSubscribeGroupJoin.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Upq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowObservableFunc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Spq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final refCount:Lc8/WBq;

.field final underlying:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Vlq;Lc8/WBq;)V
    .locals 0
    .param p2, "refCount"    # Lc8/WBq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;",
            "Lc8/WBq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Lc8/Tpq;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>;"
    .local p1, "underlying":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p2, p0, Lc8/Tpq;->refCount:Lc8/WBq;

    .line 340
    iput-object p1, p0, Lc8/Tpq;->underlying:Lc8/Vlq;

    .line 341
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lc8/Tpq;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>;"
    .local p1, "t1":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v2, p0, Lc8/Tpq;->refCount:Lc8/WBq;

    invoke-virtual {v2}, Lc8/WBq;->get()Lc8/Pmq;

    move-result-object v0

    .line 346
    .local v0, "ref":Lc8/Pmq;
    new-instance v1, Lc8/Spq;

    invoke-direct {v1, p0, p1, v0}, Lc8/Spq;-><init>(Lc8/Tpq;Lc8/Omq;Lc8/Pmq;)V

    .line 347
    .local v1, "wo":Lc8/Spq;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>.WindowSubscriber;"
    invoke-virtual {v1, v0}, Lc8/Spq;->add(Lc8/Pmq;)V

    .line 349
    iget-object v2, p0, Lc8/Tpq;->underlying:Lc8/Vlq;

    invoke-virtual {v2, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 350
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 334
    .local p0, "this":Lc8/Tpq;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Tpq;->call(Lc8/Omq;)V

    return-void
.end method
