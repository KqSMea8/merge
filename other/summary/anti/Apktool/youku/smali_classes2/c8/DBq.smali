.class public final Lc8/DBq;
.super Lc8/GBq;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$ReplayProducer;,
        Lc8/ABq;,
        Lc8/BBq;,
        Lc8/CBq;,
        Lc8/zBq;,
        Lrx/subjects/ReplaySubject$ReplayState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/GBq",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# instance fields
.field final state:Lrx/subjects/ReplaySubject$ReplayState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplayState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lc8/DBq;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lrx/subjects/ReplaySubject$ReplayState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lc8/DBq;, "Lrx/subjects/ReplaySubject<TT;>;"
    .local p1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    invoke-direct {p0, p1}, Lc8/GBq;-><init>(Lc8/Rlq;)V

    .line 238
    iput-object p1, p0, Lc8/DBq;->state:Lrx/subjects/ReplaySubject$ReplayState;

    .line 239
    return-void
.end method

.method public static create()Lc8/DBq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/DBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    const/16 v0, 0x10

    invoke-static {v0}, Lc8/DBq;->create(I)Lc8/DBq;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lc8/DBq;
    .locals 5
    .param p0, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lc8/DBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    if-gtz p0, :cond_0

    .line 94
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "capacity > 0 required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_0
    new-instance v0, Lc8/CBq;

    invoke-direct {v0, p0}, Lc8/CBq;-><init>(I)V

    .line 97
    .local v0, "buffer":Lc8/zBq;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$ReplayState;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$ReplayState;-><init>(Lc8/zBq;)V

    .line 98
    .local v1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    new-instance v2, Lc8/DBq;

    invoke-direct {v2, v1}, Lc8/DBq;-><init>(Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v2
.end method

.method static createUnbounded()Lc8/DBq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/DBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lc8/BBq;

    const v2, 0x7fffffff

    invoke-direct {v0, v2}, Lc8/BBq;-><init>(I)V

    .line 115
    .local v0, "buffer":Lc8/zBq;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$ReplayState;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$ReplayState;-><init>(Lc8/zBq;)V

    .line 116
    .local v1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    new-instance v2, Lc8/DBq;

    invoke-direct {v2, v1}, Lc8/DBq;-><init>(Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v2
.end method

.method static createUnboundedTime()Lc8/DBq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/DBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lc8/ABq;

    const v2, 0x7fffffff

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {}, Lc8/hBq;->immediate()Lc8/amq;

    move-result-object v3

    invoke-direct {v0, v2, v4, v5, v3}, Lc8/ABq;-><init>(IJLc8/amq;)V

    .line 133
    .local v0, "buffer":Lc8/zBq;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$ReplayState;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$ReplayState;-><init>(Lc8/zBq;)V

    .line 134
    .local v1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    new-instance v2, Lc8/DBq;

    invoke-direct {v2, v1}, Lc8/DBq;-><init>(Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v2
.end method

.method public static createWithSize(I)Lc8/DBq;
    .locals 3
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lc8/DBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lc8/BBq;

    invoke-direct {v0, p0}, Lc8/BBq;-><init>(I)V

    .line 158
    .local v0, "buffer":Lc8/zBq;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$ReplayState;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$ReplayState;-><init>(Lc8/zBq;)V

    .line 159
    .local v1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    new-instance v2, Lc8/DBq;

    invoke-direct {v2, v1}, Lc8/DBq;-><init>(Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v2
.end method

.method public static createWithTime(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/DBq;
    .locals 2
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/DBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 194
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0, p3}, Lc8/DBq;->createWithTimeAndSize(JLjava/util/concurrent/TimeUnit;ILc8/amq;)Lc8/DBq;

    move-result-object v0

    return-object v0
.end method

.method public static createWithTimeAndSize(JLjava/util/concurrent/TimeUnit;ILc8/amq;)Lc8/DBq;
    .locals 4
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "size"    # I
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lc8/amq;",
            ")",
            "Lc8/DBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Lc8/ABq;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v0, p3, v2, v3, p4}, Lc8/ABq;-><init>(IJLc8/amq;)V

    .line 232
    .local v0, "buffer":Lc8/zBq;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$ReplayState;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$ReplayState;-><init>(Lc8/zBq;)V

    .line 233
    .local v1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    new-instance v2, Lc8/DBq;

    invoke-direct {v2, v1}, Lc8/DBq;-><init>(Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v2
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lc8/DBq;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lc8/DBq;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lc8/DBq;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lc8/zBq;

    invoke-interface {v0}, Lc8/zBq;->error()Ljava/lang/Throwable;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lc8/DBq;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lc8/DBq;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lc8/zBq;

    invoke-interface {v0}, Lc8/zBq;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 2
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lc8/DBq;, "Lrx/subjects/ReplaySubject<TT;>;"
    sget-object v1, Lc8/DBq;->EMPTY_ARRAY:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lc8/DBq;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 336
    .local v0, "r":[Ljava/lang/Object;, "[TT;"
    sget-object v1, Lc8/DBq;->EMPTY_ARRAY:[Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 337
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    .line 339
    .end local v0    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_0
    return-object v0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lc8/DBq;, "Lrx/subjects/ReplaySubject<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lc8/DBq;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lc8/zBq;

    invoke-interface {v0, p1}, Lc8/zBq;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasAnyValue()Z
    .locals 1
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lc8/DBq;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lc8/DBq;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lc8/zBq;

    invoke-interface {v0}, Lc8/zBq;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCompleted()Z
    .locals 1
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lc8/DBq;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lc8/DBq;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/DBq;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lc8/zBq;

    invoke-interface {v0}, Lc8/zBq;->error()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasObservers()Z
    .locals 1

    .prologue
    .line 264
    .local p0, "this":Lc8/DBq;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lc8/DBq;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThrowable()Z
    .locals 1
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lc8/DBq;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lc8/DBq;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/DBq;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lc8/zBq;

    invoke-interface {v0}, Lc8/zBq;->error()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lc8/DBq;, "Lrx/subjects/ReplaySubject<TT;>;"
    invoke-virtual {p0}, Lc8/DBq;->hasAnyValue()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 253
    .local p0, "this":Lc8/DBq;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lc8/DBq;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->onCompleted()V

    .line 254
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 248
    .local p0, "this":Lc8/DBq;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lc8/DBq;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0, p1}, Lrx/subjects/ReplaySubject$ReplayState;->onError(Ljava/lang/Throwable;)V

    .line 249
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lc8/DBq;, "Lrx/subjects/ReplaySubject<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/DBq;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0, p1}, Lrx/subjects/ReplaySubject$ReplayState;->onNext(Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public size()I
    .locals 1
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lc8/DBq;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lc8/DBq;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lc8/zBq;

    invoke-interface {v0}, Lc8/zBq;->size()I

    move-result v0

    return v0
.end method

.method subscriberCount()I
    .locals 1

    .prologue
    .line 259
    .local p0, "this":Lc8/DBq;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lc8/DBq;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    array-length v0, v0

    return v0
.end method
