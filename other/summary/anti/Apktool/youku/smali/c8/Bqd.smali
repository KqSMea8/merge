.class public Lc8/Bqd;
.super Lc8/hqd;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Aqd;,
        Lc8/zqd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/hqd",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PullToRefreshListView"


# instance fields
.field private mFooterLoadingView:Lc8/Mqd;

.field private mHeaderLoadingView:Lc8/Mqd;

.field private mLvFooterLoadingFrame:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lc8/hqd;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Bqd;->setDisableScrollingWhileRefreshing(Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lc8/hqd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Bqd;->setDisableScrollingWhileRefreshing(Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lc8/hqd;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Bqd;->setDisableScrollingWhileRefreshing(Z)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lc8/Bqd;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lc8/Bqd;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Bqd;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method protected createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 127
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 128
    new-instance v0, Lc8/Aqd;

    invoke-direct {v0, p0, p1, p2}, Lc8/Aqd;-><init>(Lc8/Bqd;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    .local v0, "lv":Landroid/widget/ListView;
    :goto_0
    return-object v0

    .line 130
    .end local v0    # "lv":Landroid/widget/ListView;
    :cond_0
    new-instance v0, Lc8/zqd;

    invoke-direct {v0, p0, p1, p2}, Lc8/zqd;-><init>(Lc8/Bqd;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "lv":Landroid/widget/ListView;
    goto :goto_0
.end method

.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lc8/Bqd;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected final createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v7, 0x8

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 138
    invoke-virtual {p0, p1, p2}, Lc8/Bqd;->createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v2

    .line 141
    .local v2, "lv":Landroid/widget/ListView;
    sget-object v3, Lcom/youku/phone/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 145
    .local v0, "a":Landroid/content/res/TypedArray;
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 146
    .local v1, "frame":Landroid/widget/FrameLayout;
    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lc8/Bqd;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lc8/Mqd;

    move-result-object v3

    iput-object v3, p0, Lc8/Bqd;->mHeaderLoadingView:Lc8/Mqd;

    .line 148
    iget-object v3, p0, Lc8/Bqd;->mHeaderLoadingView:Lc8/Mqd;

    invoke-virtual {v1, v3, v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 151
    iget-object v3, p0, Lc8/Bqd;->mHeaderLoadingView:Lc8/Mqd;

    invoke-virtual {v3, v7}, Lc8/Mqd;->setVisibility(I)V

    .line 152
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 154
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lc8/Bqd;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;

    .line 155
    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lc8/Bqd;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lc8/Mqd;

    move-result-object v3

    iput-object v3, p0, Lc8/Bqd;->mFooterLoadingView:Lc8/Mqd;

    .line 157
    iget-object v3, p0, Lc8/Bqd;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lc8/Bqd;->mFooterLoadingView:Lc8/Mqd;

    invoke-virtual {v3, v4, v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 160
    iget-object v3, p0, Lc8/Bqd;->mFooterLoadingView:Lc8/Mqd;

    invoke-virtual {v3, v7}, Lc8/Mqd;->setVisibility(I)V

    .line 162
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setId(I)V

    .line 166
    return-object v2
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lc8/Bqd;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/zqd;

    invoke-virtual {v0}, Lc8/zqd;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method protected resetHeader()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 175
    iget-object v6, p0, Lc8/Bqd;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 176
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lc8/Bqd;->getShowViewWhileRefreshing()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 178
    :cond_0
    invoke-super {p0}, Lc8/hqd;->resetHeader()V

    .line 224
    :goto_0
    return-void

    .line 186
    :cond_1
    sget-object v6, Lc8/yqd;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lc8/Bqd;->getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    .line 197
    invoke-virtual {p0}, Lc8/Bqd;->getHeaderLayout()Lc8/Mqd;

    move-result-object v2

    .line 198
    .local v2, "originalLoadingLayout":Lc8/Mqd;
    iget-object v1, p0, Lc8/Bqd;->mHeaderLoadingView:Lc8/Mqd;

    .line 199
    .local v1, "listViewLoadingLayout":Lc8/Mqd;
    invoke-virtual {p0}, Lc8/Bqd;->getHeaderHeight()I

    move-result v6

    neg-int v4, v6

    .line 200
    .local v4, "scrollToHeight":I
    const/4 v5, 0x0

    .line 201
    .local v5, "selection":I
    iget-object v6, p0, Lc8/Bqd;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    .line 202
    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v6, v5

    .line 201
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v3, :cond_4

    .line 207
    .local v3, "scrollLvToEdge":Z
    :goto_1
    invoke-virtual {v2, v7}, Lc8/Mqd;->setVisibility(I)V

    .line 214
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lc8/Bqd;->getState()I

    move-result v6

    const/16 v7, 0x9

    if-eq v6, v7, :cond_2

    .line 215
    invoke-virtual {v1}, Lc8/Mqd;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 216
    iget-object v6, p0, Lc8/Bqd;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 217
    invoke-virtual {p0, v4}, Lc8/Bqd;->setHeaderScroll(I)V

    .line 221
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Lc8/Mqd;->setVisibility(I)V

    .line 223
    invoke-super {p0}, Lc8/hqd;->resetHeader()V

    goto :goto_0

    .line 188
    .end local v1    # "listViewLoadingLayout":Lc8/Mqd;
    .end local v2    # "originalLoadingLayout":Lc8/Mqd;
    .end local v3    # "scrollLvToEdge":Z
    .end local v4    # "scrollToHeight":I
    .end local v5    # "selection":I
    :pswitch_0
    invoke-virtual {p0}, Lc8/Bqd;->getFooterLayout()Lc8/Mqd;

    move-result-object v2

    .line 189
    .restart local v2    # "originalLoadingLayout":Lc8/Mqd;
    iget-object v1, p0, Lc8/Bqd;->mFooterLoadingView:Lc8/Mqd;

    .line 190
    .restart local v1    # "listViewLoadingLayout":Lc8/Mqd;
    iget-object v6, p0, Lc8/Bqd;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 191
    .restart local v5    # "selection":I
    invoke-virtual {p0}, Lc8/Bqd;->getFooterHeight()I

    move-result v4

    .line 192
    .restart local v4    # "scrollToHeight":I
    iget-object v6, p0, Lc8/Bqd;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v3, :cond_3

    .line 194
    .restart local v3    # "scrollLvToEdge":Z
    :goto_2
    goto :goto_1

    .end local v3    # "scrollLvToEdge":Z
    :cond_3
    move v3, v7

    .line 192
    goto :goto_2

    :cond_4
    move v3, v7

    .line 201
    goto :goto_1

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lc8/hqd;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lc8/Bqd;->mHeaderLoadingView:Lc8/Mqd;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lc8/Bqd;->mHeaderLoadingView:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setSubHeaderText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lc8/Bqd;->mFooterLoadingView:Lc8/Mqd;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lc8/Bqd;->mFooterLoadingView:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setSubHeaderText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_1
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lc8/hqd;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 84
    iget-object v0, p0, Lc8/Bqd;->mHeaderLoadingView:Lc8/Mqd;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lc8/Bqd;->mHeaderLoadingView:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lc8/Bqd;->mFooterLoadingView:Lc8/Mqd;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lc8/Bqd;->mFooterLoadingView:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :cond_1
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lc8/hqd;->setPullLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 95
    iget-object v0, p0, Lc8/Bqd;->mHeaderLoadingView:Lc8/Mqd;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lc8/Bqd;->mHeaderLoadingView:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lc8/Bqd;->mFooterLoadingView:Lc8/Mqd;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lc8/Bqd;->mFooterLoadingView:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 101
    :cond_1
    return-void
.end method

.method protected setRefreshingInternal(Z)V
    .locals 8
    .param p1, "doScroll"    # Z

    .prologue
    const/4 v7, 0x0

    .line 232
    iget-object v5, p0, Lc8/Bqd;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 233
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lc8/Bqd;->getShowViewWhileRefreshing()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    :cond_0
    invoke-super {p0, p1}, Lc8/hqd;->setRefreshingInternal(Z)V

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 239
    :cond_2
    invoke-super {p0, v7}, Lc8/hqd;->setRefreshingInternal(Z)V

    .line 244
    sget-object v5, Lc8/yqd;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lc8/Bqd;->getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 253
    invoke-virtual {p0}, Lc8/Bqd;->getHeaderLayout()Lc8/Mqd;

    move-result-object v2

    .line 254
    .local v2, "originalLoadingLayout":Lc8/Mqd;
    iget-object v1, p0, Lc8/Bqd;->mHeaderLoadingView:Lc8/Mqd;

    .line 255
    .local v1, "listViewLoadingLayout":Lc8/Mqd;
    const/4 v4, 0x0

    .line 256
    .local v4, "selection":I
    invoke-virtual {p0}, Lc8/Bqd;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lc8/Bqd;->getFooterHeight()I

    move-result v6

    add-int v3, v5, v6

    .line 260
    .local v3, "scrollToY":I
    :goto_1
    if-eqz p1, :cond_3

    .line 263
    invoke-virtual {p0, v3}, Lc8/Bqd;->setHeaderScroll(I)V

    .line 267
    :cond_3
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lc8/Mqd;->setVisibility(I)V

    .line 270
    invoke-virtual {v1, v7}, Lc8/Mqd;->setVisibility(I)V

    .line 271
    invoke-virtual {v1}, Lc8/Mqd;->refreshing()V

    .line 273
    if-eqz p1, :cond_1

    .line 276
    iget-object v5, p0, Lc8/Bqd;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 279
    invoke-virtual {p0, v7}, Lc8/Bqd;->smoothScrollTo(I)V

    goto :goto_0

    .line 246
    .end local v1    # "listViewLoadingLayout":Lc8/Mqd;
    .end local v2    # "originalLoadingLayout":Lc8/Mqd;
    .end local v3    # "scrollToY":I
    .end local v4    # "selection":I
    :pswitch_0
    invoke-virtual {p0}, Lc8/Bqd;->getFooterLayout()Lc8/Mqd;

    move-result-object v2

    .line 247
    .restart local v2    # "originalLoadingLayout":Lc8/Mqd;
    iget-object v1, p0, Lc8/Bqd;->mFooterLoadingView:Lc8/Mqd;

    .line 248
    .restart local v1    # "listViewLoadingLayout":Lc8/Mqd;
    iget-object v5, p0, Lc8/Bqd;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 249
    .restart local v4    # "selection":I
    invoke-virtual {p0}, Lc8/Bqd;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lc8/Bqd;->getHeaderHeight()I

    move-result v6

    sub-int v3, v5, v6

    .line 250
    .restart local v3    # "scrollToY":I
    goto :goto_1

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lc8/hqd;->setRefreshingLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 106
    iget-object v0, p0, Lc8/Bqd;->mHeaderLoadingView:Lc8/Mqd;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lc8/Bqd;->mHeaderLoadingView:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lc8/Bqd;->mFooterLoadingView:Lc8/Mqd;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lc8/Bqd;->mFooterLoadingView:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 112
    :cond_1
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Lc8/hqd;->setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 117
    iget-object v0, p0, Lc8/Bqd;->mHeaderLoadingView:Lc8/Mqd;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lc8/Bqd;->mHeaderLoadingView:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lc8/Bqd;->mFooterLoadingView:Lc8/Mqd;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lc8/Bqd;->mFooterLoadingView:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 123
    :cond_1
    return-void
.end method
