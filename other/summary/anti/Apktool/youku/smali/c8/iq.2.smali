.class public Lc8/iq;
.super Ljava/lang/Object;
.source "TileList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/hq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mLastAccessedTile:Lc8/hq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/hq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field private final mTiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lc8/hq",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "tileSize"    # I

    .prologue
    .line 35
    .local p0, "this":Lc8/iq;, "Landroid/support/v7/util/TileList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lc8/iq;->mTiles:Landroid/util/SparseArray;

    .line 36
    iput p1, p0, Lc8/iq;->mTileSize:I

    .line 37
    return-void
.end method


# virtual methods
.method public addOrReplace(Lc8/hq;)Lc8/hq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hq",
            "<TT;>;)",
            "Lc8/hq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lc8/iq;, "Landroid/support/v7/util/TileList<TT;>;"
    .local p1, "newTile":Lc8/hq;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    iget-object v2, p0, Lc8/iq;->mTiles:Landroid/util/SparseArray;

    iget v3, p1, Lc8/hq;->mStartPosition:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 65
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 66
    iget-object v2, p0, Lc8/iq;->mTiles:Landroid/util/SparseArray;

    iget v3, p1, Lc8/hq;->mStartPosition:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    const/4 v1, 0x0

    .line 74
    :cond_0
    :goto_0
    return-object v1

    .line 69
    :cond_1
    iget-object v2, p0, Lc8/iq;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/hq;

    .line 70
    .local v1, "oldTile":Lc8/hq;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    iget-object v2, p0, Lc8/iq;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 71
    iget-object v2, p0, Lc8/iq;->mLastAccessedTile:Lc8/hq;

    if-ne v2, v1, :cond_0

    .line 72
    iput-object p1, p0, Lc8/iq;->mLastAccessedTile:Lc8/hq;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lc8/iq;, "Landroid/support/v7/util/TileList<TT;>;"
    iget-object v0, p0, Lc8/iq;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 57
    return-void
.end method

.method public getAtIndex(I)Lc8/hq;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/hq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lc8/iq;, "Landroid/support/v7/util/TileList<TT;>;"
    iget-object v0, p0, Lc8/iq;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/hq;

    return-object v0
.end method

.method public getItemAt(I)Ljava/lang/Object;
    .locals 3
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lc8/iq;, "Landroid/support/v7/util/TileList<TT;>;"
    iget-object v2, p0, Lc8/iq;->mLastAccessedTile:Lc8/hq;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/iq;->mLastAccessedTile:Lc8/hq;

    invoke-virtual {v2, p1}, Lc8/hq;->containsPosition(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 41
    :cond_0
    iget v2, p0, Lc8/iq;->mTileSize:I

    rem-int v2, p1, v2

    sub-int v1, p1, v2

    .line 42
    .local v1, "startPosition":I
    iget-object v2, p0, Lc8/iq;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 43
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 44
    const/4 v2, 0x0

    .line 48
    .end local v0    # "index":I
    .end local v1    # "startPosition":I
    :goto_0
    return-object v2

    .line 46
    .restart local v0    # "index":I
    .restart local v1    # "startPosition":I
    :cond_1
    iget-object v2, p0, Lc8/iq;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/hq;

    iput-object v2, p0, Lc8/iq;->mLastAccessedTile:Lc8/hq;

    .line 48
    .end local v0    # "index":I
    .end local v1    # "startPosition":I
    :cond_2
    iget-object v2, p0, Lc8/iq;->mLastAccessedTile:Lc8/hq;

    invoke-virtual {v2, p1}, Lc8/hq;->getByPosition(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public removeAtPos(I)Lc8/hq;
    .locals 2
    .param p1, "startPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/hq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lc8/iq;, "Landroid/support/v7/util/TileList<TT;>;"
    iget-object v1, p0, Lc8/iq;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/hq;

    .line 79
    .local v0, "tile":Lc8/hq;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    iget-object v1, p0, Lc8/iq;->mLastAccessedTile:Lc8/hq;

    if-ne v1, v0, :cond_0

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/iq;->mLastAccessedTile:Lc8/hq;

    .line 82
    :cond_0
    iget-object v1, p0, Lc8/iq;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 83
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lc8/iq;, "Landroid/support/v7/util/TileList<TT;>;"
    iget-object v0, p0, Lc8/iq;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method
