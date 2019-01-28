.class public final Lc8/Tzq;
.super Ljava/lang/Object;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ON_START:Ljava/lang/Object;

.field static final SET_PRODUCER:Ljava/lang/Object;

.field static final UNSUBSCRIBE:Ljava/lang/Object;


# instance fields
.field private final o:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/Tzq;->ON_START:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/Tzq;->SET_PRODUCER:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/Tzq;->UNSUBSCRIBE:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lc8/Vlq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "o":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lc8/Tzq;->o:Lc8/Vlq;

    .line 67
    return-void
.end method

.method private blockForSingle(Lc8/Vlq;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "observable":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 441
    .local v2, "returnItem":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 442
    .local v1, "returnException":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 445
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lc8/Mzq;

    invoke-direct {v4, p0, v0, v1, v2}, Lc8/Mzq;-><init>(Lc8/Tzq;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p1, v4}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    move-result-object v3

    .line 462
    .local v3, "subscription":Lc8/Pmq;
    invoke-static {v0, v3}, Lc8/zxq;->awaitForComplete(Ljava/util/concurrent/CountDownLatch;Lc8/Pmq;)V

    .line 464
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 465
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v4}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 468
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public static from(Lc8/Vlq;)Lc8/Tzq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Tzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "o":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lc8/Tzq;

    invoke-direct {v0, p0}, Lc8/Tzq;-><init>(Lc8/Vlq;)V

    return-object v0
.end method


# virtual methods
.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-virtual {v0}, Lc8/Vlq;->first()Lc8/Vlq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Tzq;->blockForSingle(Lc8/Vlq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public first(Lc8/Inq;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-virtual {v0, p1}, Lc8/Vlq;->first(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Tzq;->blockForSingle(Lc8/Vlq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public firstOrDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->firstOrDefault(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Tzq;->blockForSingle(Lc8/Vlq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public firstOrDefault(Ljava/lang/Object;Lc8/Inq;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-virtual {v0, p2}, Lc8/Vlq;->filter(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->firstOrDefault(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Tzq;->blockForSingle(Lc8/Vlq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public forEach(Lc8/inq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 106
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 113
    .local v0, "exceptionFromOnError":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    iget-object v3, p0, Lc8/Tzq;->o:Lc8/Vlq;

    new-instance v4, Lc8/Kzq;

    invoke-direct {v4, p0, v1, v0, p1}, Lc8/Kzq;-><init>(Lc8/Tzq;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Lc8/inq;)V

    invoke-virtual {v3, v4}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    move-result-object v2

    .line 138
    .local v2, "subscription":Lc8/Pmq;
    invoke-static {v1, v2}, Lc8/zxq;->awaitForComplete(Ljava/util/concurrent/CountDownLatch;Lc8/Pmq;)V

    .line 140
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 143
    :cond_0
    return-void
.end method

.method public getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-static {v0}, Lc8/yoq;->toIterator(Lc8/Vlq;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-virtual {v0}, Lc8/Vlq;->last()Lc8/Vlq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Tzq;->blockForSingle(Lc8/Vlq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public last(Lc8/Inq;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-virtual {v0, p1}, Lc8/Vlq;->last(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Tzq;->blockForSingle(Lc8/Vlq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastOrDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->lastOrDefault(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Tzq;->blockForSingle(Lc8/Vlq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastOrDefault(Ljava/lang/Object;Lc8/Inq;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-virtual {v0, p2}, Lc8/Vlq;->filter(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->lastOrDefault(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Tzq;->blockForSingle(Lc8/Vlq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public latest()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-static {v0}, Lc8/loq;->latest(Lc8/Vlq;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public mostRecent(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-static {v0, p1}, Lc8/poq;->mostRecent(Lc8/Vlq;Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-static {v0}, Lc8/toq;->next(Lc8/Vlq;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public single()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-virtual {v0}, Lc8/Vlq;->single()Lc8/Vlq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Tzq;->blockForSingle(Lc8/Vlq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public single(Lc8/Inq;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-virtual {v0, p1}, Lc8/Vlq;->single(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Tzq;->blockForSingle(Lc8/Vlq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public singleOrDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->singleOrDefault(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Tzq;->blockForSingle(Lc8/Vlq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public singleOrDefault(Ljava/lang/Object;Lc8/Inq;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-virtual {v0, p2}, Lc8/Vlq;->filter(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->singleOrDefault(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Tzq;->blockForSingle(Lc8/Vlq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subscribe()V
    .locals 7
    .annotation build Lc8/bnq;
    .end annotation

    .prologue
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 476
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 477
    .local v0, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v4, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v4, v2, v6

    .line 479
    .local v2, "error":[Ljava/lang/Throwable;
    iget-object v4, p0, Lc8/Tzq;->o:Lc8/Vlq;

    new-instance v5, Lc8/Nzq;

    invoke-direct {v5, p0, v2, v0}, Lc8/Nzq;-><init>(Lc8/Tzq;[Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v5}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    move-result-object v3

    .line 496
    .local v3, "s":Lc8/Pmq;
    invoke-static {v0, v3}, Lc8/zxq;->awaitForComplete(Ljava/util/concurrent/CountDownLatch;Lc8/Pmq;)V

    .line 497
    aget-object v1, v2, v6

    .line 498
    .local v1, "e":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 499
    invoke-static {v1}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 501
    :cond_0
    return-void
.end method

.method public subscribe(Lc8/Omq;)V
    .locals 8
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    const/4 v7, 0x0

    .line 555
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v1

    .line 556
    .local v1, "nl":Lc8/cpq;, "Lrx/internal/operators/NotificationLite<TT;>;"
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 557
    .local v3, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Object;>;"
    const/4 v6, 0x1

    new-array v5, v6, [Lc8/Xlq;

    const/4 v6, 0x0

    aput-object v6, v5, v7

    .line 559
    .local v5, "theProducer":[Lc8/Xlq;
    new-instance v4, Lc8/Pzq;

    invoke-direct {v4, p0, v3, v1, v5}, Lc8/Pzq;-><init>(Lc8/Tzq;Ljava/util/concurrent/BlockingQueue;Lc8/cpq;[Lc8/Xlq;)V

    .line 585
    .local v4, "s":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v4}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 586
    new-instance v6, Lc8/Qzq;

    invoke-direct {v6, p0, v3}, Lc8/Qzq;-><init>(Lc8/Tzq;Ljava/util/concurrent/BlockingQueue;)V

    invoke-static {v6}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v6

    invoke-virtual {p1, v6}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 593
    iget-object v6, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-virtual {v6, v4}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    .line 597
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lc8/Omq;->isUnsubscribed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 600
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 601
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 602
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    .line 604
    :cond_1
    invoke-virtual {p1}, Lc8/Omq;->isUnsubscribed()Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lc8/Tzq;->UNSUBSCRIBE:Ljava/lang/Object;

    if-eq v2, v6, :cond_4

    .line 607
    sget-object v6, Lc8/Tzq;->ON_START:Ljava/lang/Object;

    if-ne v2, v6, :cond_2

    .line 608
    invoke-virtual {p1}, Lc8/Omq;->onStart()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 617
    .end local v2    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 619
    invoke-virtual {p1, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    invoke-virtual {v4}, Lc8/Omq;->unsubscribe()V

    .line 622
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 610
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_2
    :try_start_2
    sget-object v6, Lc8/Tzq;->SET_PRODUCER:Ljava/lang/Object;

    if-ne v2, v6, :cond_3

    .line 611
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {p1, v6}, Lc8/Omq;->setProducer(Lc8/Xlq;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 621
    .end local v2    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Lc8/Omq;->unsubscribe()V

    throw v6

    .line 613
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_3
    :try_start_3
    invoke-virtual {v1, p1, v2}, Lc8/cpq;->accept(Lc8/Wlq;Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 621
    invoke-virtual {v4}, Lc8/Omq;->unsubscribe()V

    goto :goto_1

    .end local v2    # "o":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v4}, Lc8/Omq;->unsubscribe()V

    goto :goto_1
.end method

.method public subscribe(Lc8/Wlq;)V
    .locals 7
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Wlq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "observer":Lc8/Wlq;, "Lrx/Observer<-TT;>;"
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v1

    .line 510
    .local v1, "nl":Lc8/cpq;, "Lrx/internal/operators/NotificationLite<TT;>;"
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 513
    .local v3, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Object;>;"
    iget-object v5, p0, Lc8/Tzq;->o:Lc8/Vlq;

    new-instance v6, Lc8/Ozq;

    invoke-direct {v6, p0, v3, v1}, Lc8/Ozq;-><init>(Lc8/Tzq;Ljava/util/concurrent/BlockingQueue;Lc8/cpq;)V

    invoke-virtual {v5, v6}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    move-result-object v4

    .line 530
    .local v4, "s":Lc8/Pmq;
    :cond_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 531
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 532
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    .line 534
    :cond_1
    invoke-virtual {v1, p1, v2}, Lc8/cpq;->accept(Lc8/Wlq;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 542
    invoke-interface {v4}, Lc8/Pmq;->unsubscribe()V

    .line 543
    .end local v2    # "o":Ljava/lang/Object;
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 540
    invoke-interface {p1, v0}, Lc8/Wlq;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    invoke-interface {v4}, Lc8/Pmq;->unsubscribe()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Lc8/Pmq;->unsubscribe()V

    throw v5
.end method

.method public subscribe(Lc8/inq;)V
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 637
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    new-instance v0, Lc8/Rzq;

    invoke-direct {v0, p0}, Lc8/Rzq;-><init>(Lc8/Tzq;)V

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lc8/Tzq;->subscribe(Lc8/inq;Lc8/inq;Lc8/hnq;)V

    .line 643
    return-void
.end method

.method public subscribe(Lc8/inq;Lc8/inq;)V
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-TT;>;",
            "Lc8/inq",
            "<-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 652
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lc8/inq;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lc8/Tzq;->subscribe(Lc8/inq;Lc8/inq;Lc8/hnq;)V

    .line 653
    return-void
.end method

.method public subscribe(Lc8/inq;Lc8/inq;Lc8/hnq;)V
    .locals 1
    .param p3, "onCompleted"    # Lc8/hnq;
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-TT;>;",
            "Lc8/inq",
            "<-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lc8/hnq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lc8/inq;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    new-instance v0, Lc8/Szq;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/Szq;-><init>(Lc8/Tzq;Lc8/inq;Lc8/inq;Lc8/hnq;)V

    invoke-virtual {p0, v0}, Lc8/Tzq;->subscribe(Lc8/Wlq;)V

    .line 679
    return-void
.end method

.method public toFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lc8/Tzq;->o:Lc8/Vlq;

    invoke-static {v0}, Lc8/woq;->toFuture(Lc8/Vlq;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lc8/Tzq;, "Lrx/observables/BlockingObservable<TT;>;"
    new-instance v0, Lc8/Lzq;

    invoke-direct {v0, p0}, Lc8/Lzq;-><init>(Lc8/Tzq;)V

    return-object v0
.end method
