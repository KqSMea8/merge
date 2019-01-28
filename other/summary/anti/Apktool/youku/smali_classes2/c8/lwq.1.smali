.class public final Lc8/lwq;
.super Lc8/Omq;
.source "OperatorWithLatestFromMany.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nwq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WithLatestMainSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;


# instance fields
.field final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final combiner:Lc8/Rnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Rnq",
            "<TR;>;"
        }
    .end annotation
.end field

.field final current:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field done:Z

.field final ready:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/lwq;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc8/Omq;Lc8/Rnq;I)V
    .locals 4
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;",
            "Lc8/Rnq",
            "<TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lc8/lwq;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    .local p2, "combiner":Lc8/Rnq;, "Lrx/functions/FuncN<TR;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 99
    iput-object p1, p0, Lc8/lwq;->actual:Lc8/Omq;

    .line 100
    iput-object p2, p0, Lc8/lwq;->combiner:Lc8/Rnq;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, p3, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 103
    .local v0, "array":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, p3, :cond_0

    .line 104
    sget-object v2, Lc8/lwq;->EMPTY:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    iput-object v0, p0, Lc8/lwq;->current:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 108
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lc8/lwq;->ready:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 109
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lc8/lwq;->request(J)V

    .line 110
    return-void
.end method


# virtual methods
.method innerComplete(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 183
    .local p0, "this":Lc8/lwq;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    iget-object v0, p0, Lc8/lwq;->current:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lc8/lwq;->EMPTY:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lc8/lwq;->onCompleted()V

    .line 186
    :cond_0
    return-void
.end method

.method innerError(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 179
    .local p0, "this":Lc8/lwq;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    invoke-virtual {p0, p2}, Lc8/lwq;->onError(Ljava/lang/Throwable;)V

    .line 180
    return-void
.end method

.method innerNext(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 172
    .local p0, "this":Lc8/lwq;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    iget-object v1, p0, Lc8/lwq;->current:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    .local v0, "last":Ljava/lang/Object;
    sget-object v1, Lc8/lwq;->EMPTY:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v1, p0, Lc8/lwq;->ready:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 176
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lc8/lwq;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lc8/lwq;->done:Z

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/lwq;->done:Z

    .line 161
    invoke-virtual {p0}, Lc8/lwq;->unsubscribe()V

    .line 162
    iget-object v0, p0, Lc8/lwq;->actual:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 146
    .local p0, "this":Lc8/lwq;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lc8/lwq;->done:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/lwq;->done:Z

    .line 151
    invoke-virtual {p0}, Lc8/lwq;->unsubscribe()V

    .line 152
    iget-object v0, p0, Lc8/lwq;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lc8/lwq;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v6, p0, Lc8/lwq;->done:Z

    if-eqz v6, :cond_0

    .line 142
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v6, p0, Lc8/lwq;->ready:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-nez v6, :cond_2

    .line 119
    iget-object v0, p0, Lc8/lwq;->current:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 120
    .local v0, "array":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    .line 121
    .local v4, "n":I
    const/4 v6, 0x0

    invoke-virtual {v0, v6, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 123
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    new-array v1, v6, [Ljava/lang/Object;

    .line 124
    .local v1, "copy":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 125
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 131
    :cond_1
    :try_start_0
    iget-object v6, p0, Lc8/lwq;->combiner:Lc8/Rnq;

    invoke-interface {v6, v1}, Lc8/Rnq;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 138
    .local v5, "result":Ljava/lang/Object;, "TR;"
    iget-object v6, p0, Lc8/lwq;->actual:Lc8/Omq;

    invoke-virtual {v6, v5}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    .end local v5    # "result":Ljava/lang/Object;, "TR;"
    :catch_0
    move-exception v2

    .line 133
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 134
    invoke-virtual {p0, v2}, Lc8/lwq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 140
    .end local v0    # "array":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .end local v1    # "copy":[Ljava/lang/Object;
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_2
    const-wide/16 v6, 0x1

    invoke-virtual {p0, v6, v7}, Lc8/lwq;->request(J)V

    goto :goto_0
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 167
    .local p0, "this":Lc8/lwq;, "Lrx/internal/operators/OperatorWithLatestFromMany$WithLatestMainSubscriber<TT;TR;>;"
    invoke-super {p0, p1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 168
    iget-object v0, p0, Lc8/lwq;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 169
    return-void
.end method
