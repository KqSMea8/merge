.class public Lc8/JZb;
.super Ljava/lang/Object;
.source "WindowCache.java"


# instance fields
.field public sWindows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lc8/IZb;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/JZb;->sWindows:Ljava/util/Map;

    .line 15
    return-void
.end method


# virtual methods
.method public getCache(ILjava/lang/Class;)Lc8/IZb;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;)",
            "Lc8/IZb;"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayerconsole/lib/StandOutWindow;>;"
    iget-object v1, p0, Lc8/JZb;->sWindows:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 41
    .local v0, "l2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/poplayerconsole/lib/Window;>;"
    if-nez v0, :cond_0

    .line 42
    const/4 v1, 0x0

    .line 45
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/IZb;

    goto :goto_0
.end method

.method public getCacheIds(Ljava/lang/Class;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayerconsole/lib/StandOutWindow;>;"
    iget-object v3, p0, Lc8/JZb;->sWindows:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 111
    .local v2, "l2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/poplayerconsole/lib/Window;>;"
    if-nez v2, :cond_1

    .line 112
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 119
    :cond_0
    return-object v1

    .line 115
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 116
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 117
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCacheSize(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayerconsole/lib/StandOutWindow;>;"
    iget-object v1, p0, Lc8/JZb;->sWindows:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 95
    .local v0, "l2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/poplayerconsole/lib/Window;>;"
    if-nez v0, :cond_0

    .line 96
    const/4 v1, 0x0

    .line 99
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    goto :goto_0
.end method

.method public isCached(ILjava/lang/Class;)Z
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayerconsole/lib/StandOutWindow;>;"
    invoke-virtual {p0, p1, p2}, Lc8/JZb;->getCache(ILjava/lang/Class;)Lc8/IZb;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putCache(ILjava/lang/Class;Lc8/IZb;)V
    .locals 2
    .param p1, "id"    # I
    .param p3, "window"    # Lc8/IZb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;",
            "Lc8/IZb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayerconsole/lib/StandOutWindow;>;"
    iget-object v1, p0, Lc8/JZb;->sWindows:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 60
    .local v0, "l2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/poplayerconsole/lib/Window;>;"
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "l2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/poplayerconsole/lib/Window;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 62
    .restart local v0    # "l2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/poplayerconsole/lib/Window;>;"
    iget-object v1, p0, Lc8/JZb;->sWindows:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method public removeCache(ILjava/lang/Class;)V
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayerconsole/lib/StandOutWindow;>;"
    iget-object v1, p0, Lc8/JZb;->sWindows:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 78
    .local v0, "l2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/poplayerconsole/lib/Window;>;"
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 80
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lc8/JZb;->sWindows:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lc8/JZb;->sWindows:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
