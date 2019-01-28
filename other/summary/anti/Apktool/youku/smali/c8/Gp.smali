.class public Lc8/Gp;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"

# interfaces
.implements Lc8/eq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Jp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/eq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mFirstRequiredTileStart:I

.field private mGeneration:I

.field private mItemCount:I

.field private mLastRequiredTileStart:I

.field final mLoadedTiles:Landroid/util/SparseBooleanArray;

.field private mRecycledRoot:Lc8/hq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/hq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/Jp;


# direct methods
.method constructor <init>(Lc8/Jp;)V
    .locals 1
    .param p1, "this$0"    # Lc8/Jp;

    .prologue
    .line 290
    .local p0, "this":Lc8/Gp;, "Landroid/support/v7/util/AsyncListUtil$2;"
    iput-object p1, p0, Lc8/Gp;->this$0:Lc8/Jp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lc8/Gp;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private acquireTile()Lc8/hq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/hq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, "this":Lc8/Gp;, "Landroid/support/v7/util/AsyncListUtil$2;"
    iget-object v1, p0, Lc8/Gp;->mRecycledRoot:Lc8/hq;

    if-eqz v1, :cond_0

    .line 389
    iget-object v0, p0, Lc8/Gp;->mRecycledRoot:Lc8/hq;

    .line 390
    .local v0, "result":Lc8/hq;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    iget-object v1, p0, Lc8/Gp;->mRecycledRoot:Lc8/hq;

    iget-object v1, v1, Lc8/hq;->mNext:Lc8/hq;

    iput-object v1, p0, Lc8/Gp;->mRecycledRoot:Lc8/hq;

    .line 393
    .end local v0    # "result":Lc8/hq;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/hq;

    iget-object v1, p0, Lc8/Gp;->this$0:Lc8/Jp;

    iget-object v1, v1, Lc8/Jp;->mTClass:Ljava/lang/Class;

    iget-object v2, p0, Lc8/Gp;->this$0:Lc8/Jp;

    iget v2, v2, Lc8/Jp;->mTileSize:I

    invoke-direct {v0, v1, v2}, Lc8/hq;-><init>(Ljava/lang/Class;I)V

    goto :goto_0
.end method

.method private addTile(Lc8/hq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p0, "this":Lc8/Gp;, "Landroid/support/v7/util/AsyncListUtil$2;"
    .local p1, "tile":Lc8/hq;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    iget-object v0, p0, Lc8/Gp;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lc8/hq;->mStartPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 402
    iget-object v0, p0, Lc8/Gp;->this$0:Lc8/Jp;

    iget-object v0, v0, Lc8/Jp;->mMainThreadProxy:Lc8/fq;

    iget v1, p0, Lc8/Gp;->mGeneration:I

    invoke-interface {v0, v1, p1}, Lc8/fq;->addTile(ILc8/hq;)V

    .line 406
    return-void
.end method

.method private flushTileCache(I)V
    .locals 7
    .param p1, "scrollHint"    # I

    .prologue
    .line 417
    .local p0, "this":Lc8/Gp;, "Landroid/support/v7/util/AsyncListUtil$2;"
    iget-object v5, p0, Lc8/Gp;->this$0:Lc8/Jp;

    iget-object v5, v5, Lc8/Jp;->mDataCallback:Lc8/Hp;

    invoke-virtual {v5}, Lc8/Hp;->getMaxCachedTiles()I

    move-result v0

    .line 418
    .local v0, "cacheSizeLimit":I
    :goto_0
    iget-object v5, p0, Lc8/Gp;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-lt v5, v0, :cond_3

    .line 419
    iget-object v5, p0, Lc8/Gp;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 420
    .local v2, "firstLoadedTileStart":I
    iget-object v5, p0, Lc8/Gp;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    iget-object v6, p0, Lc8/Gp;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 421
    .local v3, "lastLoadedTileStart":I
    iget v5, p0, Lc8/Gp;->mFirstRequiredTileStart:I

    sub-int v4, v5, v2

    .line 422
    .local v4, "startMargin":I
    iget v5, p0, Lc8/Gp;->mLastRequiredTileStart:I

    sub-int v1, v3, v5

    .line 423
    .local v1, "endMargin":I
    if-lez v4, :cond_1

    if-ge v4, v1, :cond_0

    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    .line 425
    :cond_0
    invoke-direct {p0, v2}, Lc8/Gp;->removeTile(I)V

    goto :goto_0

    .line 426
    :cond_1
    if-lez v1, :cond_3

    if-lt v4, v1, :cond_2

    const/4 v5, 0x1

    if-ne p1, v5, :cond_3

    .line 428
    :cond_2
    invoke-direct {p0, v3}, Lc8/Gp;->removeTile(I)V

    goto :goto_0

    .line 434
    .end local v1    # "endMargin":I
    .end local v2    # "firstLoadedTileStart":I
    .end local v3    # "lastLoadedTileStart":I
    .end local v4    # "startMargin":I
    :cond_3
    return-void
.end method

.method private getTileStart(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 346
    .local p0, "this":Lc8/Gp;, "Landroid/support/v7/util/AsyncListUtil$2;"
    iget-object v0, p0, Lc8/Gp;->this$0:Lc8/Jp;

    iget v0, v0, Lc8/Jp;->mTileSize:I

    rem-int v0, p1, v0

    sub-int v0, p1, v0

    return v0
.end method

.method private isTileLoaded(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 397
    .local p0, "this":Lc8/Gp;, "Landroid/support/v7/util/AsyncListUtil$2;"
    iget-object v0, p0, Lc8/Gp;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 437
    .local p0, "this":Lc8/Gp;, "Landroid/support/v7/util/AsyncListUtil$2;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[BKGR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    return-void
.end method

.method private removeTile(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 409
    .local p0, "this":Lc8/Gp;, "Landroid/support/v7/util/AsyncListUtil$2;"
    iget-object v0, p0, Lc8/Gp;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 410
    iget-object v0, p0, Lc8/Gp;->this$0:Lc8/Jp;

    iget-object v0, v0, Lc8/Jp;->mMainThreadProxy:Lc8/fq;

    iget v1, p0, Lc8/Gp;->mGeneration:I

    invoke-interface {v0, v1, p1}, Lc8/fq;->removeTile(II)V

    .line 414
    return-void
.end method

.method private requestTiles(IIIZ)V
    .locals 3
    .param p1, "firstTileStart"    # I
    .param p2, "lastTileStart"    # I
    .param p3, "scrollHint"    # I
    .param p4, "backwards"    # Z

    .prologue
    .line 351
    .local p0, "this":Lc8/Gp;, "Landroid/support/v7/util/AsyncListUtil$2;"
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 352
    if-eqz p4, :cond_0

    add-int v2, p2, p1

    sub-int v1, v2, v0

    .line 356
    .local v1, "tileStart":I
    :goto_1
    iget-object v2, p0, Lc8/Gp;->this$0:Lc8/Jp;

    iget-object v2, v2, Lc8/Jp;->mBackgroundProxy:Lc8/eq;

    invoke-interface {v2, v1, p3}, Lc8/eq;->loadTile(II)V

    .line 351
    iget-object v2, p0, Lc8/Gp;->this$0:Lc8/Jp;

    iget v2, v2, Lc8/Jp;->mTileSize:I

    add-int/2addr v0, v2

    goto :goto_0

    .end local v1    # "tileStart":I
    :cond_0
    move v1, v0

    .line 352
    goto :goto_1

    .line 358
    :cond_1
    return-void
.end method


# virtual methods
.method public loadTile(II)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "scrollHint"    # I

    .prologue
    .line 362
    .local p0, "this":Lc8/Gp;, "Landroid/support/v7/util/AsyncListUtil$2;"
    invoke-direct {p0, p1}, Lc8/Gp;->isTileLoaded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-direct {p0}, Lc8/Gp;->acquireTile()Lc8/hq;

    move-result-object v0

    .line 369
    .local v0, "tile":Lc8/hq;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    iput p1, v0, Lc8/hq;->mStartPosition:I

    .line 370
    iget-object v1, p0, Lc8/Gp;->this$0:Lc8/Jp;

    iget v1, v1, Lc8/Jp;->mTileSize:I

    iget v2, p0, Lc8/Gp;->mItemCount:I

    iget v3, v0, Lc8/hq;->mStartPosition:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lc8/hq;->mItemCount:I

    .line 371
    iget-object v1, p0, Lc8/Gp;->this$0:Lc8/Jp;

    iget-object v1, v1, Lc8/Jp;->mDataCallback:Lc8/Hp;

    iget-object v2, v0, Lc8/hq;->mItems:[Ljava/lang/Object;

    iget v3, v0, Lc8/hq;->mStartPosition:I

    iget v4, v0, Lc8/hq;->mItemCount:I

    invoke-virtual {v1, v2, v3, v4}, Lc8/Hp;->fillData([Ljava/lang/Object;II)V

    .line 372
    invoke-direct {p0, p2}, Lc8/Gp;->flushTileCache(I)V

    .line 373
    invoke-direct {p0, v0}, Lc8/Gp;->addTile(Lc8/hq;)V

    goto :goto_0
.end method

.method public recycleTile(Lc8/hq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "this":Lc8/Gp;, "Landroid/support/v7/util/AsyncListUtil$2;"
    .local p1, "tile":Lc8/hq;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    iget-object v0, p0, Lc8/Gp;->this$0:Lc8/Jp;

    iget-object v0, v0, Lc8/Jp;->mDataCallback:Lc8/Hp;

    iget-object v1, p1, Lc8/hq;->mItems:[Ljava/lang/Object;

    iget v2, p1, Lc8/hq;->mItemCount:I

    invoke-virtual {v0, v1, v2}, Lc8/Hp;->recycleData([Ljava/lang/Object;I)V

    .line 383
    iget-object v0, p0, Lc8/Gp;->mRecycledRoot:Lc8/hq;

    iput-object v0, p1, Lc8/hq;->mNext:Lc8/hq;

    .line 384
    iput-object p1, p0, Lc8/Gp;->mRecycledRoot:Lc8/hq;

    .line 385
    return-void
.end method

.method public refresh(I)V
    .locals 3
    .param p1, "generation"    # I

    .prologue
    .line 304
    .local p0, "this":Lc8/Gp;, "Landroid/support/v7/util/AsyncListUtil$2;"
    iput p1, p0, Lc8/Gp;->mGeneration:I

    .line 305
    iget-object v0, p0, Lc8/Gp;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 306
    iget-object v0, p0, Lc8/Gp;->this$0:Lc8/Jp;

    iget-object v0, v0, Lc8/Jp;->mDataCallback:Lc8/Hp;

    invoke-virtual {v0}, Lc8/Hp;->refreshData()I

    move-result v0

    iput v0, p0, Lc8/Gp;->mItemCount:I

    .line 307
    iget-object v0, p0, Lc8/Gp;->this$0:Lc8/Jp;

    iget-object v0, v0, Lc8/Jp;->mMainThreadProxy:Lc8/fq;

    iget v1, p0, Lc8/Gp;->mGeneration:I

    iget v2, p0, Lc8/Gp;->mItemCount:I

    invoke-interface {v0, v1, v2}, Lc8/fq;->updateItemCount(II)V

    .line 308
    return-void
.end method

.method public updateRange(IIIII)V
    .locals 6
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I
    .param p3, "extRangeStart"    # I
    .param p4, "extRangeEnd"    # I
    .param p5, "scrollHint"    # I

    .prologue
    .local p0, "this":Lc8/Gp;, "Landroid/support/v7/util/AsyncListUtil$2;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 318
    if-le p1, p2, :cond_0

    .line 343
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-direct {p0, p1}, Lc8/Gp;->getTileStart(I)I

    move-result v0

    .line 323
    .local v0, "firstVisibleTileStart":I
    invoke-direct {p0, p2}, Lc8/Gp;->getTileStart(I)I

    move-result v1

    .line 325
    .local v1, "lastVisibleTileStart":I
    invoke-direct {p0, p3}, Lc8/Gp;->getTileStart(I)I

    move-result v2

    iput v2, p0, Lc8/Gp;->mFirstRequiredTileStart:I

    .line 326
    invoke-direct {p0, p4}, Lc8/Gp;->getTileStart(I)I

    move-result v2

    iput v2, p0, Lc8/Gp;->mLastRequiredTileStart:I

    .line 334
    if-ne p5, v4, :cond_1

    .line 335
    iget v2, p0, Lc8/Gp;->mFirstRequiredTileStart:I

    invoke-direct {p0, v2, v1, p5, v4}, Lc8/Gp;->requestTiles(IIIZ)V

    .line 336
    iget-object v2, p0, Lc8/Gp;->this$0:Lc8/Jp;

    iget v2, v2, Lc8/Jp;->mTileSize:I

    add-int/2addr v2, v1

    iget v3, p0, Lc8/Gp;->mLastRequiredTileStart:I

    invoke-direct {p0, v2, v3, p5, v5}, Lc8/Gp;->requestTiles(IIIZ)V

    goto :goto_0

    .line 339
    :cond_1
    iget v2, p0, Lc8/Gp;->mLastRequiredTileStart:I

    invoke-direct {p0, v0, v2, p5, v5}, Lc8/Gp;->requestTiles(IIIZ)V

    .line 340
    iget v2, p0, Lc8/Gp;->mFirstRequiredTileStart:I

    iget-object v3, p0, Lc8/Gp;->this$0:Lc8/Jp;

    iget v3, v3, Lc8/Jp;->mTileSize:I

    sub-int v3, v0, v3

    invoke-direct {p0, v2, v3, p5, v4}, Lc8/Gp;->requestTiles(IIIZ)V

    goto :goto_0
.end method
