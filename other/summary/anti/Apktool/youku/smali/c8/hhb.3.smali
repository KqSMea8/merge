.class public Lc8/hhb;
.super Ljava/lang/Object;
.source "DefaultServiceRegistry.java"

# interfaces
.implements Lc8/ehb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/fhb;,
        Lc8/ghb;
    }
.end annotation


# instance fields
.field private lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private registrationServiceEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/dhb;",
            "Lc8/ghb;",
            ">;"
        }
    .end annotation
.end field

.field private typeServiceEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lc8/ghb;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/hhb;->typeServiceEntries:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/hhb;->registrationServiceEntries:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 177
    return-void
.end method


# virtual methods
.method public getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "filterProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 65
    iget-object v6, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 67
    :try_start_0
    iget-object v6, p0, Lc8/hhb;->typeServiceEntries:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 68
    .local v2, "serviceEntries":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/registry/impl/DefaultServiceRegistry$ServiceEntry;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 91
    :cond_0
    iget-object v6, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v5

    .line 72
    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 73
    :cond_2
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/ghb;

    iget-object v5, v5, Lc8/ghb;->instance:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 91
    iget-object v6, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 76
    :cond_3
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/ghb;

    .line 77
    .local v3, "serviceEntry":Lc8/ghb;
    const/4 v1, 0x1

    .line 78
    .local v1, "matched":Z
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 79
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, v3, Lc8/ghb;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 80
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 81
    :cond_6
    const/4 v1, 0x0

    .line 85
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "value":Ljava/lang/String;
    :cond_7
    if-eqz v1, :cond_4

    .line 86
    iget-object v5, v3, Lc8/ghb;->instance:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 91
    iget-object v6, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v1    # "matched":Z
    .end local v3    # "serviceEntry":Lc8/ghb;
    :cond_8
    iget-object v6, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v2    # "serviceEntries":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/registry/impl/DefaultServiceRegistry$ServiceEntry;>;"
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method public getServices(Ljava/lang/Class;Ljava/util/Map;)[Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[TT;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "filterProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 100
    :try_start_0
    iget-object v9, p0, Lc8/hhb;->typeServiceEntries:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 101
    .local v4, "serviceEntries":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/registry/impl/DefaultServiceRegistry$ServiceEntry;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 102
    :cond_0
    const/4 v9, 0x0

    invoke-static {p1, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v10, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v7, v9

    :goto_0
    return-object v7

    .line 105
    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v9

    if-nez v9, :cond_4

    .line 106
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {p1, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 107
    .local v7, "serviceInstances":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "length":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 108
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/ghb;

    iget-object v9, v9, Lc8/ghb;->instance:Ljava/lang/Object;

    invoke-virtual {p1, v9}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 130
    :cond_3
    iget-object v9, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v7    # "serviceInstances":[Ljava/lang/Object;, "[TT;"
    :cond_4
    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v6, "serviceInstances":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/ghb;

    .line 116
    .local v5, "serviceEntry":Lc8/ghb;
    const/4 v3, 0x1

    .line 117
    .local v3, "matched":Z
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 118
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v11, v5, Lc8/ghb;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 119
    .local v8, "value":Ljava/lang/String;
    if-eqz v8, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 120
    :cond_7
    const/4 v3, 0x0

    .line 124
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "value":Ljava/lang/String;
    :cond_8
    if-eqz v3, :cond_5

    .line 125
    iget-object v10, v5, Lc8/ghb;->instance:Ljava/lang/Object;

    invoke-virtual {p1, v10}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 130
    .end local v3    # "matched":Z
    .end local v4    # "serviceEntries":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/registry/impl/DefaultServiceRegistry$ServiceEntry;>;"
    .end local v5    # "serviceEntry":Lc8/ghb;
    .end local v6    # "serviceInstances":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v9

    .line 128
    .restart local v4    # "serviceEntries":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/registry/impl/DefaultServiceRegistry$ServiceEntry;>;"
    .restart local v6    # "serviceInstances":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_9
    :try_start_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {p1, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    invoke-interface {v6, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    .line 130
    iget-object v9, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0
.end method

.method public registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;
    .locals 9
    .param p2, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/dhb;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p3, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    array-length v5, p1

    if-eqz v5, :cond_0

    if-nez p2, :cond_1

    .line 28
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "service types and instance must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 30
    :cond_1
    new-instance v2, Lc8/ghb;

    invoke-direct {v2}, Lc8/ghb;-><init>()V

    .line 31
    .local v2, "serviceEntry":Lc8/ghb;
    iput-object p2, v2, Lc8/ghb;->instance:Ljava/lang/Object;

    .line 32
    iput-object p1, v2, Lc8/ghb;->types:[Ljava/lang/Class;

    .line 33
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v2, Lc8/ghb;->properties:Ljava/util/Map;

    .line 34
    if-eqz p3, :cond_3

    .line 35
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 39
    iget-object v6, v2, Lc8/ghb;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 43
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v5, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 45
    :try_start_0
    array-length v6, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v4, p1, v5

    .line 46
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v7, p0, Lc8/hhb;->typeServiceEntries:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 47
    .local v1, "instances":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/registry/impl/DefaultServiceRegistry$ServiceEntry;>;"
    if-nez v1, :cond_4

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "instances":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/registry/impl/DefaultServiceRegistry$ServiceEntry;>;"
    const/4 v7, 0x2

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .restart local v1    # "instances":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/registry/impl/DefaultServiceRegistry$ServiceEntry;>;"
    iget-object v7, p0, Lc8/hhb;->typeServiceEntries:Ljava/util/Map;

    invoke-interface {v7, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 54
    .end local v1    # "instances":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/registry/impl/DefaultServiceRegistry$ServiceEntry;>;"
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    new-instance v3, Lc8/fhb;

    iget-object v5, v2, Lc8/ghb;->properties:Ljava/util/Map;

    invoke-direct {v3, p0, v5}, Lc8/fhb;-><init>(Lc8/ehb;Ljava/util/Map;)V

    .line 55
    .local v3, "serviceRegistration":Lc8/dhb;
    iget-object v5, p0, Lc8/hhb;->registrationServiceEntries:Ljava/util/Map;

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v5, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v3

    .end local v3    # "serviceRegistration":Lc8/dhb;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method public unregisterService(Lc8/dhb;)Ljava/lang/Object;
    .locals 8
    .param p1, "registration"    # Lc8/dhb;

    .prologue
    const/4 v4, 0x0

    .line 136
    if-nez p1, :cond_0

    .line 167
    :goto_0
    return-object v4

    .line 140
    :cond_0
    iget-object v5, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 142
    :try_start_0
    iget-object v5, p0, Lc8/hhb;->registrationServiceEntries:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/ghb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .local v2, "serviceEntry":Lc8/ghb;
    if-nez v2, :cond_1

    .line 167
    iget-object v5, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 147
    :cond_1
    :try_start_1
    iget-object v4, v2, Lc8/ghb;->types:[Ljava/lang/Class;

    if-eqz v4, :cond_5

    .line 148
    iget-object v5, v2, Lc8/ghb;->types:[Ljava/lang/Class;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_5

    aget-object v3, v5, v4

    .line 149
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v7, p0, Lc8/hhb;->typeServiceEntries:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 152
    .local v1, "serviceEntries":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/registry/impl/DefaultServiceRegistry$ServiceEntry;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ali/auth/third/core/registry/impl/DefaultServiceRegistry$ServiceEntry;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_2

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 160
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 161
    iget-object v7, p0, Lc8/hhb;->typeServiceEntries:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 165
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ali/auth/third/core/registry/impl/DefaultServiceRegistry$ServiceEntry;>;"
    .end local v1    # "serviceEntries":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/registry/impl/DefaultServiceRegistry$ServiceEntry;>;"
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    iget-object v4, v2, Lc8/ghb;->instance:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    iget-object v5, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v2    # "serviceEntry":Lc8/ghb;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lc8/hhb;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method
