.class public Lc8/mdf;
.super Ljava/lang/Object;
.source "EventCenterCluster.java"


# static fields
.field private static instances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/kdf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/mdf;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcast(Lc8/fdf;)V
    .locals 3
    .param p0, "event"    # Lc8/fdf;

    .prologue
    .line 136
    sget-object v2, Lc8/mdf;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/kdf;

    .line 137
    .local v0, "eventCenter":Lc8/kdf;
    invoke-virtual {v0, p0}, Lc8/kdf;->postEvent(Lc8/fdf;)V

    goto :goto_0

    .line 139
    .end local v0    # "eventCenter":Lc8/kdf;
    :cond_0
    return-void
.end method

.method public static destroy(Ljava/lang/Object;)V
    .locals 2
    .param p0, "context"    # Ljava/lang/Object;

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/mdf;->destroy(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static destroy(Ljava/lang/String;)V
    .locals 1
    .param p0, "namespace"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    sget-object v0, Lc8/mdf;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lc8/mdf;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/kdf;

    invoke-virtual {v0}, Lc8/kdf;->destroy()V

    .line 86
    sget-object v0, Lc8/mdf;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lc8/kdf;
    .locals 2
    .param p0, "context"    # Ljava/lang/Object;

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/mdf;->getInstance(Ljava/lang/String;)Lc8/kdf;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;Lc8/ldf;)Lc8/kdf;
    .locals 2
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "builder"    # Lc8/ldf;

    .prologue
    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/mdf;->getInstance(Ljava/lang/String;Lc8/ldf;)Lc8/kdf;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;)Lc8/kdf;
    .locals 1
    .param p0, "namespace"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-object v0, Lc8/kdf;->DEFAULT_BUILDER:Lc8/ldf;

    invoke-static {p0, v0}, Lc8/mdf;->getInstance(Ljava/lang/String;Lc8/ldf;)Lc8/kdf;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Lc8/ldf;)Lc8/kdf;
    .locals 2
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "builder"    # Lc8/ldf;

    .prologue
    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const/4 v1, 0x0

    .line 44
    :goto_0
    return-object v1

    .line 37
    :cond_0
    sget-object v1, Lc8/mdf;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    sget-object v1, Lc8/mdf;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/kdf;

    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Lc8/kdf;

    invoke-direct {v0, p1}, Lc8/kdf;-><init>(Lc8/ldf;)V

    .line 42
    .local v0, "eventCenter":Lc8/kdf;
    sget-object v1, Lc8/mdf;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 44
    goto :goto_0
.end method

.method public static post(Ljava/lang/Object;Lc8/fdf;)V
    .locals 1
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "event"    # Lc8/fdf;

    .prologue
    .line 109
    invoke-static {p0}, Lc8/mdf;->getInstance(Ljava/lang/Object;)Lc8/kdf;

    move-result-object v0

    .line 110
    .local v0, "eventCenter":Lc8/kdf;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Lc8/kdf;->postEvent(Lc8/fdf;)V

    .line 113
    :cond_0
    return-void
.end method

.method public static post(Ljava/lang/Object;Lc8/fdf;Lc8/gdf;)V
    .locals 1
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "event"    # Lc8/fdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc8/udf;",
            ">(",
            "Ljava/lang/Object;",
            "Lc8/fdf;",
            "Lc8/gdf",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "callback":Lc8/gdf;, "Lcom/taobao/android/trade/event/EventCallback<TT;>;"
    invoke-static {p0}, Lc8/mdf;->getInstance(Ljava/lang/Object;)Lc8/kdf;

    move-result-object v0

    .line 125
    .local v0, "eventCenter":Lc8/kdf;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1, p2}, Lc8/kdf;->postEvent(Lc8/fdf;Lc8/gdf;)V

    .line 128
    :cond_0
    return-void
.end method
