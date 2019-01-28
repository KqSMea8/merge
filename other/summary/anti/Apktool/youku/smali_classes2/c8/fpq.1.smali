.class public final Lc8/fpq;
.super Lc8/Omq;
.source "OnSubscribeAmb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AmbSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private chosen:Z

.field private final selection:Lc8/gpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/gpq",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final subscriber:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLc8/Omq;Lc8/gpq;)V
    .locals 1
    .param p1, "requested"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lc8/Omq",
            "<-TT;>;",
            "Lc8/gpq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    .local p3, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .local p4, "selection":Lc8/gpq;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 285
    iput-object p3, p0, Lc8/fpq;->subscriber:Lc8/Omq;

    .line 286
    iput-object p4, p0, Lc8/fpq;->selection:Lc8/gpq;

    .line 288
    invoke-virtual {p0, p1, p2}, Lc8/fpq;->request(J)V

    .line 289
    return-void
.end method

.method static synthetic access$000(Lc8/fpq;J)V
    .locals 1
    .param p0, "x0"    # Lc8/fpq;
    .param p1, "x1"    # J

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Lc8/fpq;->requestMore(J)V

    return-void
.end method

.method private isSelected()Z
    .locals 3

    .prologue
    .local p0, "this":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    const/4 v0, 0x1

    .line 320
    iget-boolean v1, p0, Lc8/fpq;->chosen:Z

    if-eqz v1, :cond_0

    .line 335
    :goto_0
    return v0

    .line 323
    :cond_0
    iget-object v1, p0, Lc8/fpq;->selection:Lc8/gpq;

    iget-object v1, v1, Lc8/gpq;->choice:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 325
    iput-boolean v0, p0, Lc8/fpq;->chosen:Z

    goto :goto_0

    .line 328
    :cond_1
    iget-object v1, p0, Lc8/fpq;->selection:Lc8/gpq;

    iget-object v1, v1, Lc8/gpq;->choice:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lc8/fpq;->selection:Lc8/gpq;

    invoke-virtual {v1, p0}, Lc8/gpq;->unsubscribeOthers(Lc8/fpq;)V

    .line 330
    iput-boolean v0, p0, Lc8/fpq;->chosen:Z

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p0, Lc8/fpq;->selection:Lc8/gpq;

    invoke-virtual {v0}, Lc8/gpq;->unsubscribeLosers()V

    .line 335
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestMore(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 292
    .local p0, "this":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/fpq;->request(J)V

    .line 293
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 305
    .local p0, "this":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    invoke-direct {p0}, Lc8/fpq;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lc8/fpq;->subscriber:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 313
    .local p0, "this":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    invoke-direct {p0}, Lc8/fpq;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lc8/fpq;->subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lc8/fpq;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lc8/fpq;->subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method
