.class public final Lc8/bqq;
.super Ljava/lang/Object;
.source "OnSubscribeLift.java"

# interfaces
.implements Lc8/Rlq;


# annotations
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
.field final operator:Lc8/Tlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Tlq",
            "<+TR;-TT;>;"
        }
    .end annotation
.end field

.field final parent:Lc8/Rlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Rlq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Rlq;Lc8/Tlq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Rlq",
            "<TT;>;",
            "Lc8/Tlq",
            "<+TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lc8/bqq;, "Lrx/internal/operators/OnSubscribeLift<TT;TR;>;"
    .local p1, "parent":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "operator":Lc8/Tlq;, "Lrx/Observable$Operator<+TR;-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lc8/bqq;->parent:Lc8/Rlq;

    .line 38
    iput-object p2, p0, Lc8/bqq;->operator:Lc8/Tlq;

    .line 39
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
    .line 44
    .local p0, "this":Lc8/bqq;, "Lrx/internal/operators/OnSubscribeLift<TT;TR;>;"
    .local p1, "o":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    :try_start_0
    iget-object v2, p0, Lc8/bqq;->operator:Lc8/Tlq;

    invoke-static {v2}, Lc8/WAq;->onObservableLift(Lc8/Tlq;)Lc8/Tlq;

    move-result-object v2

    invoke-interface {v2, p1}, Lc8/Tlq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Omq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .local v1, "st":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :try_start_1
    invoke-virtual {v1}, Lc8/Omq;->onStart()V

    .line 48
    iget-object v2, p0, Lc8/bqq;->parent:Lc8/Rlq;

    invoke-interface {v2, v1}, Lc8/Rlq;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .end local v1    # "st":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :goto_0
    return-void

    .line 49
    .restart local v1    # "st":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 54
    invoke-virtual {v1, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "st":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :catch_1
    move-exception v0

    .line 57
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 60
    invoke-virtual {p1, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lc8/bqq;, "Lrx/internal/operators/OnSubscribeLift<TT;TR;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/bqq;->call(Lc8/Omq;)V

    return-void
.end method
