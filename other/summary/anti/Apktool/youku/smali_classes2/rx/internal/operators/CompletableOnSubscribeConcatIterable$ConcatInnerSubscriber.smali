.class public final Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CompletableOnSubscribeConcatIterable.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Koq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConcatInnerSubscriber"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6e8ac9652ad7cd50L


# instance fields
.field final actual:Lc8/Nlq;

.field index:I

.field public final sd:Lc8/YBq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field final sources:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Lc8/Plq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Nlq;Ljava/util/Iterator;)V
    .locals 1
    .param p1, "actual"    # Lc8/Nlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nlq;",
            "Ljava/util/Iterator",
            "<+",
            "Lc8/Plq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "sources":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 69
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lc8/Nlq;

    .line 70
    iput-object p2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sources:Ljava/util/Iterator;

    .line 71
    new-instance v0, Lc8/YBq;

    invoke-direct {v0}, Lc8/YBq;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Lc8/YBq;

    .line 72
    return-void
.end method


# virtual methods
.method public next()V
    .locals 7
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 90
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Lc8/YBq;

    invoke-virtual {v4}, Lc8/YBq;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->getAndIncrement()I

    move-result v4

    if-nez v4, :cond_0

    .line 98
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sources:Ljava/util/Iterator;

    .line 100
    .local v0, "a":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_2
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Lc8/YBq;

    invoke-virtual {v4}, Lc8/YBq;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 112
    .local v1, "b":Z
    if-nez v1, :cond_3

    .line 113
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lc8/Nlq;

    invoke-interface {v4}, Lc8/Nlq;->onCompleted()V

    goto :goto_0

    .line 107
    .end local v1    # "b":Z
    :catch_0
    move-exception v3

    .line 108
    .local v3, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lc8/Nlq;

    invoke-interface {v4, v3}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 120
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "b":Z
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Plq;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .local v2, "c":Lc8/Plq;
    if-nez v2, :cond_4

    .line 127
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lc8/Nlq;

    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "The completable returned is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 121
    .end local v2    # "c":Lc8/Plq;
    :catch_1
    move-exception v3

    .line 122
    .restart local v3    # "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lc8/Nlq;

    invoke-interface {v4, v3}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 131
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "c":Lc8/Plq;
    :cond_4
    invoke-virtual {v2, p0}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 132
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->decrementAndGet()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->next()V

    .line 87
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Lc8/Nlq;

    invoke-interface {v0, p1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 76
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Lc8/YBq;

    invoke-virtual {v0, p1}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 77
    return-void
.end method
