.class public Lc8/lLd;
.super Ljava/lang/Object;
.source "MemoryStore.java"

# interfaces
.implements Lc8/mLd;


# instance fields
.field private atomicLong:Ljava/util/concurrent/atomic/AtomicLong;

.field private dataKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private sendLimit:I

.field private storeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "sendLimit"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lc8/lLd;->atomicLong:Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/lLd;->storeMap:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lc8/lLd;->dataKeyList:Ljava/util/List;

    .line 27
    iput p1, p0, Lc8/lLd;->sendLimit:I

    .line 28
    return-void
.end method


# virtual methods
.method public add(Lc8/PKd;)V
    .locals 0
    .param p1, "dataLoad"    # Lc8/PKd;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lc8/lLd;->insertEvent(Lc8/PKd;)J

    .line 33
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lc8/lLd;->storeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 43
    iget-object v0, p0, Lc8/lLd;->atomicLong:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 44
    iget-object v0, p0, Lc8/lLd;->dataKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    return-void
.end method

.method public getEmittableEvents()Lc8/SKd;
    .locals 12

    .prologue
    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 68
    .local v0, "eventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;>;"
    invoke-virtual {p0}, Lc8/lLd;->getSize()J

    move-result-wide v10

    long-to-int v4, v10

    .line 72
    .local v4, "keySize":I
    iget v9, p0, Lc8/lLd;->sendLimit:I

    if-le v4, v9, :cond_1

    iget v5, p0, Lc8/lLd;->sendLimit:I

    .line 73
    .local v5, "largeEmiteSize":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 74
    iget-object v9, p0, Lc8/lLd;->dataKeyList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 75
    .local v3, "key":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 76
    new-instance v7, Lc8/RKd;

    invoke-direct {v7}, Lc8/RKd;-><init>()V

    .line 77
    .local v7, "payload":Lc8/RKd;
    iget-object v9, p0, Lc8/lLd;->storeMap:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-static {v9}, Lc8/jLd;->deserializer([B)Ljava/util/Map;

    move-result-object v6

    .local v6, "mapObj":Ljava/util/Map;
    move-object v8, v6

    .line 78
    check-cast v8, Ljava/util/Map;

    .line 79
    .local v8, "payloadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v7, v8}, Lc8/RKd;->addMap(Ljava/util/Map;)V

    .line 80
    const-string/jumbo v9, "MemoryStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " current key "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " payload "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lc8/yLd;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    check-cast v3, Ljava/lang/Long;

    .end local v3    # "key":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v6    # "mapObj":Ljava/util/Map;
    .end local v7    # "payload":Lc8/RKd;
    .end local v8    # "payloadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v5    # "largeEmiteSize":I
    :cond_1
    move v5, v4

    .line 72
    goto :goto_0

    .line 87
    .restart local v2    # "i":I
    .restart local v5    # "largeEmiteSize":I
    :cond_2
    new-instance v9, Lc8/SKd;

    invoke-direct {v9, v1, v0}, Lc8/SKd;-><init>(Ljava/util/ArrayList;Ljava/util/LinkedList;)V

    return-object v9
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lc8/lLd;->dataKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public insertEvent(Lc8/PKd;)J
    .locals 5
    .param p1, "dataLoad"    # Lc8/PKd;

    .prologue
    .line 102
    invoke-interface {p1}, Lc8/PKd;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lc8/jLd;->serialize(Ljava/util/Map;)[B

    move-result-object v0

    .line 103
    .local v0, "bytes":[B
    iget-object v1, p0, Lc8/lLd;->atomicLong:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    .line 104
    .local v2, "key":J
    iget-object v1, p0, Lc8/lLd;->dataKeyList:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lc8/lLd;->storeMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-wide v2
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public removeAllEvents()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc8/lLd;->storeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 56
    iget-object v0, p0, Lc8/lLd;->dataKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public removeEvent(J)Z
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 50
    iget-object v0, p0, Lc8/lLd;->dataKeyList:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/lLd;->storeMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
