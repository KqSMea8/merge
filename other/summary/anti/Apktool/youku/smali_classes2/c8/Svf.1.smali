.class public abstract Lc8/Svf;
.super Ljava/lang/Object;
.source "CachedRootImage.java"

# interfaces
.implements Lc8/awf;


# instance fields
.field private final mDiskCacheCatalog:I

.field private final mDiskCacheKey:Ljava/lang/String;

.field private final mDiskPriority:I

.field private mIsReferenceDirty:Z

.field private final mMemoryCacheKey:Ljava/lang/String;

.field private mRecycled:Z

.field private final mReleasableReferenceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReleasedFromCache:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "memoryCacheKey"    # Ljava/lang/String;
    .param p2, "diskCacheKey"    # Ljava/lang/String;
    .param p3, "diskCacheCatalog"    # I
    .param p4, "diskPriority"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lc8/Svf;->mMemoryCacheKey:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lc8/Svf;->mDiskCacheKey:Ljava/lang/String;

    .line 37
    iput p3, p0, Lc8/Svf;->mDiskCacheCatalog:I

    .line 38
    iput p4, p0, Lc8/Svf;->mDiskPriority:I

    .line 39
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lc8/Svf;->mReleasableReferenceSet:Ljava/util/Set;

    .line 40
    return-void
.end method

.method private declared-synchronized addReference(Lc8/Yvf;)V
    .locals 7
    .param p1, "drawable"    # Lc8/Yvf;

    .prologue
    .line 43
    monitor-enter p0

    if-nez p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 49
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lc8/Svf;->mRecycled:Z

    if-eqz v2, :cond_2

    .line 50
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/Svf;->mRecycled:Z

    .line 51
    invoke-virtual {p0}, Lc8/Svf;->onChange2NotRecycled()V

    .line 54
    :cond_2
    iget-boolean v2, p0, Lc8/Svf;->mIsReferenceDirty:Z

    if-nez v2, :cond_0

    .line 64
    instance-of v2, p1, Lc8/Zvf;

    if-eqz v2, :cond_4

    .line 66
    iget-object v2, p0, Lc8/Svf;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "hashVal":Ljava/lang/Integer;
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/Svf;->mIsReferenceDirty:Z

    .line 68
    const-string/jumbo v2, "ImageRecycle"

    const-string/jumbo v3, "references dirty now(last releasable drawable same with the hash is lost), refer=%d, image=%s, drawable=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lc8/Svf;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .end local v1    # "hashVal":Ljava/lang/Integer;
    :goto_1
    const-string/jumbo v2, "ImageRecycle"

    const-string/jumbo v3, "image reference added, isDirty=%b, refer=%d, image=%s, drawable=%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lc8/Svf;->mIsReferenceDirty:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lc8/Svf;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p0, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 70
    .restart local v1    # "hashVal":Ljava/lang/Integer;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lc8/Svf;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    move-object v0, p1

    check-cast v0, Lc8/Zvf;

    move-object v2, v0

    invoke-virtual {v2, p0}, Lc8/Zvf;->setReleasableReferenceListener(Lc8/awf;)V

    goto :goto_1

    .line 74
    .end local v1    # "hashVal":Ljava/lang/Integer;
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/Svf;->mIsReferenceDirty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private recycleIfPossible()V
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lc8/Svf;->mRecycled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/Svf;->mIsReferenceDirty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/Svf;->mReleasedFromCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Svf;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lc8/Svf;->onCanBeRecycled()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Svf;->mRecycled:Z

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public getMemoryCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lc8/Svf;->mMemoryCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSize()I
.end method

.method protected abstract newBitmapDrawable(Ljava/lang/String;Ljava/lang/String;IIZLandroid/content/res/Resources;)Lc8/Yvf;
.end method

.method public newImageDrawableWith(ZLandroid/content/res/Resources;)Lc8/Yvf;
    .locals 8
    .param p1, "releasable"    # Z
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 141
    iget-object v1, p0, Lc8/Svf;->mMemoryCacheKey:Ljava/lang/String;

    iget-object v2, p0, Lc8/Svf;->mDiskCacheKey:Ljava/lang/String;

    iget v3, p0, Lc8/Svf;->mDiskCacheCatalog:I

    iget v4, p0, Lc8/Svf;->mDiskPriority:I

    move-object v0, p0

    move v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lc8/Svf;->newBitmapDrawable(Ljava/lang/String;Ljava/lang/String;IIZLandroid/content/res/Resources;)Lc8/Yvf;

    move-result-object v7

    .line 142
    .local v7, "ret":Lc8/Yvf;
    invoke-direct {p0, v7}, Lc8/Svf;->addReference(Lc8/Yvf;)V

    .line 143
    return-object v7
.end method

.method protected onCanBeRecycled()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method protected onChange2NotRecycled()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public declared-synchronized onReferenceDowngrade2Passable(Lc8/Zvf;)V
    .locals 5
    .param p1, "drawable"    # Lc8/Zvf;

    .prologue
    .line 110
    monitor-enter p0

    if-nez p1, :cond_0

    .line 117
    :goto_0
    monitor-exit p0

    return-void

    .line 113
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lc8/Svf;->mIsReferenceDirty:Z

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc8/Zvf;->setReleasableReferenceListener(Lc8/awf;)V

    .line 115
    iget-object v0, p0, Lc8/Svf;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 116
    const-string/jumbo v0, "ImageRecycle"

    const-string/jumbo v1, "image reference downgraded to passable, isDirty=%b, refer=%d, image=%s, drawable=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lc8/Svf;->mIsReferenceDirty:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lc8/Svf;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onReferenceReleased(Lc8/Zvf;)V
    .locals 5
    .param p1, "drawable"    # Lc8/Zvf;

    .prologue
    .line 98
    monitor-enter p0

    if-nez p1, :cond_0

    .line 104
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    :try_start_0
    iget-object v0, p0, Lc8/Svf;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 102
    const-string/jumbo v0, "ImageRecycle"

    const-string/jumbo v1, "image reference released, isDirty=%b, refer=%d, image=%s, drawable=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lc8/Svf;->mIsReferenceDirty:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lc8/Svf;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-direct {p0}, Lc8/Svf;->recycleIfPossible()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseFromCache(Z)V
    .locals 5
    .param p1, "released"    # Z

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/Svf;->mRecycled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Svf;->mRecycled:Z

    .line 89
    invoke-virtual {p0}, Lc8/Svf;->onChange2NotRecycled()V

    .line 91
    :cond_0
    iput-boolean p1, p0, Lc8/Svf;->mReleasedFromCache:Z

    .line 92
    const-string/jumbo v0, "ImageRecycle"

    const-string/jumbo v1, "release from cache, result=%b, isDirty=%b, refer=%d, image=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lc8/Svf;->mIsReferenceDirty:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lc8/Svf;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0}, Lc8/Svf;->recycleIfPossible()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeFromCache()V
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lc8/Svf;->mIsReferenceDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", key@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Svf;->mMemoryCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
