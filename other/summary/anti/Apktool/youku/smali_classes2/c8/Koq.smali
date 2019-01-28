.class public final Lc8/Koq;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeConcatIterable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;
    }
.end annotation


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Plq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Plq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lc8/Koq;->sources:Ljava/lang/Iterable;

    .line 31
    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 5
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 39
    :try_start_0
    iget-object v3, p0, Lc8/Koq;->sources:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 46
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    if-nez v2, :cond_0

    .line 47
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v3

    invoke-interface {p1, v3}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 48
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "The iterator returned is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 55
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v3

    invoke-interface {p1, v3}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 42
    invoke-interface {p1, v0}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 52
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_0
    new-instance v1, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;

    invoke-direct {v1, p1, v2}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;-><init>(Lc8/Nlq;Ljava/util/Iterator;)V

    .line 53
    .local v1, "inner":Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;
    iget-object v3, v1, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Lc8/YBq;

    invoke-interface {p1, v3}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 54
    invoke-virtual {v1}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->next()V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Koq;->call(Lc8/Nlq;)V

    return-void
.end method
