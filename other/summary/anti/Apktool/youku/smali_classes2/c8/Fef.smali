.class public Lc8/Fef;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Lc8/Eef;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Hef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Eef",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mPool:[Ljava/lang/Object;

.field private mPoolSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxPoolSize"    # I

    .prologue
    .line 78
    .local p0, "this":Lc8/Fef;, "Lcom/taobao/android/utils/pools/Pools$SimplePool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-gtz p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The max pool size must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lc8/Fef;->mPool:[Ljava/lang/Object;

    .line 83
    return-void
.end method

.method private isInPool(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lc8/Fef;, "Lcom/taobao/android/utils/pools/Pools$SimplePool<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lc8/Fef;->mPoolSize:I

    if-ge v0, v1, :cond_1

    .line 122
    iget-object v1, p0, Lc8/Fef;->mPool:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 123
    const/4 v1, 0x1

    .line 126
    :goto_1
    return v1

    .line 121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Fef;, "Lcom/taobao/android/utils/pools/Pools$SimplePool<TT;>;"
    const/4 v2, 0x0

    .line 88
    iget v3, p0, Lc8/Fef;->mPoolSize:I

    if-lez v3, :cond_0

    .line 89
    iget v3, p0, Lc8/Fef;->mPoolSize:I

    add-int/lit8 v1, v3, -0x1

    .line 90
    .local v1, "lastPooledIndex":I
    iget-object v3, p0, Lc8/Fef;->mPool:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 91
    .local v0, "instance":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lc8/Fef;->mPool:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 92
    iget v2, p0, Lc8/Fef;->mPoolSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lc8/Fef;->mPoolSize:I

    .line 95
    .end local v0    # "instance":Ljava/lang/Object;, "TT;"
    .end local v1    # "lastPooledIndex":I
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lc8/Fef;, "Lcom/taobao/android/utils/pools/Pools$SimplePool<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lc8/Fef;->isInPool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already in the pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget v0, p0, Lc8/Fef;->mPoolSize:I

    iget-object v1, p0, Lc8/Fef;->mPool:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 104
    iget-object v0, p0, Lc8/Fef;->mPool:[Ljava/lang/Object;

    iget v1, p0, Lc8/Fef;->mPoolSize:I

    aput-object p1, v0, v1

    .line 105
    iget v0, p0, Lc8/Fef;->mPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/Fef;->mPoolSize:I

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 113
    .local p0, "this":Lc8/Fef;, "Lcom/taobao/android/utils/pools/Pools$SimplePool<TT;>;"
    iget-object v2, p0, Lc8/Fef;->mPool:[Ljava/lang/Object;

    array-length v1, v2

    .line 114
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 115
    iget-object v2, p0, Lc8/Fef;->mPool:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lc8/Fef;->mPoolSize:I

    .line 118
    return-void
.end method
