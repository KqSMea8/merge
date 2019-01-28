.class public Lc8/Fp;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"

# interfaces
.implements Lc8/fq;


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
        "Lc8/fq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jp;


# direct methods
.method constructor <init>(Lc8/Jp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jp;

    .prologue
    .line 208
    .local p0, "this":Lc8/Fp;, "Landroid/support/v7/util/AsyncListUtil$1;"
    iput-object p1, p0, Lc8/Fp;->this$0:Lc8/Jp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isRequestedGeneration(I)Z
    .locals 1
    .param p1, "generation"    # I

    .prologue
    .line 285
    .local p0, "this":Lc8/Fp;, "Landroid/support/v7/util/AsyncListUtil$1;"
    iget-object v0, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iget v0, v0, Lc8/Jp;->mRequestedGeneration:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleAllTiles()V
    .locals 3

    .prologue
    .line 278
    .local p0, "this":Lc8/Fp;, "Landroid/support/v7/util/AsyncListUtil$1;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iget-object v1, v1, Lc8/Jp;->mTileList:Lc8/iq;

    invoke-virtual {v1}, Lc8/iq;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 279
    iget-object v1, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iget-object v1, v1, Lc8/Jp;->mBackgroundProxy:Lc8/eq;

    iget-object v2, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iget-object v2, v2, Lc8/Jp;->mTileList:Lc8/iq;

    invoke-virtual {v2, v0}, Lc8/iq;->getAtIndex(I)Lc8/hq;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/eq;->recycleTile(Lc8/hq;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    iget-object v1, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iget-object v1, v1, Lc8/Jp;->mTileList:Lc8/iq;

    invoke-virtual {v1}, Lc8/iq;->clear()V

    .line 282
    return-void
.end method


# virtual methods
.method public addTile(ILc8/hq;)V
    .locals 7
    .param p1, "generation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc8/hq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lc8/Fp;, "Landroid/support/v7/util/AsyncListUtil$1;"
    .local p2, "tile":Lc8/hq;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    invoke-direct {p0, p1}, Lc8/Fp;->isRequestedGeneration(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 233
    iget-object v4, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iget-object v4, v4, Lc8/Jp;->mBackgroundProxy:Lc8/eq;

    invoke-interface {v4, p2}, Lc8/eq;->recycleTile(Lc8/hq;)V

    .line 256
    :cond_0
    return-void

    .line 236
    :cond_1
    iget-object v4, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iget-object v4, v4, Lc8/Jp;->mTileList:Lc8/iq;

    invoke-virtual {v4, p2}, Lc8/iq;->addOrReplace(Lc8/hq;)Lc8/hq;

    move-result-object v0

    .line 237
    .local v0, "duplicate":Lc8/hq;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    if-eqz v0, :cond_2

    .line 238
    const-string/jumbo v4, "AsyncListUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "duplicate tile @"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lc8/hq;->mStartPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v4, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iget-object v4, v4, Lc8/Jp;->mBackgroundProxy:Lc8/eq;

    invoke-interface {v4, v0}, Lc8/eq;->recycleTile(Lc8/hq;)V

    .line 245
    :cond_2
    iget v4, p2, Lc8/hq;->mStartPosition:I

    iget v5, p2, Lc8/hq;->mItemCount:I

    add-int v1, v4, v5

    .line 246
    .local v1, "endPosition":I
    const/4 v2, 0x0

    .line 247
    .local v2, "index":I
    :goto_0
    iget-object v4, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iget-object v4, v4, Lc8/Jp;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 248
    iget-object v4, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iget-object v4, v4, Lc8/Jp;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 249
    .local v3, "position":I
    iget v4, p2, Lc8/hq;->mStartPosition:I

    if-gt v4, v3, :cond_3

    if-ge v3, v1, :cond_3

    .line 250
    iget-object v4, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iget-object v4, v4, Lc8/Jp;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 251
    iget-object v4, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iget-object v4, v4, Lc8/Jp;->mViewCallback:Lc8/Ip;

    invoke-virtual {v4, v3}, Lc8/Ip;->onItemLoaded(I)V

    goto :goto_0

    .line 253
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 255
    goto :goto_0
.end method

.method public removeTile(II)V
    .locals 4
    .param p1, "generation"    # I
    .param p2, "position"    # I

    .prologue
    .line 260
    .local p0, "this":Lc8/Fp;, "Landroid/support/v7/util/AsyncListUtil$1;"
    invoke-direct {p0, p1}, Lc8/Fp;->isRequestedGeneration(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v1, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iget-object v1, v1, Lc8/Jp;->mTileList:Lc8/iq;

    invoke-virtual {v1, p2}, Lc8/iq;->removeAtPos(I)Lc8/hq;

    move-result-object v0

    .line 264
    .local v0, "tile":Lc8/hq;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    if-nez v0, :cond_1

    .line 265
    const-string/jumbo v1, "AsyncListUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tile not found @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_1
    iget-object v1, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iget-object v1, v1, Lc8/Jp;->mBackgroundProxy:Lc8/eq;

    invoke-interface {v1, v0}, Lc8/eq;->recycleTile(Lc8/hq;)V

    goto :goto_0
.end method

.method public updateItemCount(II)V
    .locals 2
    .param p1, "generation"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 214
    .local p0, "this":Lc8/Fp;, "Landroid/support/v7/util/AsyncListUtil$1;"
    invoke-direct {p0, p1}, Lc8/Fp;->isRequestedGeneration(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iput p2, v0, Lc8/Jp;->mItemCount:I

    .line 218
    iget-object v0, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iget-object v0, v0, Lc8/Jp;->mViewCallback:Lc8/Ip;

    invoke-virtual {v0}, Lc8/Ip;->onDataRefresh()V

    .line 219
    iget-object v0, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iget-object v1, p0, Lc8/Fp;->this$0:Lc8/Jp;

    iget v1, v1, Lc8/Jp;->mRequestedGeneration:I

    iput v1, v0, Lc8/Jp;->mDisplayedGeneration:I

    .line 220
    invoke-direct {p0}, Lc8/Fp;->recycleAllTiles()V

    .line 222
    iget-object v0, p0, Lc8/Fp;->this$0:Lc8/Jp;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc8/Jp;->mAllowScrollHints:Z

    .line 224
    iget-object v0, p0, Lc8/Fp;->this$0:Lc8/Jp;

    invoke-virtual {v0}, Lc8/Jp;->updateRange()V

    goto :goto_0
.end method
