.class public abstract Lc8/Hfg;
.super Landroid/widget/FrameLayout;
.source "BaseBounceView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# instance fields
.field private mInnerView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field protected swipeLayout:Lc8/Gfg;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .prologue
    .line 50
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lc8/Hfg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "orientation"    # I

    .prologue
    .line 54
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lc8/Hfg;->mOrientation:I

    .line 55
    iput p3, p0, Lc8/Hfg;->mOrientation:I

    .line 56
    return-void
.end method

.method private createBounceView(Landroid/content/Context;)Lc8/Gfg;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    const/4 v2, -0x1

    .line 94
    new-instance v0, Lc8/Gfg;

    invoke-direct {v0, p1}, Lc8/Gfg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    .line 95
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lc8/Gfg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual {p0, p1}, Lc8/Hfg;->setInnerView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/Hfg;->mInnerView:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lc8/Hfg;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    iget-object v1, p0, Lc8/Hfg;->mInnerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lc8/Gfg;->addTargetView(Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {p0, v0, v2, v2}, Lc8/Hfg;->addView(Landroid/view/View;II)V

    .line 101
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    goto :goto_0
.end method


# virtual methods
.method public finishPullLoad()V
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v0}, Lc8/Gfg;->finishPullLoad()V

    .line 88
    :cond_0
    return-void
.end method

.method public finishPullRefresh()V
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v0}, Lc8/Gfg;->finishPullRefresh()V

    .line 83
    :cond_0
    return-void
.end method

.method public getInnerView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget-object v0, p0, Lc8/Hfg;->mInnerView:Landroid/view/View;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget v0, p0, Lc8/Hfg;->mOrientation:I

    return v0
.end method

.method public getSwipeLayout()Lc8/Gfg;
    .locals 1

    .prologue
    .line 223
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    invoke-direct {p0, p1}, Lc8/Hfg;->createBounceView(Landroid/content/Context;)Lc8/Gfg;

    .line 64
    return-void
.end method

.method isVertical()Z
    .locals 2

    .prologue
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    const/4 v0, 0x1

    .line 67
    iget v1, p0, Lc8/Hfg;->mOrientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onLoadmoreComplete()V
.end method

.method public abstract onRefreshingComplete()V
.end method

.method public removeFooterView(Lc8/tbg;)V
    .locals 2
    .param p1, "loading"    # Lc8/tbg;

    .prologue
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    const/4 v1, 0x0

    .line 172
    invoke-virtual {p0, v1}, Lc8/Hfg;->setLoadmoreEnable(Z)V

    .line 173
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v0}, Lc8/Gfg;->getFooterView()Lc8/ufg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v0, v1}, Lc8/Gfg;->setLoadingHeight(I)V

    .line 176
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v0}, Lc8/Gfg;->getFooterView()Lc8/ufg;

    move-result-object v0

    invoke-virtual {p1}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/ufg;->removeView(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v0}, Lc8/Gfg;->finishPullLoad()V

    .line 180
    :cond_0
    return-void
.end method

.method public removeHeaderView(Lc8/tbg;)V
    .locals 2
    .param p1, "refresh"    # Lc8/tbg;

    .prologue
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    const/4 v1, 0x0

    .line 183
    invoke-virtual {p0, v1}, Lc8/Hfg;->setRefreshEnable(Z)V

    .line 184
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v0}, Lc8/Gfg;->getHeaderView()Lc8/ufg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v0, v1}, Lc8/Gfg;->setRefreshHeight(I)V

    .line 187
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v0}, Lc8/Gfg;->getHeaderView()Lc8/ufg;

    move-result-object v0

    invoke-virtual {p1}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/ufg;->removeView(Landroid/view/View;)V

    .line 188
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v0}, Lc8/Gfg;->finishPullRefresh()V

    .line 191
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    const/4 v1, 0x0

    .line 205
    instance-of v0, p1, Lc8/ueg;

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lc8/Hfg;->finishPullLoad()V

    .line 207
    invoke-virtual {p0, v1}, Lc8/Hfg;->setLoadmoreEnable(Z)V

    .line 208
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    iget-object v1, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v1}, Lc8/Gfg;->getFooterView()Lc8/ufg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Gfg;->removeView(Landroid/view/View;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    instance-of v0, p1, Lc8/veg;

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {p0}, Lc8/Hfg;->finishPullRefresh()V

    .line 213
    invoke-virtual {p0, v1}, Lc8/Hfg;->setRefreshEnable(Z)V

    .line 214
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    iget-object v1, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v1}, Lc8/Gfg;->getHeaderView()Lc8/ufg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Gfg;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 218
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setFooterView(Lc8/tbg;)V
    .locals 8
    .param p1, "loading"    # Lc8/tbg;

    .prologue
    .line 147
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lc8/Hfg;->setLoadmoreEnable(Z)V

    .line 148
    iget-object v6, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    if-eqz v6, :cond_1

    .line 149
    iget-object v6, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v6}, Lc8/Gfg;->getFooterView()Lc8/ufg;

    move-result-object v5

    .line 150
    .local v5, "refreshView":Lc8/ufg;
    if-eqz v5, :cond_1

    .line 151
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    .line 152
    .local v3, "immutableDomObject":Lc8/qYf;
    if-eqz v3, :cond_1

    .line 153
    invoke-interface {v3}, Lc8/qYf;->getLayoutHeight()F

    move-result v6

    float-to-int v4, v6

    .line 154
    .local v4, "loadingHeight":I
    iget-object v6, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v6, v4}, Lc8/Gfg;->setLoadingHeight(I)V

    .line 155
    invoke-interface {v3}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v6

    const-string/jumbo v7, "backgroundColor"

    invoke-virtual {v6, v7}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 156
    .local v2, "colorStr":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v2, v6}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "bgColor":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 159
    invoke-static {v0}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 160
    .local v1, "colorInt":I
    if-eqz v1, :cond_0

    .line 161
    iget-object v6, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v6, v1}, Lc8/Gfg;->setLoadingBgColor(I)V

    .line 165
    .end local v1    # "colorInt":I
    :cond_0
    invoke-virtual {p1}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/ufg;->setRefreshView(Landroid/view/View;)V

    .line 169
    .end local v0    # "bgColor":Ljava/lang/String;
    .end local v2    # "colorStr":Ljava/lang/String;
    .end local v3    # "immutableDomObject":Lc8/qYf;
    .end local v4    # "loadingHeight":I
    .end local v5    # "refreshView":Lc8/ufg;
    :cond_1
    return-void
.end method

.method public setHeaderView(Lc8/tbg;)V
    .locals 8
    .param p1, "refresh"    # Lc8/tbg;

    .prologue
    .line 118
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lc8/Hfg;->setRefreshEnable(Z)V

    .line 119
    iget-object v6, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    if-eqz v6, :cond_1

    .line 120
    iget-object v6, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v6}, Lc8/Gfg;->getHeaderView()Lc8/ufg;

    move-result-object v5

    .line 121
    .local v5, "refreshView":Lc8/ufg;
    if-eqz v5, :cond_1

    .line 122
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    .line 123
    .local v3, "immutableDomObject":Lc8/qYf;
    if-eqz v3, :cond_1

    .line 124
    invoke-interface {v3}, Lc8/qYf;->getLayoutHeight()F

    move-result v6

    float-to-int v4, v6

    .line 125
    .local v4, "refreshHeight":I
    iget-object v6, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v6, v4}, Lc8/Gfg;->setRefreshHeight(I)V

    .line 126
    invoke-interface {v3}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v6

    const-string/jumbo v7, "backgroundColor"

    invoke-virtual {v6, v7}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    .local v2, "colorStr":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v2, v6}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "bgColor":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 130
    invoke-static {v0}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 131
    .local v1, "colorInt":I
    if-eqz v1, :cond_0

    .line 132
    iget-object v6, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v6, v1}, Lc8/Gfg;->setRefreshBgColor(I)V

    .line 136
    .end local v1    # "colorInt":I
    :cond_0
    invoke-virtual {p1}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/ufg;->setRefreshView(Landroid/view/View;)V

    .line 140
    .end local v0    # "bgColor":Ljava/lang/String;
    .end local v2    # "colorStr":Ljava/lang/String;
    .end local v3    # "immutableDomObject":Lc8/qYf;
    .end local v4    # "refreshHeight":I
    .end local v5    # "refreshView":Lc8/ufg;
    :cond_1
    return-void
.end method

.method public abstract setInnerView(Landroid/content/Context;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method public setLoadmoreEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 199
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v0, p1}, Lc8/Gfg;->setPullLoadEnable(Z)V

    .line 201
    :cond_0
    return-void
.end method

.method public setOnLoadingListener(Lc8/Dfg;)V
    .locals 1
    .param p1, "onLoadingListener"    # Lc8/Dfg;

    .prologue
    .line 76
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v0, p1}, Lc8/Gfg;->setOnLoadingListener(Lc8/Dfg;)V

    .line 78
    :cond_0
    return-void
.end method

.method public setOnRefreshListener(Lc8/Efg;)V
    .locals 1
    .param p1, "onRefreshListener"    # Lc8/Efg;

    .prologue
    .line 71
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v0, p1}, Lc8/Gfg;->setOnRefreshListener(Lc8/Efg;)V

    .line 73
    :cond_0
    return-void
.end method

.method public setRefreshEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 194
    .local p0, "this":Lc8/Hfg;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lc8/Hfg;->swipeLayout:Lc8/Gfg;

    invoke-virtual {v0, p1}, Lc8/Gfg;->setPullRefreshEnable(Z)V

    .line 196
    :cond_0
    return-void
.end method
