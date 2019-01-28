.class public Lc8/qXb;
.super Ljava/lang/Object;
.source "LayerInfo.java"


# instance fields
.field private currentPopRequest:Lc8/yXb;

.field private volatile isDirty:Z

.field private final mLevel:I

.field private mWaittingList:Lc8/AXb;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lc8/qXb;->mLevel:I

    .line 23
    new-instance v0, Lc8/AXb;

    invoke-direct {v0}, Lc8/AXb;-><init>()V

    iput-object v0, p0, Lc8/qXb;->mWaittingList:Lc8/AXb;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/qXb;->isDirty:Z

    .line 25
    return-void
.end method

.method public static getHighestPriorityConfigInArray(Ljava/util/ArrayList;)Lc8/yXb;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/yXb;",
            ">;)",
            "Lc8/yXb;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    const/4 v1, -0x1

    .line 127
    .local v1, "chooseIndex":I
    const/4 v3, -0x1

    .line 128
    .local v3, "maxPriority":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 129
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/yXb;

    invoke-virtual {v5}, Lc8/yXb;->getPopParam()Lc8/wXb;

    move-result-object v5

    iget v4, v5, Lc8/wXb;->priority:I

    .line 130
    .local v4, "tempPriority":I
    if-le v4, v3, :cond_0

    .line 131
    move v3, v4

    .line 132
    move v1, v2

    .line 128
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v4    # "tempPriority":I
    :cond_1
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/yXb;

    move-object v0, v5

    .line 136
    .local v0, "choose":Lc8/yXb;
    :goto_1
    return-object v0

    .line 135
    .end local v0    # "choose":Lc8/yXb;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getHighestPriorityWithForcePop(Ljava/util/ArrayList;Lc8/yXb;)Lc8/yXb;
    .locals 7
    .param p1, "currentPopRequest"    # Lc8/yXb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/yXb;",
            ">;",
            "Lc8/yXb;",
            ")",
            "Lc8/yXb;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    const/4 v1, -0x1

    .line 142
    .local v1, "chooseIndex":I
    const/4 v3, -0x1

    .line 143
    .local v3, "maxPriority":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 144
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/yXb;

    invoke-virtual {v5}, Lc8/yXb;->getPopParam()Lc8/wXb;

    move-result-object v5

    iget-boolean v5, v5, Lc8/wXb;->forcePopRespectingPriority:Z

    if-eqz v5, :cond_0

    .line 145
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/yXb;

    invoke-virtual {v5}, Lc8/yXb;->getPopParam()Lc8/wXb;

    move-result-object v5

    iget v4, v5, Lc8/wXb;->priority:I

    .line 146
    .local v4, "tempPriority":I
    if-le v4, v3, :cond_0

    .line 147
    move v3, v4

    .line 148
    move v1, v2

    .line 143
    .end local v4    # "tempPriority":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_1
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/yXb;

    move-object v0, v5

    .line 154
    .local v0, "chooseConfig":Lc8/yXb;
    :goto_1
    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {v0}, Lc8/yXb;->getPopParam()Lc8/wXb;

    move-result-object v5

    iget v5, v5, Lc8/wXb;->priority:I

    invoke-virtual {p1}, Lc8/yXb;->getPopParam()Lc8/wXb;

    move-result-object v6

    iget v6, v6, Lc8/wXb;->priority:I

    if-gt v5, v6, :cond_2

    .line 156
    const/4 v0, 0x0

    .line 159
    :cond_2
    return-object v0

    .line 152
    .end local v0    # "chooseConfig":Lc8/yXb;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addPopRequests(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/yXb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    const/4 v5, 0x1

    .line 33
    iget-object v4, p0, Lc8/qXb;->currentPopRequest:Lc8/yXb;

    if-nez v4, :cond_2

    .line 34
    iput-boolean v5, p0, Lc8/qXb;->isDirty:Z

    .line 35
    invoke-static {p1}, Lc8/qXb;->getHighestPriorityConfigInArray(Ljava/util/ArrayList;)Lc8/yXb;

    move-result-object v3

    .line 36
    .local v3, "request":Lc8/yXb;
    iput-object v3, p0, Lc8/qXb;->currentPopRequest:Lc8/yXb;

    .line 37
    invoke-virtual {v3}, Lc8/yXb;->getLayer()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 38
    sget-object v4, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->SHOWING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v3, v4}, Lc8/yXb;->setStatus(Lcom/alibaba/poplayer/layermanager/PopRequest$Status;)V

    .line 44
    :goto_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/yXb;

    .line 47
    .local v2, "req":Lc8/yXb;
    invoke-virtual {v2}, Lc8/yXb;->getPopParam()Lc8/wXb;

    move-result-object v4

    iget-boolean v4, v4, Lc8/wXb;->enqueue:Z

    if-eqz v4, :cond_0

    .line 48
    iget-object v4, p0, Lc8/qXb;->mWaittingList:Lc8/AXb;

    invoke-virtual {v4, v2}, Lc8/AXb;->add(Lc8/yXb;)Z

    goto :goto_1

    .line 40
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "req":Lc8/yXb;
    :cond_1
    sget-object v4, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->READY:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v3, v4}, Lc8/yXb;->setStatus(Lcom/alibaba/poplayer/layermanager/PopRequest$Status;)V

    .line 41
    invoke-virtual {v3}, Lc8/yXb;->getStatusCallBacks()Lc8/xXb;

    move-result-object v4

    invoke-interface {v4, v3}, Lc8/xXb;->onReady(Lc8/yXb;)V

    goto :goto_0

    .line 50
    .end local v3    # "request":Lc8/yXb;
    :cond_2
    iget-object v4, p0, Lc8/qXb;->currentPopRequest:Lc8/yXb;

    invoke-static {p1, v4}, Lc8/qXb;->getHighestPriorityWithForcePop(Ljava/util/ArrayList;Lc8/yXb;)Lc8/yXb;

    move-result-object v0

    .line 51
    .local v0, "forcePop":Lc8/yXb;
    if-eqz v0, :cond_3

    .line 53
    iput-boolean v5, p0, Lc8/qXb;->isDirty:Z

    .line 55
    iget-object v4, p0, Lc8/qXb;->currentPopRequest:Lc8/yXb;

    invoke-virtual {v4}, Lc8/yXb;->getPopParam()Lc8/wXb;

    move-result-object v4

    iget-boolean v4, v4, Lc8/wXb;->enqueue:Z

    if-eqz v4, :cond_5

    .line 56
    iget-object v4, p0, Lc8/qXb;->mWaittingList:Lc8/AXb;

    iget-object v5, p0, Lc8/qXb;->currentPopRequest:Lc8/yXb;

    invoke-virtual {v4, v5}, Lc8/AXb;->add(Lc8/yXb;)Z

    .line 57
    iget-object v4, p0, Lc8/qXb;->currentPopRequest:Lc8/yXb;

    sget-object v5, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->WAITTING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v4, v5}, Lc8/yXb;->setStatus(Lcom/alibaba/poplayer/layermanager/PopRequest$Status;)V

    .line 63
    :goto_2
    invoke-virtual {v0}, Lc8/yXb;->getLayer()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 64
    sget-object v4, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->SHOWING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v0, v4}, Lc8/yXb;->setStatus(Lcom/alibaba/poplayer/layermanager/PopRequest$Status;)V

    .line 69
    :goto_3
    iput-object v0, p0, Lc8/qXb;->currentPopRequest:Lc8/yXb;

    .line 70
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 72
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/yXb;

    .line 73
    .restart local v2    # "req":Lc8/yXb;
    invoke-virtual {v2}, Lc8/yXb;->getPopParam()Lc8/wXb;

    move-result-object v4

    iget-boolean v4, v4, Lc8/wXb;->enqueue:Z

    if-eqz v4, :cond_4

    .line 74
    iget-object v4, p0, Lc8/qXb;->mWaittingList:Lc8/AXb;

    invoke-virtual {v4, v2}, Lc8/AXb;->add(Lc8/yXb;)Z

    goto :goto_4

    .line 59
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "req":Lc8/yXb;
    :cond_5
    iget-object v4, p0, Lc8/qXb;->currentPopRequest:Lc8/yXb;

    sget-object v5, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->REMOVED:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v4, v5}, Lc8/yXb;->setStatus(Lcom/alibaba/poplayer/layermanager/PopRequest$Status;)V

    .line 60
    iget-object v4, p0, Lc8/qXb;->currentPopRequest:Lc8/yXb;

    invoke-virtual {v4}, Lc8/yXb;->getStatusCallBacks()Lc8/xXb;

    move-result-object v4

    iget-object v5, p0, Lc8/qXb;->currentPopRequest:Lc8/yXb;

    invoke-interface {v4, v5}, Lc8/xXb;->onForceRemoved(Lc8/yXb;)V

    goto :goto_2

    .line 66
    :cond_6
    sget-object v4, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->READY:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v0, v4}, Lc8/yXb;->setStatus(Lcom/alibaba/poplayer/layermanager/PopRequest$Status;)V

    .line 67
    invoke-virtual {v0}, Lc8/yXb;->getStatusCallBacks()Lc8/xXb;

    move-result-object v4

    invoke-interface {v4, v0}, Lc8/xXb;->onReady(Lc8/yXb;)V

    goto :goto_3

    .line 76
    .end local v0    # "forcePop":Lc8/yXb;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_7
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/qXb;->isDirty:Z

    .line 117
    return-void
.end method

.method public getCurrentPopRequest()Lc8/yXb;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lc8/qXb;->currentPopRequest:Lc8/yXb;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lc8/qXb;->mLevel:I

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lc8/qXb;->isDirty:Z

    return v0
.end method

.method public readyToShow()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/qXb;->isDirty:Z

    .line 108
    return-void
.end method

.method public removePopRequests(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/yXb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    iget-object v3, p0, Lc8/qXb;->currentPopRequest:Lc8/yXb;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/qXb;->isDirty:Z

    .line 82
    iget-object v3, p0, Lc8/qXb;->currentPopRequest:Lc8/yXb;

    sget-object v4, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->REMOVED:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v3, v4}, Lc8/yXb;->setStatus(Lcom/alibaba/poplayer/layermanager/PopRequest$Status;)V

    .line 83
    iget-object v3, p0, Lc8/qXb;->currentPopRequest:Lc8/yXb;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 84
    const/4 v3, 0x0

    iput-object v3, p0, Lc8/qXb;->currentPopRequest:Lc8/yXb;

    .line 86
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/yXb;

    .line 87
    .local v2, "req":Lc8/yXb;
    sget-object v3, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->REMOVED:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v2, v3}, Lc8/yXb;->setStatus(Lcom/alibaba/poplayer/layermanager/PopRequest$Status;)V

    goto :goto_0

    .line 89
    .end local v2    # "req":Lc8/yXb;
    :cond_1
    iget-object v3, p0, Lc8/qXb;->mWaittingList:Lc8/AXb;

    invoke-virtual {v3, p1}, Lc8/AXb;->remove(Ljava/util/Collection;)Z

    .line 91
    iget-object v3, p0, Lc8/qXb;->currentPopRequest:Lc8/yXb;

    if-nez v3, :cond_2

    .line 92
    iget-object v3, p0, Lc8/qXb;->mWaittingList:Lc8/AXb;

    invoke-virtual {v3}, Lc8/AXb;->poll()Lc8/yXb;

    move-result-object v1

    .line 93
    .local v1, "newRequest":Lc8/yXb;
    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {v1}, Lc8/yXb;->getLayer()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 95
    sget-object v3, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->SHOWING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v1, v3}, Lc8/yXb;->setStatus(Lcom/alibaba/poplayer/layermanager/PopRequest$Status;)V

    .line 100
    :goto_1
    iput-object v1, p0, Lc8/qXb;->currentPopRequest:Lc8/yXb;

    .line 103
    .end local v1    # "newRequest":Lc8/yXb;
    :cond_2
    return-void

    .line 97
    .restart local v1    # "newRequest":Lc8/yXb;
    :cond_3
    sget-object v3, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->READY:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v1, v3}, Lc8/yXb;->setStatus(Lcom/alibaba/poplayer/layermanager/PopRequest$Status;)V

    .line 98
    invoke-virtual {v1}, Lc8/yXb;->getStatusCallBacks()Lc8/xXb;

    move-result-object v3

    invoke-interface {v3, v1}, Lc8/xXb;->onReady(Lc8/yXb;)V

    goto :goto_1
.end method
