.class public final Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CompletableOnSubscribeConcatArray.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Joq;
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

.field final sources:[Lc8/Plq;


# direct methods
.method public constructor <init>(Lc8/Nlq;[Lc8/Plq;)V
    .locals 1
    .param p1, "actual"    # Lc8/Nlq;
    .param p2, "sources"    # [Lc8/Plq;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 51
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->actual:Lc8/Nlq;

    .line 52
    iput-object p2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sources:[Lc8/Plq;

    .line 53
    new-instance v0, Lc8/YBq;

    invoke-direct {v0}, Lc8/YBq;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sd:Lc8/YBq;

    .line 54
    return-void
.end method


# virtual methods
.method public next()V
    .locals 3
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 72
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sd:Lc8/YBq;

    invoke-virtual {v2}, Lc8/YBq;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->getAndIncrement()I

    move-result v2

    if-nez v2, :cond_0

    .line 80
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sources:[Lc8/Plq;

    .line 82
    .local v0, "a":[Lc8/Plq;
    :cond_2
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sd:Lc8/YBq;

    invoke-virtual {v2}, Lc8/YBq;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    iget v1, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->index:I

    .line 87
    .local v1, "idx":I
    array-length v2, v0

    if-ne v1, v2, :cond_3

    .line 88
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->actual:Lc8/Nlq;

    invoke-interface {v2}, Lc8/Nlq;->onCompleted()V

    goto :goto_0

    .line 92
    :cond_3
    aget-object v2, v0, v1

    invoke-virtual {v2, p0}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 93
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->next()V

    .line 69
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->actual:Lc8/Nlq;

    invoke-interface {v0, p1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 58
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sd:Lc8/YBq;

    invoke-virtual {v0, p1}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 59
    return-void
.end method
