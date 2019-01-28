.class public Lc8/AAq;
.super Lc8/Omq;
.source "TestSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final INERT:Lc8/Wlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Wlq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private completions:I

.field private final delegate:Lc8/Wlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Wlq",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile lastSeenThread:Ljava/lang/Thread;

.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private volatile valueCount:I

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lc8/zAq;

    invoke-direct {v0}, Lc8/zAq;-><init>()V

    sput-object v0, Lc8/AAq;->INERT:Lc8/Wlq;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 127
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lc8/AAq;-><init>(J)V

    .line 128
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "initialRequest"    # J

    .prologue
    .line 76
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    sget-object v0, Lc8/AAq;->INERT:Lc8/Wlq;

    invoke-direct {p0, v0, p1, p2}, Lc8/AAq;-><init>(Lc8/Wlq;J)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lc8/Omq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    .local p1, "delegate":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lc8/AAq;-><init>(Lc8/Wlq;J)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lc8/Wlq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Wlq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    .local p1, "delegate":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lc8/AAq;-><init>(Lc8/Wlq;J)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lc8/Wlq;J)V
    .locals 2
    .param p2, "initialRequest"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Wlq",
            "<TT;>;J)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    .local p1, "delegate":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lc8/AAq;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lc8/AAq;->delegate:Lc8/Wlq;

    .line 93
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    .line 94
    invoke-virtual {p0, p2, p3}, Lc8/AAq;->request(J)V

    .line 97
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/AAq;->values:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/AAq;->errors:Ljava/util/List;

    .line 99
    return-void
.end method

.method public static create()Lc8/AAq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/AAq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lc8/AAq;

    invoke-direct {v0}, Lc8/AAq;-><init>()V

    return-object v0
.end method

.method public static create(J)Lc8/AAq;
    .locals 2
    .param p0, "initialRequest"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)",
            "Lc8/AAq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lc8/AAq;

    invoke-direct {v0, p0, p1}, Lc8/AAq;-><init>(J)V

    return-object v0
.end method

.method public static create(Lc8/Omq;)Lc8/AAq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Omq",
            "<TT;>;)",
            "Lc8/AAq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "delegate":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    new-instance v0, Lc8/AAq;

    invoke-direct {v0, p0}, Lc8/AAq;-><init>(Lc8/Omq;)V

    return-object v0
.end method

.method public static create(Lc8/Wlq;)Lc8/AAq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Wlq",
            "<TT;>;)",
            "Lc8/AAq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "delegate":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    new-instance v0, Lc8/AAq;

    invoke-direct {v0, p0}, Lc8/AAq;-><init>(Lc8/Wlq;)V

    return-object v0
.end method

.method public static create(Lc8/Wlq;J)Lc8/AAq;
    .locals 1
    .param p1, "initialRequest"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Wlq",
            "<TT;>;J)",
            "Lc8/AAq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "delegate":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    new-instance v0, Lc8/AAq;

    invoke-direct {v0, p0, p1, p2}, Lc8/AAq;-><init>(Lc8/Wlq;J)V

    return-object v0
.end method


# virtual methods
.method public assertCompleted()V
    .locals 3

    .prologue
    .line 492
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    iget v0, p0, Lc8/AAq;->completions:I

    .line 493
    .local v0, "s":I
    if-nez v0, :cond_1

    .line 494
    const-string/jumbo v1, "Not completed!"

    invoke-virtual {p0, v1}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Completed multiple times: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public assertError(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const/4 v4, 0x0

    .line 526
    iget-object v1, p0, Lc8/AAq;->errors:Ljava/util/List;

    .line 527
    .local v1, "err":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 528
    const-string/jumbo v2, "No errors"

    invoke-virtual {p0, v2}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    .line 540
    :cond_0
    return-void

    .line 530
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 531
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Multiple errors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 532
    .local v0, "ae":Ljava/lang/AssertionError;
    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 533
    throw v0

    .line 535
    .end local v0    # "ae":Ljava/lang/AssertionError;
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 536
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exceptions differ; expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 537
    .restart local v0    # "ae":Ljava/lang/AssertionError;
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 538
    throw v0
.end method

.method public assertError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    const/4 v3, 0x0

    .line 551
    iget-object v0, p0, Lc8/AAq;->errors:Ljava/util/List;

    .line 552
    .local v0, "err":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    const-string/jumbo v1, "No errors"

    invoke-virtual {p0, v1}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 556
    const-string/jumbo v1, "Multiple errors"

    invoke-virtual {p0, v1}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exceptions differ; expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public assertNoErrors()V
    .locals 2

    .prologue
    .line 410
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    invoke-virtual {p0}, Lc8/AAq;->getOnErrorEvents()Ljava/util/List;

    move-result-object v0

    .line 411
    .local v0, "onErrorEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    const-string/jumbo v1, "Unexpected onError events"

    invoke-virtual {p0, v1}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    .line 414
    :cond_0
    return-void
.end method

.method public assertNoTerminalEvent()V
    .locals 4

    .prologue
    .line 570
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    iget-object v0, p0, Lc8/AAq;->errors:Ljava/util/List;

    .line 571
    .local v0, "err":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget v1, p0, Lc8/AAq;->completions:I

    .line 572
    .local v1, "s":I
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez v1, :cond_1

    .line 573
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " errors and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " completion events instead of none"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    .line 582
    :cond_1
    :goto_0
    return-void

    .line 576
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " errors and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " completion events instead of none"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " errors and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " completion events instead of none"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public assertNoValues()V
    .locals 3

    .prologue
    .line 591
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    iget-object v1, p0, Lc8/AAq;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 592
    .local v0, "s":I
    if-eqz v0, :cond_0

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No onNext events expected yet some received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    .line 595
    :cond_0
    return-void
.end method

.method public assertNotCompleted()V
    .locals 3

    .prologue
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    const/4 v1, 0x1

    .line 508
    iget v0, p0, Lc8/AAq;->completions:I

    .line 509
    .local v0, "s":I
    if-ne v0, v1, :cond_1

    .line 510
    const-string/jumbo v1, "Completed!"

    invoke-virtual {p0, v1}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    if-le v0, v1, :cond_0

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Completed multiple times: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public assertReceivedOnNext(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v3, p0, Lc8/AAq;->values:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Number of items does not match. Provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  Actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/AAq;->values:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Provided values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Actual values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/AAq;->values:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    .line 330
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 331
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 332
    .local v1, "expected":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lc8/AAq;->values:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 333
    .local v0, "actual":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_2

    .line 335
    if-eqz v0, :cond_1

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Value at index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " expected to be [null] but was: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    .line 330
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Value at index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " expected to be ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") but was: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "null"

    goto :goto_2

    .line 345
    .end local v0    # "actual":Ljava/lang/Object;, "TT;"
    .end local v1    # "expected":Ljava/lang/Object;, "TT;"
    :cond_4
    return-void
.end method

.method public assertTerminalEvent()V
    .locals 3

    .prologue
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    const/4 v2, 0x1

    .line 374
    iget-object v0, p0, Lc8/AAq;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Too many onError events: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/AAq;->errors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    .line 378
    :cond_0
    iget v0, p0, Lc8/AAq;->completions:I

    if-le v0, v2, :cond_1

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Too many onCompleted events: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/AAq;->completions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    .line 382
    :cond_1
    iget v0, p0, Lc8/AAq;->completions:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lc8/AAq;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 383
    const-string/jumbo v0, "Received both an onError and onCompleted. Should be one or the other."

    invoke-virtual {p0, v0}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    .line 386
    :cond_2
    iget v0, p0, Lc8/AAq;->completions:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lc8/AAq;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    const-string/jumbo v0, "No terminal events received."

    invoke-virtual {p0, v0}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    .line 389
    :cond_3
    return-void
.end method

.method public assertUnsubscribed()V
    .locals 1

    .prologue
    .line 398
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    invoke-virtual {p0}, Lc8/AAq;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    const-string/jumbo v0, "Not unsubscribed."

    invoke-virtual {p0, v0}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    .line 401
    :cond_0
    return-void
.end method

.method public assertValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 630
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/AAq;->assertReceivedOnNext(Ljava/util/List;)V

    .line 631
    return-void
.end method

.method public assertValueCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 605
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    iget-object v1, p0, Lc8/AAq;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 606
    .local v0, "s":I
    if-eq v0, p1, :cond_0

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Number of onNext events differ; expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/AAq;->assertionError(Ljava/lang/String;)V

    .line 609
    :cond_0
    return-void
.end method

.method public varargs assertValues([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 619
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/AAq;->assertReceivedOnNext(Ljava/util/List;)V

    .line 620
    return-void
.end method

.method final assertionError(Ljava/lang/String;)V
    .locals 9
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    const/16 v8, 0x73

    const/16 v7, 0x29

    const/4 v6, 0x1

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 641
    .local v1, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    iget v2, p0, Lc8/AAq;->completions:I

    .line 645
    .local v2, "c":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " completion"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    if-eq v2, v6, :cond_0

    .line 648
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 650
    :cond_0
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 652
    iget-object v4, p0, Lc8/AAq;->errors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 653
    iget-object v4, p0, Lc8/AAq;->errors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 654
    .local v3, "size":I
    const-string/jumbo v4, " (+"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    if-eq v3, v6, :cond_1

    .line 658
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 660
    :cond_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 663
    .end local v3    # "size":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 664
    .local v0, "ae":Ljava/lang/AssertionError;
    iget-object v4, p0, Lc8/AAq;->errors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 665
    iget-object v4, p0, Lc8/AAq;->errors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 666
    iget-object v4, p0, Lc8/AAq;->errors:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v0, v4}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 671
    :cond_3
    :goto_0
    throw v0

    .line 668
    :cond_4
    new-instance v4, Lrx/exceptions/CompositeException;

    iget-object v5, p0, Lc8/AAq;->errors:Ljava/util/List;

    invoke-direct {v4, v5}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v4}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public awaitTerminalEvent()V
    .locals 3

    .prologue
    .line 426
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    :try_start_0
    iget-object v1, p0, Lc8/AAq;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public awaitTerminalEvent(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 445
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    :try_start_0
    iget-object v1, p0, Lc8/AAq;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public awaitTerminalEventAndUnsubscribeOnTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 464
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    :try_start_0
    iget-object v1, p0, Lc8/AAq;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 465
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lc8/AAq;->unsubscribe()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lc8/AAq;->unsubscribe()V

    goto :goto_0
.end method

.method public final awaitValueCount(IJLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .param p1, "expected"    # I
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    const-wide/16 v2, 0x1

    .line 360
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lc8/AAq;->valueCount:I

    if-ge v0, p1, :cond_0

    .line 361
    invoke-virtual {p4, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 362
    sub-long/2addr p2, v2

    goto :goto_0

    .line 364
    :cond_0
    iget v0, p0, Lc8/AAq;->valueCount:I

    if-lt v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getCompletions()I
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    iget v0, p0, Lc8/AAq;->completions:I

    return v0
.end method

.method public getLastSeenThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 482
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    iget-object v0, p0, Lc8/AAq;->lastSeenThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getOnCompletedEvents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Qlq",
            "<TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    iget v0, p0, Lc8/AAq;->completions:I

    .line 218
    .local v0, "c":I
    new-instance v2, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v3, v0

    :goto_0
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lrx/Notification<TT;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 220
    invoke-static {}, Lc8/Qlq;->createOnCompleted()Lc8/Qlq;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    .end local v1    # "i":I
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lrx/Notification<TT;>;>;"
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 222
    .restart local v1    # "i":I
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lrx/Notification<TT;>;>;"
    :cond_1
    return-object v2
.end method

.method public getOnErrorEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    iget-object v0, p0, Lc8/AAq;->errors:Ljava/util/List;

    return-object v0
.end method

.method public getOnNextEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    iget-object v0, p0, Lc8/AAq;->values:Ljava/util/List;

    return-object v0
.end method

.method public final getValueCount()I
    .locals 1

    .prologue
    .line 290
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    iget v0, p0, Lc8/AAq;->valueCount:I

    return v0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 199
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    :try_start_0
    iget v0, p0, Lc8/AAq;->completions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/AAq;->completions:I

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lc8/AAq;->lastSeenThread:Ljava/lang/Thread;

    .line 201
    iget-object v0, p0, Lc8/AAq;->delegate:Lc8/Wlq;

    invoke-interface {v0}, Lc8/Wlq;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    iget-object v0, p0, Lc8/AAq;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/AAq;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 247
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lc8/AAq;->lastSeenThread:Ljava/lang/Thread;

    .line 248
    iget-object v0, p0, Lc8/AAq;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lc8/AAq;->delegate:Lc8/Wlq;

    invoke-interface {v0, p1}, Lc8/Wlq;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-object v0, p0, Lc8/AAq;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/AAq;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lc8/AAq;->lastSeenThread:Ljava/lang/Thread;

    .line 279
    iget-object v0, p0, Lc8/AAq;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lc8/AAq;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lc8/AAq;->valueCount:I

    .line 281
    iget-object v0, p0, Lc8/AAq;->delegate:Lc8/Wlq;

    invoke-interface {v0, p1}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method public requestMore(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 300
    .local p0, "this":Lc8/AAq;, "Lrx/observers/TestSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/AAq;->request(J)V

    .line 301
    return-void
.end method
