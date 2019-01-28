.class public Lc8/qvf;
.super Ljava/lang/Object;
.source "BitmapPoolBuilder.java"

# interfaces
.implements Lc8/rvf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/rvf",
        "<",
        "Lc8/lvf;",
        ">;"
    }
.end annotation


# static fields
.field private static final POOL_DIVISION_IN_MEMCACHE:I = 0x4


# instance fields
.field private mBitmapPool:Lc8/lvf;

.field private mHaveBuilt:Z

.field private mMaxSize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized build()Lc8/lvf;
    .locals 4

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/nuf;->isAshmemSupported()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const/4 v2, 0x0

    .line 54
    :goto_0
    monitor-exit p0

    return-object v2

    .line 38
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lc8/qvf;->mHaveBuilt:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/qvf;->mBitmapPool:Lc8/lvf;

    if-eqz v2, :cond_1

    .line 39
    iget-object v2, p0, Lc8/qvf;->mBitmapPool:Lc8/lvf;

    goto :goto_0

    .line 42
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/qvf;->mHaveBuilt:Z

    .line 44
    iget-object v2, p0, Lc8/qvf;->mBitmapPool:Lc8/lvf;

    if-nez v2, :cond_4

    .line 45
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ixf;->memCacheBuilder()Lc8/zvf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/zvf;->memoryCache()Lc8/Fvf;

    move-result-object v1

    .line 47
    .local v1, "cacheAndPool":Lc8/Fvf;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    instance-of v2, v1, Lc8/lvf;

    if-eqz v2, :cond_2

    .line 48
    move-object v0, v1

    check-cast v0, Lc8/lvf;

    move-object v2, v0

    iput-object v2, p0, Lc8/qvf;->mBitmapPool:Lc8/lvf;

    .line 49
    iget-object v3, p0, Lc8/qvf;->mBitmapPool:Lc8/lvf;

    iget-object v2, p0, Lc8/qvf;->mMaxSize:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lc8/qvf;->mMaxSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    invoke-interface {v3, v2}, Lc8/lvf;->maxPoolSize(I)V

    .line 54
    .end local v1    # "cacheAndPool":Lc8/Fvf;
    :cond_2
    :goto_2
    iget-object v2, p0, Lc8/qvf;->mBitmapPool:Lc8/lvf;

    goto :goto_0

    .line 49
    .restart local v1    # "cacheAndPool":Lc8/Fvf;
    :cond_3
    invoke-interface {v1}, Lc8/Fvf;->maxSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 51
    .end local v1    # "cacheAndPool":Lc8/Fvf;
    :cond_4
    iget-object v2, p0, Lc8/qvf;->mMaxSize:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 52
    iget-object v2, p0, Lc8/qvf;->mBitmapPool:Lc8/lvf;

    iget-object v3, p0, Lc8/qvf;->mMaxSize:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lc8/lvf;->maxPoolSize(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 34
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lc8/qvf;->build()Lc8/lvf;

    move-result-object v0

    return-object v0
.end method

.method public maxSize(Ljava/lang/Integer;)Lc8/qvf;
    .locals 2
    .param p1, "maxSize"    # Ljava/lang/Integer;

    .prologue
    .line 26
    iget-boolean v0, p0, Lc8/qvf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "BitmapPoolBuilder has been built, not allow maxSize() now"

    invoke-static {v0, v1}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 27
    iput-object p1, p0, Lc8/qvf;->mMaxSize:Ljava/lang/Integer;

    .line 28
    return-object p0

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public with(Lc8/lvf;)Lc8/qvf;
    .locals 2
    .param p1, "pool"    # Lc8/lvf;

    .prologue
    .line 20
    iget-boolean v0, p0, Lc8/qvf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "BitmapPoolBuilder has been built, not allow with() now"

    invoke-static {v0, v1}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 21
    iput-object p1, p0, Lc8/qvf;->mBitmapPool:Lc8/lvf;

    .line 22
    return-object p0

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic with(Ljava/lang/Object;)Lc8/rvf;
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lc8/lvf;

    invoke-virtual {p0, p1}, Lc8/qvf;->with(Lc8/lvf;)Lc8/qvf;

    move-result-object v0

    return-object v0
.end method
