.class public final Lc8/EYf;
.super Ljava/lang/Object;
.source "WXDomManager.java"


# instance fields
.field mDomHandler:Landroid/os/Handler;

.field private mDomRegistries:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/oYf;",
            ">;"
        }
    .end annotation
.end field

.field private mDomThread:Lc8/VXf;

.field private mWXRenderManager:Lc8/Cag;


# direct methods
.method public constructor <init>(Lc8/Cag;)V
    .locals 3
    .param p1, "renderManager"    # Lc8/Cag;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lc8/EYf;->mWXRenderManager:Lc8/Cag;

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/EYf;->mDomRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    new-instance v0, Lc8/VXf;

    const-string/jumbo v1, "WeeXDomThread"

    new-instance v2, Lc8/CYf;

    invoke-direct {v2, p0}, Lc8/CYf;-><init>(Lc8/EYf;)V

    invoke-direct {v0, v1, v2}, Lc8/VXf;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/EYf;->mDomThread:Lc8/VXf;

    .line 60
    iget-object v0, p0, Lc8/EYf;->mDomThread:Lc8/VXf;

    invoke-virtual {v0}, Lc8/VXf;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lc8/EYf;->mDomHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method private isDomThread()Z
    .locals 4

    .prologue
    .line 127
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lc8/EYf;->mDomThread:Lc8/VXf;

    invoke-virtual {v2}, Lc8/VXf;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private throwIfNotDomThread()V
    .locals 2

    .prologue
    .line 150
    invoke-direct {p0}, Lc8/EYf;->isDomThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v1, "dom operation must be done in dom thread"

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method batch()V
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Lc8/EYf;->throwIfNotDomThread()V

    .line 135
    iget-object v1, p0, Lc8/EYf;->mDomRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 136
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/dom/DOMActionContextImpl;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/oYf;

    invoke-virtual {v1}, Lc8/oYf;->batch()V

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method consumeRenderTask(Ljava/lang/String;)V
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-direct {p0}, Lc8/EYf;->throwIfNotDomThread()V

    .line 143
    iget-object v1, p0, Lc8/EYf;->mDomRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/oYf;

    .line 144
    .local v0, "context":Lc8/oYf;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lc8/oYf;->consumeRenderTasks()V

    .line 147
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lc8/EYf;->mDomThread:Lc8/VXf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/EYf;->mDomThread:Lc8/VXf;

    invoke-virtual {v0}, Lc8/VXf;->isWXThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lc8/EYf;->mDomThread:Lc8/VXf;

    invoke-virtual {v0}, Lc8/VXf;->quit()Z

    .line 119
    :cond_0
    iget-object v0, p0, Lc8/EYf;->mDomRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lc8/EYf;->mDomRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 122
    :cond_1
    iput-object v1, p0, Lc8/EYf;->mDomHandler:Landroid/os/Handler;

    .line 123
    iput-object v1, p0, Lc8/EYf;->mDomThread:Lc8/VXf;

    .line 124
    return-void
.end method

.method public executeAction(Ljava/lang/String;Lc8/fYf;Z)V
    .locals 10
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "action"    # Lc8/fYf;
    .param p3, "createContext"    # Z

    .prologue
    .line 156
    iget-object v7, p0, Lc8/EYf;->mDomRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/gYf;

    .line 157
    .local v0, "context":Lc8/gYf;
    if-nez v0, :cond_0

    .line 158
    if-eqz p3, :cond_1

    .line 159
    new-instance v6, Lc8/oYf;

    iget-object v7, p0, Lc8/EYf;->mWXRenderManager:Lc8/Cag;

    invoke-direct {v6, p1, v7}, Lc8/oYf;-><init>(Ljava/lang/String;Lc8/Cag;)V

    .line 160
    .local v6, "oldStatement":Lc8/oYf;
    iget-object v7, p0, Lc8/EYf;->mDomRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    move-object v0, v6

    .line 167
    .end local v6    # "oldStatement":Lc8/oYf;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 168
    .local v4, "domStart":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 169
    .local v2, "domNanos":J
    invoke-interface {p2, v0}, Lc8/fYf;->executeDom(Lc8/gYf;)V

    .line 170
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 171
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v2, v8, v2

    .line 172
    instance-of v7, p2, Lc8/VYf;

    if-nez v7, :cond_1

    instance-of v7, p2, Lc8/sZf;

    if-eqz v7, :cond_1

    .line 173
    const-string/jumbo v7, "DomExecute"

    invoke-interface {v0}, Lc8/gYf;->getInstanceId()Ljava/lang/String;

    move-result-object v8

    check-cast p2, Lc8/sZf;

    .end local p2    # "action":Lc8/fYf;
    iget v9, p2, Lc8/sZf;->mTracingEventId:I

    invoke-static {v7, v8, v9}, Lc8/mag;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lc8/kag;

    move-result-object v1

    .line 174
    .local v1, "domExecuteEvent":Lc8/kag;
    invoke-static {v2, v3}, Lc8/jag;->nanosToMillis(J)D

    move-result-wide v8

    iput-wide v8, v1, Lc8/kag;->duration:D

    .line 175
    iput-wide v4, v1, Lc8/kag;->ts:J

    .line 176
    invoke-virtual {v1}, Lc8/kag;->submit()V

    .line 179
    .end local v1    # "domExecuteEvent":Lc8/kag;
    .end local v2    # "domNanos":J
    .end local v4    # "domStart":J
    :cond_1
    return-void
.end method

.method public getDomContext(Ljava/lang/String;)Lc8/gYf;
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lc8/EYf;->mDomRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/gYf;

    return-object v0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 105
    iget-object v0, p0, Lc8/EYf;->mDomHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc8/EYf;->mDomThread:Lc8/VXf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/EYf;->mDomThread:Lc8/VXf;

    invoke-virtual {v0}, Lc8/VXf;->isWXThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/EYf;->mDomThread:Lc8/VXf;

    invoke-virtual {v0}, Lc8/VXf;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lc8/EYf;->mDomHandler:Landroid/os/Handler;

    invoke-static {p1}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public postAction(Ljava/lang/String;Lc8/fYf;Z)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "action"    # Lc8/fYf;
    .param p3, "createContext"    # Z

    .prologue
    .line 190
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lc8/EYf;->postActionDelay(Ljava/lang/String;Lc8/fYf;ZJ)V

    .line 191
    return-void
.end method

.method public postActionDelay(Ljava/lang/String;Lc8/fYf;ZJ)V
    .locals 4
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "action"    # Lc8/fYf;
    .param p3, "createContext"    # Z
    .param p4, "delay"    # J

    .prologue
    .line 199
    if-nez p2, :cond_0

    .line 211
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 203
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0xfe

    iput v2, v0, Landroid/os/Message;->what:I

    .line 204
    new-instance v1, Lc8/KYf;

    invoke-direct {v1}, Lc8/KYf;-><init>()V

    .line 205
    .local v1, "task":Lc8/KYf;
    iput-object p1, v1, Lc8/KYf;->instanceId:Ljava/lang/String;

    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lc8/KYf;->args:Ljava/util/List;

    .line 207
    iget-object v2, v1, Lc8/KYf;->args:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v2, v1, Lc8/KYf;->args:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 210
    invoke-virtual {p0, v0, p4, p5}, Lc8/EYf;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0
.end method

.method public postRenderTask(Ljava/lang/String;)V
    .locals 3
    .param p1, "instanceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 214
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0xfa

    iput v2, v0, Landroid/os/Message;->what:I

    .line 216
    new-instance v1, Lc8/KYf;

    invoke-direct {v1}, Lc8/KYf;-><init>()V

    .line 217
    .local v1, "task":Lc8/KYf;
    iput-object p1, v1, Lc8/KYf;->instanceId:Ljava/lang/String;

    .line 218
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 219
    invoke-virtual {p0, v0}, Lc8/EYf;->sendMessage(Landroid/os/Message;)V

    .line 220
    return-void
.end method

.method public removeDomStatement(Ljava/lang/String;)V
    .locals 3
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {}, Lc8/Dgg;->isUiThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v2, "[WXDomManager] removeDomStatement"

    invoke-direct {v1, v2}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_0
    iget-object v1, p0, Lc8/EYf;->mDomRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/oYf;

    .line 93
    .local v0, "statement":Lc8/oYf;
    if-eqz v0, :cond_1

    .line 94
    new-instance v1, Lc8/DYf;

    invoke-direct {v1, p0, v0}, Lc8/DYf;-><init>(Lc8/EYf;Lc8/oYf;)V

    invoke-virtual {p0, v1}, Lc8/EYf;->post(Ljava/lang/Runnable;)V

    .line 102
    :cond_1
    return-void
.end method

.method public sendEmptyMessageDelayed(IJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .prologue
    .line 64
    iget-object v0, p0, Lc8/EYf;->mDomHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/EYf;->mDomThread:Lc8/VXf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/EYf;->mDomThread:Lc8/VXf;

    invoke-virtual {v0}, Lc8/VXf;->isWXThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/EYf;->mDomThread:Lc8/VXf;

    invoke-virtual {v0}, Lc8/VXf;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lc8/EYf;->mDomHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lc8/EYf;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 73
    return-void
.end method

.method public sendMessageDelayed(Landroid/os/Message;J)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delay"    # J

    .prologue
    .line 76
    if-eqz p1, :cond_0

    iget-object v0, p0, Lc8/EYf;->mDomHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/EYf;->mDomThread:Lc8/VXf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/EYf;->mDomThread:Lc8/VXf;

    invoke-virtual {v0}, Lc8/VXf;->isWXThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/EYf;->mDomThread:Lc8/VXf;

    invoke-virtual {v0}, Lc8/VXf;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lc8/EYf;->mDomHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
