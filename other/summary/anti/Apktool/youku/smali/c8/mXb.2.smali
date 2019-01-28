.class public Lc8/mXb;
.super Ljava/lang/Object;
.source "CanvasViewModel.java"


# instance fields
.field private mCanvas:Lc8/LXb;

.field private final mDomain:I

.field private mLayerInfos:Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "domain"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lc8/mXb;->mDomain:I

    .line 39
    new-instance v0, Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;

    invoke-direct {v0}, Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;-><init>()V

    iput-object v0, p0, Lc8/mXb;->mLayerInfos:Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;

    .line 40
    return-void
.end method

.method private adjustByLevel(Ljava/util/ArrayList;)Lc8/GXb;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/yXb;",
            ">;)",
            "Lc8/GXb",
            "<",
            "Lc8/qXb;",
            "Lc8/yXb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    new-instance v4, Lc8/GXb;

    invoke-direct {v4}, Lc8/GXb;-><init>()V

    .line 61
    .local v4, "res":Lc8/GXb;, "Lcom/alibaba/poplayer/layermanager/util/HashArrayMap<Lcom/alibaba/poplayer/layermanager/LayerInfo;Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/yXb;

    .line 62
    .local v3, "req":Lc8/yXb;
    invoke-virtual {v3}, Lc8/yXb;->getPopParam()Lc8/wXb;

    move-result-object v5

    check-cast v5, Lc8/pXb;

    iget v2, v5, Lc8/pXb;->level:I

    .line 63
    .local v2, "level":I
    iget-object v5, p0, Lc8/mXb;->mLayerInfos:Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;

    invoke-virtual {v5, v2}, Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;->findLayerInfoByLevel(I)Lc8/qXb;

    move-result-object v1

    .line 64
    .local v1, "layerInfo":Lc8/qXb;
    invoke-virtual {v4, v1, v3}, Lc8/GXb;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    .end local v1    # "layerInfo":Lc8/qXb;
    .end local v2    # "level":I
    .end local v3    # "req":Lc8/yXb;
    :cond_0
    return-object v4
.end method

.method private declared-synchronized updateCanvas()V
    .locals 9
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lc8/mXb;->getCanvas()Lc8/LXb;

    move-result-object v0

    .line 87
    .local v0, "canvas":Lc8/LXb;
    if-nez v0, :cond_1

    .line 88
    const-string/jumbo v5, "%s. updateCanvas ,but lose canvas."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lc8/mXb;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    monitor-exit p0

    return-void

    .line 91
    :cond_1
    :try_start_1
    iget-object v5, p0, Lc8/mXb;->mLayerInfos:Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;

    invoke-virtual {v5}, Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/qXb;

    .line 92
    .local v2, "layerInfo":Lc8/qXb;
    invoke-virtual {v2}, Lc8/qXb;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    invoke-virtual {v2}, Lc8/qXb;->getLevel()I

    move-result v5

    invoke-virtual {v0, v5}, Lc8/LXb;->findViewByLevel(I)Landroid/view/View;

    move-result-object v4

    .line 96
    .local v4, "preView":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 97
    invoke-virtual {p0}, Lc8/mXb;->getCanvas()Lc8/LXb;

    move-result-object v5

    invoke-virtual {v5, v4}, Lc8/LXb;->removeView(Landroid/view/View;)V

    .line 100
    :cond_3
    invoke-virtual {v2}, Lc8/qXb;->getCurrentPopRequest()Lc8/yXb;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lc8/qXb;->getCurrentPopRequest()Lc8/yXb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/yXb;->getLayer()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 101
    invoke-virtual {v2}, Lc8/qXb;->getCurrentPopRequest()Lc8/yXb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/yXb;->getLayer()Landroid/view/View;

    move-result-object v3

    .line 102
    .local v3, "popLayerView":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 106
    const-string/jumbo v5, "%s. remove Layer {level:%s}."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lc8/mXb;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lc8/qXb;->getLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v2}, Lc8/qXb;->getLevel()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lc8/LXb;->addViewByLevel(Landroid/view/View;I)V

    .line 109
    invoke-virtual {v2}, Lc8/qXb;->getCurrentPopRequest()Lc8/yXb;

    move-result-object v5

    sget-object v6, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->SHOWING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-static {v5, v6}, Lc8/HXb;->notifyStatus(Lc8/yXb;Lcom/alibaba/poplayer/layermanager/PopRequest$Status;)V

    .line 110
    const-string/jumbo v5, "%s. add Layer {level:%s}."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lc8/mXb;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lc8/qXb;->getLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .end local v3    # "popLayerView":Landroid/view/View;
    :cond_4
    invoke-virtual {v2}, Lc8/qXb;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 86
    .end local v0    # "canvas":Lc8/LXb;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "layerInfo":Lc8/qXb;
    .end local v4    # "preView":Landroid/view/View;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method public declared-synchronized acceptRequests(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 44
    .local p1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lc8/mXb;->adjustByLevel(Ljava/util/ArrayList;)Lc8/GXb;

    move-result-object v2

    .line 45
    .local v2, "res":Lc8/GXb;, "Lcom/alibaba/poplayer/layermanager/util/HashArrayMap<Lcom/alibaba/poplayer/layermanager/LayerInfo;Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    invoke-virtual {v2}, Lc8/GXb;->getHashMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/qXb;

    .line 46
    .local v1, "layerInfo":Lc8/qXb;
    invoke-virtual {v2, v1}, Lc8/GXb;->get(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lc8/qXb;->addPopRequests(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 44
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "layerInfo":Lc8/qXb;
    .end local v2    # "res":Lc8/GXb;, "Lcom/alibaba/poplayer/layermanager/util/HashArrayMap<Lcom/alibaba/poplayer/layermanager/LayerInfo;Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 48
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "res":Lc8/GXb;, "Lcom/alibaba/poplayer/layermanager/util/HashArrayMap<Lcom/alibaba/poplayer/layermanager/LayerInfo;Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lc8/mXb;->updateCanvas()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    monitor-exit p0

    return-void
.end method

.method public count()I
    .locals 4

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "count":I
    iget-object v3, p0, Lc8/mXb;->mLayerInfos:Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;

    invoke-virtual {v3}, Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/qXb;

    .line 127
    .local v2, "layerInfo":Lc8/qXb;
    invoke-virtual {v2}, Lc8/qXb;->getCurrentPopRequest()Lc8/yXb;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v2    # "layerInfo":Lc8/qXb;
    :cond_1
    return v0
.end method

.method public getCanvas()Lc8/LXb;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lc8/mXb;->mCanvas:Lc8/LXb;

    return-object v0
.end method

.method public declared-synchronized removeRequests(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 52
    .local p1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lc8/mXb;->adjustByLevel(Ljava/util/ArrayList;)Lc8/GXb;

    move-result-object v2

    .line 53
    .local v2, "res":Lc8/GXb;, "Lcom/alibaba/poplayer/layermanager/util/HashArrayMap<Lcom/alibaba/poplayer/layermanager/LayerInfo;Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    invoke-virtual {v2}, Lc8/GXb;->getHashMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/qXb;

    .line 54
    .local v1, "layerInfo":Lc8/qXb;
    invoke-virtual {v2, v1}, Lc8/GXb;->get(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lc8/qXb;->removePopRequests(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 52
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "layerInfo":Lc8/qXb;
    .end local v2    # "res":Lc8/GXb;, "Lcom/alibaba/poplayer/layermanager/util/HashArrayMap<Lcom/alibaba/poplayer/layermanager/LayerInfo;Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 56
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "res":Lc8/GXb;, "Lcom/alibaba/poplayer/layermanager/util/HashArrayMap<Lcom/alibaba/poplayer/layermanager/LayerInfo;Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lc8/mXb;->updateCanvas()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    monitor-exit p0

    return-void
.end method

.method public setCanvas(Lc8/LXb;)V
    .locals 0
    .param p1, "canvas"    # Lc8/LXb;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/mXb;->mCanvas:Lc8/LXb;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CanvasViewModel{mDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/mXb;->mDomain:I

    invoke-static {v1}, Lc8/ZWb;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public viewReadyNotify(Lc8/yXb;)V
    .locals 6
    .param p1, "request"    # Lc8/yXb;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 70
    invoke-virtual {p1}, Lc8/yXb;->getPopParam()Lc8/wXb;

    move-result-object v1

    check-cast v1, Lc8/pXb;

    .line 71
    .local v1, "popParam":Lc8/pXb;
    iget-object v2, p0, Lc8/mXb;->mLayerInfos:Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;

    iget v3, v1, Lc8/pXb;->level:I

    invoke-virtual {v2, v3}, Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;->findLayerInfoByLevel(I)Lc8/qXb;

    move-result-object v0

    .line 72
    .local v0, "layerInfo":Lc8/qXb;
    invoke-virtual {v0}, Lc8/qXb;->getCurrentPopRequest()Lc8/yXb;

    move-result-object v2

    if-eq v2, p1, :cond_0

    .line 73
    const-string/jumbo v2, "%s.viewReadyNotify=>request not match!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lc8/mXb;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string/jumbo v2, "%s.viewReadyNotify=>readyToShow!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lc8/mXb;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v0}, Lc8/qXb;->readyToShow()V

    .line 78
    invoke-direct {p0}, Lc8/mXb;->updateCanvas()V

    goto :goto_0
.end method
