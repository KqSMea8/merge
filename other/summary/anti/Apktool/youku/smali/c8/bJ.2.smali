.class public Lc8/bJ;
.super Ljava/lang/Object;
.source "SessionCenter.java"

# interfaces
.implements Lc8/EK;
.implements Lc8/NK;
.implements Lc8/NL;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/SessionCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerListener"
.end annotation


# instance fields
.field foreGroundCheckRunning:Z

.field final synthetic this$0:Lanet/channel/SessionCenter;


# direct methods
.method private constructor <init>(Lanet/channel/SessionCenter;)V
    .locals 1

    .prologue
    .line 492
    iput-object p1, p0, Lc8/bJ;->this$0:Lanet/channel/SessionCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/bJ;->foreGroundCheckRunning:Z

    return-void
.end method

.method public synthetic constructor <init>(Lanet/channel/SessionCenter;Lc8/ZI;)V
    .locals 0
    .param p1, "x0"    # Lanet/channel/SessionCenter;
    .param p2, "x1"    # Lc8/ZI;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lc8/bJ;-><init>(Lanet/channel/SessionCenter;)V

    return-void
.end method


# virtual methods
.method public background()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 569
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v1, "[background]"

    iget-object v2, p0, Lc8/bJ;->this$0:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    invoke-static {}, Lanet/channel/SessionCenter;->access$200()Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v1, "background not inited!"

    iget-object v2, p0, Lc8/bJ;->this$0:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    :try_start_0
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v0

    invoke-interface {v0}, Lc8/MK;->saveData()V

    .line 576
    const-string/jumbo v0, "OPPO"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v1, "close session for OPPO"

    iget-object v2, p0, Lc8/bJ;->this$0:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    iget-object v0, p0, Lc8/bJ;->this$0:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->accsSessionManager:Lc8/OI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/OI;->forceCloseSession(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public forground()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 531
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v1, "[forground]"

    iget-object v2, p0, Lc8/bJ;->this$0:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    iget-object v0, p0, Lc8/bJ;->this$0:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-boolean v0, p0, Lc8/bJ;->foreGroundCheckRunning:Z

    if-nez v0, :cond_0

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/bJ;->foreGroundCheckRunning:Z

    .line 541
    invoke-static {}, Lanet/channel/SessionCenter;->access$200()Z

    move-result v0

    if-nez v0, :cond_2

    .line 542
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v1, "forground not inited!"

    iget-object v2, p0, Lc8/bJ;->this$0:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 546
    :cond_2
    :try_start_0
    new-instance v0, Lc8/aJ;

    invoke-direct {v0, p0}, Lc8/aJ;-><init>(Lc8/bJ;)V

    invoke-static {v0}, Lc8/EL;->submitScheduledTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 9
    .param p1, "networkStatus"    # Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .prologue
    const/4 v8, 0x0

    .line 508
    const-string/jumbo v3, "awcn.SessionCenter"

    const-string/jumbo v4, "onNetworkStatusChanged. reCreateSession"

    iget-object v5, p0, Lc8/bJ;->this$0:Lanet/channel/SessionCenter;

    iget-object v5, v5, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "networkStatus"

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    iget-object v3, p0, Lc8/bJ;->this$0:Lanet/channel/SessionCenter;

    iget-object v3, v3, Lanet/channel/SessionCenter;->sessionPool:Lc8/dJ;

    invoke-virtual {v3}, Lc8/dJ;->getInfos()Ljava/util/List;

    move-result-object v1

    .line 510
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lanet/channel/SessionRequest;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 511
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/lJ;

    .line 512
    .local v2, "request":Lc8/lJ;
    const-string/jumbo v3, "awcn.SessionCenter"

    const-string/jumbo v4, "network change, try recreate session"

    iget-object v5, p0, Lc8/bJ;->this$0:Lanet/channel/SessionCenter;

    iget-object v5, v5, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/lJ;->reCreateSession(Ljava/lang/String;)V

    goto :goto_0

    .line 516
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "request":Lc8/lJ;
    :cond_0
    const-string/jumbo v3, "awcn.SessionCenter"

    const-string/jumbo v4, "recreate session failed: infos is empty"

    iget-object v5, p0, Lc8/bJ;->this$0:Lanet/channel/SessionCenter;

    iget-object v5, v5, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    :cond_1
    iget-object v3, p0, Lc8/bJ;->this$0:Lanet/channel/SessionCenter;

    iget-object v3, v3, Lanet/channel/SessionCenter;->accsSessionManager:Lc8/OI;

    invoke-virtual {v3}, Lc8/OI;->checkAndStartSession()V

    .line 519
    return-void
.end method

.method public onStrategyUpdated(Lc8/eL;)V
    .locals 1
    .param p1, "response"    # Lc8/eL;

    .prologue
    .line 523
    iget-object v0, p0, Lc8/bJ;->this$0:Lanet/channel/SessionCenter;

    invoke-static {v0, p1}, Lanet/channel/SessionCenter;->access$100(Lanet/channel/SessionCenter;Lc8/eL;)V

    .line 524
    iget-object v0, p0, Lc8/bJ;->this$0:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->accsSessionManager:Lc8/OI;

    invoke-virtual {v0}, Lc8/OI;->checkAndStartSession()V

    .line 525
    return-void
.end method

.method public registerAll()V
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 495
    invoke-static {p0}, Lc8/OL;->registerLifecycleListener(Lc8/NL;)V

    .line 496
    invoke-static {p0}, Lc8/FK;->addStatusChangeListener(Lc8/EK;)V

    .line 497
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v0

    invoke-interface {v0, p0}, Lc8/MK;->registerListener(Lc8/NK;)V

    .line 498
    return-void
.end method

.method public unRegisterAll()V
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 501
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v0

    invoke-interface {v0, p0}, Lc8/MK;->unregisterListener(Lc8/NK;)V

    .line 502
    invoke-static {p0}, Lc8/OL;->unregisterLifecycleListener(Lc8/NL;)V

    .line 503
    invoke-static {p0}, Lc8/FK;->removeStatusChangeListener(Lc8/EK;)V

    .line 504
    return-void
.end method
