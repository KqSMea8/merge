.class public Lc8/pyf;
.super Ljava/lang/Object;
.source "DelegateConsumerPool.java"

# interfaces
.implements Lc8/KNf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OUT:",
        "Ljava/lang/Object;",
        "NEXT_OUT::",
        "Lc8/iyf;",
        "CONTEXT:",
        "Lc8/zyf;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/KNf",
        "<",
        "Lc8/myf",
        "<TOUT;TNEXT_OUT;TCONTEXT;>;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SIZE:I = 0xf


# instance fields
.field private final mMaxSize:I

.field private final mRecycledQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lc8/myf",
            "<TOUT;TNEXT_OUT;TCONTEXT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lc8/pyf;, "Lcom/taobao/rxm/consume/DelegateConsumerPool<TOUT;TNEXT_OUT;TCONTEXT;>;"
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lc8/pyf;-><init>(I)V

    .line 19
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 21
    .local p0, "this":Lc8/pyf;, "Lcom/taobao/rxm/consume/DelegateConsumerPool<TOUT;TNEXT_OUT;TCONTEXT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lc8/pyf;->mMaxSize:I

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lc8/pyf;->mRecycledQueue:Ljava/util/Queue;

    .line 24
    return-void
.end method


# virtual methods
.method public offer()Lc8/myf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/myf",
            "<TOUT;TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lc8/pyf;, "Lcom/taobao/rxm/consume/DelegateConsumerPool<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iget-object v1, p0, Lc8/pyf;->mRecycledQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/myf;

    .line 31
    .local v0, "reuseConsumer":Lc8/myf;, "Lcom/taobao/rxm/consume/ChainDelegateConsumer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    return-object v0
.end method

.method public bridge synthetic offer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    .local p0, "this":Lc8/pyf;, "Lcom/taobao/rxm/consume/DelegateConsumerPool<TOUT;TNEXT_OUT;TCONTEXT;>;"
    invoke-virtual {p0}, Lc8/pyf;->offer()Lc8/myf;

    move-result-object v0

    return-object v0
.end method

.method public recycle(Lc8/myf;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/myf",
            "<TOUT;TNEXT_OUT;TCONTEXT;>;)Z"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lc8/pyf;, "Lcom/taobao/rxm/consume/DelegateConsumerPool<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "element":Lc8/myf;, "Lcom/taobao/rxm/consume/ChainDelegateConsumer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Lc8/myf;->reset()Lc8/myf;

    .line 40
    :cond_0
    iget-object v0, p0, Lc8/pyf;->mRecycledQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lc8/pyf;->mMaxSize:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lc8/pyf;->mRecycledQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic recycle(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 11
    .local p0, "this":Lc8/pyf;, "Lcom/taobao/rxm/consume/DelegateConsumerPool<TOUT;TNEXT_OUT;TCONTEXT;>;"
    check-cast p1, Lc8/myf;

    invoke-virtual {p0, p1}, Lc8/pyf;->recycle(Lc8/myf;)Z

    move-result v0

    return v0
.end method
