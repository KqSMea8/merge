.class public Lc8/RYb;
.super Ljava/lang/Object;
.source "ViewTriggerService.java"

# interfaces
.implements Lc8/MYb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UYb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/UYb;


# direct methods
.method constructor <init>(Lc8/UYb;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lc8/RYb;->this$0:Lc8/UYb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTargetViewAdded(Landroid/view/View;Lc8/NYb;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "task"    # Lc8/NYb;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    .local v8, "request":Lc8/lYb;
    iget-object v0, p0, Lc8/RYb;->this$0:Lc8/UYb;

    iget-object v1, p0, Lc8/RYb;->this$0:Lc8/UYb;

    invoke-static {v1}, Lc8/UYb;->access$000(Lc8/UYb;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lc8/UYb;->access$100(Lc8/UYb;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v10

    .line 47
    .local v10, "viewRequestsCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;>;"
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/lYb;

    .line 50
    .local v7, "req":Lc8/lYb;
    invoke-virtual {v7}, Lc8/lYb;->getEvent()Lcom/alibaba/poplayer/trigger/Event;

    move-result-object v0

    iget-object v1, p2, Lc8/NYb;->event:Lcom/alibaba/poplayer/trigger/view/ViewEvent;

    if-ne v0, v1, :cond_0

    invoke-virtual {v7}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v0

    iget-object v1, p2, Lc8/NYb;->config:Lc8/PYb;

    if-ne v0, v1, :cond_0

    .line 51
    move-object v8, v7

    .line 55
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "req":Lc8/lYb;
    :cond_1
    if-eqz v8, :cond_2

    .line 56
    const-string/jumbo v0, "OnSTaskInvokeListener.find from cache:{%s}."

    new-array v1, v12, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lc8/RYb;->this$0:Lc8/UYb;

    invoke-static {v0}, Lc8/UYb;->access$000(Lc8/UYb;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    :goto_0
    sget-object v0, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->WAITTING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v8, v0}, Lc8/lYb;->setStatus(Lcom/alibaba/poplayer/layermanager/PopRequest$Status;)V

    .line 66
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v9, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;>;"
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lc8/RYb;->this$0:Lc8/UYb;

    iget-object v1, p0, Lc8/RYb;->this$0:Lc8/UYb;

    iget-object v1, v1, Lc8/UYb;->mCurrentKeyCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Lc8/UYb;->tryOpenRequest(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 69
    return-void

    .line 59
    .end local v9    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;>;"
    :cond_2
    iget-object v0, p0, Lc8/RYb;->this$0:Lc8/UYb;

    iget-object v1, p2, Lc8/NYb;->event:Lcom/alibaba/poplayer/trigger/view/ViewEvent;

    iget-object v2, p2, Lc8/NYb;->config:Lc8/PYb;

    invoke-static {v0, v1, v2, p1}, Lc8/UYb;->access$200(Lc8/UYb;Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;Landroid/view/View;)Lc8/lYb;

    move-result-object v8

    .line 61
    new-instance v0, Lc8/SYb;

    iget-object v1, p0, Lc8/RYb;->this$0:Lc8/UYb;

    iget-object v2, p2, Lc8/NYb;->groupId:Ljava/lang/String;

    iget-object v3, p2, Lc8/NYb;->operationName:Ljava/lang/String;

    iget-object v4, p2, Lc8/NYb;->params:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc8/SYb;-><init>(Lc8/UYb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/NYb;)V

    invoke-virtual {v8, v0}, Lc8/lYb;->setExtra(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p2, Lc8/NYb;->masterView:Landroid/view/View;

    invoke-virtual {v8, v0}, Lc8/lYb;->setMasterView(Landroid/view/View;)V

    .line 63
    const-string/jumbo v0, "OnSTaskInvokeListener.create new one:{%s}."

    new-array v1, v12, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public OnTargetViewRemoved(Landroid/view/View;Lc8/NYb;Z)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "task"    # Lc8/NYb;
    .param p3, "isDealloc"    # Z

    .prologue
    const/4 v8, 0x1

    .line 73
    iget-object v5, p0, Lc8/RYb;->this$0:Lc8/UYb;

    iget-object v6, p0, Lc8/RYb;->this$0:Lc8/UYb;

    iget-object v7, p0, Lc8/RYb;->this$0:Lc8/UYb;

    iget-object v7, v7, Lc8/UYb;->mCurrentKeyCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lc8/UYb;->getRequest(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v5, v6, p1}, Lc8/UYb;->access$100(Lc8/UYb;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v4

    .line 75
    .local v4, "viewRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<Lcom/alibaba/poplayer/trigger/view/ViewConfigItem;>;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 77
    if-nez p3, :cond_0

    .line 78
    iget-object v5, p0, Lc8/RYb;->this$0:Lc8/UYb;

    invoke-static {v5}, Lc8/UYb;->access$000(Lc8/UYb;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/lYb;

    .line 81
    .local v2, "request":Lc8/lYb;
    invoke-virtual {v2}, Lc8/lYb;->getExtra()Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "extra":Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v5, v0, Lc8/SYb;

    if-eqz v5, :cond_1

    move-object v3, v0

    .line 84
    check-cast v3, Lc8/SYb;

    .line 85
    .local v3, "tag":Lc8/SYb;
    iget-object v5, v3, Lc8/SYb;->task:Ljava/lang/ref/WeakReference;

    invoke-static {v5}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p2, :cond_1

    .line 86
    iget-object v5, p0, Lc8/RYb;->this$0:Lc8/UYb;

    invoke-virtual {v5, v2, p3, v8}, Lc8/UYb;->removeRequest(Lc8/yXb;ZZ)V

    goto :goto_0

    .line 91
    .end local v0    # "extra":Ljava/lang/Object;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "request":Lc8/lYb;
    .end local v3    # "tag":Lc8/SYb;
    :cond_2
    const-string/jumbo v5, "OnSTaskInvokeListener.remove:{%s}."

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    return-void
.end method
