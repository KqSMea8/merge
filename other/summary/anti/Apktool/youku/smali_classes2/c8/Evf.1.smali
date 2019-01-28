.class public Lc8/Evf;
.super Ljava/lang/Object;
.source "HotEndLruCache.java"

# interfaces
.implements Lc8/Fvf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Fvf",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final UPGRADE_HOTEND_THRESHOLD:I = 0x2


# instance fields
.field private HOT_LIMIT_SIZE:I

.field private MAX_LIMIT_SIZE:I

.field private MAX_PRE_EVICTED_SIZE:I

.field private mColdHead:Lc8/Gvf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Gvf",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private mCurrSize:I

.field private mEvictCount:I

.field private mHitCount:I

.field private mHotHead:Lc8/Gvf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Gvf",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private mHotSize:I

.field private mLocationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lc8/Gvf",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private mMissCount:I

.field private mPreEvictedSize:I

.field private mSizeWhenLastPreEvict:I


# direct methods
.method public constructor <init>(IF)V
    .locals 1
    .param p1, "maxSize"    # I
    .param p2, "hotPercent"    # F

    .prologue
    .line 50
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0, p1, p2}, Lc8/Evf;->resize(IF)V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Evf;->mLocationMap:Ljava/util/HashMap;

    .line 53
    return-void
.end method

.method private changeNodePreEvictedState(Lc8/Gvf;ZZZ)V
    .locals 3
    .param p2, "preEvicted"    # Z
    .param p3, "normalFrom"    # Z
    .param p4, "removed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gvf",
            "<TK;TV;>;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p1, "node":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    monitor-enter p0

    .line 140
    :try_start_0
    iget-boolean v1, p1, Lc8/Gvf;->isPreEvicted:Z

    if-eq p2, v1, :cond_2

    const/4 v0, 0x1

    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 141
    iput-boolean p2, p1, Lc8/Gvf;->isPreEvicted:Z

    .line 142
    if-eqz p2, :cond_3

    .line 143
    iget v1, p0, Lc8/Evf;->mPreEvictedSize:I

    iget v2, p1, Lc8/Gvf;->size:I

    add-int/2addr v1, v2

    iput v1, p0, Lc8/Evf;->mPreEvictedSize:I

    .line 148
    :cond_0
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 150
    iget-object v1, p1, Lc8/Gvf;->key:Ljava/lang/Object;

    iget-object v2, p1, Lc8/Gvf;->value:Ljava/lang/Object;

    invoke-virtual {p0, p2, v1, v2, p4}, Lc8/Evf;->onPreEvictedStateChange(ZLjava/lang/Object;Ljava/lang/Object;Z)V

    .line 152
    :cond_1
    return-void

    .line 140
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    .restart local v0    # "changed":Z
    :cond_3
    :try_start_1
    iget v1, p0, Lc8/Evf;->mPreEvictedSize:I

    iget v2, p1, Lc8/Gvf;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Lc8/Evf;->mPreEvictedSize:I

    goto :goto_1

    .line 148
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private checkMaxSizes()V
    .locals 3

    .prologue
    .line 106
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    iget v0, p0, Lc8/Evf;->MAX_PRE_EVICTED_SIZE:I

    iget v1, p0, Lc8/Evf;->MAX_LIMIT_SIZE:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MAX_PRE_EVICTED_SIZE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/Evf;->MAX_PRE_EVICTED_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") must lower than MAX_LIMIT_SIZE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/Evf;->MAX_LIMIT_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/LNf;->checkArgument(ZLjava/lang/Object;)V

    .line 107
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeNewColdHead(Lc8/Gvf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gvf",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p1, "node":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    iget-object v0, p0, Lc8/Evf;->mColdHead:Lc8/Gvf;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lc8/Evf;->mColdHead:Lc8/Gvf;

    invoke-virtual {p1, v0}, Lc8/Gvf;->insertBefore(Lc8/Gvf;)V

    .line 269
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lc8/Evf;->resetColdHead(Lc8/Gvf;Z)Z

    .line 270
    return-void
.end method

.method private makeNewHotHead(Lc8/Gvf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gvf",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p1, "node":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    const/4 v1, 0x1

    .line 245
    iget-object v2, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    if-eqz v2, :cond_2

    .line 247
    iget-object v2, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    invoke-virtual {p1, v2}, Lc8/Gvf;->insertBefore(Lc8/Gvf;)V

    .line 251
    :goto_0
    iget-object v2, p0, Lc8/Evf;->mColdHead:Lc8/Gvf;

    iget-object v3, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    if-ne v2, v3, :cond_3

    move v0, v1

    .line 252
    .local v0, "doubleRoleOfColdHead":Z
    :goto_1
    invoke-direct {p0, p1, v1}, Lc8/Evf;->resetHotHead(Lc8/Gvf;Z)V

    .line 254
    iget v2, p0, Lc8/Evf;->mHotSize:I

    iget v3, p0, Lc8/Evf;->HOT_LIMIT_SIZE:I

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lc8/Evf;->mColdHead:Lc8/Gvf;

    if-eqz v2, :cond_1

    .line 256
    if-eqz v0, :cond_0

    iget-object v2, p0, Lc8/Evf;->mColdHead:Lc8/Gvf;

    iget-object v2, v2, Lc8/Gvf;->prev:Lc8/Gvf;

    iget-object v3, p0, Lc8/Evf;->mColdHead:Lc8/Gvf;

    if-eq v2, v3, :cond_0

    .line 257
    iget v2, p0, Lc8/Evf;->mHotSize:I

    iget-object v3, p0, Lc8/Evf;->mColdHead:Lc8/Gvf;

    iget v3, v3, Lc8/Gvf;->size:I

    sub-int/2addr v2, v3

    iput v2, p0, Lc8/Evf;->mHotSize:I

    .line 258
    iget-object v2, p0, Lc8/Evf;->mColdHead:Lc8/Gvf;

    iput-boolean v1, v2, Lc8/Gvf;->isColdNode:Z

    .line 260
    :cond_0
    iget-object v1, p0, Lc8/Evf;->mColdHead:Lc8/Gvf;

    iget-object v1, v1, Lc8/Gvf;->prev:Lc8/Gvf;

    invoke-direct {p0, v1}, Lc8/Evf;->resetColdHead(Lc8/Gvf;)Z

    .line 262
    :cond_1
    return-void

    .line 249
    .end local v0    # "doubleRoleOfColdHead":Z
    :cond_2
    iput-object p1, p1, Lc8/Gvf;->prev:Lc8/Gvf;

    iput-object p1, p1, Lc8/Gvf;->next:Lc8/Gvf;

    goto :goto_0

    .line 251
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private onAddNewNode(Lc8/Gvf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gvf",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p1, "node":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    if-eqz p1, :cond_0

    .line 127
    iget v0, p0, Lc8/Evf;->mCurrSize:I

    iget v1, p1, Lc8/Gvf;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lc8/Evf;->mCurrSize:I

    .line 129
    :cond_0
    return-void
.end method

.method private onNodeRemoved(ZLc8/Gvf;Z)V
    .locals 2
    .param p1, "replaced"    # Z
    .param p3, "normalFrom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lc8/Gvf",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p2, "oldNode":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, p3, v1}, Lc8/Evf;->changeNodePreEvictedState(Lc8/Gvf;ZZZ)V

    .line 134
    iget-object v0, p2, Lc8/Gvf;->key:Ljava/lang/Object;

    iget-object v1, p2, Lc8/Gvf;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lc8/Evf;->onNodeRemoved(ZLjava/lang/Object;Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method private onRemoveNode(Lc8/Gvf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gvf",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p1, "node":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    if-eqz p1, :cond_0

    .line 117
    iget v0, p0, Lc8/Evf;->mCurrSize:I

    iget v1, p1, Lc8/Gvf;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lc8/Evf;->mCurrSize:I

    .line 118
    iget-boolean v0, p1, Lc8/Gvf;->isColdNode:Z

    if-nez v0, :cond_0

    .line 119
    iget v0, p0, Lc8/Evf;->mHotSize:I

    iget v1, p1, Lc8/Gvf;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lc8/Evf;->mHotSize:I

    .line 122
    :cond_0
    return-void
.end method

.method private declared-synchronized preTrimToMaxSize(Z)V
    .locals 5
    .param p1, "trimmed"    # Z

    .prologue
    .line 404
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    iget v2, p0, Lc8/Evf;->mCurrSize:I

    iget v3, p0, Lc8/Evf;->mSizeWhenLastPreEvict:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v2, v3, :cond_1

    .line 421
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 408
    :cond_1
    :try_start_1
    iget-object v2, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    iget-object v0, v2, Lc8/Gvf;->prev:Lc8/Gvf;

    .line 409
    .local v0, "coldTail":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    move-object v1, v0

    .line 411
    .local v1, "iterator":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    :cond_2
    iget v2, p0, Lc8/Evf;->mPreEvictedSize:I

    iget v3, p0, Lc8/Evf;->MAX_PRE_EVICTED_SIZE:I

    if-ge v2, v3, :cond_4

    .line 412
    iget v2, v1, Lc8/Gvf;->visitCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 413
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lc8/Evf;->changeNodePreEvictedState(Lc8/Gvf;ZZZ)V

    .line 415
    :cond_3
    iget-object v1, v1, Lc8/Gvf;->prev:Lc8/Gvf;

    .line 416
    if-ne v1, v0, :cond_2

    .line 420
    :cond_4
    iget v2, p0, Lc8/Evf;->mCurrSize:I

    iput v2, p0, Lc8/Evf;->mSizeWhenLastPreEvict:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 404
    .end local v0    # "coldTail":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    .end local v1    # "iterator":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private remove(Lc8/Gvf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gvf",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p1, "node":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    const/4 v1, 0x0

    .line 157
    iget-object v0, p1, Lc8/Gvf;->next:Lc8/Gvf;

    if-ne v0, p1, :cond_1

    .line 158
    invoke-direct {p0, v1}, Lc8/Evf;->resetHotHead(Lc8/Gvf;)V

    .line 159
    invoke-direct {p0, v1}, Lc8/Evf;->resetColdHead(Lc8/Gvf;)Z

    .line 171
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lc8/Evf;->onRemoveNode(Lc8/Gvf;)V

    .line 172
    return-void

    .line 161
    :cond_1
    iget-object v0, p1, Lc8/Gvf;->next:Lc8/Gvf;

    iget-object v1, p1, Lc8/Gvf;->prev:Lc8/Gvf;

    iput-object v1, v0, Lc8/Gvf;->prev:Lc8/Gvf;

    .line 162
    iget-object v0, p1, Lc8/Gvf;->prev:Lc8/Gvf;

    iget-object v1, p1, Lc8/Gvf;->next:Lc8/Gvf;

    iput-object v1, v0, Lc8/Gvf;->next:Lc8/Gvf;

    .line 164
    iget-object v0, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    if-ne v0, p1, :cond_2

    .line 165
    iget-object v0, p1, Lc8/Gvf;->next:Lc8/Gvf;

    invoke-direct {p0, v0}, Lc8/Evf;->resetHotHead(Lc8/Gvf;)V

    .line 167
    :cond_2
    iget-object v0, p0, Lc8/Evf;->mColdHead:Lc8/Gvf;

    if-ne v0, p1, :cond_0

    .line 168
    iget-object v0, p1, Lc8/Gvf;->next:Lc8/Gvf;

    invoke-direct {p0, v0}, Lc8/Evf;->resetColdHead(Lc8/Gvf;)Z

    goto :goto_0
.end method

.method private resetColdHead(Lc8/Gvf;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gvf",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p1, "node":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Evf;->resetColdHead(Lc8/Gvf;Z)Z

    move-result v0

    return v0
.end method

.method private resetColdHead(Lc8/Gvf;Z)Z
    .locals 3
    .param p2, "isNew"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gvf",
            "<TK;TV;>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p1, "node":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    const/4 v0, 0x1

    .line 298
    iput-object p1, p0, Lc8/Evf;->mColdHead:Lc8/Gvf;

    .line 300
    if-eqz p1, :cond_1

    iget-object v1, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    if-eq v1, p1, :cond_1

    .line 302
    if-nez p2, :cond_0

    iget-boolean v1, p1, Lc8/Gvf;->isColdNode:Z

    if-nez v1, :cond_0

    .line 303
    iget v1, p0, Lc8/Evf;->mHotSize:I

    iget v2, p1, Lc8/Gvf;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Lc8/Evf;->mHotSize:I

    .line 305
    :cond_0
    iput-boolean v0, p1, Lc8/Gvf;->isColdNode:Z

    .line 308
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetHotHead(Lc8/Gvf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gvf",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p1, "node":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Evf;->resetHotHead(Lc8/Gvf;Z)V

    .line 275
    return-void
.end method

.method private resetHotHead(Lc8/Gvf;Z)V
    .locals 2
    .param p2, "isNew"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gvf",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p1, "node":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    if-eqz p1, :cond_2

    .line 282
    if-nez p2, :cond_0

    iget-boolean v0, p1, Lc8/Gvf;->isColdNode:Z

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    iget v0, p0, Lc8/Evf;->mHotSize:I

    iget v1, p1, Lc8/Gvf;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lc8/Evf;->mHotSize:I

    .line 285
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p1, Lc8/Gvf;->isColdNode:Z

    .line 287
    :cond_2
    iput-object p1, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    .line 288
    return-void
.end method

.method private declared-synchronized traverse(Lc8/Gvf;I)Ljava/lang/String;
    .locals 5
    .param p1, "startNode"    # Lc8/Gvf;
    .param p2, "maxCount"    # I

    .prologue
    .line 449
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lc8/Evf;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 450
    const-string/jumbo v3, "[NO ELEMENT]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :goto_0
    monitor-exit p0

    return-object v3

    .line 452
    :cond_0
    move-object v1, p1

    .line 453
    .local v1, "iter":Lc8/Gvf;
    const/4 v0, 0x0

    .line 454
    .local v0, "count":I
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_1
    if-eqz v1, :cond_3

    if-ge v0, p2, :cond_3

    .line 456
    if-eqz v0, :cond_1

    .line 457
    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :cond_1
    iget-object v3, v1, Lc8/Gvf;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lc8/Gvf;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, v1, Lc8/Gvf;->isColdNode:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "cold"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    iget-object v3, v1, Lc8/Gvf;->next:Lc8/Gvf;

    if-eq v3, p1, :cond_3

    .line 463
    iget-object v1, v1, Lc8/Gvf;->next:Lc8/Gvf;

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 459
    :cond_2
    const-string/jumbo v3, "hot"

    goto :goto_2

    .line 466
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 449
    .end local v0    # "count":I
    .end local v1    # "iter":Lc8/Gvf;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public board(Ljava/lang/String;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    const/4 v4, 0x3

    .line 424
    invoke-static {v4}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    const-string/jumbo v0, "%K(%K)/%K, pre-evicted:%K/%K, rate:%.1f%%, count:%d, hits:%d, misses:%d, evicts:%d"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lc8/Evf;->mCurrSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lc8/Evf;->mHotSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lc8/Evf;->MAX_LIMIT_SIZE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lc8/Evf;->mPreEvictedSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x4

    iget v3, p0, Lc8/Evf;->MAX_PRE_EVICTED_SIZE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/high16 v3, 0x42c80000    # 100.0f

    iget v4, p0, Lc8/Evf;->mHitCount:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lc8/Evf;->mHitCount:I

    iget v5, p0, Lc8/Evf;->mMissCount:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-virtual {p0}, Lc8/Evf;->count()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lc8/Evf;->mHitCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lc8/Evf;->mMissCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget v3, p0, Lc8/Evf;->mEvictCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    :cond_0
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 205
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Evf;->mLocationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/Evf;->resetHotHead(Lc8/Gvf;)V

    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/Evf;->resetColdHead(Lc8/Gvf;)Z

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lc8/Evf;->mCurrSize:I

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lc8/Evf;->mHotSize:I

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lc8/Evf;->mPreEvictedSize:I

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lc8/Evf;->mSizeWhenLastPreEvict:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Evf;->mLocationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized count()I
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Evf;->mLocationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 228
    monitor-enter p0

    .line 229
    :try_start_0
    iget-object v1, p0, Lc8/Evf;->mLocationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Gvf;

    .local v0, "node":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 230
    iget v1, v0, Lc8/Gvf;->visitCount:I

    if-gez v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, v0, Lc8/Gvf;->visitCount:I

    .line 232
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    if-eqz v0, :cond_2

    .line 235
    invoke-direct {p0, v0, v3, v2, v3}, Lc8/Evf;->changeNodePreEvictedState(Lc8/Gvf;ZZZ)V

    .line 236
    iget v1, p0, Lc8/Evf;->mHitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/Evf;->mHitCount:I

    .line 237
    iget-object v1, v0, Lc8/Gvf;->value:Ljava/lang/Object;

    .line 240
    :goto_1
    return-object v1

    .line 230
    :cond_1
    :try_start_1
    iget v1, v0, Lc8/Gvf;->visitCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "node":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 239
    .restart local v0    # "node":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    :cond_2
    iget v1, p0, Lc8/Evf;->mMissCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/Evf;->mMissCount:I

    .line 240
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final declared-synchronized getColdEndCount()I
    .locals 3

    .prologue
    .line 496
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    monitor-enter p0

    const/4 v1, 0x0

    .line 497
    .local v1, "total":I
    :try_start_0
    iget-object v0, p0, Lc8/Evf;->mColdHead:Lc8/Gvf;

    .line 498
    .local v0, "iter":Lc8/Gvf;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    if-eq v0, v2, :cond_0

    .line 499
    add-int/lit8 v1, v1, 0x1

    .line 500
    iget-object v0, v0, Lc8/Gvf;->next:Lc8/Gvf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 502
    :cond_0
    monitor-exit p0

    return v1

    .line 496
    .end local v0    # "iter":Lc8/Gvf;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final getHotEndCount()I
    .locals 2

    .prologue
    .line 506
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    invoke-virtual {p0}, Lc8/Evf;->count()I

    move-result v0

    invoke-virtual {p0}, Lc8/Evf;->getColdEndCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getSize(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized hotPercent()F
    .locals 2

    .prologue
    .line 102
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lc8/Evf;->HOT_LIMIT_SIZE:I

    int-to-float v0, v0

    iget v1, p0, Lc8/Evf;->MAX_LIMIT_SIZE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v1, v1

    div-float/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized maxPreEvictedSize()I
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lc8/Evf;->MAX_PRE_EVICTED_SIZE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lc8/Evf;->MAX_LIMIT_SIZE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onNodeRemoved(ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "replaced"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method protected onPreEvictedStateChange(ZLjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "preEvicted"    # Z
    .param p4, "removed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;Z)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public put(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p2, "newKey":Ljava/lang/Object;, "TK;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 325
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v4

    .line 328
    :cond_1
    new-instance v1, Lc8/Gvf;

    invoke-virtual {p0, p3}, Lc8/Evf;->getSize(Ljava/lang/Object;)I

    move-result v6

    invoke-direct {v1, p2, p3, v6}, Lc8/Gvf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 333
    .local v1, "newNode":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    const/16 v6, 0x22

    if-ne p1, v6, :cond_2

    .line 334
    const/4 v6, 0x2

    iput v6, v1, Lc8/Gvf;->visitCount:I

    .line 336
    :cond_2
    iget v6, v1, Lc8/Gvf;->size:I

    iget v7, p0, Lc8/Evf;->MAX_LIMIT_SIZE:I

    if-gt v6, v7, :cond_0

    .line 340
    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v4, p0, Lc8/Evf;->mLocationMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Gvf;

    .local v2, "oldNode":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    if-eqz v2, :cond_3

    .line 343
    iget v0, v2, Lc8/Gvf;->visitCount:I

    .line 344
    .local v0, "lastVisitCount":I
    invoke-direct {p0, v2}, Lc8/Evf;->remove(Lc8/Gvf;)V

    .line 345
    add-int/lit8 v4, v0, 0x1

    iput v4, v1, Lc8/Gvf;->visitCount:I

    .line 347
    .end local v0    # "lastVisitCount":I
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    if-eqz v2, :cond_4

    .line 350
    invoke-direct {p0, v5, v2, v5}, Lc8/Evf;->onNodeRemoved(ZLc8/Gvf;Z)V

    .line 353
    :cond_4
    iget v4, p0, Lc8/Evf;->MAX_LIMIT_SIZE:I

    iget v6, v1, Lc8/Gvf;->size:I

    sub-int/2addr v4, v6

    invoke-virtual {p0, v4}, Lc8/Evf;->trimTo(I)Z

    move-result v3

    .line 354
    .local v3, "trimmed":Z
    monitor-enter p0

    .line 356
    :try_start_1
    iget-object v4, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lc8/Evf;->mColdHead:Lc8/Gvf;

    if-eqz v4, :cond_5

    if-nez v3, :cond_7

    .line 358
    :cond_5
    invoke-direct {p0, v1}, Lc8/Evf;->makeNewHotHead(Lc8/Gvf;)V

    .line 359
    invoke-direct {p0, v1}, Lc8/Evf;->onAddNewNode(Lc8/Gvf;)V

    .line 360
    iget-object v4, p0, Lc8/Evf;->mColdHead:Lc8/Gvf;

    if-nez v4, :cond_6

    iget v4, p0, Lc8/Evf;->mCurrSize:I

    iget v6, p0, Lc8/Evf;->HOT_LIMIT_SIZE:I

    if-le v4, v6, :cond_6

    .line 361
    iget-object v4, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    iget-object v4, v4, Lc8/Gvf;->prev:Lc8/Gvf;

    invoke-direct {p0, v4}, Lc8/Evf;->resetColdHead(Lc8/Gvf;)Z

    .line 368
    :cond_6
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 369
    invoke-direct {p0, v3}, Lc8/Evf;->preTrimToMaxSize(Z)V

    move v4, v5

    .line 370
    goto :goto_0

    .line 347
    .end local v2    # "oldNode":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    .end local v3    # "trimmed":Z
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 365
    .restart local v2    # "oldNode":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    .restart local v3    # "trimmed":Z
    :cond_7
    :try_start_3
    invoke-direct {p0, v1}, Lc8/Evf;->makeNewColdHead(Lc8/Gvf;)V

    .line 366
    invoke-direct {p0, v1}, Lc8/Evf;->onAddNewNode(Lc8/Gvf;)V

    goto :goto_1

    .line 368
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p1, "newKey":Ljava/lang/Object;, "TK;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1, p2}, Lc8/Evf;->put(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc8/Evf;->remove(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected remove(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .param p2, "normalEvicted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TV;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v1, p0, Lc8/Evf;->mLocationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Gvf;

    .local v0, "node":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 179
    const/4 v1, -0x1

    iput v1, v0, Lc8/Gvf;->visitCount:I

    .line 181
    iget-object v1, v0, Lc8/Gvf;->prev:Lc8/Gvf;

    if-eqz v1, :cond_0

    .line 182
    invoke-direct {p0, v0}, Lc8/Evf;->remove(Lc8/Gvf;)V

    .line 185
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    if-eqz v0, :cond_1

    .line 187
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2}, Lc8/Evf;->onNodeRemoved(ZLc8/Gvf;Z)V

    .line 188
    iget-object v1, v0, Lc8/Gvf;->value:Ljava/lang/Object;

    .line 190
    :goto_0
    return-object v1

    .line 185
    .end local v0    # "node":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 190
    .restart local v0    # "node":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized report()Ljava/lang/String;
    .locals 5

    .prologue
    .line 433
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "[HotEndLruCache] %d/%d, hotSize:%d, preEvicted:%d, count:%d, hits:%d, misses:%d, evicts:%d"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lc8/Evf;->mCurrSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lc8/Evf;->MAX_LIMIT_SIZE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lc8/Evf;->mHotSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lc8/Evf;->mPreEvictedSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Lc8/Evf;->count()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lc8/Evf;->mHitCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lc8/Evf;->mMissCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lc8/Evf;->mEvictCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resize(IF)V
    .locals 2
    .param p1, "maxSize"    # I
    .param p2, "hotPercent"    # F

    .prologue
    .line 57
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "HotEndLruCache size parameters error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    monitor-enter p0

    .line 61
    :try_start_0
    iput p1, p0, Lc8/Evf;->MAX_LIMIT_SIZE:I

    .line 62
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lc8/Evf;->HOT_LIMIT_SIZE:I

    .line 63
    iget v0, p0, Lc8/Evf;->HOT_LIMIT_SIZE:I

    if-gtz v0, :cond_3

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lc8/Evf;->HOT_LIMIT_SIZE:I

    .line 68
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-direct {p0}, Lc8/Evf;->checkMaxSizes()V

    .line 70
    iget v0, p0, Lc8/Evf;->MAX_LIMIT_SIZE:I

    invoke-virtual {p0, v0}, Lc8/Evf;->trimTo(I)Z

    .line 71
    return-void

    .line 65
    :cond_3
    :try_start_1
    iget v0, p0, Lc8/Evf;->HOT_LIMIT_SIZE:I

    sub-int v0, p1, v0

    if-gtz v0, :cond_2

    .line 66
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lc8/Evf;->HOT_LIMIT_SIZE:I

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resize(IFI)V
    .locals 1
    .param p1, "maxSize"    # I
    .param p2, "hotPercent"    # F
    .param p3, "preEvictedSize"    # I

    .prologue
    .line 74
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    monitor-enter p0

    .line 75
    :try_start_0
    iput p3, p0, Lc8/Evf;->MAX_PRE_EVICTED_SIZE:I

    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {p0, p1, p2}, Lc8/Evf;->resize(IF)V

    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc8/Evf;->preTrimToMaxSize(Z)V

    .line 79
    return-void

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setPreEvictedMaxSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 110
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lc8/Evf;->MAX_PRE_EVICTED_SIZE:I

    .line 111
    invoke-direct {p0}, Lc8/Evf;->checkMaxSizes()V

    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc8/Evf;->preTrimToMaxSize(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized size()I
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lc8/Evf;->mCurrSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final traverse(I)Ljava/lang/String;
    .locals 1
    .param p1, "maxCount"    # I

    .prologue
    .line 437
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    invoke-virtual {p0, p1}, Lc8/Evf;->traverseFromHotHead(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized traverseCount()I
    .locals 4

    .prologue
    .line 483
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    .line 484
    .local v1, "iter":Lc8/Gvf;
    const/4 v0, 0x0

    .line 485
    .local v0, "count":I
    :goto_0
    if-eqz v1, :cond_0

    .line 486
    add-int/lit8 v0, v0, 0x1

    .line 487
    iget-object v2, v1, Lc8/Gvf;->next:Lc8/Gvf;

    iget-object v3, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    if-eq v2, v3, :cond_0

    .line 490
    iget-object v1, v1, Lc8/Gvf;->next:Lc8/Gvf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 492
    :cond_0
    monitor-exit p0

    return v0

    .line 483
    .end local v0    # "count":I
    .end local v1    # "iter":Lc8/Gvf;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final traverseFromColdHead(I)Ljava/lang/String;
    .locals 1
    .param p1, "maxCount"    # I

    .prologue
    .line 445
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    iget-object v0, p0, Lc8/Evf;->mColdHead:Lc8/Gvf;

    invoke-direct {p0, v0, p1}, Lc8/Evf;->traverse(Lc8/Gvf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final traverseFromHotHead(I)Ljava/lang/String;
    .locals 1
    .param p1, "maxCount"    # I

    .prologue
    .line 441
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    iget-object v0, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    invoke-direct {p0, v0, p1}, Lc8/Evf;->traverse(Lc8/Gvf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized traverseSize()I
    .locals 4

    .prologue
    .line 470
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    .line 471
    .local v0, "iter":Lc8/Gvf;
    const/4 v1, 0x0

    .line 472
    .local v1, "size":I
    :goto_0
    if-eqz v0, :cond_0

    .line 473
    iget v2, v0, Lc8/Gvf;->size:I

    add-int/2addr v1, v2

    .line 474
    iget-object v2, v0, Lc8/Gvf;->next:Lc8/Gvf;

    iget-object v3, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    if-eq v2, v3, :cond_0

    .line 477
    iget-object v0, v0, Lc8/Gvf;->next:Lc8/Gvf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 479
    :cond_0
    monitor-exit p0

    return v1

    .line 470
    .end local v0    # "iter":Lc8/Gvf;
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final trimTo(I)Z
    .locals 5
    .param p1, "maxSize"    # I

    .prologue
    .local p0, "this":Lc8/Evf;, "Lcom/taobao/phenix/cache/HotEndLruCache<TK;TV;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 374
    const/4 v0, 0x0

    .line 376
    .local v0, "removed":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    :goto_0
    monitor-enter p0

    .line 377
    :try_start_0
    iget v3, p0, Lc8/Evf;->mCurrSize:I

    if-gt v3, p1, :cond_1

    .line 378
    if-eqz v0, :cond_0

    :goto_1
    monitor-exit p0

    return v1

    :cond_0
    move v1, v2

    goto :goto_1

    .line 381
    :cond_1
    iget-object v3, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    iget-object v3, v3, Lc8/Gvf;->prev:Lc8/Gvf;

    iget v3, v3, Lc8/Gvf;->visitCount:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 385
    iget-object v3, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    iget-object v3, v3, Lc8/Gvf;->prev:Lc8/Gvf;

    const/4 v4, 0x1

    iput v4, v3, Lc8/Gvf;->visitCount:I

    .line 386
    iget-object v3, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    iget-object v3, v3, Lc8/Gvf;->prev:Lc8/Gvf;

    invoke-direct {p0, v3}, Lc8/Evf;->resetHotHead(Lc8/Gvf;)V

    .line 391
    :goto_2
    iget v3, p0, Lc8/Evf;->HOT_LIMIT_SIZE:I

    if-lez v3, :cond_1

    iget v3, p0, Lc8/Evf;->mHotSize:I

    iget v4, p0, Lc8/Evf;->HOT_LIMIT_SIZE:I

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lc8/Evf;->mColdHead:Lc8/Gvf;

    iget-object v3, v3, Lc8/Gvf;->prev:Lc8/Gvf;

    invoke-direct {p0, v3}, Lc8/Evf;->resetColdHead(Lc8/Gvf;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 393
    :cond_2
    iget-object v3, p0, Lc8/Evf;->mHotHead:Lc8/Gvf;

    iget-object v0, v3, Lc8/Gvf;->prev:Lc8/Gvf;

    .line 394
    iget-object v3, p0, Lc8/Evf;->mLocationMap:Ljava/util/HashMap;

    iget-object v4, v0, Lc8/Gvf;->key:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-direct {p0, v0}, Lc8/Evf;->remove(Lc8/Gvf;)V

    .line 396
    iget v3, p0, Lc8/Evf;->mEvictCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lc8/Evf;->mEvictCount:I

    .line 397
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    invoke-direct {p0, v2, v0, v1}, Lc8/Evf;->onNodeRemoved(ZLc8/Gvf;Z)V

    goto :goto_0

    .line 397
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
