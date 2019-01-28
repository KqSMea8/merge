.class public Lc8/uu;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutState"
.end annotation


# static fields
.field static final INVALID_LAYOUT:I = -0x80000000

.field static final ITEM_DIRECTION_HEAD:I = -0x1

.field static final ITEM_DIRECTION_TAIL:I = 0x1

.field static final LAYOUT_END:I = 0x1

.field static final LAYOUT_START:I = -0x1

.field static final SCROLLING_OFFSET_NaN:I = -0x80000000

.field static final TAG:Ljava/lang/String; = "LLM#LayoutState"


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mExtra:I

.field mInfinite:Z

.field mIsPreLayout:Z

.field mItemDirection:I

.field mLastScrollDelta:I

.field mLayoutDirection:I

.field mOffset:I

.field mRecycle:Z

.field mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Qv;",
            ">;"
        }
    .end annotation
.end field

.field mScrollingOffset:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/uu;->mRecycle:Z

    .line 2181
    iput v1, p0, Lc8/uu;->mExtra:I

    .line 2188
    iput-boolean v1, p0, Lc8/uu;->mIsPreLayout:Z

    .line 2200
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/uu;->mScrapList:Ljava/util/List;

    return-void
.end method

.method private nextViewFromScrapList()Landroid/view/View;
    .locals 6

    .prologue
    .line 2237
    iget-object v4, p0, Lc8/uu;->mScrapList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 2238
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2239
    iget-object v4, p0, Lc8/uu;->mScrapList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Qv;

    iget-object v3, v4, Lc8/Qv;->itemView:Landroid/view/View;

    .line 2240
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lc8/yv;

    .line 2241
    .local v1, "lp":Lc8/yv;
    invoke-virtual {v1}, Lc8/yv;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2244
    iget v4, p0, Lc8/uu;->mCurrentPosition:I

    invoke-virtual {v1}, Lc8/yv;->getViewLayoutPosition()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 2245
    invoke-virtual {p0, v3}, Lc8/uu;->assignPositionFromScrapList(Landroid/view/View;)V

    .line 2249
    .end local v1    # "lp":Lc8/yv;
    .end local v3    # "view":Landroid/view/View;
    :goto_1
    return-object v3

    .line 2238
    .restart local v1    # "lp":Lc8/yv;
    .restart local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2249
    .end local v1    # "lp":Lc8/yv;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public assignPositionFromScrapList()V
    .locals 1

    .prologue
    .line 2253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/uu;->assignPositionFromScrapList(Landroid/view/View;)V

    .line 2254
    return-void
.end method

.method public assignPositionFromScrapList(Landroid/view/View;)V
    .locals 2
    .param p1, "ignore"    # Landroid/view/View;

    .prologue
    .line 2257
    invoke-virtual {p0, p1}, Lc8/uu;->nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2258
    .local v0, "closest":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2259
    const/4 v1, -0x1

    iput v1, p0, Lc8/uu;->mCurrentPosition:I

    .line 2264
    :goto_0
    return-void

    .line 2261
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lc8/yv;

    .line 2262
    invoke-virtual {v1}, Lc8/yv;->getViewLayoutPosition()I

    move-result v1

    iput v1, p0, Lc8/uu;->mCurrentPosition:I

    goto :goto_0
.end method

.method hasMore(Lc8/Nv;)Z
    .locals 2
    .param p1, "state"    # Lc8/Nv;

    .prologue
    .line 2211
    iget v0, p0, Lc8/uu;->mCurrentPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lc8/uu;->mCurrentPosition:I

    invoke-virtual {p1}, Lc8/Nv;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method log()V
    .locals 2

    .prologue
    .line 2296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "avail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/uu;->mAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ind:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/uu;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/uu;->mItemDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/uu;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", layoutDir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/uu;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2298
    return-void
.end method

.method next(Lc8/Fv;)Landroid/view/View;
    .locals 3
    .param p1, "recycler"    # Lc8/Fv;

    .prologue
    .line 2221
    iget-object v1, p0, Lc8/uu;->mScrapList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2222
    invoke-direct {p0}, Lc8/uu;->nextViewFromScrapList()Landroid/view/View;

    move-result-object v0

    .line 2226
    :goto_0
    return-object v0

    .line 2224
    :cond_0
    iget v1, p0, Lc8/uu;->mCurrentPosition:I

    invoke-virtual {p1, v1}, Lc8/Fv;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 2225
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lc8/uu;->mCurrentPosition:I

    iget v2, p0, Lc8/uu;->mItemDirection:I

    add-int/2addr v1, v2

    iput v1, p0, Lc8/uu;->mCurrentPosition:I

    goto :goto_0
.end method

.method public nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;
    .locals 9
    .param p1, "ignore"    # Landroid/view/View;

    .prologue
    .line 2267
    iget-object v7, p0, Lc8/uu;->mScrapList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 2268
    .local v5, "size":I
    const/4 v0, 0x0

    .line 2269
    .local v0, "closest":Landroid/view/View;
    const v1, 0x7fffffff

    .line 2273
    .local v1, "closestDistance":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 2274
    iget-object v7, p0, Lc8/uu;->mScrapList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/Qv;

    iget-object v6, v7, Lc8/Qv;->itemView:Landroid/view/View;

    .line 2275
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lc8/yv;

    .line 2276
    .local v4, "lp":Lc8/yv;
    if-eq v6, p1, :cond_0

    invoke-virtual {v4}, Lc8/yv;->isItemRemoved()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2279
    invoke-virtual {v4}, Lc8/yv;->getViewLayoutPosition()I

    move-result v7

    iget v8, p0, Lc8/uu;->mCurrentPosition:I

    sub-int/2addr v7, v8

    iget v8, p0, Lc8/uu;->mItemDirection:I

    mul-int v2, v7, v8

    .line 2281
    .local v2, "distance":I
    if-ltz v2, :cond_0

    .line 2284
    if-ge v2, v1, :cond_0

    .line 2285
    move-object v0, v6

    .line 2286
    move v1, v2

    .line 2287
    if-eqz v2, :cond_1

    .line 2273
    .end local v2    # "distance":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2292
    .end local v4    # "lp":Lc8/yv;
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    return-object v0
.end method
