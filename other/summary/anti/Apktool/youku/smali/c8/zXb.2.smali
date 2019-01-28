.class public Lc8/zXb;
.super Ljava/lang/Object;
.source "ViewCVMHolder.java"

# interfaces
.implements Lc8/nXb;


# instance fields
.field private isInit:Z

.field private mActivityWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mLayerManager:Lc8/uXb;

.field private mSandoContainer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/RXb;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCanvasVM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lc8/mXb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/uXb;Landroid/app/Activity;)V
    .locals 1
    .param p1, "manager"    # Lc8/uXb;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/zXb;->isInit:Z

    .line 39
    iput-object p1, p0, Lc8/zXb;->mLayerManager:Lc8/uXb;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/zXb;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/zXb;->mViewCanvasVM:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method private initFrameContainerIfNeed()V
    .locals 4

    .prologue
    .line 45
    iget-boolean v2, p0, Lc8/zXb;->isInit:Z

    if-eqz v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v2, p0, Lc8/zXb;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 48
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 50
    iget-object v2, p0, Lc8/zXb;->mLayerManager:Lc8/uXb;

    iget-object v2, v2, Lc8/uXb;->mQuery:Lc8/sXb;

    invoke-virtual {v2, v0}, Lc8/sXb;->findContainer(Landroid/app/Activity;)Lc8/PXb;

    move-result-object v1

    .line 52
    .local v1, "container":Lc8/PXb;
    sget v2, Lcom/youku/phone/R$id;->layermanager_viewmodel_view_id:I

    invoke-virtual {v1, v2, p0}, Lc8/PXb;->setTag(ILjava/lang/Object;)V

    .line 53
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Lc8/PXb;->getSandoContainer()Lc8/RXb;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lc8/zXb;->mSandoContainer:Ljava/lang/ref/WeakReference;

    .line 55
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/zXb;->isInit:Z

    goto :goto_0
.end method

.method private isMirrorPopRequest(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "extra"    # Ljava/lang/Object;

    .prologue
    .line 171
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mirror"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public acceptRequests(Ljava/util/ArrayList;)V
    .locals 13
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
    const/4 v12, 0x0

    .line 69
    invoke-direct {p0}, Lc8/zXb;->initFrameContainerIfNeed()V

    .line 71
    iget-object v9, p0, Lc8/zXb;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-static {v9}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 72
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 73
    const-string/jumbo v9, "context is empty!"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v9, p0, Lc8/zXb;->mSandoContainer:Ljava/lang/ref/WeakReference;

    invoke-static {v9}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/RXb;

    .line 77
    .local v1, "container":Lc8/RXb;
    if-nez v1, :cond_2

    .line 78
    const-string/jumbo v9, "container is empty!"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/yXb;

    .line 82
    .local v7, "request":Lc8/yXb;
    invoke-virtual {v7}, Lc8/yXb;->getHostView()Landroid/view/View;

    move-result-object v4

    .line 83
    .local v4, "hostView":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 86
    invoke-virtual {v7}, Lc8/yXb;->getExtra()Ljava/lang/Object;

    move-result-object v3

    .line 87
    .local v3, "extra":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lc8/zXb;->isMirrorPopRequest(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 91
    invoke-virtual {v1}, Lc8/RXb;->getMirrorLayer()Lc8/OXb;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "realTime"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x1

    new-array v11, v11, [Landroid/view/View;

    aput-object v4, v11, v12

    invoke-virtual {v9, v10, v11}, Lc8/OXb;->addMirrorView(Z[Landroid/view/View;)V

    .line 92
    const-string/jumbo v9, "ViewCVMHolder.add new Canvas"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    sget-object v9, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->SHOWING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v7, v9}, Lc8/yXb;->setStatus(Lcom/alibaba/poplayer/layermanager/PopRequest$Status;)V

    goto :goto_1

    .line 97
    :cond_4
    iget-object v9, p0, Lc8/zXb;->mViewCanvasVM:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/mXb;

    .line 98
    .local v8, "saveData":Lc8/mXb;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lc8/mXb;->getCanvas()Lc8/LXb;

    move-result-object v9

    if-nez v9, :cond_5

    .line 100
    iget-object v9, p0, Lc8/zXb;->mViewCanvasVM:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/4 v8, 0x0

    .line 104
    :cond_5
    move-object v2, v8

    .local v2, "cvm":Lc8/mXb;
    if-nez v8, :cond_6

    .line 105
    new-instance v2, Lc8/mXb;

    .end local v2    # "cvm":Lc8/mXb;
    const/4 v9, 0x3

    invoke-direct {v2, v9}, Lc8/mXb;-><init>(I)V

    .line 106
    .restart local v2    # "cvm":Lc8/mXb;
    new-instance v9, Lc8/LXb;

    invoke-direct {v9, v0}, Lc8/LXb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v9}, Lc8/mXb;->setCanvas(Lc8/LXb;)V

    .line 107
    iget-object v9, p0, Lc8/zXb;->mViewCanvasVM:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v6, "reqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v2, v6}, Lc8/mXb;->acceptRequests(Ljava/util/ArrayList;)V

    .line 112
    invoke-virtual {v1}, Lc8/RXb;->getAugmentedLayer()Lc8/KXb;

    move-result-object v9

    invoke-virtual {v7}, Lc8/yXb;->getHostView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v2}, Lc8/mXb;->getCanvas()Lc8/LXb;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lc8/KXb;->augmentTargetView(Landroid/view/View;Lc8/LXb;)V

    .line 113
    const-string/jumbo v9, "ViewCVMHolder.add new Canvas"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public attach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    sget-boolean v0, Lc8/uXb;->sAllowPopOnParentActivity:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/zXb;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    .line 64
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/zXb;->isInit:Z

    .line 65
    return-void
.end method

.method public removeRequests(Ljava/util/ArrayList;)V
    .locals 12
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
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 124
    iget-object v7, p0, Lc8/zXb;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-static {v7}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 125
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 126
    const-string/jumbo v7, "context is empty!"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v7, p0, Lc8/zXb;->mSandoContainer:Ljava/lang/ref/WeakReference;

    invoke-static {v7}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/RXb;

    .line 130
    .local v1, "container":Lc8/RXb;
    if-nez v1, :cond_2

    .line 131
    const-string/jumbo v7, "container is empty!"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/yXb;

    .line 136
    .local v6, "request":Lc8/yXb;
    invoke-virtual {v6}, Lc8/yXb;->getHostView()Landroid/view/View;

    move-result-object v3

    .line 137
    .local v3, "hostViewKey":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 140
    invoke-virtual {v6}, Lc8/yXb;->getExtra()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v7}, Lc8/zXb;->isMirrorPopRequest(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 141
    invoke-virtual {v1}, Lc8/RXb;->getMirrorLayer()Lc8/OXb;

    move-result-object v7

    new-array v8, v11, [Landroid/view/View;

    aput-object v3, v8, v10

    invoke-virtual {v7, v8}, Lc8/OXb;->removeMirrorView([Landroid/view/View;)V

    .line 142
    const-string/jumbo v7, "RemoveMirrorView{hostView:%s}."

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 144
    :cond_4
    iget-object v7, p0, Lc8/zXb;->mViewCanvasVM:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/mXb;

    .line 145
    .local v2, "cvm":Lc8/mXb;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lc8/mXb;->getCanvas()Lc8/LXb;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v5, "reqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {v2, v5}, Lc8/mXb;->removeRequests(Ljava/util/ArrayList;)V

    .line 149
    invoke-virtual {v2}, Lc8/mXb;->count()I

    move-result v7

    if-nez v7, :cond_3

    .line 151
    invoke-virtual {v1}, Lc8/RXb;->getAugmentedLayer()Lc8/KXb;

    move-result-object v7

    invoke-virtual {v2}, Lc8/mXb;->getCanvas()Lc8/LXb;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc8/KXb;->unaugmentTarget(Lc8/LXb;)V

    .line 152
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lc8/mXb;->setCanvas(Lc8/LXb;)V

    .line 153
    iget-object v7, p0, Lc8/zXb;->mViewCanvasVM:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string/jumbo v7, "Free Augmentd CVM :{hostView:%s}."

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 158
    .end local v5    # "reqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    :cond_5
    const-string/jumbo v7, "removeRequest fail:Cvm is null."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public viewReadyNotify(Lc8/yXb;)V
    .locals 0
    .param p1, "requests"    # Lc8/yXb;

    .prologue
    .line 167
    return-void
.end method
