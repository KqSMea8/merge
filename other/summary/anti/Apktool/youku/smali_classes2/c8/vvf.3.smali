.class public Lc8/vvf;
.super Ljava/lang/Object;
.source "DiskCacheBuilder.java"

# interfaces
.implements Lc8/rvf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/rvf",
        "<",
        "Lc8/Mvf;",
        ">;"
    }
.end annotation


# instance fields
.field private mDiskCacheSupplier:Lc8/Mvf;

.field private mHaveBuilt:Z

.field private final mPrioritySizes:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0xa00000

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lc8/vvf;->mPrioritySizes:Landroid/util/SparseIntArray;

    .line 24
    iget-object v0, p0, Lc8/vvf;->mPrioritySizes:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const/high16 v2, 0x5000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    iget-object v0, p0, Lc8/vvf;->mPrioritySizes:Landroid/util/SparseIntArray;

    const/16 v1, 0x22

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    iget-object v0, p0, Lc8/vvf;->mPrioritySizes:Landroid/util/SparseIntArray;

    const/16 v1, 0x33

    const/high16 v2, 0x1e00000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    iget-object v0, p0, Lc8/vvf;->mPrioritySizes:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    iget-object v0, p0, Lc8/vvf;->mPrioritySizes:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/high16 v2, 0x1400000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    return-void
.end method


# virtual methods
.method public declared-synchronized build()Lc8/Mvf;
    .locals 6

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lc8/vvf;->mHaveBuilt:Z

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Lc8/vvf;->mDiskCacheSupplier:Lc8/Mvf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :goto_0
    monitor-exit p0

    return-object v2

    .line 49
    :cond_0
    :try_start_1
    iget-object v2, p0, Lc8/vvf;->mDiskCacheSupplier:Lc8/Mvf;

    if-nez v2, :cond_1

    .line 50
    new-instance v2, Lc8/Pvf;

    invoke-direct {v2}, Lc8/Pvf;-><init>()V

    iput-object v2, p0, Lc8/vvf;->mDiskCacheSupplier:Lc8/Mvf;

    .line 51
    const-string/jumbo v2, "DiskCache"

    const-string/jumbo v3, "use default non-operation DiskCacheSupplier, cause not implement a custom DiskCacheSupplier"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/vvf;->mHaveBuilt:Z

    .line 54
    iget-object v2, p0, Lc8/vvf;->mDiskCacheSupplier:Lc8/Mvf;

    const/16 v3, 0x11

    invoke-interface {v2, v3}, Lc8/Mvf;->get(I)Lc8/Jvf;

    move-result-object v2

    const-string/jumbo v3, "DiskCache for the priority(TOP_USED_1) cannot be null"

    invoke-static {v2, v3}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v2, p0, Lc8/vvf;->mDiskCacheSupplier:Lc8/Mvf;

    invoke-interface {v2}, Lc8/Mvf;->getAll()Ljava/util/Collection;

    move-result-object v1

    .line 57
    .local v1, "diskCaches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/taobao/phenix/cache/disk/DiskCache;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Jvf;

    .line 58
    .local v0, "diskCache":Lc8/Jvf;
    iget-object v3, p0, Lc8/vvf;->mPrioritySizes:Landroid/util/SparseIntArray;

    invoke-interface {v0}, Lc8/Jvf;->getPriority()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-interface {v0, v3}, Lc8/Jvf;->maxSize(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 46
    .end local v0    # "diskCache":Lc8/Jvf;
    .end local v1    # "diskCaches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/taobao/phenix/cache/disk/DiskCache;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 61
    .restart local v1    # "diskCaches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/taobao/phenix/cache/disk/DiskCache;>;"
    :cond_2
    :try_start_2
    iget-object v2, p0, Lc8/vvf;->mDiskCacheSupplier:Lc8/Mvf;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lc8/vvf;->build()Lc8/Mvf;

    move-result-object v0

    return-object v0
.end method

.method public maxSize(II)Lc8/vvf;
    .locals 2
    .param p1, "priority"    # I
    .param p2, "maxSize"    # I

    .prologue
    .line 39
    iget-boolean v0, p0, Lc8/vvf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "DiskCacheBuilder has been built, not allow maxSize() now"

    invoke-static {v0, v1}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lc8/vvf;->mPrioritySizes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    return-object p0

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic with(Ljava/lang/Object;)Lc8/rvf;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lc8/Mvf;

    invoke-virtual {p0, p1}, Lc8/vvf;->with(Lc8/Mvf;)Lc8/vvf;

    move-result-object v0

    return-object v0
.end method

.method public with(Lc8/Mvf;)Lc8/vvf;
    .locals 2
    .param p1, "diskCache"    # Lc8/Mvf;

    .prologue
    .line 33
    iget-boolean v0, p0, Lc8/vvf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "DiskCacheBuilder has been built, not allow with() now"

    invoke-static {v0, v1}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 34
    iput-object p1, p0, Lc8/vvf;->mDiskCacheSupplier:Lc8/Mvf;

    .line 35
    return-object p0

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
