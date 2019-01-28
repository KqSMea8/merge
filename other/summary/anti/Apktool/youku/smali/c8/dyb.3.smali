.class public abstract Lc8/dyb;
.super Ljava/lang/Object;
.source "WorkFlow.java"

# interfaces
.implements Lc8/fyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FlowNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/fyb",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field action:Lc8/Hxb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hxb",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field actionCall:Lc8/eyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/eyb",
            "<TR;>;"
        }
    .end annotation
.end field

.field actionResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field context:Lc8/Zxb;

.field next:Lc8/fyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/fyb",
            "<TR;*>;"
        }
    .end annotation
.end field

.field prior:Lc8/fyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/fyb",
            "<*TT;>;"
        }
    .end annotation
.end field

.field runThread:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 426
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    sget-object v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->CURRENT:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    iput-object v0, p0, Lc8/dyb;->runThread:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    .line 426
    return-void
.end method

.method constructor <init>(Lc8/Hxb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Hxb",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    .local p1, "action":Lc8/Hxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Action<TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    sget-object v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->CURRENT:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    iput-object v0, p0, Lc8/dyb;->runThread:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    .line 428
    invoke-virtual {p0, p1}, Lc8/dyb;->setAction(Lc8/Hxb;)Lc8/fyb;

    .line 429
    return-void
.end method

.method private callThis(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    .local p1, "priorResult":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/dyb;->action:Lc8/Hxb;

    invoke-interface {v0, p1}, Lc8/Hxb;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/dyb;->actionResult:Ljava/lang/Object;

    .line 590
    iget-object v0, p0, Lc8/dyb;->actionResult:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public countFlow(Ljava/util/concurrent/CountDownLatch;)Lc8/Zxb;
    .locals 1
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 496
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    iget-object v0, p0, Lc8/dyb;->context:Lc8/Zxb;

    invoke-virtual {v0, p0}, Lc8/Zxb;->setTailNode(Lc8/fyb;)Lc8/Zxb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Zxb;->setCountDownLatch(Ljava/util/concurrent/CountDownLatch;)Lc8/Zxb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Zxb;->flowStart()Lc8/Zxb;

    move-result-object v0

    return-object v0
.end method

.method public currentThread()Lc8/dyb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/dyb",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    sget-object v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->CURRENT:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    iput-object v0, p0, Lc8/dyb;->runThread:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    .line 487
    return-object p0
.end method

.method findLoopNode()Lc8/fyb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/fyb",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 593
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    move-object v0, p0

    .line 594
    .local v0, "flowable":Lc8/fyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable<**>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 595
    invoke-interface {v0}, Lc8/fyb;->isLooping()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    .end local v0    # "flowable":Lc8/fyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable<**>;"
    :goto_1
    return-object v0

    .line 598
    .restart local v0    # "flowable":Lc8/fyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable<**>;"
    :cond_0
    invoke-interface {v0}, Lc8/fyb;->prior()Lc8/fyb;

    move-result-object v0

    goto :goto_0

    .line 600
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public flow()Lc8/Zxb;
    .locals 1

    .prologue
    .line 491
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    iget-object v0, p0, Lc8/dyb;->context:Lc8/Zxb;

    invoke-virtual {v0, p0}, Lc8/Zxb;->setTailNode(Lc8/fyb;)Lc8/Zxb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Zxb;->flowStart()Lc8/Zxb;

    move-result-object v0

    return-object v0
.end method

.method public flowToNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    .local p1, "priorResult":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-direct {p0, p1}, Lc8/dyb;->callThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 554
    .local v2, "resultAction":Ljava/lang/Object;, "TR;"
    iget-object v3, p0, Lc8/dyb;->actionCall:Lc8/eyb;

    if-eqz v3, :cond_0

    .line 555
    iget-object v3, p0, Lc8/dyb;->actionCall:Lc8/eyb;

    invoke-interface {v3, v2}, Lc8/eyb;->onCall(Ljava/lang/Object;)V

    .line 557
    :cond_0
    invoke-virtual {p0}, Lc8/dyb;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 558
    invoke-virtual {p0}, Lc8/dyb;->next()Lc8/fyb;

    move-result-object v3

    invoke-interface {v3, v2}, Lc8/fyb;->scheduleFlow(Ljava/lang/Object;)V

    .line 575
    .end local v2    # "resultAction":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 560
    .restart local v2    # "resultAction":Ljava/lang/Object;, "TR;"
    :cond_1
    invoke-virtual {p0}, Lc8/dyb;->findLoopNode()Lc8/fyb;

    move-result-object v1

    .line 561
    .local v1, "loopNode":Lc8/fyb;
    if-eqz v1, :cond_2

    .line 562
    invoke-interface {v1}, Lc8/fyb;->prior()Lc8/fyb;

    move-result-object v3

    invoke-interface {v3}, Lc8/fyb;->getResult()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lc8/fyb;->scheduleFlow(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 567
    .end local v1    # "loopNode":Lc8/fyb;
    .end local v2    # "resultAction":Ljava/lang/Object;, "TR;"
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 569
    instance-of v3, v0, Lcom/alibaba/aliweex/plugin/WorkFlow$WorkFlowException;

    if-eqz v3, :cond_3

    .line 570
    iget-object v3, p0, Lc8/dyb;->context:Lc8/Zxb;

    check-cast v0, Lcom/alibaba/aliweex/plugin/WorkFlow$WorkFlowException;

    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v3, v0}, Lc8/Zxb;->setException(Lcom/alibaba/aliweex/plugin/WorkFlow$WorkFlowException;)Lc8/Zxb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Zxb;->flowToFinal()V

    goto :goto_0

    .line 564
    .restart local v1    # "loopNode":Lc8/fyb;
    .restart local v2    # "resultAction":Ljava/lang/Object;, "TR;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Lc8/dyb;->context:Lc8/Zxb;

    invoke-virtual {v3}, Lc8/Zxb;->flowToFinal()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 572
    .end local v1    # "loopNode":Lc8/fyb;
    .end local v2    # "resultAction":Ljava/lang/Object;, "TR;"
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    iget-object v3, p0, Lc8/dyb;->context:Lc8/Zxb;

    new-instance v4, Lcom/alibaba/aliweex/plugin/WorkFlow$WorkFlowException;

    invoke-direct {v4, v0}, Lcom/alibaba/aliweex/plugin/WorkFlow$WorkFlowException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lc8/Zxb;->setException(Lcom/alibaba/aliweex/plugin/WorkFlow$WorkFlowException;)Lc8/Zxb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Zxb;->flowToFinal()V

    goto :goto_0
.end method

.method public final getAction()Lc8/Hxb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lc8/Hxb",
            "<TT;TR;>;>()TS;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    iget-object v0, p0, Lc8/dyb;->action:Lc8/Hxb;

    return-object v0
.end method

.method public getContext()Lc8/Zxb;
    .locals 1

    .prologue
    .line 437
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    iget-object v0, p0, Lc8/dyb;->context:Lc8/Zxb;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    iget-object v0, p0, Lc8/dyb;->actionResult:Ljava/lang/Object;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 548
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    iget-object v0, p0, Lc8/dyb;->next:Lc8/fyb;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 578
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public newThread()Lc8/dyb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/dyb",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 481
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    sget-object v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->NEW:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    iput-object v0, p0, Lc8/dyb;->runThread:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    .line 482
    return-object p0
.end method

.method public next()Lc8/fyb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/fyb",
            "<TR;*>;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    iget-object v0, p0, Lc8/dyb;->next:Lc8/fyb;

    return-object v0
.end method

.method public onActionCall(Lc8/eyb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/eyb",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    .local p1, "actionCall":Lc8/eyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$OnActionCall<TR;>;"
    iput-object p1, p0, Lc8/dyb;->actionCall:Lc8/eyb;

    .line 587
    return-void
.end method

.method public prior()Lc8/fyb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/fyb",
            "<*TT;>;"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    iget-object v0, p0, Lc8/dyb;->prior:Lc8/fyb;

    return-object v0
.end method

.method public scheduleFlow(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    .local p1, "priorResult":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/dyb;->context:Lc8/Zxb;

    invoke-virtual {v0}, Lc8/Zxb;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lc8/dyb;->context:Lc8/Zxb;

    invoke-virtual {v0}, Lc8/Zxb;->flowToFinal()V

    .line 545
    :goto_0
    return-void

    .line 505
    :cond_0
    sget-object v0, Lc8/Gxb;->$SwitchMap$com$alibaba$aliweex$plugin$WorkFlow$Flowable$RunThread:[I

    iget-object v1, p0, Lc8/dyb;->runThread:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    invoke-virtual {v1}, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 542
    invoke-virtual {p0, p1}, Lc8/dyb;->flowToNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 507
    :pswitch_0
    invoke-virtual {p0, p1}, Lc8/dyb;->flowToNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 510
    :pswitch_1
    invoke-static {}, Lc8/oyb;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    invoke-virtual {p0, p1}, Lc8/dyb;->flowToNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v0, p0, Lc8/dyb;->context:Lc8/Zxb;

    new-instance v1, Lc8/ayb;

    invoke-direct {v1, p0, p1}, Lc8/ayb;-><init>(Lc8/dyb;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lc8/Zxb;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 522
    :pswitch_2
    invoke-static {}, Lc8/oyb;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Lc8/dyb;->context:Lc8/Zxb;

    new-instance v1, Lc8/byb;

    invoke-direct {v1, p0, p1}, Lc8/byb;-><init>(Lc8/dyb;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lc8/Zxb;->runOnNewThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 530
    :cond_2
    invoke-virtual {p0, p1}, Lc8/dyb;->flowToNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 534
    :pswitch_3
    iget-object v0, p0, Lc8/dyb;->context:Lc8/Zxb;

    new-instance v1, Lc8/cyb;

    invoke-direct {v1, p0, p1}, Lc8/cyb;-><init>(Lc8/dyb;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lc8/Zxb;->runOnNewThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAction(Lc8/Hxb;)Lc8/fyb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lc8/Hxb",
            "<TT;TR;>;>(TA;)",
            "Lc8/fyb",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    .local p1, "action":Lc8/Hxb;, "TA;"
    iput-object p1, p0, Lc8/dyb;->action:Lc8/Hxb;

    .line 442
    return-object p0
.end method

.method public setContext(Lc8/Zxb;)Lc8/fyb;
    .locals 0
    .param p1, "context"    # Lc8/Zxb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Zxb;",
            ")",
            "Lc8/fyb",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    iput-object p1, p0, Lc8/dyb;->context:Lc8/Zxb;

    .line 433
    return-object p0
.end method

.method public setNext(Lc8/fyb;)Lc8/fyb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/fyb",
            "<TR;*>;)",
            "Lc8/fyb",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    .local p1, "next":Lc8/fyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable<TR;*>;"
    iput-object p1, p0, Lc8/dyb;->next:Lc8/fyb;

    .line 460
    return-object p0
.end method

.method public setPrior(Lc8/fyb;)Lc8/fyb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/fyb",
            "<*TT;>;)",
            "Lc8/fyb",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    .local p1, "prior":Lc8/fyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable<*TT;>;"
    iput-object p1, p0, Lc8/dyb;->prior:Lc8/fyb;

    .line 465
    iget-object v0, p0, Lc8/dyb;->prior:Lc8/fyb;

    invoke-interface {v0, p0}, Lc8/fyb;->setNext(Lc8/fyb;)Lc8/fyb;

    .line 466
    invoke-interface {p1}, Lc8/fyb;->getContext()Lc8/Zxb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/dyb;->setContext(Lc8/Zxb;)Lc8/fyb;

    .line 467
    return-object p0
.end method

.method public subThread()Lc8/dyb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/dyb",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    sget-object v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->SUB:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    iput-object v0, p0, Lc8/dyb;->runThread:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    .line 477
    return-object p0
.end method

.method public uiThread()Lc8/dyb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/dyb",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "this":Lc8/dyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$FlowNode<TT;TR;>;"
    sget-object v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->UI:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    iput-object v0, p0, Lc8/dyb;->runThread:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    .line 472
    return-object p0
.end method
