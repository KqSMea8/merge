.class public final Lc8/Svq;
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
    name = "WindowSkip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;
    }
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

.field public final size:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public final skip:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

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
.method public constructor <init>(Lc8/Omq;II)V
    .locals 2
    .param p2, "size"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lc8/Svq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 187
    iput-object p1, p0, Lc8/Svq;->actual:Lc8/Omq;

    .line 188
    iput p2, p0, Lc8/Svq;->size:I

    .line 189
    iput p3, p0, Lc8/Svq;->skip:I

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc8/Svq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 191
    invoke-static {p0}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v0

    iput-object v0, p0, Lc8/Svq;->cancel:Lc8/Pmq;

    .line 192
    iget-object v0, p0, Lc8/Svq;->cancel:Lc8/Pmq;

    invoke-virtual {p0, v0}, Lc8/Svq;->add(Lc8/Pmq;)V

    .line 193
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/Svq;->request(J)V

    .line 194
    return-void
.end method

.method public static synthetic access$100(Lc8/Svq;J)V
    .locals 1
    .param p0, "x0"    # Lc8/Svq;
    .param p1, "x1"    # J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lc8/Svq;->request(J)V

    return-void
.end method

.method public static synthetic access$200(Lc8/Svq;J)V
    .locals 1
    .param p0, "x0"    # Lc8/Svq;
    .param p1, "x1"    # J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lc8/Svq;->request(J)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 256
    .local p0, "this":Lc8/Svq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    iget-object v0, p0, Lc8/Svq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lc8/Svq;->unsubscribe()V

    .line 259
    :cond_0
    return-void
.end method

.method createProducer()Lc8/Xlq;
    .locals 1

    .prologue
    .line 251
    .local p0, "this":Lc8/Svq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;-><init>(Lc8/Svq;)V

    return-object v0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 241
    .local p0, "this":Lc8/Svq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    iget-object v0, p0, Lc8/Svq;->window:Lc8/GBq;

    .line 243
    .local v0, "w":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    if-eqz v0, :cond_0

    .line 244
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/Svq;->window:Lc8/GBq;

    .line 245
    invoke-virtual {v0}, Lc8/GBq;->onCompleted()V

    .line 247
    :cond_0
    iget-object v1, p0, Lc8/Svq;->actual:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V

    .line 248
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 230
    .local p0, "this":Lc8/Svq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    iget-object v0, p0, Lc8/Svq;->window:Lc8/GBq;

    .line 232
    .local v0, "w":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    if-eqz v0, :cond_0

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/Svq;->window:Lc8/GBq;

    .line 234
    invoke-virtual {v0, p1}, Lc8/GBq;->onError(Ljava/lang/Throwable;)V

    .line 236
    :cond_0
    iget-object v1, p0, Lc8/Svq;->actual:Lc8/Omq;

    invoke-virtual {v1, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 237
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
    .line 198
    .local p0, "this":Lc8/Svq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lc8/Svq;->index:I

    .line 200
    .local v0, "i":I
    iget-object v1, p0, Lc8/Svq;->window:Lc8/GBq;

    .line 201
    .local v1, "w":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    if-nez v0, :cond_0

    .line 202
    iget-object v2, p0, Lc8/Svq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 204
    iget v2, p0, Lc8/Svq;->size:I

    invoke-static {v2, p0}, Lc8/PBq;->create(ILc8/hnq;)Lc8/PBq;

    move-result-object v1

    .line 205
    iput-object v1, p0, Lc8/Svq;->window:Lc8/GBq;

    .line 207
    iget-object v2, p0, Lc8/Svq;->actual:Lc8/Omq;

    invoke-virtual {v2, v1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 209
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 211
    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {v1, p1}, Lc8/GBq;->onNext(Ljava/lang/Object;)V

    .line 215
    :cond_1
    iget v2, p0, Lc8/Svq;->size:I

    if-ne v0, v2, :cond_2

    .line 216
    iput v0, p0, Lc8/Svq;->index:I

    .line 217
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/Svq;->window:Lc8/GBq;

    .line 218
    invoke-virtual {v1}, Lc8/GBq;->onCompleted()V

    .line 226
    :goto_0
    return-void

    .line 220
    :cond_2
    iget v2, p0, Lc8/Svq;->skip:I

    if-ne v0, v2, :cond_3

    .line 221
    const/4 v2, 0x0

    iput v2, p0, Lc8/Svq;->index:I

    goto :goto_0

    .line 223
    :cond_3
    iput v0, p0, Lc8/Svq;->index:I

    goto :goto_0
.end method
