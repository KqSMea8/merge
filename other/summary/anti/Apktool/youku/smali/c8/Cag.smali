.class public Lc8/Cag;
.super Ljava/lang/Object;
.source "WXRenderManager.java"


# instance fields
.field private mRegistries:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/tag;",
            ">;"
        }
    .end annotation
.end field

.field private mWXRenderHandler:Lc8/zag;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/Cag;->mRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    new-instance v0, Lc8/zag;

    invoke-direct {v0}, Lc8/zag;-><init>()V

    iput-object v0, p0, Lc8/Cag;->mWXRenderHandler:Lc8/zag;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lc8/Cag;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lc8/Cag;

    .prologue
    .line 47
    iget-object v0, p0, Lc8/Cag;->mRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public getAllInstances()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/nVf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    const/4 v2, 0x0

    .line 166
    .local v2, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/WXSDKInstance;>;"
    iget-object v4, p0, Lc8/Cag;->mRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lc8/Cag;->mRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/WXSDKInstance;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .restart local v2    # "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/WXSDKInstance;>;"
    iget-object v4, p0, Lc8/Cag;->mRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/RenderActionContextImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/tag;

    .line 170
    .local v3, "renderStatement":Lc8/tag;
    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {v3}, Lc8/tag;->getWXSDKInstance()Lc8/nVf;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/RenderActionContextImpl;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "renderStatement":Lc8/tag;
    :cond_1
    return-object v2
.end method

.method public getRenderContext(Ljava/lang/String;)Lc8/sYf;
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lc8/Cag;->mRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/sYf;

    return-object v0
.end method

.method public getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lc8/tbg;
    .locals 3
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 62
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v1

    .line 65
    :cond_1
    invoke-virtual {p0, p1}, Lc8/Cag;->getRenderContext(Ljava/lang/String;)Lc8/sYf;

    move-result-object v0

    .line 66
    .local v0, "stmt":Lc8/sYf;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lc8/sYf;->getComponent(Ljava/lang/String;)Lc8/tbg;

    move-result-object v1

    goto :goto_0
.end method

.method public getWXSDKInstance(Ljava/lang/String;)Lc8/nVf;
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v1, p0, Lc8/Cag;->mRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tag;

    .line 71
    .local v0, "statement":Lc8/tag;
    if-nez v0, :cond_0

    .line 72
    const/4 v1, 0x0

    .line 74
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lc8/tag;->getWXSDKInstance()Lc8/nVf;

    move-result-object v1

    goto :goto_0
.end method

.method public postOnUiThread(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 78
    iget-object v0, p0, Lc8/Cag;->mWXRenderHandler:Lc8/zag;

    invoke-static {p1}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lc8/zag;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    return-void
.end method

.method public registerComponent(Ljava/lang/String;Ljava/lang/String;Lc8/tbg;)V
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "comp"    # Lc8/tbg;

    .prologue
    .line 179
    iget-object v1, p0, Lc8/Cag;->mRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tag;

    .line 180
    .local v0, "statement":Lc8/tag;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p2, p3}, Lc8/tag;->registerComponent(Ljava/lang/String;Lc8/tbg;)V

    .line 183
    :cond_0
    return-void
.end method

.method public registerInstance(Lc8/nVf;)V
    .locals 3
    .param p1, "instance"    # Lc8/nVf;

    .prologue
    .line 142
    iget-object v0, p0, Lc8/Cag;->mRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lc8/tag;

    invoke-direct {v2, p1}, Lc8/tag;-><init>(Lc8/nVf;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public removeRenderStatement(Ljava/lang/String;)V
    .locals 3
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Lc8/Dgg;->isUiThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v2, "[WXRenderManager] removeRenderStatement can only be called in main thread"

    invoke-direct {v1, v2}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_0
    iget-object v1, p0, Lc8/Cag;->mRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tag;

    .line 90
    .local v0, "statement":Lc8/tag;
    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Lc8/tag;->destroy()V

    .line 93
    :cond_1
    return-void
.end method

.method public runOnThread(Ljava/lang/String;Lc8/rYf;)V
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "action"    # Lc8/rYf;

    .prologue
    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 111
    .local v4, "start":J
    iget-object v6, p0, Lc8/Cag;->mWXRenderHandler:Lc8/zag;

    new-instance v0, Lc8/Bag;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lc8/Bag;-><init>(Lc8/Cag;Ljava/lang/String;Lc8/rYf;J)V

    invoke-static {v0}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v6, v0}, Lc8/zag;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method

.method public runOnThread(Ljava/lang/String;Lc8/sag;)V
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "task"    # Lc8/sag;

    .prologue
    .line 97
    iget-object v0, p0, Lc8/Cag;->mWXRenderHandler:Lc8/zag;

    new-instance v1, Lc8/Aag;

    invoke-direct {v1, p0, p1, p2}, Lc8/Aag;-><init>(Lc8/Cag;Ljava/lang/String;Lc8/sag;)V

    invoke-static {v1}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/zag;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/Object;

    .prologue
    .line 157
    iget-object v1, p0, Lc8/Cag;->mRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tag;

    .line 158
    .local v0, "statement":Lc8/tag;
    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {v0, p2, p3}, Lc8/tag;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setLayout(Ljava/lang/String;Ljava/lang/String;Lc8/HYf;)V
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "domObject"    # Lc8/HYf;

    .prologue
    .line 146
    iget-object v1, p0, Lc8/Cag;->mRegistries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tag;

    .line 147
    .local v0, "statement":Lc8/tag;
    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {v0, p2, p3}, Lc8/tag;->setLayout(Ljava/lang/String;Lc8/HYf;)V

    goto :goto_0
.end method
