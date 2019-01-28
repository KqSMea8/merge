.class public Lc8/Qxb;
.super Lc8/Mxb;
.source "WorkFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BranchParallelMerge"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Mxb",
        "<TT;>;"
    }
.end annotation


# instance fields
.field count:I

.field results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation
.end field

.field works:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/nyb",
            "<TT;TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/nyb",
            "<TT;TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lc8/Qxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$BranchParallelMerge<TT;TR;>;"
    .local p1, "works":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;>;"
    invoke-direct {p0}, Lc8/Mxb;-><init>()V

    .line 312
    iput-object p1, p0, Lc8/Qxb;->works:Ljava/util/List;

    .line 313
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lc8/Qxb;->count:I

    .line 314
    new-instance v0, Ljava/util/Vector;

    iget v1, p0, Lc8/Qxb;->count:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lc8/Qxb;->results:Ljava/util/List;

    .line 315
    return-void
.end method


# virtual methods
.method branchFlow()Ljava/util/concurrent/CountDownLatch;
    .locals 4

    .prologue
    .line 326
    .local p0, "this":Lc8/Qxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$BranchParallelMerge<TT;TR;>;"
    invoke-virtual {p0}, Lc8/Qxb;->createLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 327
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Lc8/Qxb;->works:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/nyb;

    .line 328
    .local v1, "w":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<*TR;>;"
    new-instance v3, Lc8/Pxb;

    invoke-direct {v3, p0}, Lc8/Pxb;-><init>(Lc8/Qxb;)V

    invoke-virtual {v1, v3}, Lc8/nyb;->next(Lc8/Hxb;)Lc8/nyb;

    move-result-object v3

    .line 333
    invoke-virtual {v3, v0}, Lc8/nyb;->countFlow(Ljava/util/concurrent/CountDownLatch;)Lc8/Zxb;

    goto :goto_0

    .line 335
    .end local v1    # "w":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<*TR;>;"
    :cond_0
    return-object v0
.end method

.method call()Lc8/jyb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/jyb",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lc8/Qxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$BranchParallelMerge<TT;TR;>;"
    invoke-virtual {p0}, Lc8/Qxb;->flowAndWait()V

    .line 318
    new-instance v0, Lc8/jyb;

    iget-object v1, p0, Lc8/Qxb;->results:Ljava/util/List;

    invoke-direct {v0, v1}, Lc8/jyb;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method createLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 2

    .prologue
    .line 322
    .local p0, "this":Lc8/Qxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$BranchParallelMerge<TT;TR;>;"
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget v1, p0, Lc8/Qxb;->count:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-object v0
.end method
