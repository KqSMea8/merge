.class public Lc8/lXb;
.super Ljava/lang/Object;
.source "AppCVMHolder.java"

# interfaces
.implements Lc8/nXb;


# instance fields
.field private mCanvasViewModel:Lc8/mXb;

.field private mCyclerMgr:Lc8/UXb;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1, "appContext"    # Landroid/app/Application;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lc8/mXb;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc8/mXb;-><init>(I)V

    iput-object v0, p0, Lc8/lXb;->mCanvasViewModel:Lc8/mXb;

    .line 39
    new-instance v0, Lc8/UXb;

    iget-object v1, p0, Lc8/lXb;->mCanvasViewModel:Lc8/mXb;

    invoke-direct {v0, v1, p1}, Lc8/UXb;-><init>(Lc8/mXb;Landroid/app/Application;)V

    iput-object v0, p0, Lc8/lXb;->mCyclerMgr:Lc8/UXb;

    .line 40
    return-void
.end method


# virtual methods
.method public acceptRequests(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 54
    .local p1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    iget-object v0, p0, Lc8/lXb;->mCanvasViewModel:Lc8/mXb;

    invoke-virtual {v0}, Lc8/mXb;->count()I

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lc8/lXb;->mCyclerMgr:Lc8/UXb;

    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/poplayer/PopLayer;->internalGetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/UXb;->showLayerWithActivity(Landroid/app/Activity;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lc8/lXb;->mCanvasViewModel:Lc8/mXb;

    invoke-virtual {v0, p1}, Lc8/mXb;->acceptRequests(Ljava/util/ArrayList;)V

    .line 58
    return-void
.end method

.method public attach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p1

    .line 49
    :cond_0
    iget-object v0, p0, Lc8/lXb;->mCyclerMgr:Lc8/UXb;

    invoke-virtual {v0, p1}, Lc8/UXb;->updateContext(Landroid/content/Context;)V

    .line 50
    return-void
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
    .line 62
    .local p1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    iget-object v0, p0, Lc8/lXb;->mCanvasViewModel:Lc8/mXb;

    invoke-virtual {v0, p1}, Lc8/mXb;->removeRequests(Ljava/util/ArrayList;)V

    .line 63
    iget-object v0, p0, Lc8/lXb;->mCanvasViewModel:Lc8/mXb;

    invoke-virtual {v0}, Lc8/mXb;->count()I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lc8/lXb;->mCyclerMgr:Lc8/UXb;

    invoke-virtual {v0}, Lc8/UXb;->removeLayer()V

    .line 66
    :cond_0
    return-void
.end method

.method public viewReadyNotify(Lc8/yXb;)V
    .locals 1
    .param p1, "requests"    # Lc8/yXb;

    .prologue
    .line 70
    iget-object v0, p0, Lc8/lXb;->mCanvasViewModel:Lc8/mXb;

    invoke-virtual {v0, p1}, Lc8/mXb;->viewReadyNotify(Lc8/yXb;)V

    .line 71
    return-void
.end method
