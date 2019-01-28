.class public Lc8/YVb;
.super Ljava/lang/Object;
.source "GodeyeRemoteCommandCenter.java"


# instance fields
.field private mCommandControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lc8/HWb",
            "<",
            "Lc8/cWb;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/YVb;->mCommandControllers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public dispatchCommand(IILc8/RWb;)V
    .locals 5
    .param p1, "commandSet"    # I
    .param p2, "command"    # I
    .param p3, "instructionPacket"    # Lc8/RWb;

    .prologue
    .line 47
    :try_start_0
    invoke-static {}, Lc8/DWb;->loadDefaultPlugins()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    iget-object v3, p0, Lc8/YVb;->mCommandControllers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/HWb;

    .line 53
    .local v1, "entry":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<Lcom/alibaba/mtl/godeye/client/control/AbsCommandController;>;"
    invoke-virtual {v1}, Lc8/HWb;->getCommandSet()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v1}, Lc8/HWb;->getCommand()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 54
    invoke-virtual {v1}, Lc8/HWb;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/cWb;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p3, v4}, Lc8/YVb;->dispatchCommandInternal(Lc8/cWb;Lc8/RWb;Z)V

    goto :goto_1

    .line 48
    .end local v1    # "entry":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<Lcom/alibaba/mtl/godeye/client/control/AbsCommandController;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public dispatchCommandInternal(Lc8/cWb;Lc8/RWb;Z)V
    .locals 7
    .param p1, "commandController"    # Lc8/cWb;
    .param p2, "packet"    # Lc8/RWb;
    .param p3, "isColdStart"    # Z

    .prologue
    .line 66
    if-nez p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string/jumbo v0, "sequence"

    invoke-interface {p2, v0}, Lc8/RWb;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc8/cWb;->setCurrentSequence(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lc8/cWb;->getInstructionHandler()Lc8/aWb;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p1}, Lc8/cWb;->getInstructionHandler()Lc8/aWb;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lc8/aWb;->handleInstruction(Lc8/RWb;Z)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p1}, Lc8/cWb;->getStartJointPointCallback()Lc8/oWb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc8/cWb;->getStopJointPointCallback()Lc8/oWb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/fWb;->defaultCommandManager()Lc8/ZVb;

    move-result-object v0

    invoke-interface {p2}, Lc8/RWb;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lc8/ZVb;->saveRawCommandString(Lc8/cWb;Ljava/lang/String;)V

    .line 80
    new-instance v6, Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;

    invoke-direct {v6, p2}, Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;-><init>(Lc8/RWb;)V

    .line 83
    .local v6, "baseCommand":Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/fWb;->defaultGodeyeJointPointCenter()Lc8/mWb;

    move-result-object v0

    invoke-virtual {v6}, Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;->getStart()Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    move-result-object v1

    invoke-virtual {p1}, Lc8/cWb;->getStartJointPointCallback()Lc8/oWb;

    move-result-object v2

    invoke-virtual {v6}, Lcom/alibaba/mtl/godeye/client/command/GodeyeBaseTask;->getStop()Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;

    move-result-object v3

    invoke-virtual {p1}, Lc8/cWb;->getStopJointPointCallback()Lc8/oWb;

    move-result-object v4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lc8/mWb;->installJointPoints(Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;Lc8/oWb;Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;Lc8/oWb;Z)V

    goto :goto_0
.end method

.method public getCommandControllers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lc8/HWb",
            "<",
            "Lc8/cWb;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lc8/YVb;->mCommandControllers:Ljava/util/Set;

    return-object v0
.end method

.method public registerCommandController(IILc8/cWb;)V
    .locals 2
    .param p1, "commandSet"    # I
    .param p2, "command"    # I
    .param p3, "commandController"    # Lc8/cWb;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/YVb;->mCommandControllers:Ljava/util/Set;

    invoke-static {p1, p2, p3}, Lc8/HWb;->build(IILjava/lang/Object;)Lc8/HWb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method
