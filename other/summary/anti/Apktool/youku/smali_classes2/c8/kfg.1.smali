.class public Lc8/kfg;
.super Lc8/Cv;
.source "WXRecyclerViewOnScrollListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;
    }
.end annotation


# instance fields
.field protected layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

.field private listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/ffg;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentScrollState:I

.field private mFirstPositions:[I

.field private mFirstVisibleItemPosition:I

.field private mLastPositions:[I

.field private mLastVisibleItemPosition:I


# direct methods
.method public constructor <init>(Lc8/ffg;)V
    .locals 1
    .param p1, "listener"    # Lc8/ffg;

    .prologue
    .line 68
    invoke-direct {p0}, Lc8/Cv;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lc8/kfg;->mCurrentScrollState:I

    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/kfg;->listener:Ljava/lang/ref/WeakReference;

    .line 70
    return-void
.end method

.method private findMax([I)I
    .locals 6
    .param p1, "lastPositions"    # [I

    .prologue
    .line 156
    const/4 v5, 0x0

    aget v3, p1, v5

    .line 157
    .local v3, "max":I
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, p1

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 158
    .local v4, "value":I
    if-le v4, v3, :cond_0

    .line 159
    move v3, v4

    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v4    # "value":I
    :cond_1
    return v3
.end method

.method private findMin([I)I
    .locals 6
    .param p1, "firstPositions"    # [I

    .prologue
    .line 166
    const/4 v5, 0x0

    aget v3, p1, v5

    .line 167
    .local v3, "min":I
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, p1

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 168
    .local v4, "value":I
    if-ge v4, v3, :cond_0

    .line 169
    move v3, v4

    .line 167
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v4    # "value":I
    :cond_1
    return v3
.end method


# virtual methods
.method public onScrollStateChanged(Lc8/Rv;I)V
    .locals 6
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "newState"    # I

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lc8/Cv;->onScrollStateChanged(Lc8/Rv;I)V

    .line 75
    iput p2, p0, Lc8/kfg;->mCurrentScrollState:I

    .line 76
    invoke-virtual {p1}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v1

    .line 77
    .local v1, "layoutManager":Lc8/xv;
    invoke-virtual {v1}, Lc8/xv;->getChildCount()I

    move-result v3

    .line 78
    .local v3, "visibleItemCount":I
    invoke-virtual {v1}, Lc8/xv;->getItemCount()I

    move-result v2

    .line 80
    .local v2, "totalItemCount":I
    if-eqz v3, :cond_0

    .line 81
    iget v4, p0, Lc8/kfg;->mLastVisibleItemPosition:I

    sub-int v4, v2, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1}, Lc8/Rv;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    div-int v0, v4, v3

    .line 82
    .local v0, "bottomOffset":I
    if-lez v3, :cond_0

    iget v4, p0, Lc8/kfg;->mCurrentScrollState:I

    if-nez v4, :cond_0

    .line 83
    iget-object v4, p0, Lc8/kfg;->listener:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/kfg;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 84
    iget-object v4, p0, Lc8/kfg;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/ffg;

    invoke-interface {v4, v0}, Lc8/ffg;->onLoadMore(I)V

    .line 88
    .end local v0    # "bottomOffset":I
    :cond_0
    return-void
.end method

.method public onScrolled(Lc8/Rv;II)V
    .locals 10
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3}, Lc8/Cv;->onScrolled(Lc8/Rv;II)V

    .line 93
    invoke-virtual {p1}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v4

    .line 94
    .local v4, "layoutManager":Lc8/xv;
    iget-object v8, p0, Lc8/kfg;->listener:Ljava/lang/ref/WeakReference;

    if-nez v8, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v8, p0, Lc8/kfg;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/ffg;

    .line 99
    .local v3, "iOnLoadMoreListener":Lc8/ffg;
    if-eqz v3, :cond_0

    .line 101
    invoke-interface {v3, p2, p3}, Lc8/ffg;->onBeforeScroll(II)V

    .line 103
    instance-of v8, v4, Lc8/wu;

    if-eqz v8, :cond_2

    .line 104
    sget-object v8, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->LINEAR:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    iput-object v8, p0, Lc8/kfg;->layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    move-object v5, v4

    .line 105
    check-cast v5, Lc8/wu;

    .line 106
    .local v5, "linearLayoutManager":Lc8/wu;
    invoke-virtual {v5}, Lc8/wu;->findLastVisibleItemPosition()I

    move-result v8

    iput v8, p0, Lc8/kfg;->mLastVisibleItemPosition:I

    .line 107
    invoke-virtual {v5}, Lc8/wu;->findFirstVisibleItemPosition()I

    move-result v1

    .line 108
    .local v1, "firstVisible":I
    iget v8, p0, Lc8/kfg;->mLastVisibleItemPosition:I

    invoke-interface {v3, v1, v8, p2, p3}, Lc8/ffg;->notifyAppearStateChange(IIII)V

    goto :goto_0

    .line 112
    .end local v1    # "firstVisible":I
    .end local v5    # "linearLayoutManager":Lc8/wu;
    :cond_2
    instance-of v8, v4, Lc8/mu;

    if-eqz v8, :cond_3

    .line 113
    sget-object v8, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    iput-object v8, p0, Lc8/kfg;->layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    move-object v2, v4

    .line 114
    check-cast v2, Lc8/mu;

    .line 115
    .local v2, "gridLayoutManager":Lc8/mu;
    invoke-virtual {v2}, Lc8/mu;->findLastVisibleItemPosition()I

    move-result v8

    iput v8, p0, Lc8/kfg;->mLastVisibleItemPosition:I

    .line 116
    invoke-virtual {v2}, Lc8/mu;->findFirstVisibleItemPosition()I

    move-result v8

    iget v9, p0, Lc8/kfg;->mLastVisibleItemPosition:I

    invoke-interface {v3, v8, v9, p2, p3}, Lc8/ffg;->notifyAppearStateChange(IIII)V

    goto :goto_0

    .line 121
    .end local v2    # "gridLayoutManager":Lc8/mu;
    :cond_3
    instance-of v8, v4, Lc8/Qw;

    if-eqz v8, :cond_8

    .line 122
    sget-object v8, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->STAGGERED_GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    iput-object v8, p0, Lc8/kfg;->layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    move-object v7, v4

    .line 123
    check-cast v7, Lc8/Qw;

    .line 124
    .local v7, "staggeredGridLayoutManager":Lc8/Qw;
    invoke-virtual {v7}, Lc8/Qw;->getSpanCount()I

    move-result v6

    .line 125
    .local v6, "newSpanCount":I
    iget-object v8, p0, Lc8/kfg;->mLastPositions:[I

    if-eqz v8, :cond_4

    iget-object v8, p0, Lc8/kfg;->mLastPositions:[I

    array-length v8, v8

    if-eq v6, v8, :cond_5

    .line 126
    :cond_4
    new-array v8, v6, [I

    iput-object v8, p0, Lc8/kfg;->mLastPositions:[I

    .line 128
    :cond_5
    iget-object v8, p0, Lc8/kfg;->mFirstPositions:[I

    if-eqz v8, :cond_6

    iget-object v8, p0, Lc8/kfg;->mFirstPositions:[I

    array-length v8, v8

    if-eq v6, v8, :cond_7

    .line 129
    :cond_6
    new-array v8, v6, [I

    iput-object v8, p0, Lc8/kfg;->mFirstPositions:[I

    .line 133
    :cond_7
    :try_start_0
    iget-object v8, p0, Lc8/kfg;->mFirstPositions:[I

    invoke-virtual {v7, v8}, Lc8/Qw;->findFirstVisibleItemPositions([I)[I

    .line 134
    iget-object v8, p0, Lc8/kfg;->mFirstPositions:[I

    invoke-direct {p0, v8}, Lc8/kfg;->findMin([I)I

    move-result v8

    iput v8, p0, Lc8/kfg;->mFirstVisibleItemPosition:I

    .line 135
    iget-object v8, p0, Lc8/kfg;->mLastPositions:[I

    invoke-virtual {v7, v8}, Lc8/Qw;->findLastVisibleItemPositions([I)[I

    .line 136
    iget-object v8, p0, Lc8/kfg;->mLastPositions:[I

    invoke-direct {p0, v8}, Lc8/kfg;->findMax([I)I

    move-result v8

    iput v8, p0, Lc8/kfg;->mLastVisibleItemPosition:I

    .line 137
    iget v8, p0, Lc8/kfg;->mFirstVisibleItemPosition:I

    iget v9, p0, Lc8/kfg;->mLastVisibleItemPosition:I

    invoke-interface {v3, v8, v9, p2, p3}, Lc8/ffg;->notifyAppearStateChange(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "newSpanCount":I
    .end local v7    # "staggeredGridLayoutManager":Lc8/Qw;
    :cond_8
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Unsupported LayoutManager used. Valid ones are LinearLayoutManager, GridLayoutManager and StaggeredGridLayoutManager"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
