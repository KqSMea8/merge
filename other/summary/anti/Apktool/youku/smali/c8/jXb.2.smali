.class public abstract Lc8/jXb;
.super Lc8/gXb;
.source "PopLayerBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/iXb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InnerView:",
        "Ljava/lang/Object;",
        "Request:",
        "Lc8/yXb;",
        ">",
        "Lc8/gXb;"
    }
.end annotation


# instance fields
.field protected mBtnClose:Landroid/widget/ImageView;

.field protected mEventListener:Lc8/iXb;

.field protected mInnerView:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TInnerView;"
        }
    .end annotation
.end field

.field protected mLaunchedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/NYb;",
            ">;"
        }
    .end annotation
.end field

.field protected mPopRequest:Lc8/yXb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequest;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    invoke-direct {p0, p1}, Lc8/gXb;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method


# virtual methods
.method public final cancelAllTasks()V
    .locals 2

    .prologue
    .line 162
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    iget-object v0, p0, Lc8/jXb;->mLaunchedTasks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string/jumbo v0, ""

    const-string/jumbo v1, "removeAllLaunchedByView"

    invoke-virtual {p0, v0, v1}, Lc8/jXb;->managerSelectTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lc8/jXb;->mLaunchedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 220
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v0

    invoke-virtual {p0}, Lc8/jXb;->getPopRequest()Lc8/yXb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/poplayer/PopLayer;->removeRequest(Lc8/yXb;)V

    .line 221
    const-string/jumbo v0, "PopLayerWVPlugin.jsClose.success"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public final consoleLog(Ljava/lang/String;Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    .prologue
    .line 307
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    invoke-static {p1, p2}, Lcom/alibaba/poplayer/utils/ConsoleLogger;->encodeLayerConsoleLogInfo(Ljava/lang/String;Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    return-void
.end method

.method public bridge synthetic destroy()V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    invoke-super {p0}, Lc8/gXb;->destroy()V

    return-void
.end method

.method public destroyView()V
    .locals 3

    .prologue
    .line 98
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    invoke-virtual {p0}, Lc8/jXb;->cancelAllTasks()V

    .line 99
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v0

    .line 100
    .local v0, "popLayer":Lcom/alibaba/poplayer/PopLayer;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p0}, Lcom/alibaba/poplayer/PopLayer;->internalNotifyDismissedIfPopLayerView(Lc8/jXb;)V

    .line 104
    :cond_0
    iget-object v1, p0, Lc8/jXb;->mEventListener:Lc8/iXb;

    if-eqz v1, :cond_1

    .line 105
    iget-object v2, p0, Lc8/jXb;->mEventListener:Lc8/iXb;

    monitor-enter v2

    .line 106
    :try_start_0
    iget-object v1, p0, Lc8/jXb;->mEventListener:Lc8/iXb;

    invoke-interface {v1}, Lc8/iXb;->onPopLayerViewRemoved()V

    .line 107
    monitor-exit v2

    .line 109
    :cond_1
    return-void

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public displayMe()V
    .locals 4

    .prologue
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0, v3}, Lc8/jXb;->setVisibility(I)V

    .line 83
    const-string/jumbo v1, "PopLayer.Displayed"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lc8/jXb;->onReceiveEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v0

    .line 86
    .local v0, "popLayer":Lcom/alibaba/poplayer/PopLayer;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p0}, Lcom/alibaba/poplayer/PopLayer;->internalNotifyDisplayedIfPopLayerView(Lc8/jXb;)V

    .line 89
    :cond_0
    iget-object v1, p0, Lc8/jXb;->mEventListener:Lc8/iXb;

    if-eqz v1, :cond_1

    .line 90
    iget-object v2, p0, Lc8/jXb;->mEventListener:Lc8/iXb;

    monitor-enter v2

    .line 91
    :try_start_0
    iget-object v1, p0, Lc8/jXb;->mEventListener:Lc8/iXb;

    invoke-interface {v1}, Lc8/iXb;->onPopLayerViewDisplayed()V

    .line 92
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    const-string/jumbo v1, "PopLayerView.displayMe.success"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    return-void

    .line 92
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final fireEventToMasterIfExist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventParams"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    const/4 v9, 0x0

    .line 185
    const-string/jumbo v6, "PopLayerBaseView.fireEventToMasterIfExist.{eventName:%s,params:%s}"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v9

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    invoke-virtual {p0}, Lc8/jXb;->getPopRequest()Lc8/yXb;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lc8/jXb;->getPopRequest()Lc8/yXb;

    move-result-object v6

    invoke-virtual {v6}, Lc8/yXb;->getMasterView()Landroid/view/View;

    move-result-object v5

    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    instance-of v6, v5, Lc8/jXb;

    if-nez v6, :cond_1

    .line 190
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    const-string/jumbo v6, "PopLayerBaseView.fireEventToMasterIfExist.Cann\'t find out masterView."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :goto_0
    return-void

    .line 194
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    :try_start_0
    move-object v0, v5

    check-cast v0, Lc8/jXb;

    move-object v3, v0

    .line 195
    .local v3, "master":Lc8/jXb;
    const-string/jumbo v6, "groupId"

    invoke-virtual {p0, v6}, Lc8/jXb;->getAttachInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "groupId":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 197
    .local v4, "paramsJson":Lorg/json/JSONObject;
    const-string/jumbo v6, "groupId"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string/jumbo v6, "eventName"

    invoke-virtual {v4, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string/jumbo v6, "params"

    invoke-virtual {v4, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string/jumbo v6, "PopLayer.TrackingView.Event"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lc8/jXb;->onReceiveEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v2    # "groupId":Ljava/lang/String;
    .end local v3    # "master":Lc8/jXb;
    .end local v4    # "paramsJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "PopLayerBaseView.fireEventToMasterIfExist.err."

    invoke-static {v6, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final fireEventToTracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventParams"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 169
    const-string/jumbo v5, "PopLayerBaseView.fireEventToTracks:{eventName:%s,params:%s},"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v8

    aput-object p3, v6, v9

    invoke-static {v5, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v6

    invoke-virtual {p0}, Lc8/jXb;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-static {v5}, Lc8/oYb;->getActivityKeyCode(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, p0, p1, v5}, Lc8/UYb;->findRequestsByMasterAndGroupId(Lc8/jXb;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 171
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/yXb;

    .line 172
    .local v2, "req":Lc8/yXb;
    invoke-virtual {v2}, Lc8/yXb;->getStatus()Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    move-result-object v5

    sget-object v6, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->SHOWING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    if-ne v5, v6, :cond_1

    .line 173
    invoke-virtual {v2}, Lc8/yXb;->getLayer()Landroid/view/View;

    move-result-object v1

    .line 174
    .local v1, "layer":Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v5, v1, Lc8/jXb;

    if-eqz v5, :cond_0

    move-object v4, v1

    .line 175
    check-cast v4, Lc8/jXb;

    .line 176
    .local v4, "view":Lc8/jXb;
    invoke-virtual {v4, p2, p3}, Lc8/jXb;->onReceiveEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    .end local v1    # "layer":Landroid/view/View;
    .end local v4    # "view":Lc8/jXb;
    :cond_1
    const-string/jumbo v5, "Drop useless event for request:{%s}"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 182
    .end local v2    # "req":Lc8/yXb;
    :cond_2
    return-void
.end method

.method protected final getAttachInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 207
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v0

    invoke-virtual {p0}, Lc8/jXb;->getPopRequest()Lc8/yXb;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lc8/UYb;->findHuDongRequestAttachInfo(Lc8/yXb;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Landroid/text/SpannableStringBuilder;
    .locals 2

    .prologue
    .line 303
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v1, "simpleInfo"

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getPopRequest()Lc8/yXb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRequest;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    iget-object v0, p0, Lc8/jXb;->mPopRequest:Lc8/yXb;

    return-object v0
.end method

.method public increaseReadTimes(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 234
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    invoke-static {p1}, Lcom/alibaba/poplayer/utils/PopLayerSharedPrererence;->increasePopCountsFor(Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method public abstract init(Landroid/content/Context;Lc8/yXb;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TRequest;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public final launchSelectTask(Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    .param p2, "configItem"    # Lc8/PYb;
    .param p3, "taskHandle"    # Ljava/lang/String;
    .param p4, "groupId"    # Ljava/lang/String;

    .prologue
    .line 142
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    iget-object v0, p0, Lc8/jXb;->mLaunchedTasks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/jXb;->mLaunchedTasks:Ljava/util/List;

    .line 145
    :cond_0
    invoke-virtual {p0}, Lc8/jXb;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 146
    const-string/jumbo v0, "PopLayerBaseView.launchSelectTask error. context is empty."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    invoke-virtual {p0}, Lc8/jXb;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 150
    .local v1, "activity":Landroid/app/Activity;
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lc8/UYb;->buildAndRunSelectTask(Landroid/app/Activity;Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Lc8/NYb;

    move-result-object v7

    .line 151
    .local v7, "task":Lc8/NYb;
    if-eqz v7, :cond_1

    .line 152
    iget-object v0, p0, Lc8/jXb;->mLaunchedTasks:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final managerSelectTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "taskHandle"    # Ljava/lang/String;
    .param p2, "operationName"    # Ljava/lang/String;

    .prologue
    .line 156
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    const-string/jumbo v0, "PopLayerBaseView.managerSelectTask: taskHandle:{%s},operation:{%s}."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lc8/UYb;->managerTask(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lc8/PYb;)V

    .line 158
    return-void
.end method

.method public navToUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 225
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v0

    .line 226
    .local v0, "popLayer":Lcom/alibaba/poplayer/PopLayer;
    if-nez v0, :cond_0

    .line 227
    const-string/jumbo v1, "PopLayerWVPlugin.jsNavToUrl.return.nullPopLayer"

    invoke-static {v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Loge(Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/poplayer/PopLayer;->getFaceAdapter()Lcom/alibaba/poplayer/norm/IFaceAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lc8/jXb;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/alibaba/poplayer/norm/IFaceAdapter;->navToUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;

    .prologue
    .line 42
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    invoke-super {p0, p1}, Lc8/gXb;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onReceiveEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "operationName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 211
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    const-string/jumbo v0, "PopLayerBaseView.onReceiveEvent:{eventName:%s,params:%s},You should overwrite this method to hold event."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public onViewAdded(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    const-string/jumbo v0, "PopLayerBaseView.onViewAdded."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    const-string/jumbo v0, "PopLayer.onViewAdded"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/jXb;->onReceiveEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onViewRemoved(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    const-string/jumbo v0, "PopLayerBaseView.onViewRemoved."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    const-string/jumbo v0, "PopLayer.onViewRemoved"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/jXb;->onReceiveEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public selectAndOperate(Lorg/json/JSONObject;)V
    .locals 25
    .param p1, "params"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    const-string/jumbo v5, "mainParams"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 239
    .local v17, "mainParams":Lorg/json/JSONArray;
    if-nez v17, :cond_2

    const/16 v16, 0x0

    .line 240
    .local v16, "len":I
    :goto_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_7

    .line 241
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 242
    .local v14, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v5, "selector"

    const-string/jumbo v7, ""

    invoke-virtual {v14, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "selector":Ljava/lang/String;
    const-string/jumbo v5, "groupId"

    const-string/jumbo v7, ""

    invoke-virtual {v14, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 244
    .local v12, "groupId":Ljava/lang/String;
    const-string/jumbo v5, "taskHandle"

    invoke-virtual {v14, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 245
    .local v22, "taskHandle":Ljava/lang/String;
    const-string/jumbo v5, "selectFromCache"

    const/4 v7, 0x1

    invoke-virtual {v14, v5, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 246
    .local v21, "selectFromCache":Z
    const-string/jumbo v5, "continuousSelect"

    const/4 v7, 0x1

    invoke-virtual {v14, v5, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 247
    .local v11, "continuousSelect":Z
    const-string/jumbo v5, "operation"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 248
    .local v18, "operation":Lorg/json/JSONObject;
    const-string/jumbo v5, "name"

    const-string/jumbo v7, "track"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 249
    .local v19, "operationName":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/poplayer/trigger/view/ViewEvent;

    const/4 v5, 0x3

    const-string/jumbo v7, ""

    invoke-virtual/range {p0 .. p0}, Lc8/jXb;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-static {v8}, Lc8/oYb;->getActivityKeyCode(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/poplayer/trigger/view/ViewEvent;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    .local v4, "viewEvent":Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    new-instance v10, Lc8/PYb;

    invoke-direct {v10}, Lc8/PYb;-><init>()V

    .line 253
    .local v10, "configItem":Lc8/PYb;
    iput-object v6, v10, Lc8/PYb;->viewuri:Ljava/lang/String;

    .line 254
    iput-boolean v11, v10, Lc8/PYb;->continuousSelect:Z

    .line 255
    move-object/from16 v0, v19

    iput-object v0, v10, Lc8/PYb;->operationName:Ljava/lang/String;

    .line 256
    move/from16 v0, v21

    iput-boolean v0, v10, Lc8/PYb;->selectFromCache:Z

    .line 257
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/jXb;->mPopRequest:Lc8/yXb;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/jXb;->mPopRequest:Lc8/yXb;

    instance-of v5, v5, Lc8/lYb;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/jXb;->mPopRequest:Lc8/yXb;

    check-cast v5, Lc8/lYb;

    invoke-virtual {v5}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 258
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trackMode"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/jXb;->mPopRequest:Lc8/yXb;

    check-cast v5, Lc8/lYb;

    invoke-virtual {v5}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Lc8/PYb;->uuid:Ljava/lang/String;

    .line 262
    :goto_2
    new-instance v5, Lc8/fYb;

    invoke-direct {v5}, Lc8/fYb;-><init>()V

    iput-object v5, v10, Lc8/PYb;->pageInfo:Lc8/fYb;

    .line 263
    iget-object v5, v10, Lc8/PYb;->pageInfo:Lc8/fYb;

    const-string/jumbo v7, "uri"

    const/4 v8, 0x0

    invoke-virtual {v14, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lc8/fYb;->uri:Ljava/lang/String;

    .line 264
    iget-object v5, v10, Lc8/PYb;->pageInfo:Lc8/fYb;

    const-string/jumbo v7, "paramContains"

    const/4 v8, 0x0

    invoke-virtual {v14, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lc8/fYb;->paramContains:Ljava/lang/String;

    .line 265
    const-string/jumbo v5, "params"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 267
    .local v15, "jsonParams":Lorg/json/JSONObject;
    const-string/jumbo v5, "modalThreshold"

    const-wide v8, 0x3fe999999999999aL    # 0.8

    invoke-virtual {v14, v5, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, v10, Lc8/PYb;->modalThreshold:D

    .line 268
    if-eqz v15, :cond_0

    .line 269
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Lc8/PYb;->params:Ljava/lang/String;

    .line 270
    const-string/jumbo v5, "modalThreshold"

    const-wide v8, 0x3fe999999999999aL    # 0.8

    invoke-virtual {v15, v5, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, v10, Lc8/PYb;->modalThreshold:D

    .line 272
    :cond_0
    const-string/jumbo v5, "track"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 273
    iget-object v5, v10, Lc8/PYb;->params:Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string/jumbo v5, "params"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v7, "type"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    iput-object v5, v10, Lc8/PYb;->type:Ljava/lang/String;

    .line 280
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v10, v1, v12}, Lc8/jXb;->launchSelectTask(Lcom/alibaba/poplayer/trigger/view/ViewEvent;Lc8/PYb;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 239
    .end local v4    # "viewEvent":Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    .end local v6    # "selector":Ljava/lang/String;
    .end local v10    # "configItem":Lc8/PYb;
    .end local v11    # "continuousSelect":Z
    .end local v12    # "groupId":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "jsonObj":Lorg/json/JSONObject;
    .end local v15    # "jsonParams":Lorg/json/JSONObject;
    .end local v16    # "len":I
    .end local v18    # "operation":Lorg/json/JSONObject;
    .end local v19    # "operationName":Ljava/lang/String;
    .end local v21    # "selectFromCache":Z
    .end local v22    # "taskHandle":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v16

    goto/16 :goto_0

    .line 260
    .restart local v4    # "viewEvent":Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    .restart local v6    # "selector":Ljava/lang/String;
    .restart local v10    # "configItem":Lc8/PYb;
    .restart local v11    # "continuousSelect":Z
    .restart local v12    # "groupId":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v14    # "jsonObj":Lorg/json/JSONObject;
    .restart local v16    # "len":I
    .restart local v18    # "operation":Lorg/json/JSONObject;
    .restart local v19    # "operationName":Ljava/lang/String;
    .restart local v21    # "selectFromCache":Z
    .restart local v22    # "taskHandle":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trackMode"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Lc8/PYb;->uuid:Ljava/lang/String;

    goto/16 :goto_2

    .line 273
    .restart local v15    # "jsonParams":Lorg/json/JSONObject;
    :cond_4
    const-string/jumbo v5, "badType"

    goto :goto_3

    .line 274
    :cond_5
    const-string/jumbo v5, "mirror"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    const-string/jumbo v5, "realTime"

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 276
    .local v20, "realTime":Z
    if-eqz v20, :cond_1

    .line 277
    iget-object v5, v10, Lc8/PYb;->params:Ljava/lang/String;

    if-nez v5, :cond_6

    const-string/jumbo v5, "realTime"

    :goto_5
    iput-object v5, v10, Lc8/PYb;->params:Ljava/lang/String;

    goto :goto_4

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v10, Lc8/PYb;->params:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "realTime"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 283
    .end local v4    # "viewEvent":Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    .end local v6    # "selector":Ljava/lang/String;
    .end local v10    # "configItem":Lc8/PYb;
    .end local v11    # "continuousSelect":Z
    .end local v12    # "groupId":Ljava/lang/String;
    .end local v14    # "jsonObj":Lorg/json/JSONObject;
    .end local v15    # "jsonParams":Lorg/json/JSONObject;
    .end local v18    # "operation":Lorg/json/JSONObject;
    .end local v19    # "operationName":Ljava/lang/String;
    .end local v20    # "realTime":Z
    .end local v21    # "selectFromCache":Z
    .end local v22    # "taskHandle":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "taskParams"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 284
    .local v24, "taskParams":Lorg/json/JSONArray;
    if-nez v24, :cond_8

    const/16 v23, 0x0

    .line 285
    .local v23, "taskLen":I
    :goto_6
    const/4 v13, 0x0

    :goto_7
    move/from16 v0, v23

    if-ge v13, v0, :cond_9

    .line 286
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 287
    .restart local v14    # "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v5, "taskHandle"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 288
    .restart local v22    # "taskHandle":Ljava/lang/String;
    const-string/jumbo v5, "operationName"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 289
    .restart local v19    # "operationName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lc8/jXb;->managerSelectTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 284
    .end local v14    # "jsonObj":Lorg/json/JSONObject;
    .end local v19    # "operationName":Ljava/lang/String;
    .end local v22    # "taskHandle":Ljava/lang/String;
    .end local v23    # "taskLen":I
    :cond_8
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v23

    goto :goto_6

    .line 292
    .restart local v23    # "taskLen":I
    :cond_9
    return-void
.end method

.method public setEventListener(Lc8/iXb;)V
    .locals 0
    .param p1, "mEventListener"    # Lc8/iXb;

    .prologue
    .line 295
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    iput-object p1, p0, Lc8/jXb;->mEventListener:Lc8/iXb;

    .line 296
    return-void
.end method

.method public setPopRequest(Lc8/yXb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    .local p1, "popRequest":Lc8/yXb;, "TRequest;"
    iput-object p1, p0, Lc8/jXb;->mPopRequest:Lc8/yXb;

    .line 64
    return-void
.end method

.method public bridge synthetic setUseCacheMark(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 42
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    invoke-super {p0, p1}, Lc8/gXb;->setUseCacheMark(Z)V

    return-void
.end method

.method public showCloseButton(Z)V
    .locals 8
    .param p1, "show"    # Z

    .prologue
    .local p0, "this":Lc8/jXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView<TInnerView;TRequest;>;"
    const/16 v7, 0x50

    const/16 v6, 0x14

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 117
    if-nez p1, :cond_0

    iget-object v3, p0, Lc8/jXb;->mBtnClose:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 118
    const-string/jumbo v3, "Not use closeButton."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :goto_0
    return-void

    .line 121
    :cond_0
    if-eqz p1, :cond_2

    move v1, v2

    .line 122
    .local v1, "visibility":I
    :goto_1
    iget-object v3, p0, Lc8/jXb;->mBtnClose:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    .line 123
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/jXb;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lc8/jXb;->mBtnClose:Landroid/widget/ImageView;

    .line 124
    iget-object v3, p0, Lc8/jXb;->mBtnClose:Landroid/widget/ImageView;

    sget v4, Lcom/youku/phone/R$drawable;->poplayer_close_btn:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 125
    iget-object v3, p0, Lc8/jXb;->mBtnClose:Landroid/widget/ImageView;

    new-instance v4, Lc8/hXb;

    invoke-direct {v4, p0}, Lc8/hXb;-><init>(Lc8/jXb;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 132
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lc8/jXb;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/alibaba/poplayer/utils/Utils;->dip2px(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 133
    invoke-virtual {p0}, Lc8/jXb;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/alibaba/poplayer/utils/Utils;->dip2px(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 134
    const/16 v3, 0x35

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 135
    iget-object v3, p0, Lc8/jXb;->mBtnClose:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v0}, Lc8/jXb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Lc8/jXb;->mBtnClose:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    const-string/jumbo v3, "PopLayerWebView.showCloseButton.show{%s}"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    .end local v1    # "visibility":I
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method
