.class public final Lc8/Toq;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMergeDelayErrorIterable.java"

# interfaces
.implements Lc8/Llq;


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
    .line 30
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lc8/Toq;->sources:Ljava/lang/Iterable;

    .line 32
    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 10
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 36
    new-instance v2, Lc8/SBq;

    invoke-direct {v2}, Lc8/SBq;-><init>()V

    .line 38
    .local v2, "set":Lc8/SBq;
    invoke-interface {p1, v2}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 43
    :try_start_0
    iget-object v0, p0, Lc8/Toq;->sources:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 49
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    if-nez v9, :cond_1

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The source iterator returned is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 157
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v8

    .line 45
    .local v8, "e":Ljava/lang/Throwable;
    invoke-interface {p1, v8}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 54
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_1
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 56
    .local v4, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Lc8/Wyq;

    invoke-direct {v3}, Lc8/Wyq;-><init>()V

    .line 59
    .local v3, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :goto_1
    invoke-virtual {v2}, Lc8/SBq;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 78
    .local v6, "b":Z
    if-eqz v6, :cond_6

    .line 82
    invoke-virtual {v2}, Lc8/SBq;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/Plq;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 102
    .local v7, "c":Lc8/Plq;
    invoke-virtual {v2}, Lc8/SBq;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    if-nez v7, :cond_5

    .line 107
    new-instance v8, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "A completable source is null"

    invoke-direct {v8, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 108
    .local v8, "e":Ljava/lang/NullPointerException;
    invoke-interface {v3, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    invoke-interface {p1}, Lc8/Nlq;->onCompleted()V

    goto :goto_0

    .line 66
    .end local v6    # "b":Z
    .end local v7    # "c":Lc8/Plq;
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v8

    .line 67
    .local v8, "e":Ljava/lang/Throwable;
    invoke-interface {v3, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-interface {p1}, Lc8/Nlq;->onCompleted()V

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {v3}, Lc8/Noq;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 90
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v6    # "b":Z
    :catch_2
    move-exception v8

    .line 91
    .restart local v8    # "e":Ljava/lang/Throwable;
    invoke-interface {v3, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    invoke-interface {p1}, Lc8/Nlq;->onCompleted()V

    goto/16 :goto_0

    .line 96
    :cond_3
    invoke-static {v3}, Lc8/Noq;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 113
    .restart local v7    # "c":Lc8/Plq;
    .local v8, "e":Ljava/lang/NullPointerException;
    :cond_4
    invoke-static {v3}, Lc8/Noq;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 119
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :cond_5
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 121
    new-instance v0, Lc8/Soq;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lc8/Soq;-><init>(Lc8/Toq;Lc8/SBq;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicInteger;Lc8/Nlq;)V

    invoke-virtual {v7, v0}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    goto/16 :goto_1

    .line 150
    .end local v7    # "c":Lc8/Plq;
    :cond_6
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 152
    invoke-interface {p1}, Lc8/Nlq;->onCompleted()V

    goto/16 :goto_0

    .line 154
    :cond_7
    invoke-static {v3}, Lc8/Noq;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Toq;->call(Lc8/Nlq;)V

    return-void
.end method
