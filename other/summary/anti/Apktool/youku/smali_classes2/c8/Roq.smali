.class public final Lc8/Roq;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMergeDelayErrorArray.java"

# interfaces
.implements Lc8/Llq;


# instance fields
.field final sources:[Lc8/Plq;


# direct methods
.method public constructor <init>([Lc8/Plq;)V
    .locals 0
    .param p1, "sources"    # [Lc8/Plq;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lc8/Roq;->sources:[Lc8/Plq;

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

    .line 37
    .local v2, "set":Lc8/SBq;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lc8/Roq;->sources:[Lc8/Plq;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 39
    .local v4, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 41
    .local v3, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    invoke-interface {p1, v2}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 43
    iget-object v6, p0, Lc8/Roq;->sources:[Lc8/Plq;

    .local v6, "arr$":[Lc8/Plq;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v7, v6, v8

    .line 44
    .local v7, "c":Lc8/Plq;
    invoke-virtual {v2}, Lc8/SBq;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    .end local v7    # "c":Lc8/Plq;
    :cond_0
    :goto_1
    return-void

    .line 48
    .restart local v7    # "c":Lc8/Plq;
    :cond_1
    if-nez v7, :cond_2

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "A completable source is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 43
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 54
    :cond_2
    new-instance v0, Lc8/Qoq;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lc8/Qoq;-><init>(Lc8/Roq;Lc8/SBq;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicInteger;Lc8/Nlq;)V

    invoke-virtual {v7, v0}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    goto :goto_2

    .line 84
    .end local v7    # "c":Lc8/Plq;
    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    invoke-interface {p1}, Lc8/Nlq;->onCompleted()V

    goto :goto_1

    .line 88
    :cond_4
    invoke-static {v3}, Lc8/Noq;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Roq;->call(Lc8/Nlq;)V

    return-void
.end method
