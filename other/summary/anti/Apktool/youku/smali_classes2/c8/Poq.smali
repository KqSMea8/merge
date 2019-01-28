.class public final Lc8/Poq;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMergeArray.java"

# interfaces
.implements Lc8/Llq;


# instance fields
.field final sources:[Lc8/Plq;


# direct methods
.method public constructor <init>([Lc8/Plq;)V
    .locals 0
    .param p1, "sources"    # [Lc8/Plq;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lc8/Poq;->sources:[Lc8/Plq;

    .line 31
    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 13
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 35
    new-instance v2, Lc8/SBq;

    invoke-direct {v2}, Lc8/SBq;-><init>()V

    .line 36
    .local v2, "set":Lc8/SBq;
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lc8/Poq;->sources:[Lc8/Plq;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 37
    .local v5, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 39
    .local v3, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-interface {p1, v2}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 41
    iget-object v6, p0, Lc8/Poq;->sources:[Lc8/Plq;

    .local v6, "arr$":[Lc8/Plq;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v7, v6, v8

    .line 42
    .local v7, "c":Lc8/Plq;
    invoke-virtual {v2}, Lc8/SBq;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    .end local v7    # "c":Lc8/Plq;
    :cond_0
    :goto_1
    return-void

    .line 46
    .restart local v7    # "c":Lc8/Plq;
    :cond_1
    if-nez v7, :cond_3

    .line 47
    invoke-virtual {v2}, Lc8/SBq;->unsubscribe()V

    .line 48
    new-instance v10, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "A completable source is null"

    invoke-direct {v10, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 49
    .local v10, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-interface {p1, v10}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 53
    :cond_2
    invoke-static {v10}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 57
    .end local v10    # "npe":Ljava/lang/NullPointerException;
    :cond_3
    new-instance v0, Lc8/Ooq;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lc8/Ooq;-><init>(Lc8/Poq;Lc8/SBq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/Nlq;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v7, v0}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 41
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 85
    .end local v7    # "c":Lc8/Plq;
    :cond_4
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {p1}, Lc8/Nlq;->onCompleted()V

    goto :goto_1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Poq;->call(Lc8/Nlq;)V

    return-void
.end method
