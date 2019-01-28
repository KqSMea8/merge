.class public final Lc8/spq;
.super Ljava/lang/Object;
.source "OnSubscribeDefer.java"

# interfaces
.implements Lc8/Rlq;


# annotations
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
.field final observableFactory:Lc8/Hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Hnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lc8/spq;, "Lrx/internal/operators/OnSubscribeDefer<TT;>;"
    .local p1, "observableFactory":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/Observable<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lc8/spq;->observableFactory:Lc8/Hnq;

    .line 40
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
    .line 46
    .local p0, "this":Lc8/spq;, "Lrx/internal/operators/OnSubscribeDefer<TT;>;"
    .local p1, "s":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    iget-object v2, p0, Lc8/spq;->observableFactory:Lc8/Hnq;

    invoke-interface {v2}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Vlq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v0, "o":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p1}, Lc8/wAq;->wrap(Lc8/Omq;)Lc8/Omq;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 52
    .end local v0    # "o":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lc8/spq;, "Lrx/internal/operators/OnSubscribeDefer<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/spq;->call(Lc8/Omq;)V

    return-void
.end method
