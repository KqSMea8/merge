.class public abstract Lc8/gYb;
.super Ljava/lang/Object;
.source "BaseTriggerService.java"

# interfaces
.implements Lc8/xXb;


# annotations
.annotation runtime Lcom/alibaba/poplayer/utils/Monitor$TargetClass;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/poplayer/trigger/Event;",
        "K:",
        "Lcom/alibaba/poplayer/trigger/BaseConfigItem;",
        "C:",
        "Lc8/eYb;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/xXb;"
    }
.end annotation


# instance fields
.field public mConfigMgr:Lc8/eYb;
    .annotation runtime Lcom/alibaba/poplayer/utils/Monitor$TargetField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field public mCurrentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentActivityInfo:Ljava/lang/String;

.field public mCurrentActivityName:Ljava/lang/String;

.field public mCurrentEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field public mCurrentKeyCode:Ljava/lang/String;

.field protected mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lYb",
            "<TK;>;>;>;"
        }
    .end annotation
.end field

.field public mTimerMgr:Lc8/pYb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/gYb;->mCurrentEvents:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/gYb;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    invoke-virtual {p0}, Lc8/gYb;->initService()V

    .line 44
    return-void
.end method

.method private clearLayerStatus(Ljava/util/ArrayList;)V
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
    .line 283
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    .local p1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/yXb;

    .local v3, "req":Lc8/yXb;
    move-object v0, v3

    .line 284
    check-cast v0, Lc8/lYb;

    .line 285
    .local v0, "hdReq":Lc8/lYb;
    invoke-virtual {v0}, Lc8/lYb;->getLayer()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lc8/lYb;->getLayer()Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lc8/jXb;

    if-eqz v4, :cond_0

    .line 286
    invoke-virtual {v0}, Lc8/lYb;->getLayer()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/jXb;

    .line 287
    .local v2, "pw":Lc8/jXb;
    invoke-virtual {v2}, Lc8/jXb;->destroyView()V

    goto :goto_0

    .line 290
    .end local v0    # "hdReq":Lc8/lYb;
    .end local v2    # "pw":Lc8/jXb;
    .end local v3    # "req":Lc8/yXb;
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract accept(Lcom/alibaba/poplayer/trigger/Event;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract activeAccept(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public checkRepeatEvent(Lcom/alibaba/poplayer/trigger/Event;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    .local p1, "newEvent":Lcom/alibaba/poplayer/trigger/Event;, "TT;"
    iget-object v2, p0, Lc8/gYb;->mCurrentEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/poplayer/trigger/Event;

    .line 132
    .local v0, "event":Lcom/alibaba/poplayer/trigger/Event;, "TT;"
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const/4 v2, 0x1

    .line 136
    .end local v0    # "event":Lcom/alibaba/poplayer/trigger/Event;, "TT;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clean(ZLjava/lang/String;Z)V
    .locals 10
    .param p1, "force"    # Z
    .param p2, "keyCode"    # Ljava/lang/String;
    .param p3, "isUpdata"    # Z

    .prologue
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 192
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v4, p0, Lc8/gYb;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 196
    .local v3, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<TK;>;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 197
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 198
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<TK;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v1, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/lYb;

    .line 201
    .local v2, "request":Lc8/lYb;
    sget-object v4, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->WAITTING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v2}, Lc8/lYb;->getStatus()Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    move-result-object v5

    if-eq v4, v5, :cond_3

    sget-object v4, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->READY:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v2}, Lc8/lYb;->getStatus()Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    move-result-object v5

    if-eq v4, v5, :cond_3

    sget-object v4, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->REMOVED:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v2}, Lc8/lYb;->getStatus()Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    move-result-object v5

    if-ne v4, v5, :cond_4

    .line 204
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 205
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    const-string/jumbo v4, "[%s][.remove {%s}. - remove waitting and ready . "

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p2, v5, v7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 208
    :cond_4
    if-nez p3, :cond_2

    .line 209
    sget-object v4, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->SHOWING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v2}, Lc8/lYb;->getStatus()Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 210
    if-nez p1, :cond_5

    invoke-virtual {v2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v4

    iget-boolean v4, v4, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->embed:Z

    if-nez v4, :cond_2

    .line 211
    :cond_5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 213
    const-string/jumbo v4, "[%s].remove {%s}. - remove showing but unEmbed . "

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p2, v5, v7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 221
    .end local v2    # "request":Lc8/lYb;
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 231
    invoke-direct {p0, v1}, Lc8/gYb;->clearLayerStatus(Ljava/util/ArrayList;)V

    .line 232
    invoke-static {}, Lc8/uXb;->instance()Lc8/uXb;

    move-result-object v4

    invoke-virtual {v4, v1}, Lc8/uXb;->remove(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 325
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    iget-object v0, p0, Lc8/gYb;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 326
    return-void
.end method

.method public createLayerAndAddRequest(Lc8/yXb;)V
    .locals 7
    .param p1, "popRequest"    # Lc8/yXb;

    .prologue
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    const/4 v6, 0x0

    .line 141
    instance-of v4, p1, Lc8/lYb;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 142
    check-cast v3, Lc8/lYb;

    .line 144
    .local v3, "req":Lc8/lYb;
    invoke-virtual {p1}, Lc8/yXb;->getAttachActivity()Landroid/app/Activity;

    move-result-object v0

    .line 146
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v3}, Lc8/lYb;->getLayer()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    .line 148
    invoke-static {}, Lc8/eXb;->instance()Lc8/eXb;

    move-result-object v4

    invoke-virtual {v3}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->type:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lc8/eXb;->createLayer(Landroid/content/Context;Ljava/lang/String;)Lc8/jXb;

    move-result-object v2

    .line 149
    .local v2, "popLayerView":Lc8/jXb;
    if-nez v2, :cond_1

    .line 150
    const-string/jumbo v4, "createLayerAndAddRequest fail.Create layer Fail."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p0, p1}, Lc8/gYb;->removeMapRequest(Lc8/yXb;)V

    .line 152
    const-string/jumbo v4, "createLayerAndAddRequest fail.Removed."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "popLayerView":Lc8/jXb;
    .end local v3    # "req":Lc8/lYb;
    :cond_0
    :goto_0
    return-void

    .line 155
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "popLayerView":Lc8/jXb;
    .restart local v3    # "req":Lc8/lYb;
    :cond_1
    invoke-virtual {v3, v2}, Lc8/lYb;->setLayer(Landroid/view/View;)V

    .line 156
    invoke-virtual {v2, v3}, Lc8/jXb;->setPopRequest(Lc8/yXb;)V

    .line 161
    :goto_1
    :try_start_0
    invoke-virtual {v2, v0, v3}, Lc8/jXb;->init(Landroid/content/Context;Lc8/yXb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_2
    invoke-static {}, Lc8/uXb;->instance()Lc8/uXb;

    move-result-object v4

    invoke-virtual {v4, p1}, Lc8/uXb;->add(Lc8/yXb;)V

    .line 169
    :try_start_1
    invoke-virtual {v2, v0}, Lc8/jXb;->onViewAdded(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :goto_3
    :try_start_2
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v4

    invoke-virtual {p1}, Lc8/yXb;->getDomian()I

    move-result v5

    invoke-virtual {p1}, Lc8/yXb;->getLayer()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v5, v0, v6}, Lcom/alibaba/poplayer/PopLayer;->onPopped(ILandroid/content/Context;Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 178
    :goto_4
    invoke-virtual {v3}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/poplayer/utils/PLDebug;->isForceDisplay(Lcom/alibaba/poplayer/trigger/BaseConfigItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    invoke-virtual {v3}, Lc8/lYb;->getLayer()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lc8/jXb;

    invoke-virtual {v4}, Lc8/jXb;->displayMe()V

    goto :goto_0

    .line 158
    .end local v2    # "popLayerView":Lc8/jXb;
    :cond_2
    invoke-virtual {v3}, Lc8/lYb;->getLayer()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/jXb;

    .restart local v2    # "popLayerView":Lc8/jXb;
    goto :goto_1

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "PopLayerView init fail."

    invoke-static {v4, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 170
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 171
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "PopLayerView onViewAdded fail."

    invoke-static {v4, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 175
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 176
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "PopLayerView onLayerPopped notify fail."

    invoke-static {v4, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public getConfigMgr()Lc8/eYb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    iget-object v0, p0, Lc8/gYb;->mConfigMgr:Lc8/eYb;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 315
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    iget-object v0, p0, Lc8/gYb;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getRequest(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "keyCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lYb",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    iget-object v0, p0, Lc8/gYb;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method protected abstract initService()V
.end method

.method protected isPopRequestContains(Ljava/util/ArrayList;Lc8/lYb;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lYb",
            "<TK;>;>;",
            "Lc8/lYb",
            "<TK;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    .local p1, "requestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<TK;>;>;"
    .local p2, "newRequest":Lc8/lYb;, "Lcom/alibaba/poplayer/trigger/HuDongPopRequest<TK;>;"
    const/4 v2, 0x0

    .line 108
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v2

    .line 111
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/lYb;

    .line 112
    .local v1, "request":Lc8/lYb;
    invoke-virtual {v1}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    invoke-virtual {p2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onForceRemoved(Lc8/yXb;)V
    .locals 0
    .param p1, "request"    # Lc8/yXb;

    .prologue
    .line 321
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    invoke-virtual {p0, p1}, Lc8/gYb;->removeMapRequest(Lc8/yXb;)V

    .line 322
    return-void
.end method

.method public onReady(Lc8/yXb;)V
    .locals 1
    .param p1, "request"    # Lc8/yXb;

    .prologue
    .line 298
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    instance-of v0, p1, Lc8/lYb;

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-virtual {p0, p1}, Lc8/gYb;->createLayerAndAddRequest(Lc8/yXb;)V

    goto :goto_0
.end method

.method public onRecovered(Lc8/yXb;)V
    .locals 0
    .param p1, "request"    # Lc8/yXb;

    .prologue
    .line 312
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    return-void
.end method

.method public onSuspended(Lc8/yXb;)V
    .locals 0
    .param p1, "request"    # Lc8/yXb;

    .prologue
    .line 307
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    return-void
.end method

.method public pageClean(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "keyCode"    # Ljava/lang/String;

    .prologue
    .line 338
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    return-void
.end method

.method public abstract passiveAccept()V
.end method

.method protected removeMapRequest(Lc8/yXb;)V
    .locals 7
    .param p1, "request"    # Lc8/yXb;

    .prologue
    .line 272
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    iget-object v3, p0, Lc8/gYb;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 273
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lc8/gYb;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 274
    .local v2, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<TK;>;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 276
    const-string/jumbo v3, "[%s].remove {%s}. - active close. "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lc8/gYb;->mCurrentKeyCode:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<TK;>;>;"
    :cond_1
    return-void
.end method

.method public removeRequest(Lc8/yXb;)V
    .locals 2
    .param p1, "request"    # Lc8/yXb;

    .prologue
    .line 268
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lc8/gYb;->removeRequest(Lc8/yXb;ZZ)V

    .line 269
    return-void
.end method

.method public removeRequest(Lc8/yXb;ZZ)V
    .locals 2
    .param p1, "request"    # Lc8/yXb;
    .param p2, "cleanLayer"    # Z
    .param p3, "removeFromMap"    # Z

    .prologue
    .line 253
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lc8/yXb;->getLayer()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lc8/yXb;->getLayer()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lc8/jXb;

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {p1}, Lc8/yXb;->getLayer()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/jXb;

    .line 255
    .local v0, "pw":Lc8/jXb;
    invoke-virtual {v0}, Lc8/jXb;->destroyView()V

    .line 257
    .end local v0    # "pw":Lc8/jXb;
    :cond_0
    invoke-static {}, Lc8/uXb;->instance()Lc8/uXb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/uXb;->remove(Lc8/yXb;)V

    .line 259
    invoke-virtual {p1}, Lc8/yXb;->getLayer()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lc8/jXb;

    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {p1}, Lc8/yXb;->getLayer()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/jXb;

    .line 261
    .restart local v0    # "pw":Lc8/jXb;
    invoke-virtual {v0}, Lc8/jXb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/jXb;->onViewRemoved(Landroid/content/Context;)V

    .line 264
    .end local v0    # "pw":Lc8/jXb;
    :cond_1
    if-eqz p3, :cond_2

    .line 265
    invoke-virtual {p0, p1}, Lc8/gYb;->removeMapRequest(Lc8/yXb;)V

    .line 266
    :cond_2
    return-void
.end method

.method public tryOpenRequest(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "keyCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lYb",
            "<TK;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    .local p2, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<TK;>;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 70
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v9, p0, Lc8/gYb;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 76
    .local v4, "requestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<TK;>;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 77
    :cond_2
    iget-object v7, p0, Lc8/gYb;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {}, Lc8/uXb;->instance()Lc8/uXb;

    move-result-object v7

    invoke-virtual {v7, p2}, Lc8/uXb;->tryOpen(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 81
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/trigger/HuDongPopRequest<TK;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_9

    .line 83
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/lYb;

    .line 84
    .local v6, "targetRequest":Lc8/lYb;
    invoke-virtual {v6}, Lc8/lYb;->getEvent()Lcom/alibaba/poplayer/trigger/Event;

    move-result-object v0

    .line 85
    .local v0, "event":Lcom/alibaba/poplayer/trigger/Event;
    const/4 v3, 0x0

    .line 86
    .local v3, "pageSwitchType":Z
    if-eqz v0, :cond_4

    .line 87
    iget v9, v0, Lcom/alibaba/poplayer/trigger/Event;->source:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    move v3, v7

    .line 89
    :cond_4
    :goto_2
    const-string/jumbo v9, "tryOpenRequest.pageSwitchType:{%s}."

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0, v4, v6}, Lc8/gYb;->isPopRequestContains(Ljava/util/ArrayList;Lc8/lYb;)Z

    move-result v2

    .line 92
    .local v2, "isContain":Z
    const-string/jumbo v9, "tryOpenRequest.isPopRequestContains:{%s}."

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    if-eqz v3, :cond_5

    if-nez v2, :cond_7

    .line 94
    :cond_5
    invoke-virtual {v6}, Lc8/lYb;->getStatus()Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    move-result-object v9

    sget-object v10, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->SHOWING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    if-eq v9, v10, :cond_6

    .line 95
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_6
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "isContain":Z
    :cond_8
    move v3, v8

    .line 87
    goto :goto_2

    .line 101
    .end local v0    # "event":Lcom/alibaba/poplayer/trigger/Event;
    .end local v3    # "pageSwitchType":Z
    .end local v6    # "targetRequest":Lc8/lYb;
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 102
    invoke-static {}, Lc8/uXb;->instance()Lc8/uXb;

    move-result-object v7

    invoke-virtual {v7, v5}, Lc8/uXb;->tryOpen(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public updateActivityInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "currentActivityName"    # Ljava/lang/String;
    .param p3, "currentActivityInfo"    # Ljava/lang/String;
    .param p4, "currentKeyCode"    # Ljava/lang/String;

    .prologue
    .line 329
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/gYb;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    .line 330
    iput-object p2, p0, Lc8/gYb;->mCurrentActivityName:Ljava/lang/String;

    .line 331
    iput-object p3, p0, Lc8/gYb;->mCurrentActivityInfo:Ljava/lang/String;

    .line 332
    iput-object p4, p0, Lc8/gYb;->mCurrentKeyCode:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public updateCacheConfigAsync(ZLandroid/content/Context;)V
    .locals 1
    .param p1, "isInit"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    iget-object v0, p0, Lc8/gYb;->mConfigMgr:Lc8/eYb;

    invoke-virtual {v0, p1, p2}, Lc8/eYb;->updateCacheConfigAsync(ZLandroid/content/Context;)V

    .line 294
    return-void
.end method

.method public updateWhenConfigChanged()V
    .locals 5

    .prologue
    .line 243
    .local p0, "this":Lc8/gYb;, "Lcom/alibaba/poplayer/trigger/BaseTriggerService<TT;TK;TC;>;"
    const/4 v2, 0x0

    iget-object v3, p0, Lc8/gYb;->mCurrentKeyCode:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lc8/gYb;->clean(ZLjava/lang/String;Z)V

    .line 245
    iget-object v2, p0, Lc8/gYb;->mCurrentEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    iget-object v2, p0, Lc8/gYb;->mCurrentEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/poplayer/trigger/Event;

    .line 247
    .local v0, "event":Lcom/alibaba/poplayer/trigger/Event;, "TT;"
    invoke-virtual {p0, v0}, Lc8/gYb;->accept(Lcom/alibaba/poplayer/trigger/Event;)V

    goto :goto_0

    .line 250
    .end local v0    # "event":Lcom/alibaba/poplayer/trigger/Event;, "TT;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
