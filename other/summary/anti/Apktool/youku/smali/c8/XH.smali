.class public Lc8/XH;
.super Ljava/lang/Object;
.source "SimplePriorityList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/WH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lc8/WH;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private cachedPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field private list:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field private lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private prioritySize:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "prioritySize"    # I

    .prologue
    .line 29
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lc8/XH;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 26
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lc8/XH;->cachedPriorityList:Ljava/util/List;

    .line 30
    if-gtz p1, :cond_0

    .line 31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prioritySize < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    iput-object v1, p0, Lc8/XH;->list:[Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 35
    iget-object v1, p0, Lc8/XH;->list:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_1
    iget-object v1, p0, Lc8/XH;->cachedPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 38
    iput p1, p0, Lc8/XH;->prioritySize:I

    .line 39
    return-void
.end method

.method private checkPriority(Lc8/WH;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    .local p1, "o":Lc8/WH;, "TE;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc8/WH;->getPriority()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-interface {p1}, Lc8/WH;->getPriority()I

    move-result v0

    iget v1, p0, Lc8/XH;->prioritySize:I

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCachedPriorityList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    iget-object v4, p0, Lc8/XH;->cachedPriorityList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    iget-object v4, p0, Lc8/XH;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 185
    iget-object v0, p0, Lc8/XH;->list:[Ljava/util/List;

    .local v0, "arr$":[Ljava/util/List;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 186
    .local v3, "t":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget-object v4, p0, Lc8/XH;->cachedPriorityList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v3    # "t":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_0
    iget-object v4, p0, Lc8/XH;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 190
    .end local v0    # "arr$":[Ljava/util/List;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_1
    iget-object v4, p0, Lc8/XH;->cachedPriorityList:Ljava/util/List;

    return-object v4
.end method


# virtual methods
.method public add(ILc8/WH;)V
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    .local p2, "object":Lc8/WH;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 22
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    check-cast p2, Lc8/WH;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/XH;->add(ILc8/WH;)V

    return-void
.end method

.method public add(Lc8/WH;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    .local p1, "object":Lc8/WH;, "TE;"
    invoke-direct {p0, p1}, Lc8/XH;->checkPriority(Lc8/WH;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lc8/XH;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 50
    iget-object v1, p0, Lc8/XH;->list:[Ljava/util/List;

    invoke-interface {p1}, Lc8/WH;->getPriority()I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 51
    .local v0, "result":Z
    iget-object v1, p0, Lc8/XH;->cachedPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 52
    iget-object v1, p0, Lc8/XH;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 55
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    check-cast p1, Lc8/WH;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/XH;->add(Lc8/WH;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 70
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    iget-object v4, p0, Lc8/XH;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 71
    iget-object v0, p0, Lc8/XH;->list:[Ljava/util/List;

    .local v0, "arr$":[Ljava/util/List;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 72
    .local v3, "t":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v3    # "t":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_0
    iget-object v4, p0, Lc8/XH;->cachedPriorityList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 75
    iget-object v4, p0, Lc8/XH;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 76
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 80
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    invoke-direct {p0}, Lc8/XH;->getCachedPriorityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public get(I)Lc8/WH;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 22
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    invoke-virtual {p0, p1}, Lc8/XH;->get(I)Lc8/WH;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 95
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    invoke-direct {p0}, Lc8/XH;->getCachedPriorityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 110
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    invoke-direct {p0}, Lc8/XH;->getCachedPriorityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(I)Lc8/WH;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 22
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    invoke-virtual {p0, p1}, Lc8/XH;->remove(I)Lc8/WH;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    const/4 v1, 0x0

    .line 130
    if-nez p1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 132
    check-cast v0, Lc8/WH;

    .line 133
    .local v0, "o":Lc8/WH;, "TE;"
    invoke-direct {p0, v0}, Lc8/XH;->checkPriority(Lc8/WH;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lc8/XH;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 135
    iget-object v2, p0, Lc8/XH;->list:[Ljava/util/List;

    invoke-interface {v0}, Lc8/WH;->getPriority()I

    move-result v3

    aget-object v2, v2, v3

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 136
    .local v1, "result":Z
    iget-object v2, p0, Lc8/XH;->cachedPriorityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 137
    iget-object v2, p0, Lc8/XH;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(ILc8/WH;)Lc8/WH;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    .local p2, "object":Lc8/WH;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 22
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    check-cast p2, Lc8/WH;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/XH;->set(ILc8/WH;)Lc8/WH;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 160
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    invoke-direct {p0}, Lc8/XH;->getCachedPriorityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    invoke-direct {p0}, Lc8/XH;->getCachedPriorityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lc8/XH;, "Landroid/taobao/windvane/util/SimplePriorityList<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Lc8/XH;->getCachedPriorityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
