.class public Lc8/wwf;
.super Ljava/lang/Object;
.source "SimpleDiskCacheSupplier.java"

# interfaces
.implements Lc8/Mvf;


# instance fields
.field private final SUPPORT_PRIORITIES:[I

.field private mPriorityMap:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lc8/Jvf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x11

    aput v2, v0, v1

    iput-object v0, p0, Lc8/wwf;->SUPPORT_PRIORITIES:[I

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/wwf;->mPriorityMap:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized ensureDiskCache(I)Lc8/Jvf;
    .locals 3
    .param p1, "priority"    # I

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/wwf;->mPriorityMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Jvf;

    .line 30
    .local v0, "ret":Lc8/Jvf;
    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lc8/vwf;

    .end local v0    # "ret":Lc8/Jvf;
    invoke-direct {v0, p1}, Lc8/vwf;-><init>(I)V

    .line 32
    .restart local v0    # "ret":Lc8/Jvf;
    iget-object v1, p0, Lc8/wwf;->mPriorityMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    monitor-exit p0

    return-object v0

    .line 29
    .end local v0    # "ret":Lc8/Jvf;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized get(I)Lc8/Jvf;
    .locals 4
    .param p1, "priority"    # I

    .prologue
    .line 20
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc8/wwf;->SUPPORT_PRIORITIES:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v0, v2, v1

    .line 21
    .local v0, "iterator":I
    if-ne v0, p1, :cond_0

    .line 22
    invoke-direct {p0, p1}, Lc8/wwf;->ensureDiskCache(I)Lc8/Jvf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 25
    .end local v0    # "iterator":I
    :goto_1
    monitor-exit p0

    return-object v1

    .line 20
    .restart local v0    # "iterator":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "iterator":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 20
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAll()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lc8/Jvf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc8/wwf;->SUPPORT_PRIORITIES:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 40
    .local v0, "priority":I
    invoke-direct {p0, v0}, Lc8/wwf;->ensureDiskCache(I)Lc8/Jvf;

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "priority":I
    :cond_0
    iget-object v1, p0, Lc8/wwf;->mPriorityMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
