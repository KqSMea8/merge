.class public Lc8/vZn;
.super Ljava/lang/Object;
.source "ObserverManager.java"


# static fields
.field private static instance:Lc8/vZn;


# instance fields
.field private observers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/tZn;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/vZn;->observers:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lc8/vZn;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lc8/vZn;->instance:Lc8/vZn;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lc8/vZn;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lc8/vZn;->instance:Lc8/vZn;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lc8/vZn;

    invoke-direct {v0}, Lc8/vZn;-><init>()V

    sput-object v0, Lc8/vZn;->instance:Lc8/vZn;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lc8/vZn;->instance:Lc8/vZn;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0, p1, p2}, Lc8/vZn;->dispatchEventOnUiThread(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {}, Lc8/xao;->getInstance()Lc8/xao;

    move-result-object v0

    new-instance v1, Lc8/uZn;

    invoke-direct {v1, p0, p1, p2}, Lc8/uZn;-><init>(Lc8/vZn;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lc8/xao;->runOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method dispatchEventOnUiThread(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 78
    iget-object v3, p0, Lc8/vZn;->observers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Lc8/vZn;->observers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 80
    .local v2, "obs":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseframework/observer/IObserver;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseframework/observer/IObserver;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/tZn;

    .line 82
    .local v1, "ob":Lc8/tZn;
    invoke-interface {v1, p1, p2}, Lc8/tZn;->onEvent(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    .end local v0    # "copy":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseframework/observer/IObserver;>;"
    .end local v1    # "ob":Lc8/tZn;
    .end local v2    # "obs":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseframework/observer/IObserver;>;"
    :cond_0
    return-void
.end method

.method public registerEvent(Ljava/lang/String;Lc8/tZn;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/String;
    .param p2, "observer"    # Lc8/tZn;

    .prologue
    .line 35
    iget-object v1, p0, Lc8/vZn;->observers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    iget-object v1, p0, Lc8/vZn;->observers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 37
    .local v0, "obs":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseframework/observer/IObserver;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 40
    .end local v0    # "obs":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseframework/observer/IObserver;>;"
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 41
    .restart local v0    # "obs":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseframework/observer/IObserver;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_2
    iget-object v1, p0, Lc8/vZn;->observers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public unregisterEvent(Ljava/lang/String;Lc8/tZn;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/String;
    .param p2, "observer"    # Lc8/tZn;

    .prologue
    .line 53
    iget-object v1, p0, Lc8/vZn;->observers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lc8/vZn;->observers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 55
    .local v0, "obs":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseframework/observer/IObserver;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 57
    .end local v0    # "obs":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseframework/observer/IObserver;>;"
    :cond_0
    return-void
.end method
