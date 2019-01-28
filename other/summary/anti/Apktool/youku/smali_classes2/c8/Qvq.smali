.class public final Lc8/Qvq;
.super Lc8/Omq;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tvq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowExact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;",
        "Lc8/hnq;"
    }
.end annotation


# instance fields
.field final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final cancel:Lc8/Pmq;

.field index:I

.field final size:I

.field window:Lc8/GBq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/GBq",
            "<TT;TT;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lc8/Omq;I)V
    .locals 2
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lc8/Qvq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 92
    iput-object p1, p0, Lc8/Qvq;->actual:Lc8/Omq;

    .line 93
    iput p2, p0, Lc8/Qvq;->size:I

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc8/Qvq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    invoke-static {p0}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v0

    iput-object v0, p0, Lc8/Qvq;->cancel:Lc8/Pmq;

    .line 96
    iget-object v0, p0, Lc8/Qvq;->cancel:Lc8/Pmq;

    invoke-virtual {p0, v0}, Lc8/Qvq;->add(Lc8/Pmq;)V

    .line 97
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/Qvq;->request(J)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lc8/Qvq;J)V
    .locals 1
    .param p0, "x0"    # Lc8/Qvq;
    .param p1, "x1"    # J

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2}, Lc8/Qvq;->request(J)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 165
    .local p0, "this":Lc8/Qvq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    iget-object v0, p0, Lc8/Qvq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lc8/Qvq;->unsubscribe()V

    .line 168
    :cond_0
    return-void
.end method

.method createProducer()Lc8/Xlq;
    .locals 1

    .prologue
    .line 149
    .local p0, "this":Lc8/Qvq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    new-instance v0, Lc8/Pvq;

    invoke-direct {v0, p0}, Lc8/Pvq;-><init>(Lc8/Qvq;)V

    return-object v0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 139
    .local p0, "this":Lc8/Qvq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    iget-object v0, p0, Lc8/Qvq;->window:Lc8/GBq;

    .line 141
    .local v0, "w":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    if-eqz v0, :cond_0

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/Qvq;->window:Lc8/GBq;

    .line 143
    invoke-virtual {v0}, Lc8/GBq;->onCompleted()V

    .line 145
    :cond_0
    iget-object v1, p0, Lc8/Qvq;->actual:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V

    .line 146
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 128
    .local p0, "this":Lc8/Qvq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    iget-object v0, p0, Lc8/Qvq;->window:Lc8/GBq;

    .line 130
    .local v0, "w":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    if-eqz v0, :cond_0

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/Qvq;->window:Lc8/GBq;

    .line 132
    invoke-virtual {v0, p1}, Lc8/GBq;->onError(Ljava/lang/Throwable;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lc8/Qvq;->actual:Lc8/Omq;

    invoke-virtual {v1, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lc8/Qvq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lc8/Qvq;->index:I

    .line 104
    .local v0, "i":I
    iget-object v1, p0, Lc8/Qvq;->window:Lc8/GBq;

    .line 105
    .local v1, "w":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    if-nez v0, :cond_0

    .line 106
    iget-object v2, p0, Lc8/Qvq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 108
    iget v2, p0, Lc8/Qvq;->size:I

    invoke-static {v2, p0}, Lc8/PBq;->create(ILc8/hnq;)Lc8/PBq;

    move-result-object v1

    .line 109
    iput-object v1, p0, Lc8/Qvq;->window:Lc8/GBq;

    .line 111
    iget-object v2, p0, Lc8/Qvq;->actual:Lc8/Omq;

    invoke-virtual {v2, v1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 115
    invoke-virtual {v1, p1}, Lc8/GBq;->onNext(Ljava/lang/Object;)V

    .line 117
    iget v2, p0, Lc8/Qvq;->size:I

    if-ne v0, v2, :cond_1

    .line 118
    const/4 v2, 0x0

    iput v2, p0, Lc8/Qvq;->index:I

    .line 119
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/Qvq;->window:Lc8/GBq;

    .line 120
    invoke-virtual {v1}, Lc8/GBq;->onCompleted()V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_1
    iput v0, p0, Lc8/Qvq;->index:I

    goto :goto_0
.end method
