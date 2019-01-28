.class public Lc8/Cvf;
.super Ljava/lang/Object;
.source "LinkedBytesPool.java"

# interfaces
.implements Lc8/JNf;


# static fields
.field protected static final BUF_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private mBuffersByLastUse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private mBuffersBySize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private mCurrentSize:I

.field private mEvicts:I

.field private mHits:I

.field private mMisses:I

.field private mPuts:I

.field private mSizeLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lc8/Bvf;

    invoke-direct {v0}, Lc8/Bvf;-><init>()V

    sput-object v0, Lc8/Cvf;->BUF_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "sizeLimit"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/Cvf;->mBuffersByLastUse:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/Cvf;->mBuffersBySize:Ljava/util/List;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lc8/Cvf;->mCurrentSize:I

    .line 44
    iput p1, p0, Lc8/Cvf;->mSizeLimit:I

    .line 45
    return-void
.end method

.method private report()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 140
    invoke-static {v5}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string/jumbo v0, "BytesPool"

    const-string/jumbo v1, "%d/%d , puts:%d, misses:%d, hits:%d, evicts:%d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lc8/Cvf;->mCurrentSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lc8/Cvf;->mSizeLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lc8/Cvf;->mPuts:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lc8/Cvf;->mMisses:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x4

    iget v4, p0, Lc8/Cvf;->mHits:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lc8/Cvf;->mEvicts:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_0
    return-void
.end method

.method private declared-synchronized trim(I)V
    .locals 3
    .param p1, "sizeLimit"    # I

    .prologue
    .line 131
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v1, p0, Lc8/Cvf;->mCurrentSize:I

    if-le v1, p1, :cond_0

    .line 132
    iget-object v1, p0, Lc8/Cvf;->mBuffersByLastUse:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 133
    .local v0, "buf":[B
    iget-object v1, p0, Lc8/Cvf;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    iget v1, p0, Lc8/Cvf;->mCurrentSize:I

    array-length v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lc8/Cvf;->mCurrentSize:I

    .line 135
    iget v1, p0, Lc8/Cvf;->mEvicts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/Cvf;->mEvicts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    .end local v0    # "buf":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 137
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/Cvf;->trim(I)V

    .line 125
    return-void
.end method

.method public declared-synchronized offer(I)[B
    .locals 7
    .param p1, "minLength"    # I

    .prologue
    .line 57
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lc8/Cvf;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 58
    iget-object v2, p0, Lc8/Cvf;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 59
    .local v0, "buf":[B
    array-length v2, v0

    if-lt v2, p1, :cond_0

    .line 60
    iget v2, p0, Lc8/Cvf;->mCurrentSize:I

    array-length v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lc8/Cvf;->mCurrentSize:I

    .line 61
    iget-object v2, p0, Lc8/Cvf;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 62
    iget-object v2, p0, Lc8/Cvf;->mBuffersByLastUse:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    iget v2, p0, Lc8/Cvf;->mHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc8/Cvf;->mHits:I

    .line 64
    const-string/jumbo v2, "BytesPool"

    const-string/jumbo v3, "success get buffer from pool, request=%d, result=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0}, Lc8/Cvf;->report()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v0    # "buf":[B
    :goto_1
    monitor-exit p0

    return-object v0

    .line 57
    .restart local v0    # "buf":[B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "buf":[B
    :cond_1
    :try_start_1
    iget v2, p0, Lc8/Cvf;->mMisses:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc8/Cvf;->mMisses:I

    .line 70
    const-string/jumbo v2, "BytesPool"

    const-string/jumbo v3, "failed get buffer from pool, request=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0}, Lc8/Cvf;->report()V

    .line 72
    new-array v0, p1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 57
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized offerMaxAvailable()[B
    .locals 6

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/Cvf;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 102
    iget-object v1, p0, Lc8/Cvf;->mBuffersBySize:Ljava/util/List;

    iget-object v2, p0, Lc8/Cvf;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 103
    .local v0, "buffer":[B
    iget v1, p0, Lc8/Cvf;->mCurrentSize:I

    array-length v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lc8/Cvf;->mCurrentSize:I

    .line 104
    iget-object v1, p0, Lc8/Cvf;->mBuffersByLastUse:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 105
    iget v1, p0, Lc8/Cvf;->mHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/Cvf;->mHits:I

    .line 106
    const-string/jumbo v1, "BytesPool"

    const-string/jumbo v2, "offer available max successfully from pool, result=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-direct {p0}, Lc8/Cvf;->report()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    monitor-exit p0

    return-object v0

    .line 109
    .end local v0    # "buffer":[B
    :cond_0
    :try_start_1
    iget v1, p0, Lc8/Cvf;->mMisses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/Cvf;->mMisses:I

    .line 110
    const-string/jumbo v1, "BytesPool"

    const-string/jumbo v2, "offer available max failed from pool, the linked list is empty"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-direct {p0}, Lc8/Cvf;->report()V

    .line 112
    const v1, 0x8000

    new-array v0, v1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "buffer":[B
    goto :goto_0

    .line 101
    .end local v0    # "buffer":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized release([B)V
    .locals 6
    .param p1, "buf"    # [B

    .prologue
    .line 83
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v1, p1

    iget v2, p0, Lc8/Cvf;->mSizeLimit:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lc8/Cvf;->mBuffersByLastUse:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 86
    :cond_1
    :try_start_1
    iget v1, p0, Lc8/Cvf;->mPuts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/Cvf;->mPuts:I

    .line 87
    iget-object v1, p0, Lc8/Cvf;->mBuffersByLastUse:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lc8/Cvf;->mBuffersBySize:Ljava/util/List;

    sget-object v2, Lc8/Cvf;->BUF_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 89
    .local v0, "pos":I
    if-gez v0, :cond_2

    .line 90
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 92
    :cond_2
    iget-object v1, p0, Lc8/Cvf;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 93
    iget v1, p0, Lc8/Cvf;->mCurrentSize:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lc8/Cvf;->mCurrentSize:I

    .line 94
    iget v1, p0, Lc8/Cvf;->mSizeLimit:I

    invoke-direct {p0, v1}, Lc8/Cvf;->trim(I)V

    .line 95
    const-string/jumbo v1, "BytesPool"

    const-string/jumbo v2, "release a buffer into pool, length=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    .end local v0    # "pos":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized resize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lc8/Cvf;->mSizeLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
