.class public Lc8/nyb;
.super Ljava/lang/Object;
.source "WorkFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Work"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private flowable:Lc8/fyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/fyb",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/fyb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/fyb",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;"
    .local p1, "flowable":Lc8/fyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable<TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lc8/nyb;->flowable:Lc8/fyb;

    .line 57
    return-void
.end method

.method private createNextNode(Lc8/Hxb;)Lc8/fyb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hxb",
            "<TR;TN;>;)",
            "Lc8/fyb",
            "<TR;TN;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;"
    .local p1, "action":Lc8/Hxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Action<TR;TN;>;"
    invoke-static {p1}, Lc8/iyb;->make(Lc8/Hxb;)Lc8/dyb;

    move-result-object v0

    iget-object v1, p0, Lc8/nyb;->flowable:Lc8/fyb;

    invoke-virtual {v0, v1}, Lc8/dyb;->setPrior(Lc8/fyb;)Lc8/fyb;

    move-result-object v0

    return-object v0
.end method

.method public static make()Lc8/nyb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/nyb",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, Lc8/nyb;->make(Ljava/lang/Object;)Lc8/nyb;

    move-result-object v0

    return-object v0
.end method

.method private static make(Lc8/fyb;)Lc8/nyb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/fyb",
            "<TT;TR;>;)",
            "Lc8/nyb",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "flowable":Lc8/fyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable<TT;TR;>;"
    new-instance v0, Lc8/Zxb;

    invoke-direct {v0, p0}, Lc8/Zxb;-><init>(Lc8/fyb;)V

    invoke-interface {p0, v0}, Lc8/fyb;->setContext(Lc8/Zxb;)Lc8/fyb;

    .line 128
    new-instance v0, Lc8/nyb;

    invoke-direct {v0, p0}, Lc8/nyb;-><init>(Lc8/fyb;)V

    return-object v0
.end method

.method public static make(Ljava/lang/Iterable;)Lc8/nyb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lc8/nyb",
            "<*TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {}, Lc8/nyb;->make()Lc8/nyb;

    move-result-object v0

    new-instance v1, Lc8/myb;

    invoke-direct {v1, p0}, Lc8/myb;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v0, v1}, Lc8/nyb;->loop(Lc8/Hxb;)Lc8/nyb;

    move-result-object v0

    return-object v0
.end method

.method public static make(Ljava/lang/Object;)Lc8/nyb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lc8/nyb",
            "<",
            "Ljava/lang/Void;",
            "TR;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "r":Ljava/lang/Object;, "TR;"
    invoke-static {p0}, Lc8/lyb;->make(Ljava/lang/Object;)Lc8/dyb;

    move-result-object v0

    invoke-static {v0}, Lc8/nyb;->make(Lc8/fyb;)Lc8/nyb;

    move-result-object v0

    return-object v0
.end method

.method public static make([Ljava/lang/Object;)Lc8/nyb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lc8/nyb",
            "<*TT;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "t":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc8/nyb;->make(Ljava/lang/Iterable;)Lc8/nyb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public branch(Lc8/Oxb;)Lc8/nyb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "N:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Oxb",
            "<TS;TR;TN;>;)",
            "Lc8/nyb",
            "<TR;",
            "Lc8/jyb",
            "<TN;>;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;"
    .local p1, "branch":Lc8/Oxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$BranchParallel<TS;TR;TN;>;"
    new-instance v0, Lc8/nyb;

    invoke-direct {p0, p1}, Lc8/nyb;->createNextNode(Lc8/Hxb;)Lc8/fyb;

    move-result-object v1

    invoke-interface {v1}, Lc8/fyb;->subThread()Lc8/dyb;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/nyb;-><init>(Lc8/fyb;)V

    return-object v0
.end method

.method public cancel(Lc8/Rxb;)Lc8/nyb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Rxb",
            "<TR;>;)",
            "Lc8/nyb",
            "<TR;TR;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;"
    .local p1, "action":Lc8/Rxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$CancelAction<TR;>;"
    new-instance v0, Lc8/nyb;

    invoke-static {p1}, Lc8/Sxb;->make(Lc8/Rxb;)Lc8/fyb;

    move-result-object v1

    iget-object v2, p0, Lc8/nyb;->flowable:Lc8/fyb;

    invoke-interface {v1, v2}, Lc8/fyb;->setPrior(Lc8/fyb;)Lc8/fyb;

    move-result-object v1

    invoke-interface {v1}, Lc8/fyb;->currentThread()Lc8/dyb;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/nyb;-><init>(Lc8/fyb;)V

    return-object v0
.end method

.method public cancelWhen(Lc8/Wxb;)Lc8/nyb;
    .locals 1
    .param p1, "cancelable"    # Lc8/Wxb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Wxb;",
            ")",
            "Lc8/nyb",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;"
    iget-object v0, p0, Lc8/nyb;->flowable:Lc8/fyb;

    invoke-interface {v0}, Lc8/fyb;->getContext()Lc8/Zxb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Zxb;->setCancelable(Lc8/Wxb;)V

    .line 102
    return-object p0
.end method

.method public countFlow(Ljava/util/concurrent/CountDownLatch;)Lc8/Zxb;
    .locals 1
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 124
    .local p0, "this":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;"
    iget-object v0, p0, Lc8/nyb;->flowable:Lc8/fyb;

    invoke-interface {v0, p1}, Lc8/fyb;->countFlow(Ljava/util/concurrent/CountDownLatch;)Lc8/Zxb;

    move-result-object v0

    return-object v0
.end method

.method public flow()Lc8/Zxb;
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;"
    iget-object v0, p0, Lc8/nyb;->flowable:Lc8/fyb;

    invoke-interface {v0}, Lc8/fyb;->flow()Lc8/Zxb;

    move-result-object v0

    return-object v0
.end method

.method public judge(Lc8/gyb;)Lc8/nyb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/gyb",
            "<TR;>;)",
            "Lc8/nyb",
            "<TR;TR;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;"
    .local p1, "action":Lc8/gyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$JudgeAction<TR;>;"
    new-instance v0, Lc8/nyb;

    invoke-static {p1}, Lc8/hyb;->make(Lc8/gyb;)Lc8/fyb;

    move-result-object v1

    iget-object v2, p0, Lc8/nyb;->flowable:Lc8/fyb;

    invoke-interface {v1, v2}, Lc8/fyb;->setPrior(Lc8/fyb;)Lc8/fyb;

    move-result-object v1

    invoke-interface {v1}, Lc8/fyb;->currentThread()Lc8/dyb;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/nyb;-><init>(Lc8/fyb;)V

    return-object v0
.end method

.method public loop(Lc8/Hxb;)Lc8/nyb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hxb",
            "<TR;",
            "Ljava/lang/Iterable",
            "<TN;>;>;)",
            "Lc8/nyb",
            "<",
            "Ljava/lang/Iterable",
            "<TN;>;TN;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;"
    .local p1, "action":Lc8/Hxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Action<TR;Ljava/lang/Iterable<TN;>;>;"
    new-instance v0, Lc8/nyb;

    invoke-direct {p0, p1}, Lc8/nyb;->createNextNode(Lc8/Hxb;)Lc8/fyb;

    move-result-object v1

    invoke-static {v1}, Lc8/Kxb;->make(Lc8/fyb;)Lc8/fyb;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/nyb;-><init>(Lc8/fyb;)V

    return-object v0
.end method

.method public newThread(Lc8/Hxb;)Lc8/nyb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hxb",
            "<TR;TN;>;)",
            "Lc8/nyb",
            "<TR;TN;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;"
    .local p1, "action":Lc8/Hxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Action<TR;TN;>;"
    new-instance v0, Lc8/nyb;

    invoke-direct {p0, p1}, Lc8/nyb;->createNextNode(Lc8/Hxb;)Lc8/fyb;

    move-result-object v1

    invoke-interface {v1}, Lc8/fyb;->newThread()Lc8/dyb;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/nyb;-><init>(Lc8/fyb;)V

    return-object v0
.end method

.method public next(Lc8/Hxb;)Lc8/nyb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hxb",
            "<TR;TN;>;)",
            "Lc8/nyb",
            "<TR;TN;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;"
    .local p1, "action":Lc8/Hxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Action<TR;TN;>;"
    new-instance v0, Lc8/nyb;

    invoke-direct {p0, p1}, Lc8/nyb;->createNextNode(Lc8/Hxb;)Lc8/fyb;

    move-result-object v1

    invoke-interface {v1}, Lc8/fyb;->currentThread()Lc8/dyb;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/nyb;-><init>(Lc8/fyb;)V

    return-object v0
.end method

.method public onCancel(Lc8/Vxb;)Lc8/nyb;
    .locals 1
    .param p1, "listener"    # Lc8/Vxb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vxb;",
            ")",
            "Lc8/nyb",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;"
    iget-object v0, p0, Lc8/nyb;->flowable:Lc8/fyb;

    invoke-interface {v0}, Lc8/fyb;->getContext()Lc8/Zxb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Zxb;->setCancelListener(Lc8/Vxb;)V

    .line 106
    return-object p0
.end method

.method public onComplete(Lc8/Xxb;)Lc8/nyb;
    .locals 1
    .param p1, "listener"    # Lc8/Xxb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Xxb;",
            ")",
            "Lc8/nyb",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;"
    iget-object v0, p0, Lc8/nyb;->flowable:Lc8/fyb;

    invoke-interface {v0}, Lc8/fyb;->getContext()Lc8/Zxb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Zxb;->setCompleteListener(Lc8/Xxb;)V

    .line 114
    return-object p0
.end method

.method public onError(Lc8/Yxb;)Lc8/nyb;
    .locals 1
    .param p1, "listener"    # Lc8/Yxb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Yxb;",
            ")",
            "Lc8/nyb",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;"
    iget-object v0, p0, Lc8/nyb;->flowable:Lc8/fyb;

    invoke-interface {v0}, Lc8/fyb;->getContext()Lc8/Zxb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Zxb;->setErrorListener(Lc8/Yxb;)V

    .line 110
    return-object p0
.end method

.method public runOnNewThread()Lc8/nyb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/nyb",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;"
    iget-object v0, p0, Lc8/nyb;->flowable:Lc8/fyb;

    invoke-interface {v0}, Lc8/fyb;->newThread()Lc8/dyb;

    .line 118
    return-object p0
.end method

.method public sub(Lc8/Hxb;)Lc8/nyb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hxb",
            "<TR;TN;>;)",
            "Lc8/nyb",
            "<TR;TN;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;"
    .local p1, "action":Lc8/Hxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Action<TR;TN;>;"
    new-instance v0, Lc8/nyb;

    invoke-direct {p0, p1}, Lc8/nyb;->createNextNode(Lc8/Hxb;)Lc8/fyb;

    move-result-object v1

    invoke-interface {v1}, Lc8/fyb;->subThread()Lc8/dyb;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/nyb;-><init>(Lc8/fyb;)V

    return-object v0
.end method

.method public ui(Lc8/Hxb;)Lc8/nyb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hxb",
            "<TR;TN;>;)",
            "Lc8/nyb",
            "<TR;TN;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TT;TR;>;"
    .local p1, "action":Lc8/Hxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Action<TR;TN;>;"
    new-instance v0, Lc8/nyb;

    invoke-direct {p0, p1}, Lc8/nyb;->createNextNode(Lc8/Hxb;)Lc8/fyb;

    move-result-object v1

    invoke-interface {v1}, Lc8/fyb;->uiThread()Lc8/dyb;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/nyb;-><init>(Lc8/fyb;)V

    return-object v0
.end method
