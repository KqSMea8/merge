.class public Lc8/Jp;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ip;,
        Lc8/Hp;
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


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncListUtil"


# instance fields
.field mAllowScrollHints:Z

.field private final mBackgroundCallback:Lc8/eq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/eq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mBackgroundProxy:Lc8/eq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/eq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mDataCallback:Lc8/Hp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hp",
            "<TT;>;"
        }
    .end annotation
.end field

.field mDisplayedGeneration:I

.field mItemCount:I

.field private final mMainThreadCallback:Lc8/fq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/fq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mMainThreadProxy:Lc8/fq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/fq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mMissingPositions:Landroid/util/SparseIntArray;

.field final mPrevRange:[I

.field mRequestedGeneration:I

.field private mScrollHint:I

.field final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mTileList:Lc8/iq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/iq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field final mTmpRange:[I

.field final mTmpRangeExtended:[I

.field final mViewCallback:Lc8/Ip;


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILc8/Hp;Lc8/Ip;)V
    .locals 4
    .param p2, "tileSize"    # I
    .param p4, "viewCallback"    # Lc8/Ip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I",
            "Lc8/Hp",
            "<TT;>;",
            "Lc8/Ip;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Jp;, "Landroid/support/v7/util/AsyncListUtil<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "dataCallback":Lc8/Hp;, "Landroid/support/v7/util/AsyncListUtil$DataCallback<TT;>;"
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-array v1, v3, [I

    iput-object v1, p0, Lc8/Jp;->mTmpRange:[I

    .line 62
    new-array v1, v3, [I

    iput-object v1, p0, Lc8/Jp;->mPrevRange:[I

    .line 63
    new-array v1, v3, [I

    iput-object v1, p0, Lc8/Jp;->mTmpRangeExtended:[I

    .line 66
    iput v2, p0, Lc8/Jp;->mScrollHint:I

    .line 68
    iput v2, p0, Lc8/Jp;->mItemCount:I

    .line 70
    iput v2, p0, Lc8/Jp;->mDisplayedGeneration:I

    .line 71
    iget v1, p0, Lc8/Jp;->mDisplayedGeneration:I

    iput v1, p0, Lc8/Jp;->mRequestedGeneration:I

    .line 73
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lc8/Jp;->mMissingPositions:Landroid/util/SparseIntArray;

    .line 207
    new-instance v1, Lc8/Fp;

    invoke-direct {v1, p0}, Lc8/Fp;-><init>(Lc8/Jp;)V

    iput-object v1, p0, Lc8/Jp;->mMainThreadCallback:Lc8/fq;

    .line 289
    new-instance v1, Lc8/Gp;

    invoke-direct {v1, p0}, Lc8/Gp;-><init>(Lc8/Jp;)V

    iput-object v1, p0, Lc8/Jp;->mBackgroundCallback:Lc8/eq;

    .line 89
    iput-object p1, p0, Lc8/Jp;->mTClass:Ljava/lang/Class;

    .line 90
    iput p2, p0, Lc8/Jp;->mTileSize:I

    .line 91
    iput-object p3, p0, Lc8/Jp;->mDataCallback:Lc8/Hp;

    .line 92
    iput-object p4, p0, Lc8/Jp;->mViewCallback:Lc8/Ip;

    .line 94
    new-instance v1, Lc8/iq;

    iget v2, p0, Lc8/Jp;->mTileSize:I

    invoke-direct {v1, v2}, Lc8/iq;-><init>(I)V

    iput-object v1, p0, Lc8/Jp;->mTileList:Lc8/iq;

    .line 96
    new-instance v0, Lc8/aq;

    invoke-direct {v0}, Lc8/aq;-><init>()V

    .line 97
    .local v0, "threadUtil":Lc8/gq;, "Landroid/support/v7/util/ThreadUtil<TT;>;"
    iget-object v1, p0, Lc8/Jp;->mMainThreadCallback:Lc8/fq;

    invoke-interface {v0, v1}, Lc8/gq;->getMainThreadProxy(Lc8/fq;)Lc8/fq;

    move-result-object v1

    iput-object v1, p0, Lc8/Jp;->mMainThreadProxy:Lc8/fq;

    .line 98
    iget-object v1, p0, Lc8/Jp;->mBackgroundCallback:Lc8/eq;

    invoke-interface {v0, v1}, Lc8/gq;->getBackgroundProxy(Lc8/eq;)Lc8/eq;

    move-result-object v1

    iput-object v1, p0, Lc8/Jp;->mBackgroundProxy:Lc8/eq;

    .line 100
    invoke-virtual {p0}, Lc8/Jp;->refresh()V

    .line 101
    return-void
.end method

.method private isRefreshPending()Z
    .locals 2

    .prologue
    .line 104
    .local p0, "this":Lc8/Jp;, "Landroid/support/v7/util/AsyncListUtil<TT;>;"
    iget v0, p0, Lc8/Jp;->mRequestedGeneration:I

    iget v1, p0, Lc8/Jp;->mDisplayedGeneration:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lc8/Jp;, "Landroid/support/v7/util/AsyncListUtil<TT;>;"
    if-ltz p1, :cond_0

    iget v1, p0, Lc8/Jp;->mItemCount:I

    if-lt p1, v1, :cond_1

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not within 0 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lc8/Jp;->mItemCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_1
    iget-object v1, p0, Lc8/Jp;->mTileList:Lc8/iq;

    invoke-virtual {v1, p1}, Lc8/iq;->getItemAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 155
    .local v0, "item":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_2

    invoke-direct {p0}, Lc8/Jp;->isRefreshPending()Z

    move-result v1

    if-nez v1, :cond_2

    .line 156
    iget-object v1, p0, Lc8/Jp;->mMissingPositions:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 158
    :cond_2
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lc8/Jp;, "Landroid/support/v7/util/AsyncListUtil<TT;>;"
    iget v0, p0, Lc8/Jp;->mItemCount:I

    return v0
.end method

.method varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 76
    .local p0, "this":Lc8/Jp;, "Landroid/support/v7/util/AsyncListUtil<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[MAIN] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    return-void
.end method

.method public onRangeChanged()V
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lc8/Jp;, "Landroid/support/v7/util/AsyncListUtil<TT;>;"
    invoke-direct {p0}, Lc8/Jp;->isRefreshPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lc8/Jp;->updateRange()V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Jp;->mAllowScrollHints:Z

    goto :goto_0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 130
    .local p0, "this":Lc8/Jp;, "Landroid/support/v7/util/AsyncListUtil<TT;>;"
    iget-object v0, p0, Lc8/Jp;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 131
    iget-object v0, p0, Lc8/Jp;->mBackgroundProxy:Lc8/eq;

    iget v1, p0, Lc8/Jp;->mRequestedGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/Jp;->mRequestedGeneration:I

    invoke-interface {v0, v1}, Lc8/eq;->refresh(I)V

    .line 132
    return-void
.end method

.method updateRange()V
    .locals 6

    .prologue
    .local p0, "this":Lc8/Jp;, "Landroid/support/v7/util/AsyncListUtil<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    iget-object v0, p0, Lc8/Jp;->mViewCallback:Lc8/Ip;

    iget-object v1, p0, Lc8/Jp;->mTmpRange:[I

    invoke-virtual {v0, v1}, Lc8/Ip;->getItemRangeInto([I)V

    .line 176
    iget-object v0, p0, Lc8/Jp;->mTmpRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Lc8/Jp;->mTmpRange:[I

    aget v1, v1, v5

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lc8/Jp;->mTmpRange:[I

    aget v0, v0, v4

    if-gez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lc8/Jp;->mTmpRange:[I

    aget v0, v0, v5

    iget v1, p0, Lc8/Jp;->mItemCount:I

    if-ge v0, v1, :cond_0

    .line 184
    iget-boolean v0, p0, Lc8/Jp;->mAllowScrollHints:Z

    if-nez v0, :cond_3

    .line 185
    iput v4, p0, Lc8/Jp;->mScrollHint:I

    .line 195
    :cond_2
    :goto_1
    iget-object v0, p0, Lc8/Jp;->mPrevRange:[I

    iget-object v1, p0, Lc8/Jp;->mTmpRange:[I

    aget v1, v1, v4

    aput v1, v0, v4

    .line 196
    iget-object v0, p0, Lc8/Jp;->mPrevRange:[I

    iget-object v1, p0, Lc8/Jp;->mTmpRange:[I

    aget v1, v1, v5

    aput v1, v0, v5

    .line 198
    iget-object v0, p0, Lc8/Jp;->mViewCallback:Lc8/Ip;

    iget-object v1, p0, Lc8/Jp;->mTmpRange:[I

    iget-object v2, p0, Lc8/Jp;->mTmpRangeExtended:[I

    iget v3, p0, Lc8/Jp;->mScrollHint:I

    invoke-virtual {v0, v1, v2, v3}, Lc8/Ip;->extendRangeInto([I[II)V

    .line 199
    iget-object v0, p0, Lc8/Jp;->mTmpRangeExtended:[I

    iget-object v1, p0, Lc8/Jp;->mTmpRange:[I

    aget v1, v1, v4

    iget-object v2, p0, Lc8/Jp;->mTmpRangeExtended:[I

    aget v2, v2, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v0, v4

    .line 200
    iget-object v0, p0, Lc8/Jp;->mTmpRangeExtended:[I

    iget-object v1, p0, Lc8/Jp;->mTmpRange:[I

    aget v1, v1, v5

    iget-object v2, p0, Lc8/Jp;->mTmpRangeExtended:[I

    aget v2, v2, v5

    iget v3, p0, Lc8/Jp;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    .line 201
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v5

    .line 203
    iget-object v0, p0, Lc8/Jp;->mBackgroundProxy:Lc8/eq;

    iget-object v1, p0, Lc8/Jp;->mTmpRange:[I

    aget v1, v1, v4

    iget-object v2, p0, Lc8/Jp;->mTmpRange:[I

    aget v2, v2, v5

    iget-object v3, p0, Lc8/Jp;->mTmpRangeExtended:[I

    aget v3, v3, v4

    iget-object v4, p0, Lc8/Jp;->mTmpRangeExtended:[I

    aget v4, v4, v5

    iget v5, p0, Lc8/Jp;->mScrollHint:I

    invoke-interface/range {v0 .. v5}, Lc8/eq;->updateRange(IIIII)V

    goto :goto_0

    .line 186
    :cond_3
    iget-object v0, p0, Lc8/Jp;->mTmpRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Lc8/Jp;->mPrevRange:[I

    aget v1, v1, v5

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lc8/Jp;->mPrevRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Lc8/Jp;->mTmpRange:[I

    aget v1, v1, v5

    if-le v0, v1, :cond_5

    .line 188
    :cond_4
    iput v4, p0, Lc8/Jp;->mScrollHint:I

    goto :goto_1

    .line 189
    :cond_5
    iget-object v0, p0, Lc8/Jp;->mTmpRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Lc8/Jp;->mPrevRange:[I

    aget v1, v1, v4

    if-ge v0, v1, :cond_6

    .line 190
    iput v5, p0, Lc8/Jp;->mScrollHint:I

    goto/16 :goto_1

    .line 191
    :cond_6
    iget-object v0, p0, Lc8/Jp;->mTmpRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Lc8/Jp;->mPrevRange:[I

    aget v1, v1, v4

    if-le v0, v1, :cond_2

    .line 192
    const/4 v0, 0x2

    iput v0, p0, Lc8/Jp;->mScrollHint:I

    goto/16 :goto_1
.end method
