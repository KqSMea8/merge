.class public Lc8/vXb;
.super Ljava/lang/Object;
.source "PageCVMHolder.java"

# interfaces
.implements Lc8/nXb;


# instance fields
.field private isInit:Z

.field private mCanvasViewModel:Lc8/mXb;

.field private mContainer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/PXb;",
            ">;"
        }
    .end annotation
.end field

.field private mCurActivityRef:Ljava/lang/ref/WeakReference;
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


# direct methods
.method public constructor <init>(Lc8/uXb;Landroid/app/Activity;)V
    .locals 2
    .param p1, "layerManager"    # Lc8/uXb;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/vXb;->isInit:Z

    .line 33
    iput-object p1, p0, Lc8/vXb;->mLayerManager:Lc8/uXb;

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/vXb;->mCurActivityRef:Ljava/lang/ref/WeakReference;

    .line 35
    new-instance v0, Lc8/mXb;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lc8/mXb;-><init>(I)V

    iput-object v0, p0, Lc8/vXb;->mCanvasViewModel:Lc8/mXb;

    .line 36
    return-void
.end method

.method private initFrameContainerIfNeed()V
    .locals 4

    .prologue
    .line 39
    iget-boolean v2, p0, Lc8/vXb;->isInit:Z

    if-eqz v2, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v2, p0, Lc8/vXb;->mCurActivityRef:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 42
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 44
    iget-object v2, p0, Lc8/vXb;->mLayerManager:Lc8/uXb;

    iget-object v2, v2, Lc8/uXb;->mQuery:Lc8/sXb;

    invoke-virtual {v2, v0}, Lc8/sXb;->findContainer(Landroid/app/Activity;)Lc8/PXb;

    move-result-object v1

    .line 46
    .local v1, "container":Lc8/PXb;
    sget v2, Lcom/youku/phone/R$id;->layermanager_viewmodel_page_id:I

    invoke-virtual {v1, v2, p0}, Lc8/PXb;->setTag(ILjava/lang/Object;)V

    .line 47
    iget-object v2, p0, Lc8/vXb;->mCanvasViewModel:Lc8/mXb;

    invoke-virtual {v1}, Lc8/PXb;->getCanvas()Lc8/LXb;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/mXb;->setCanvas(Lc8/LXb;)V

    .line 48
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lc8/vXb;->mContainer:Ljava/lang/ref/WeakReference;

    .line 49
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/vXb;->isInit:Z

    goto :goto_0
.end method


# virtual methods
.method public acceptRequests(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 62
    .local p1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    invoke-direct {p0}, Lc8/vXb;->initFrameContainerIfNeed()V

    .line 63
    iget-object v0, p0, Lc8/vXb;->mCanvasViewModel:Lc8/mXb;

    invoke-virtual {v0, p1}, Lc8/mXb;->acceptRequests(Ljava/util/ArrayList;)V

    .line 64
    return-void
.end method

.method public attach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    sget-boolean v0, Lc8/uXb;->sAllowPopOnParentActivity:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/vXb;->mCurActivityRef:Ljava/lang/ref/WeakReference;

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/vXb;->isInit:Z

    .line 58
    return-void
.end method

.method public getContainer()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/PXb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lc8/vXb;->mContainer:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public removeRequests(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 68
    .local p1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    iget-object v0, p0, Lc8/vXb;->mCanvasViewModel:Lc8/mXb;

    invoke-virtual {v0, p1}, Lc8/mXb;->removeRequests(Ljava/util/ArrayList;)V

    .line 69
    return-void
.end method

.method public viewReadyNotify(Lc8/yXb;)V
    .locals 1
    .param p1, "requests"    # Lc8/yXb;

    .prologue
    .line 73
    iget-object v0, p0, Lc8/vXb;->mCanvasViewModel:Lc8/mXb;

    invoke-virtual {v0, p1}, Lc8/mXb;->viewReadyNotify(Lc8/yXb;)V

    .line 74
    return-void
.end method
