.class public final Lc8/roq;
.super Ljava/lang/Object;
.source "BlockingOperatorNext.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/toq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NextIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/Throwable;

.field private hasNext:Z

.field private isNextConsumed:Z

.field private final items:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final observer:Lc8/soq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/soq",
            "<TT;>;"
        }
    .end annotation
.end field

.field private started:Z


# direct methods
.method constructor <init>(Lc8/Vlq;Lc8/soq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/soq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/roq;, "Lrx/internal/operators/BlockingOperatorNext$NextIterator<TT;>;"
    .local p1, "items":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "observer":Lc8/soq;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    const/4 v0, 0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v0, p0, Lc8/roq;->hasNext:Z

    .line 63
    iput-boolean v0, p0, Lc8/roq;->isNextConsumed:Z

    .line 68
    iput-object p1, p0, Lc8/roq;->items:Lc8/Vlq;

    .line 69
    iput-object p2, p0, Lc8/roq;->observer:Lc8/soq;

    .line 70
    return-void
.end method

.method private moveToNext()Z
    .locals 6

    .prologue
    .local p0, "this":Lc8/roq;, "Lrx/internal/operators/BlockingOperatorNext$NextIterator<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    :try_start_0
    iget-boolean v4, p0, Lc8/roq;->started:Z

    if-nez v4, :cond_0

    .line 95
    const/4 v4, 0x1

    iput-boolean v4, p0, Lc8/roq;->started:Z

    .line 97
    iget-object v4, p0, Lc8/roq;->observer:Lc8/soq;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lc8/soq;->setWaiting(I)V

    .line 98
    iget-object v4, p0, Lc8/roq;->items:Lc8/Vlq;

    invoke-virtual {v4}, Lc8/Vlq;->materialize()Lc8/Vlq;

    move-result-object v4

    iget-object v5, p0, Lc8/roq;->observer:Lc8/soq;

    invoke-virtual {v4, v5}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    .line 101
    :cond_0
    iget-object v4, p0, Lc8/roq;->observer:Lc8/soq;

    invoke-virtual {v4}, Lc8/soq;->takeNext()Lc8/Qlq;

    move-result-object v1

    .line 102
    .local v1, "nextNotification":Lc8/Qlq;, "Lrx/Notification<+TT;>;"
    invoke-virtual {v1}, Lc8/Qlq;->isOnNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    const/4 v3, 0x0

    iput-boolean v3, p0, Lc8/roq;->isNextConsumed:Z

    .line 104
    invoke-virtual {v1}, Lc8/Qlq;->getValue()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lc8/roq;->next:Ljava/lang/Object;

    .line 111
    :goto_0
    return v2

    .line 109
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/roq;->hasNext:Z

    .line 110
    invoke-virtual {v1}, Lc8/Qlq;->isOnCompleted()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 111
    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {v1}, Lc8/Qlq;->isOnError()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    invoke-virtual {v1}, Lc8/Qlq;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    iput-object v2, p0, Lc8/roq;->error:Ljava/lang/Throwable;

    .line 115
    iget-object v2, p0, Lc8/roq;->error:Ljava/lang/Throwable;

    invoke-static {v2}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1    # "nextNotification":Lc8/Qlq;, "Lrx/Notification<+TT;>;"
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lc8/roq;->observer:Lc8/soq;

    invoke-virtual {v2}, Lc8/soq;->unsubscribe()V

    .line 120
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 121
    iput-object v0, p0, Lc8/roq;->error:Ljava/lang/Throwable;

    .line 122
    invoke-static {v0}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 117
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "nextNotification":Lc8/Qlq;, "Lrx/Notification<+TT;>;"
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Should not reach here"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lc8/roq;, "Lrx/internal/operators/BlockingOperatorNext$NextIterator<TT;>;"
    iget-object v0, p0, Lc8/roq;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lc8/roq;->error:Ljava/lang/Throwable;

    invoke-static {v0}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 80
    :cond_0
    iget-boolean v0, p0, Lc8/roq;->hasNext:Z

    if-nez v0, :cond_1

    .line 82
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    .line 84
    :cond_1
    iget-boolean v0, p0, Lc8/roq;->isNextConsumed:Z

    if-nez v0, :cond_2

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :cond_2
    invoke-direct {p0}, Lc8/roq;->moveToNext()Z

    move-result v0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lc8/roq;, "Lrx/internal/operators/BlockingOperatorNext$NextIterator<TT;>;"
    iget-object v0, p0, Lc8/roq;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lc8/roq;->error:Ljava/lang/Throwable;

    invoke-static {v0}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lc8/roq;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/roq;->isNextConsumed:Z

    .line 134
    iget-object v0, p0, Lc8/roq;->next:Ljava/lang/Object;

    return-object v0

    .line 137
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 143
    .local p0, "this":Lc8/roq;, "Lrx/internal/operators/BlockingOperatorNext$NextIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Read only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
