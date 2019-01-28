.class public final Lc8/Bxq;
.super Ljava/lang/Object;
.source "IndexedRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Dxq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ElementSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final array:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation
.end field

.field final next:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/Bxq",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 489
    .local p0, "this":Lc8/Bxq;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget v1, Lc8/Dxq;->SIZE:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lc8/Bxq;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 491
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lc8/Bxq;->next:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method getNext()Lc8/Bxq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Bxq",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 494
    .local p0, "this":Lc8/Bxq;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    iget-object v1, p0, Lc8/Bxq;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lc8/Bxq;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Bxq;

    .line 503
    :goto_0
    return-object v1

    .line 497
    :cond_0
    new-instance v0, Lc8/Bxq;

    invoke-direct {v0}, Lc8/Bxq;-><init>()V

    .line 498
    .local v0, "newSection":Lc8/Bxq;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    iget-object v1, p0, Lc8/Bxq;->next:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 500
    goto :goto_0

    .line 503
    :cond_1
    iget-object v1, p0, Lc8/Bxq;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Bxq;

    goto :goto_0
.end method
