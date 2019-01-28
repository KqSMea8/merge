.class public final Lc8/swq;
.super Ljava/lang/Object;
.source "OperatorZipIterable.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TR;TT1;>;"
    }
.end annotation


# instance fields
.field final iterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+TT2;>;"
        }
    .end annotation
.end field

.field final zipFunction:Lc8/Jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Jnq",
            "<-TT1;-TT2;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lc8/Jnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT2;>;",
            "Lc8/Jnq",
            "<-TT1;-TT2;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lc8/swq;, "Lrx/internal/operators/OperatorZipIterable<TT1;TT2;TR;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT2;>;"
    .local p2, "zipFunction":Lc8/Jnq;, "Lrx/functions/Func2<-TT1;-TT2;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lc8/swq;->iterable:Ljava/lang/Iterable;

    .line 33
    iput-object p2, p0, Lc8/swq;->zipFunction:Lc8/Jnq;

    .line 34
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)",
            "Lc8/Omq",
            "<-TT1;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lc8/swq;, "Lrx/internal/operators/OperatorZipIterable<TT1;TT2;TR;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    iget-object v2, p0, Lc8/swq;->iterable:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 40
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT2;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    invoke-virtual {p1}, Lc8/Omq;->onCompleted()V

    .line 42
    invoke-static {}, Lc8/wAq;->empty()Lc8/Omq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 48
    :goto_0
    return-object v2

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    .line 46
    invoke-static {}, Lc8/wAq;->empty()Lc8/Omq;

    move-result-object v2

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    new-instance v2, Lc8/rwq;

    invoke-direct {v2, p0, p1, p1, v1}, Lc8/rwq;-><init>(Lc8/swq;Lc8/Omq;Lc8/Omq;Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    .local p0, "this":Lc8/swq;, "Lrx/internal/operators/OperatorZipIterable<TT1;TT2;TR;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/swq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
