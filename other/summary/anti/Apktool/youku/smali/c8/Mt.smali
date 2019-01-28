.class public Lc8/Mt;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Lc8/vv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutPrefetchRegistryImpl"
.end annotation


# instance fields
.field mCount:I

.field mPrefetchArray:[I

.field mPrefetchDx:I

.field mPrefetchDy:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPosition(II)V
    .locals 5
    .param p1, "layoutPosition"    # I
    .param p2, "pixelDistance"    # I

    .prologue
    const/4 v4, 0x0

    .line 109
    if-gez p1, :cond_0

    .line 110
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Layout positions must be non-negative"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_0
    if-gez p2, :cond_1

    .line 114
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Pixel distance must be non-negative"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_1
    iget v2, p0, Lc8/Mt;->mCount:I

    shl-int/lit8 v1, v2, 0x1

    .line 119
    .local v1, "storagePosition":I
    iget-object v2, p0, Lc8/Mt;->mPrefetchArray:[I

    if-nez v2, :cond_3

    .line 120
    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, p0, Lc8/Mt;->mPrefetchArray:[I

    .line 121
    iget-object v2, p0, Lc8/Mt;->mPrefetchArray:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 129
    :cond_2
    :goto_0
    iget-object v2, p0, Lc8/Mt;->mPrefetchArray:[I

    aput p1, v2, v1

    .line 130
    iget-object v2, p0, Lc8/Mt;->mPrefetchArray:[I

    add-int/lit8 v3, v1, 0x1

    aput p2, v2, v3

    .line 132
    iget v2, p0, Lc8/Mt;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc8/Mt;->mCount:I

    .line 133
    return-void

    .line 122
    :cond_3
    iget-object v2, p0, Lc8/Mt;->mPrefetchArray:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 123
    iget-object v0, p0, Lc8/Mt;->mPrefetchArray:[I

    .line 124
    .local v0, "oldArray":[I
    shl-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lc8/Mt;->mPrefetchArray:[I

    .line 125
    iget-object v2, p0, Lc8/Mt;->mPrefetchArray:[I

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method clearPrefetchPositions()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lc8/Mt;->mPrefetchArray:[I

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lc8/Mt;->mPrefetchArray:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 152
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lc8/Mt;->mCount:I

    .line 153
    return-void
.end method

.method collectPrefetchPositionsFromView(Lc8/Rv;Z)V
    .locals 4
    .param p1, "view"    # Lc8/Rv;
    .param p2, "nested"    # Z

    .prologue
    .line 76
    const/4 v1, 0x0

    iput v1, p0, Lc8/Mt;->mCount:I

    .line 77
    iget-object v1, p0, Lc8/Mt;->mPrefetchArray:[I

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lc8/Mt;->mPrefetchArray:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 81
    :cond_0
    iget-object v0, p1, Lc8/Rv;->mLayout:Lc8/xv;

    .line 82
    .local v0, "layout":Lc8/xv;
    iget-object v1, p1, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0}, Lc8/xv;->isItemPrefetchEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    if-eqz p2, :cond_3

    .line 88
    iget-object v1, p1, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v1}, Lc8/ms;->hasPendingUpdates()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    iget-object v1, p1, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v1}, Lc8/iv;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lc8/xv;->collectInitialPrefetchPositions(ILc8/vv;)V

    .line 99
    :cond_1
    :goto_0
    iget v1, p0, Lc8/Mt;->mCount:I

    iget v2, v0, Lc8/xv;->mPrefetchMaxCountObserved:I

    if-le v1, v2, :cond_2

    .line 100
    iget v1, p0, Lc8/Mt;->mCount:I

    iput v1, v0, Lc8/xv;->mPrefetchMaxCountObserved:I

    .line 101
    iput-boolean p2, v0, Lc8/xv;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 102
    iget-object v1, p1, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v1}, Lc8/Fv;->updateViewCacheSize()V

    .line 105
    :cond_2
    return-void

    .line 93
    :cond_3
    invoke-virtual {p1}, Lc8/Rv;->hasPendingAdapterUpdates()Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    iget v1, p0, Lc8/Mt;->mPrefetchDx:I

    iget v2, p0, Lc8/Mt;->mPrefetchDy:I

    iget-object v3, p1, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v0, v1, v2, v3, p0}, Lc8/xv;->collectAdjacentPrefetchPositions(IILc8/Nv;Lc8/vv;)V

    goto :goto_0
.end method

.method lastPrefetchIncludedPosition(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 136
    iget-object v2, p0, Lc8/Mt;->mPrefetchArray:[I

    if-eqz v2, :cond_1

    .line 137
    iget v2, p0, Lc8/Mt;->mCount:I

    shl-int/lit8 v0, v2, 0x1

    .line 138
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 139
    iget-object v2, p0, Lc8/Mt;->mPrefetchArray:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    .line 142
    .end local v0    # "count":I
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 138
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 142
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method setPrefetchVector(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 71
    iput p1, p0, Lc8/Mt;->mPrefetchDx:I

    .line 72
    iput p2, p0, Lc8/Mt;->mPrefetchDy:I

    .line 73
    return-void
.end method
