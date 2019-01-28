.class public Lc8/Plq;
.super Ljava/lang/Object;
.source "Completable.java"


# annotations
.annotation build Lc8/bnq;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Olq;,
        Lc8/Nlq;,
        Lc8/Mlq;,
        Lc8/Llq;
    }
.end annotation


# static fields
.field static final COMPLETE:Lc8/Plq;

.field static final NEVER:Lc8/Plq;


# instance fields
.field private final onSubscribe:Lc8/Llq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    new-instance v0, Lc8/Plq;

    new-instance v1, Lc8/blq;

    invoke-direct {v1}, Lc8/blq;-><init>()V

    invoke-direct {v0, v1, v2}, Lc8/Plq;-><init>(Lc8/Llq;Z)V

    sput-object v0, Lc8/Plq;->COMPLETE:Lc8/Plq;

    .line 99
    new-instance v0, Lc8/Plq;

    new-instance v1, Lc8/tlq;

    invoke-direct {v1}, Lc8/tlq;-><init>()V

    invoke-direct {v0, v1, v2}, Lc8/Plq;-><init>(Lc8/Llq;Z)V

    sput-object v0, Lc8/Plq;->NEVER:Lc8/Plq;

    return-void
.end method

.method protected constructor <init>(Lc8/Llq;)V
    .locals 1
    .param p1, "onSubscribe"    # Lc8/Llq;

    .prologue
    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    invoke-static {p1}, Lc8/WAq;->onCreate(Lc8/Llq;)Lc8/Llq;

    move-result-object v0

    iput-object v0, p0, Lc8/Plq;->onSubscribe:Lc8/Llq;

    .line 985
    return-void
.end method

.method private constructor <init>(Lc8/Llq;Z)V
    .locals 0
    .param p1, "onSubscribe"    # Lc8/Llq;
    .param p2, "useHook"    # Z

    .prologue
    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    if-eqz p2, :cond_0

    invoke-static {p1}, Lc8/WAq;->onCreate(Lc8/Llq;)Lc8/Llq;

    move-result-object p1

    .end local p1    # "onSubscribe":Lc8/Llq;
    :cond_0
    iput-object p1, p0, Lc8/Plq;->onSubscribe:Lc8/Llq;

    .line 996
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    invoke-static {p0}, Lc8/Plq;->deliverUncaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static amb(Ljava/lang/Iterable;)Lc8/Plq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Plq;",
            ">;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v0, Lc8/Flq;

    invoke-direct {v0, p0}, Lc8/Flq;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static varargs amb([Lc8/Plq;)Lc8/Plq;
    .locals 2
    .param p0, "sources"    # [Lc8/Plq;

    .prologue
    .line 114
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    array-length v0, p0

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Lc8/Plq;->complete()Lc8/Plq;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 118
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 119
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_0

    .line 122
    :cond_1
    new-instance v0, Lc8/Dlq;

    invoke-direct {v0, p0}, Lc8/Dlq;-><init>([Lc8/Plq;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    goto :goto_0
.end method

.method public static complete()Lc8/Plq;
    .locals 3

    .prologue
    .line 314
    sget-object v1, Lc8/Plq;->COMPLETE:Lc8/Plq;

    iget-object v1, v1, Lc8/Plq;->onSubscribe:Lc8/Llq;

    invoke-static {v1}, Lc8/WAq;->onCreate(Lc8/Llq;)Lc8/Llq;

    move-result-object v0

    .line 315
    .local v0, "cos":Lc8/Llq;
    sget-object v1, Lc8/Plq;->COMPLETE:Lc8/Plq;

    iget-object v1, v1, Lc8/Plq;->onSubscribe:Lc8/Llq;

    if-ne v0, v1, :cond_0

    .line 316
    sget-object v1, Lc8/Plq;->COMPLETE:Lc8/Plq;

    .line 318
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lc8/Plq;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lc8/Plq;-><init>(Lc8/Llq;Z)V

    goto :goto_0
.end method

.method public static concat(Lc8/Vlq;)Lc8/Plq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Plq;",
            ">;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "sources":Lc8/Vlq;, "Lrx/Observable<+Lrx/Completable;>;"
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lc8/Plq;->concat(Lc8/Vlq;I)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Vlq;I)Lc8/Plq;
    .locals 3
    .param p1, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Plq;",
            ">;I)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "sources":Lc8/Vlq;, "Lrx/Observable<+Lrx/Completable;>;"
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    if-gtz p1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prefetch > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    new-instance v0, Lc8/Ioq;

    invoke-direct {v0, p0, p1}, Lc8/Ioq;-><init>(Lc8/Vlq;I)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;)Lc8/Plq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Plq;",
            ">;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    new-instance v0, Lc8/Koq;

    invoke-direct {v0, p0}, Lc8/Koq;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Lc8/Plq;)Lc8/Plq;
    .locals 2
    .param p0, "sources"    # [Lc8/Plq;

    .prologue
    .line 328
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    array-length v0, p0

    if-nez v0, :cond_0

    .line 330
    invoke-static {}, Lc8/Plq;->complete()Lc8/Plq;

    move-result-object v0

    .line 335
    :goto_0
    return-object v0

    .line 332
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 333
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_0

    .line 335
    :cond_1
    new-instance v0, Lc8/Joq;

    invoke-direct {v0, p0}, Lc8/Joq;-><init>([Lc8/Plq;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    goto :goto_0
.end method

.method public static create(Lc8/Llq;)Lc8/Plq;
    .locals 2
    .param p0, "onSubscribe"    # Lc8/Llq;

    .prologue
    .line 383
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :try_start_0
    new-instance v1, Lc8/Plq;

    invoke-direct {v1, p0}, Lc8/Plq;-><init>(Lc8/Llq;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 388
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 389
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 390
    invoke-static {v0}, Lc8/Plq;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v1

    throw v1
.end method

.method public static defer(Lc8/Hnq;)Lc8/Plq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Hnq",
            "<+",
            "Lc8/Plq;",
            ">;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "completableFunc0":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/Completable;>;"
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    new-instance v0, Lc8/Glq;

    invoke-direct {v0, p0}, Lc8/Glq;-><init>(Lc8/Hnq;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method private static deliverUncaughtException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2014
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2015
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 2016
    return-void
.end method

.method public static error(Lc8/Hnq;)Lc8/Plq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Hnq",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "errorFunc0":Lc8/Hnq;, "Lrx/functions/Func0<+Ljava/lang/Throwable;>;"
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    new-instance v0, Lc8/Hlq;

    invoke-direct {v0, p0}, Lc8/Hlq;-><init>(Lc8/Hnq;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Lc8/Plq;
    .locals 1
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 464
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    new-instance v0, Lc8/Ilq;

    invoke-direct {v0, p0}, Lc8/Ilq;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static fromAction(Lc8/hnq;)Lc8/Plq;
    .locals 1
    .param p0, "action"    # Lc8/hnq;

    .prologue
    .line 482
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    new-instance v0, Lc8/Jlq;

    invoke-direct {v0, p0}, Lc8/Jlq;-><init>(Lc8/hnq;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lc8/Plq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    new-instance v0, Lc8/Klq;

    invoke-direct {v0, p0}, Lc8/Klq;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;)Lc8/Plq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-static {p0}, Lc8/Vlq;->from(Ljava/util/concurrent/Future;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Plq;->fromObservable(Lc8/Vlq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static fromObservable(Lc8/Vlq;)Lc8/Plq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<*>;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "flowable":Lc8/Vlq;, "Lrx/Observable<*>;"
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    new-instance v0, Lc8/Ikq;

    invoke-direct {v0, p0}, Lc8/Ikq;-><init>(Lc8/Vlq;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static fromSingle(Lc8/Mmq;)Lc8/Plq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mmq",
            "<*>;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "single":Lc8/Mmq;, "Lrx/Single<*>;"
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    new-instance v0, Lc8/Kkq;

    invoke-direct {v0, p0}, Lc8/Kkq;-><init>(Lc8/Mmq;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Vlq;)Lc8/Plq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Plq;",
            ">;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "sources":Lc8/Vlq;, "Lrx/Observable<+Lrx/Completable;>;"
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lc8/Plq;->merge0(Lc8/Vlq;IZ)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Vlq;I)Lc8/Plq;
    .locals 1
    .param p1, "maxConcurrency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Plq;",
            ">;I)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 660
    .local p0, "sources":Lc8/Vlq;, "Lrx/Observable<+Lrx/Completable;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/Plq;->merge0(Lc8/Vlq;IZ)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Ljava/lang/Iterable;)Lc8/Plq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Plq;",
            ">;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 635
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    new-instance v0, Lc8/Voq;

    invoke-direct {v0, p0}, Lc8/Voq;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static varargs merge([Lc8/Plq;)Lc8/Plq;
    .locals 2
    .param p0, "sources"    # [Lc8/Plq;

    .prologue
    .line 617
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    array-length v0, p0

    if-nez v0, :cond_0

    .line 619
    invoke-static {}, Lc8/Plq;->complete()Lc8/Plq;

    move-result-object v0

    .line 624
    :goto_0
    return-object v0

    .line 621
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 622
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_0

    .line 624
    :cond_1
    new-instance v0, Lc8/Poq;

    invoke-direct {v0, p0}, Lc8/Poq;-><init>([Lc8/Plq;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    goto :goto_0
.end method

.method protected static merge0(Lc8/Vlq;IZ)Lc8/Plq;
    .locals 3
    .param p1, "maxConcurrency"    # I
    .param p2, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Plq;",
            ">;IZ)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 676
    .local p0, "sources":Lc8/Vlq;, "Lrx/Observable<+Lrx/Completable;>;"
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    if-gtz p1, :cond_0

    .line 678
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxConcurrency > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_0
    new-instance v0, Lc8/Noq;

    invoke-direct {v0, p0, p1, p2}, Lc8/Noq;-><init>(Lc8/Vlq;IZ)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lc8/Vlq;)Lc8/Plq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Plq;",
            ">;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 718
    .local p0, "sources":Lc8/Vlq;, "Lrx/Observable<+Lrx/Completable;>;"
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lc8/Plq;->merge0(Lc8/Vlq;IZ)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lc8/Vlq;I)Lc8/Plq;
    .locals 1
    .param p1, "maxConcurrency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Plq;",
            ">;I)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 733
    .local p0, "sources":Lc8/Vlq;, "Lrx/Observable<+Lrx/Completable;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lc8/Plq;->merge0(Lc8/Vlq;IZ)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;)Lc8/Plq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Plq;",
            ">;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 705
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v0, Lc8/Toq;

    invoke-direct {v0, p0}, Lc8/Toq;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static varargs mergeDelayError([Lc8/Plq;)Lc8/Plq;
    .locals 1
    .param p0, "sources"    # [Lc8/Plq;

    .prologue
    .line 692
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    new-instance v0, Lc8/Roq;

    invoke-direct {v0, p0}, Lc8/Roq;-><init>([Lc8/Plq;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static never()Lc8/Plq;
    .locals 3

    .prologue
    .line 741
    sget-object v1, Lc8/Plq;->NEVER:Lc8/Plq;

    iget-object v1, v1, Lc8/Plq;->onSubscribe:Lc8/Llq;

    invoke-static {v1}, Lc8/WAq;->onCreate(Lc8/Llq;)Lc8/Llq;

    move-result-object v0

    .line 742
    .local v0, "cos":Lc8/Llq;
    sget-object v1, Lc8/Plq;->NEVER:Lc8/Plq;

    iget-object v1, v1, Lc8/Plq;->onSubscribe:Lc8/Llq;

    if-ne v0, v1, :cond_0

    .line 743
    sget-object v1, Lc8/Plq;->NEVER:Lc8/Plq;

    .line 745
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lc8/Plq;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lc8/Plq;-><init>(Lc8/Llq;Z)V

    goto :goto_0
.end method

.method static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 755
    .local p0, "o":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 756
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 758
    :cond_0
    return-object p0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;)Lc8/Plq;
    .locals 2
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 768
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc8/Plq;->timer(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Plq;
    .locals 2
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lc8/amq;

    .prologue
    .line 780
    invoke-static {p2}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    invoke-static {p3}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    new-instance v0, Lc8/Mkq;

    invoke-direct {v0, p3, p0, p1, p2}, Lc8/Mkq;-><init>(Lc8/amq;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method static toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 811
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 812
    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v0, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 813
    return-object v0
.end method

.method private final unsafeSubscribe(Lc8/Omq;Z)V
    .locals 2
    .param p2, "callOnStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Omq",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 2071
    .local p1, "s":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2073
    if-eqz p2, :cond_0

    .line 2074
    :try_start_0
    invoke-virtual {p1}, Lc8/Omq;->onStart()V

    .line 2076
    :cond_0
    new-instance v1, Lc8/qlq;

    invoke-direct {v1, p0, p1}, Lc8/qlq;-><init>(Lc8/Plq;Lc8/Omq;)V

    invoke-virtual {p0, v1}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 2092
    invoke-static {p1}, Lc8/WAq;->onObservableReturn(Lc8/Pmq;)Lc8/Pmq;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2100
    return-void

    .line 2093
    :catch_0
    move-exception v0

    .line 2094
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 2095
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2096
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 2097
    invoke-static {v0}, Lc8/WAq;->onObservableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2098
    invoke-static {v0}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 2099
    invoke-static {v0}, Lc8/Plq;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v1

    throw v1
.end method

.method public static using(Lc8/Hnq;Lc8/Inq;Lc8/inq;)Lc8/Plq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<TR;>;",
            "Lc8/Inq",
            "<-TR;+",
            "Lc8/Plq;",
            ">;",
            "Lc8/inq",
            "<-TR;>;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 831
    .local p0, "resourceFunc0":Lc8/Hnq;, "Lrx/functions/Func0<TR;>;"
    .local p1, "completableFunc1":Lc8/Inq;, "Lrx/functions/Func1<-TR;+Lrx/Completable;>;"
    .local p2, "disposer":Lc8/inq;, "Lrx/functions/Action1<-TR;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lc8/Plq;->using(Lc8/Hnq;Lc8/Inq;Lc8/inq;Z)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public static using(Lc8/Hnq;Lc8/Inq;Lc8/inq;Z)Lc8/Plq;
    .locals 1
    .param p3, "eager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<TR;>;",
            "Lc8/Inq",
            "<-TR;+",
            "Lc8/Plq;",
            ">;",
            "Lc8/inq",
            "<-TR;>;Z)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 855
    .local p0, "resourceFunc0":Lc8/Hnq;, "Lrx/functions/Func0<TR;>;"
    .local p1, "completableFunc1":Lc8/Inq;, "Lrx/functions/Func1<-TR;+Lrx/Completable;>;"
    .local p2, "disposer":Lc8/inq;, "Lrx/functions/Action1<-TR;>;"
    invoke-static {p0}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    invoke-static {p2}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    new-instance v0, Lc8/Pkq;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/Pkq;-><init>(Lc8/Hnq;Lc8/Inq;Lc8/inq;Z)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final ambWith(Lc8/Plq;)Lc8/Plq;
    .locals 2
    .param p1, "other"    # Lc8/Plq;

    .prologue
    .line 1006
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    const/4 v0, 0x2

    new-array v0, v0, [Lc8/Plq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lc8/Plq;->amb([Lc8/Plq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final andThen(Lc8/Mmq;)Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<TT;>;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1152
    .local p1, "next":Lc8/Mmq;, "Lrx/Single<TT;>;"
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    invoke-virtual {p0}, Lc8/Plq;->toObservable()Lc8/Vlq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc8/Mmq;->delaySubscription(Lc8/Vlq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final andThen(Lc8/Plq;)Lc8/Plq;
    .locals 1
    .param p1, "next"    # Lc8/Plq;

    .prologue
    .line 1166
    invoke-virtual {p0, p1}, Lc8/Plq;->concatWith(Lc8/Plq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final andThen(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1133
    .local p1, "next":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    invoke-virtual {p0}, Lc8/Plq;->toObservable()Lc8/Vlq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc8/Vlq;->delaySubscription(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final await()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 1016
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1017
    .local v0, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Ljava/lang/Throwable;

    .line 1019
    .local v1, "err":[Ljava/lang/Throwable;
    new-instance v3, Lc8/Qkq;

    invoke-direct {v3, p0, v0, v1}, Lc8/Qkq;-><init>(Lc8/Plq;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 1039
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 1040
    aget-object v3, v1, v8

    if-eqz v3, :cond_0

    .line 1041
    aget-object v3, v1, v8

    invoke-static {v3}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    aget-object v3, v1, v8

    if-eqz v3, :cond_0

    .line 1051
    aget-object v3, v1, v8

    invoke-static {v3}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_0

    .line 1047
    :catch_0
    move-exception v2

    .line 1048
    .local v2, "ex":Ljava/lang/InterruptedException;
    invoke-static {v2}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 1065
    invoke-static {p3}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1068
    .local v1, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v0, [Ljava/lang/Throwable;

    .line 1070
    .local v2, "err":[Ljava/lang/Throwable;
    new-instance v4, Lc8/Rkq;

    invoke-direct {v4, p0, v1, v2}, Lc8/Rkq;-><init>(Lc8/Plq;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 1090
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1091
    aget-object v4, v2, v8

    if-eqz v4, :cond_0

    .line 1092
    aget-object v4, v2, v8

    invoke-static {v4}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 1107
    :cond_0
    :goto_0
    return v0

    .line 1098
    :cond_1
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1102
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 1103
    aget-object v4, v2, v8

    if-eqz v4, :cond_0

    .line 1104
    aget-object v4, v2, v8

    invoke-static {v4}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_0

    .line 1099
    .end local v0    # "b":Z
    :catch_0
    move-exception v3

    .line 1100
    .local v3, "ex":Ljava/lang/InterruptedException;
    invoke-static {v3}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public final compose(Lc8/Olq;)Lc8/Plq;
    .locals 1
    .param p1, "transformer"    # Lc8/Olq;

    .prologue
    .line 1118
    invoke-virtual {p0, p1}, Lc8/Plq;->to(Lc8/Inq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Plq;

    return-object v0
.end method

.method public final concatWith(Lc8/Plq;)Lc8/Plq;
    .locals 2
    .param p1, "other"    # Lc8/Plq;

    .prologue
    .line 1176
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    const/4 v0, 0x2

    new-array v0, v0, [Lc8/Plq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lc8/Plq;->concat([Lc8/Plq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lc8/Plq;
    .locals 7
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 1188
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lc8/Plq;->delay(JLjava/util/concurrent/TimeUnit;Lc8/amq;Z)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Plq;
    .locals 7
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;

    .prologue
    .line 1201
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lc8/Plq;->delay(JLjava/util/concurrent/TimeUnit;Lc8/amq;Z)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lc8/amq;Z)Lc8/Plq;
    .locals 9
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .param p5, "delayError"    # Z

    .prologue
    .line 1215
    invoke-static {p3}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    invoke-static {p4}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    new-instance v1, Lc8/Vkq;

    move-object v2, p0

    move-object v3, p4

    move-wide v4, p1

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lc8/Vkq;-><init>(Lc8/Plq;Lc8/amq;JLjava/util/concurrent/TimeUnit;Z)V

    invoke-static {v1}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final doAfterTerminate(Lc8/hnq;)Lc8/Plq;
    .locals 6
    .param p1, "onAfterComplete"    # Lc8/hnq;

    .prologue
    .line 1460
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v1

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v2

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v3

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v5

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lc8/Plq;->doOnLifecycle(Lc8/inq;Lc8/inq;Lc8/hnq;Lc8/hnq;Lc8/hnq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final doOnComplete(Lc8/hnq;)Lc8/Plq;
    .locals 1
    .param p1, "onComplete"    # Lc8/hnq;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1279
    invoke-virtual {p0, p1}, Lc8/Plq;->doOnCompleted(Lc8/hnq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final doOnCompleted(Lc8/hnq;)Lc8/Plq;
    .locals 6
    .param p1, "onCompleted"    # Lc8/hnq;

    .prologue
    .line 1289
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v1

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v2

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v4

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lc8/Plq;->doOnLifecycle(Lc8/inq;Lc8/inq;Lc8/hnq;Lc8/hnq;Lc8/hnq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final doOnError(Lc8/inq;)Lc8/Plq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 1310
    .local p1, "onError":Lc8/inq;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v1

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v3

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v4

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lc8/Plq;->doOnLifecycle(Lc8/inq;Lc8/inq;Lc8/hnq;Lc8/hnq;Lc8/hnq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method protected final doOnLifecycle(Lc8/inq;Lc8/inq;Lc8/hnq;Lc8/hnq;Lc8/hnq;)Lc8/Plq;
    .locals 7
    .param p3, "onComplete"    # Lc8/hnq;
    .param p4, "onAfterComplete"    # Lc8/hnq;
    .param p5, "onUnsubscribe"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-",
            "Lc8/Pmq;",
            ">;",
            "Lc8/inq",
            "<-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lc8/hnq;",
            "Lc8/hnq;",
            "Lc8/hnq;",
            ")",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 1329
    .local p1, "onSubscribe":Lc8/inq;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    .local p2, "onError":Lc8/inq;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    invoke-static {p2}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    invoke-static {p3}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    invoke-static {p4}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    invoke-static {p5}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    new-instance v0, Lc8/Ykq;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lc8/Ykq;-><init>(Lc8/Plq;Lc8/hnq;Lc8/hnq;Lc8/inq;Lc8/inq;Lc8/hnq;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final doOnSubscribe(Lc8/inq;)Lc8/Plq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-",
            "Lc8/Pmq;",
            ">;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 1406
    .local p1, "onSubscribe":Lc8/inq;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v2

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v3

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v4

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lc8/Plq;->doOnLifecycle(Lc8/inq;Lc8/inq;Lc8/hnq;Lc8/hnq;Lc8/hnq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final doOnTerminate(Lc8/hnq;)Lc8/Plq;
    .locals 6
    .param p1, "onTerminate"    # Lc8/hnq;

    .prologue
    .line 1416
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v1

    new-instance v2, Lc8/Zkq;

    invoke-direct {v2, p0, p1}, Lc8/Zkq;-><init>(Lc8/Plq;Lc8/hnq;)V

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v4

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lc8/Plq;->doOnLifecycle(Lc8/inq;Lc8/inq;Lc8/hnq;Lc8/hnq;Lc8/hnq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final doOnUnsubscribe(Lc8/hnq;)Lc8/Plq;
    .locals 6
    .param p1, "onUnsubscribe"    # Lc8/hnq;

    .prologue
    .line 1300
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v1

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v2

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v3

    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lc8/Plq;->doOnLifecycle(Lc8/inq;Lc8/inq;Lc8/hnq;Lc8/hnq;Lc8/hnq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final endWith(Lc8/Plq;)Lc8/Plq;
    .locals 1
    .param p1, "other"    # Lc8/Plq;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1436
    invoke-virtual {p0, p1}, Lc8/Plq;->andThen(Lc8/Plq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final endWith(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1449
    .local p1, "next":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lc8/Plq;->andThen(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/lang/Throwable;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 1470
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1471
    .local v0, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Ljava/lang/Throwable;

    .line 1473
    .local v1, "err":[Ljava/lang/Throwable;
    new-instance v3, Lc8/alq;

    invoke-direct {v3, p0, v0, v1}, Lc8/alq;-><init>(Lc8/Plq;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 1493
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1494
    aget-object v3, v1, v8

    .line 1501
    :goto_0
    return-object v3

    .line 1497
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1501
    aget-object v3, v1, v8

    goto :goto_0

    .line 1498
    :catch_0
    move-exception v2

    .line 1499
    .local v2, "ex":Ljava/lang/InterruptedException;
    invoke-static {v2}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1514
    invoke-static {p3}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1517
    .local v1, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v4, [Ljava/lang/Throwable;

    .line 1519
    .local v2, "err":[Ljava/lang/Throwable;
    new-instance v4, Lc8/clq;

    invoke-direct {v4, p0, v1, v2}, Lc8/clq;-><init>(Lc8/Plq;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 1539
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1540
    aget-object v4, v2, v8

    .line 1552
    :goto_0
    return-object v4

    .line 1544
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1548
    .local v0, "b":Z
    if-eqz v0, :cond_1

    .line 1549
    aget-object v4, v2, v8

    goto :goto_0

    .line 1545
    .end local v0    # "b":Z
    :catch_0
    move-exception v3

    .line 1546
    .local v3, "ex":Ljava/lang/InterruptedException;
    invoke-static {v3}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 1551
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    .restart local v0    # "b":Z
    :cond_1
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-static {v4}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 1552
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final lift(Lc8/Mlq;)Lc8/Plq;
    .locals 1
    .param p1, "onLift"    # Lc8/Mlq;

    .prologue
    .line 1562
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    new-instance v0, Lc8/dlq;

    invoke-direct {v0, p0, p1}, Lc8/dlq;-><init>(Lc8/Plq;Lc8/Mlq;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Lc8/Plq;)Lc8/Plq;
    .locals 2
    .param p1, "other"    # Lc8/Plq;

    .prologue
    .line 1588
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    const/4 v0, 0x2

    new-array v0, v0, [Lc8/Plq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lc8/Plq;->merge([Lc8/Plq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lc8/amq;)Lc8/Plq;
    .locals 1
    .param p1, "scheduler"    # Lc8/amq;

    .prologue
    .line 1599
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    new-instance v0, Lc8/hlq;

    invoke-direct {v0, p0, p1}, Lc8/hlq;-><init>(Lc8/Plq;Lc8/amq;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorComplete()Lc8/Plq;
    .locals 1

    .prologue
    .line 1657
    invoke-static {}, Lc8/Ayq;->alwaysTrue()Lc8/Inq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Plq;->onErrorComplete(Lc8/Inq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorComplete(Lc8/Inq;)Lc8/Plq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 1668
    .local p1, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    new-instance v0, Lc8/jlq;

    invoke-direct {v0, p0, p1}, Lc8/jlq;-><init>(Lc8/Plq;Lc8/Inq;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorResumeNext(Lc8/Inq;)Lc8/Plq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lc8/Plq;",
            ">;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 1718
    .local p1, "errorMapper":Lc8/Inq;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+Lrx/Completable;>;"
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    new-instance v0, Lc8/mlq;

    invoke-direct {v0, p0, p1}, Lc8/mlq;-><init>(Lc8/Plq;Lc8/Inq;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final repeat()Lc8/Plq;
    .locals 1

    .prologue
    .line 1784
    invoke-virtual {p0}, Lc8/Plq;->toObservable()Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->repeat()Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Plq;->fromObservable(Lc8/Vlq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(J)Lc8/Plq;
    .locals 1
    .param p1, "times"    # J

    .prologue
    .line 1794
    invoke-virtual {p0}, Lc8/Plq;->toObservable()Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/Vlq;->repeat(J)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Plq;->fromObservable(Lc8/Vlq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final repeatWhen(Lc8/Inq;)Lc8/Plq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lc8/Vlq",
            "<*>;>;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 1807
    .local p1, "handler":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Void;>;+Lrx/Observable<*>;>;"
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1808
    invoke-virtual {p0}, Lc8/Plq;->toObservable()Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->repeatWhen(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Plq;->fromObservable(Lc8/Vlq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final retry()Lc8/Plq;
    .locals 1

    .prologue
    .line 1816
    invoke-virtual {p0}, Lc8/Plq;->toObservable()Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->retry()Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Plq;->fromObservable(Lc8/Vlq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lc8/Plq;
    .locals 1
    .param p1, "times"    # J

    .prologue
    .line 1838
    invoke-virtual {p0}, Lc8/Plq;->toObservable()Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/Vlq;->retry(J)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Plq;->fromObservable(Lc8/Vlq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final retry(Lc8/Jnq;)Lc8/Plq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Jnq",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 1827
    .local p1, "predicate":Lc8/Jnq;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lc8/Plq;->toObservable()Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->retry(Lc8/Jnq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Plq;->fromObservable(Lc8/Vlq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final retryWhen(Lc8/Inq;)Lc8/Plq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lc8/Vlq",
            "<*>;>;)",
            "Lc8/Plq;"
        }
    .end annotation

    .prologue
    .line 1851
    .local p1, "handler":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    invoke-virtual {p0}, Lc8/Plq;->toObservable()Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->retryWhen(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Plq;->fromObservable(Lc8/Vlq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Lc8/Plq;)Lc8/Plq;
    .locals 2
    .param p1, "other"    # Lc8/Plq;

    .prologue
    .line 1862
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1863
    const/4 v0, 0x2

    new-array v0, v0, [Lc8/Plq;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lc8/Plq;->concat([Lc8/Plq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1875
    .local p1, "other":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    invoke-virtual {p0}, Lc8/Plq;->toObservable()Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->startWith(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe()Lc8/Pmq;
    .locals 2

    .prologue
    .line 1885
    new-instance v0, Lc8/UBq;

    invoke-direct {v0}, Lc8/UBq;-><init>()V

    .line 1886
    .local v0, "mad":Lc8/UBq;
    new-instance v1, Lc8/nlq;

    invoke-direct {v1, p0, v0}, Lc8/nlq;-><init>(Lc8/Plq;Lc8/UBq;)V

    invoke-virtual {p0, v1}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 1905
    return-object v0
.end method

.method public final subscribe(Lc8/hnq;)Lc8/Pmq;
    .locals 2
    .param p1, "onComplete"    # Lc8/hnq;

    .prologue
    .line 1916
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    new-instance v0, Lc8/UBq;

    invoke-direct {v0}, Lc8/UBq;-><init>()V

    .line 1919
    .local v0, "mad":Lc8/UBq;
    new-instance v1, Lc8/olq;

    invoke-direct {v1, p0, p1, v0}, Lc8/olq;-><init>(Lc8/Plq;Lc8/hnq;Lc8/UBq;)V

    invoke-virtual {p0, v1}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 1949
    return-object v0
.end method

.method public final subscribe(Lc8/hnq;Lc8/inq;)Lc8/Pmq;
    .locals 2
    .param p1, "onComplete"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hnq;",
            "Lc8/inq",
            "<-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lc8/Pmq;"
        }
    .end annotation

    .prologue
    .line 1961
    .local p2, "onError":Lc8/inq;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    invoke-static {p2}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    new-instance v0, Lc8/UBq;

    invoke-direct {v0}, Lc8/UBq;-><init>()V

    .line 1965
    .local v0, "mad":Lc8/UBq;
    new-instance v1, Lc8/plq;

    invoke-direct {v1, p0, p1, v0, p2}, Lc8/plq;-><init>(Lc8/Plq;Lc8/hnq;Lc8/UBq;Lc8/inq;)V

    invoke-virtual {p0, v1}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 2010
    return-object v0
.end method

.method public final subscribe(Lc8/Nlq;)V
    .locals 2
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 2046
    instance-of v1, p1, Lc8/mAq;

    if-nez v1, :cond_0

    .line 2047
    new-instance v0, Lc8/mAq;

    invoke-direct {v0, p1}, Lc8/mAq;-><init>(Lc8/Nlq;)V

    .end local p1    # "s":Lc8/Nlq;
    .local v0, "s":Lc8/Nlq;
    move-object p1, v0

    .line 2049
    .end local v0    # "s":Lc8/Nlq;
    .restart local p1    # "s":Lc8/Nlq;
    :cond_0
    invoke-virtual {p0, p1}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 2050
    return-void
.end method

.method public final subscribe(Lc8/Omq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Omq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2112
    .local p1, "s":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1}, Lc8/Omq;->onStart()V

    .line 2113
    instance-of v1, p1, Lc8/nAq;

    if-nez v1, :cond_0

    .line 2114
    new-instance v0, Lc8/nAq;

    invoke-direct {v0, p1}, Lc8/nAq;-><init>(Lc8/Omq;)V

    .end local p1    # "s":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    .local v0, "s":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    move-object p1, v0

    .line 2116
    .end local v0    # "s":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    .restart local p1    # "s":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lc8/Plq;->unsafeSubscribe(Lc8/Omq;Z)V

    .line 2117
    return-void
.end method

.method public final subscribeOn(Lc8/amq;)Lc8/Plq;
    .locals 1
    .param p1, "scheduler"    # Lc8/amq;

    .prologue
    .line 2127
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    new-instance v0, Lc8/slq;

    invoke-direct {v0, p0, p1}, Lc8/slq;-><init>(Lc8/Plq;Lc8/amq;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lc8/Plq;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 2159
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lc8/Plq;->timeout0(JLjava/util/concurrent/TimeUnit;Lc8/amq;Lc8/Plq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lc8/Plq;)Lc8/Plq;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "other"    # Lc8/Plq;

    .prologue
    .line 2172
    invoke-static {p4}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2173
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lc8/Plq;->timeout0(JLjava/util/concurrent/TimeUnit;Lc8/amq;Lc8/Plq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Plq;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;

    .prologue
    .line 2187
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lc8/Plq;->timeout0(JLjava/util/concurrent/TimeUnit;Lc8/amq;Lc8/Plq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lc8/amq;Lc8/Plq;)Lc8/Plq;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .param p5, "other"    # Lc8/Plq;

    .prologue
    .line 2202
    invoke-static {p5}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2203
    invoke-virtual/range {p0 .. p5}, Lc8/Plq;->timeout0(JLjava/util/concurrent/TimeUnit;Lc8/amq;Lc8/Plq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final timeout0(JLjava/util/concurrent/TimeUnit;Lc8/amq;Lc8/Plq;)Lc8/Plq;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .param p5, "other"    # Lc8/Plq;

    .prologue
    .line 2219
    invoke-static {p3}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2220
    invoke-static {p4}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    new-instance v0, Lc8/Zoq;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lc8/Zoq;-><init>(Lc8/Plq;JLjava/util/concurrent/TimeUnit;Lc8/amq;Lc8/Plq;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final to(Lc8/Inq;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-",
            "Lc8/Plq;",
            "TU;>;)TU;"
        }
    .end annotation

    .prologue
    .line 2232
    .local p1, "converter":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Completable;TU;>;"
    invoke-interface {p1, p0}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toObservable()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2242
    new-instance v0, Lc8/vlq;

    invoke-direct {v0, p0}, Lc8/vlq;-><init>(Lc8/Plq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final toSingle(Lc8/Hnq;)Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<+TT;>;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2259
    .local p1, "completionValueFunc0":Lc8/Hnq;, "Lrx/functions/Func0<+TT;>;"
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    new-instance v0, Lc8/xlq;

    invoke-direct {v0, p0, p1}, Lc8/xlq;-><init>(Lc8/Plq;Lc8/Hnq;)V

    invoke-static {v0}, Lc8/Mmq;->create(Lc8/Kmq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final toSingleDefault(Ljava/lang/Object;)Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2307
    .local p1, "completionValue":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    new-instance v0, Lc8/ylq;

    invoke-direct {v0, p0, p1}, Lc8/ylq;-><init>(Lc8/Plq;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/Plq;->toSingle(Lc8/Hnq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final unsafeSubscribe(Lc8/Nlq;)V
    .locals 3
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 2024
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    :try_start_0
    iget-object v2, p0, Lc8/Plq;->onSubscribe:Lc8/Llq;

    invoke-static {p0, v2}, Lc8/WAq;->onCompletableStart(Lc8/Plq;Lc8/Llq;)Lc8/Llq;

    move-result-object v1

    .line 2028
    .local v1, "onSubscribeDecorated":Lc8/Llq;
    invoke-interface {v1, p1}, Lc8/Llq;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2036
    return-void

    .line 2029
    .end local v1    # "onSubscribeDecorated":Lc8/Llq;
    :catch_0
    move-exception v0

    .line 2030
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 2031
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2032
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 2033
    invoke-static {v0}, Lc8/WAq;->onCompletableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2034
    invoke-static {v0}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 2035
    invoke-static {v0}, Lc8/Plq;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v2

    throw v2
.end method

.method public final unsafeSubscribe(Lc8/Omq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Omq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2060
    .local p1, "s":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lc8/Plq;->unsafeSubscribe(Lc8/Omq;Z)V

    .line 2061
    return-void
.end method

.method public final unsubscribeOn(Lc8/amq;)Lc8/Plq;
    .locals 1
    .param p1, "scheduler"    # Lc8/amq;

    .prologue
    .line 2324
    invoke-static {p1}, Lc8/Plq;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2325
    new-instance v0, Lc8/Clq;

    invoke-direct {v0, p0, p1}, Lc8/Clq;-><init>(Lc8/Plq;Lc8/amq;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method
