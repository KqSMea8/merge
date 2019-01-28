.class public final Lc8/Voq;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMergeIterable.java"

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
    iput-object p1, p0, Lc8/Voq;->sources:Ljava/lang/Iterable;

    .line 32
    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 13
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 36
    new-instance v2, Lc8/SBq;

    invoke-direct {v2}, Lc8/SBq;-><init>()V

    .line 38
    .local v2, "set":Lc8/SBq;
    invoke-interface {p1, v2}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 43
    :try_start_0
    iget-object v0, p0, Lc8/Voq;->sources:Ljava/lang/Iterable;

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

    .line 147
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
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 55
    .local v5, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 58
    .local v3, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    :goto_1
    invoke-virtual {v2}, Lc8/SBq;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 75
    .local v6, "b":Z
    if-eqz v6, :cond_6

    .line 79
    invoke-virtual {v2}, Lc8/SBq;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/Plq;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    .local v7, "c":Lc8/Plq;
    invoke-virtual {v2}, Lc8/SBq;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    if-nez v7, :cond_5

    .line 102
    invoke-virtual {v2}, Lc8/SBq;->unsubscribe()V

    .line 103
    new-instance v10, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "A completable source is null"

    invoke-direct {v10, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 104
    .local v10, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v3, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    invoke-interface {p1, v10}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    .end local v6    # "b":Z
    .end local v7    # "c":Lc8/Plq;
    .end local v10    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v8

    .line 66
    .restart local v8    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Lc8/SBq;->unsubscribe()V

    .line 67
    invoke-virtual {v3, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-interface {p1, v8}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-static {v8}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 87
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v6    # "b":Z
    :catch_2
    move-exception v8

    .line 88
    .restart local v8    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Lc8/SBq;->unsubscribe()V

    .line 89
    invoke-virtual {v3, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    invoke-interface {p1, v8}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 92
    :cond_3
    invoke-static {v8}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v7    # "c":Lc8/Plq;
    .restart local v10    # "npe":Ljava/lang/NullPointerException;
    :cond_4
    invoke-static {v10}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 112
    .end local v10    # "npe":Ljava/lang/NullPointerException;
    :cond_5
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 114
    new-instance v0, Lc8/Uoq;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lc8/Uoq;-><init>(Lc8/Voq;Lc8/SBq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/Nlq;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v7, v0}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    goto :goto_1

    .line 142
    .end local v7    # "c":Lc8/Plq;
    :cond_6
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {v3, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {p1}, Lc8/Nlq;->onCompleted()V

    goto/16 :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Voq;->call(Lc8/Nlq;)V

    return-void
.end method
