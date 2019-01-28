.class public Lc8/odg;
.super Lc8/Xcg;
.source "WXListComponent.java"


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Xcg",
        "<",
        "Lc8/Ifg;",
        ">;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mPaddingLeft:F

.field private mPaddingRight:F

.field private mRecyclerDom:Lc8/NYf;


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "isLazy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p5}, Lc8/odg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 2
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "lazy"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lc8/Xcg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 54
    const-string/jumbo v0, "WXListComponent"

    iput-object v0, p0, Lc8/odg;->TAG:Ljava/lang/String;

    .line 67
    if-eqz p2, :cond_0

    instance-of v0, p2, Lc8/NYf;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 68
    check-cast v0, Lc8/NYf;

    iput-object v0, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    .line 69
    iget-object v0, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    invoke-virtual {v0}, Lc8/NYf;->preCalculateCellWidth()V

    .line 71
    const-string/jumbo v0, "waterfall"

    invoke-virtual {p2}, Lc8/HYf;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lc8/odg;->mLayoutType:I

    .line 76
    :goto_0
    invoke-direct {p0}, Lc8/odg;->updateRecyclerAttr()V

    .line 79
    :cond_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    invoke-virtual {v0}, Lc8/NYf;->getLayoutType()I

    move-result v0

    iput v0, p0, Lc8/odg;->mLayoutType:I

    goto :goto_0
.end method

.method private updateRecyclerAttr()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    invoke-virtual {v0}, Lc8/NYf;->getColumnCount()I

    move-result v0

    iput v0, p0, Lc8/odg;->mColumnCount:I

    .line 133
    iget-object v0, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    invoke-virtual {v0}, Lc8/NYf;->getColumnGap()F

    move-result v0

    iput v0, p0, Lc8/odg;->mColumnGap:F

    .line 134
    iget-object v0, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    invoke-virtual {v0}, Lc8/NYf;->getColumnWidth()F

    move-result v0

    iput v0, p0, Lc8/odg;->mColumnWidth:F

    .line 135
    iget-object v0, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    invoke-virtual {v0}, Lc8/NYf;->getPadding()Lc8/IZf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/IZf;->get(I)F

    move-result v0

    iput v0, p0, Lc8/odg;->mPaddingLeft:F

    .line 136
    iget-object v0, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    invoke-virtual {v0}, Lc8/NYf;->getPadding()Lc8/IZf;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lc8/IZf;->get(I)F

    move-result v0

    iput v0, p0, Lc8/odg;->mPaddingRight:F

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public addChild(Lc8/tbg;I)V
    .locals 6
    .param p1, "child"    # Lc8/tbg;
    .param p2, "index"    # I

    .prologue
    const-wide/16 v2, 0x64

    .line 94
    invoke-super {p0, p1, p2}, Lc8/Xcg;->addChild(Lc8/tbg;I)V

    .line 95
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-ge p2, v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    instance-of v0, p1, Lc8/Qbg;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    move-object v1, p1

    check-cast v1, Lc8/Qbg;

    invoke-virtual {v0, v1}, Lc8/Ifg;->setOnRefreshListener(Lc8/Efg;)V

    .line 101
    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    new-instance v1, Lc8/kdg;

    invoke-direct {v1, p0, p1}, Lc8/kdg;-><init>(Lc8/odg;Lc8/tbg;)V

    invoke-virtual {v0, v1, v2, v3}, Lc8/Ifg;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    :cond_2
    instance-of v0, p1, Lc8/Obg;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 110
    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    move-object v1, p1

    check-cast v1, Lc8/Obg;

    invoke-virtual {v0, v1}, Lc8/Ifg;->setOnLoadingListener(Lc8/Dfg;)V

    .line 111
    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    new-instance v1, Lc8/ldg;

    invoke-direct {v1, p0, p1}, Lc8/ldg;-><init>(Lc8/odg;Lc8/tbg;)V

    invoke-virtual {v0, v1, v2, v3}, Lc8/Ifg;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    :cond_3
    iget-object v0, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lc8/odg;->mColumnWidth:F

    iget-object v1, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    invoke-virtual {v1}, Lc8/NYf;->getColumnWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    iget v0, p0, Lc8/odg;->mColumnCount:I

    iget-object v1, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    invoke-virtual {v1}, Lc8/NYf;->getColumnCount()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lc8/odg;->mColumnGap:F

    iget-object v1, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    invoke-virtual {v1}, Lc8/NYf;->getColumnGap()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 123
    :cond_4
    invoke-direct {p0}, Lc8/odg;->updateRecyclerAttr()V

    .line 124
    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    invoke-virtual {p0}, Lc8/odg;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lc8/odg;->mLayoutType:I

    iget v3, p0, Lc8/odg;->mColumnCount:I

    iget v4, p0, Lc8/odg;->mColumnGap:F

    invoke-virtual {p0}, Lc8/odg;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lc8/efg;->initView(Landroid/content/Context;IIFI)V

    goto/16 :goto_0
.end method

.method public createChildViewAt(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const-wide/16 v4, 0x64

    .line 197
    invoke-virtual {p0, p1}, Lc8/odg;->rearrangeIndexAndGetChild(I)Landroid/util/Pair;

    move-result-object v1

    .line 198
    .local v1, "ret":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lc8/odg;->getChild(I)Lc8/tbg;

    move-result-object v0

    .line 200
    .local v0, "child":Lc8/tbg;
    instance-of v2, v0, Lc8/ibg;

    if-eqz v2, :cond_2

    .line 201
    invoke-virtual {v0}, Lc8/tbg;->createView()V

    .line 202
    instance-of v2, v0, Lc8/Qbg;

    if-eqz v2, :cond_1

    .line 203
    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/Ifg;

    move-object v3, v0

    check-cast v3, Lc8/Qbg;

    invoke-virtual {v2, v3}, Lc8/Ifg;->setOnRefreshListener(Lc8/Efg;)V

    .line 204
    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/Ifg;

    new-instance v3, Lc8/mdg;

    invoke-direct {v3, p0, v0}, Lc8/mdg;-><init>(Lc8/odg;Lc8/tbg;)V

    invoke-virtual {v2, v3, v4, v5}, Lc8/Ifg;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    .end local v0    # "child":Lc8/tbg;
    :cond_0
    :goto_0
    return-void

    .line 210
    .restart local v0    # "child":Lc8/tbg;
    :cond_1
    instance-of v2, v0, Lc8/Obg;

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/Ifg;

    move-object v3, v0

    check-cast v3, Lc8/Obg;

    invoke-virtual {v2, v3}, Lc8/Ifg;->setOnLoadingListener(Lc8/Dfg;)V

    .line 212
    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/Ifg;

    new-instance v3, Lc8/ndg;

    invoke-direct {v3, p0, v0}, Lc8/ndg;-><init>(Lc8/odg;Lc8/tbg;)V

    invoke-virtual {v2, v3, v4, v5}, Lc8/Ifg;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 220
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-super {p0, v2}, Lc8/Xcg;->createChildViewAt(I)V

    goto :goto_0
.end method

.method protected bridge synthetic generateListView(Landroid/content/Context;I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lc8/odg;->generateListView(Landroid/content/Context;I)Lc8/Ifg;

    move-result-object v0

    return-object v0
.end method

.method protected generateListView(Landroid/content/Context;I)Lc8/Ifg;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .prologue
    .line 83
    new-instance v0, Lc8/Ifg;

    iget v2, p0, Lc8/odg;->mLayoutType:I

    iget v3, p0, Lc8/odg;->mColumnCount:I

    iget v4, p0, Lc8/odg;->mColumnGap:F

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lc8/Ifg;-><init>(Landroid/content/Context;IIFI)V

    .line 84
    .local v0, "bounceRecyclerView":Lc8/Ifg;
    invoke-virtual {v0}, Lc8/Ifg;->getSwipeLayout()Lc8/Gfg;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lc8/odg;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v1

    const-string/jumbo v2, "nestedScrollingEnabled"

    invoke-virtual {v1, v2}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0}, Lc8/Ifg;->getSwipeLayout()Lc8/Gfg;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lc8/Gfg;->setNestedScrollingEnabled(Z)V

    .line 89
    :cond_0
    return-object v0
.end method

.method public remove(Lc8/tbg;Z)V
    .locals 1
    .param p1, "child"    # Lc8/tbg;
    .param p2, "destroy"    # Z

    .prologue
    .line 226
    invoke-super {p0, p1, p2}, Lc8/Xcg;->remove(Lc8/tbg;Z)V

    .line 227
    instance-of v0, p1, Lc8/Obg;

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    invoke-virtual {v0, p1}, Lc8/Ifg;->removeFooterView(Lc8/tbg;)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    instance-of v0, p1, Lc8/Qbg;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    invoke-virtual {v0, p1}, Lc8/Ifg;->removeHeaderView(Lc8/tbg;)V

    goto :goto_0
.end method

.method public setColumnCount(I)V
    .locals 6
    .param p1, "columnCount"    # I
    .annotation runtime Lc8/vbg;
        name = "columnCount"
    .end annotation

    .prologue
    .line 152
    iget-object v1, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    invoke-virtual {v1}, Lc8/NYf;->getColumnCount()I

    move-result v1

    iget v2, p0, Lc8/odg;->mColumnCount:I

    if-eq v1, v2, :cond_0

    .line 153
    invoke-virtual {p0}, Lc8/odg;->markComponentUsable()V

    .line 154
    invoke-direct {p0}, Lc8/odg;->updateRecyclerAttr()V

    .line 155
    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Ifg;

    invoke-virtual {v1}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    .line 156
    .local v0, "wxRecyclerView":Lc8/efg;
    invoke-virtual {p0}, Lc8/odg;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lc8/odg;->mLayoutType:I

    iget v3, p0, Lc8/odg;->mColumnCount:I

    iget v4, p0, Lc8/odg;->mColumnGap:F

    invoke-virtual {p0}, Lc8/odg;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lc8/efg;->initView(Landroid/content/Context;IIFI)V

    .line 158
    .end local v0    # "wxRecyclerView":Lc8/efg;
    :cond_0
    return-void
.end method

.method public setColumnGap(F)V
    .locals 6
    .param p1, "columnGap"    # F
    .annotation runtime Lc8/vbg;
        name = "columnGap"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v1, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    invoke-virtual {v1}, Lc8/NYf;->getColumnGap()F

    move-result v1

    iget v2, p0, Lc8/odg;->mColumnGap:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lc8/odg;->markComponentUsable()V

    .line 164
    invoke-direct {p0}, Lc8/odg;->updateRecyclerAttr()V

    .line 165
    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Ifg;

    invoke-virtual {v1}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    .line 166
    .local v0, "wxRecyclerView":Lc8/efg;
    invoke-virtual {p0}, Lc8/odg;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lc8/odg;->mLayoutType:I

    iget v3, p0, Lc8/odg;->mColumnCount:I

    iget v4, p0, Lc8/odg;->mColumnGap:F

    invoke-virtual {p0}, Lc8/odg;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lc8/efg;->initView(Landroid/content/Context;IIFI)V

    .line 168
    .end local v0    # "wxRecyclerView":Lc8/efg;
    :cond_0
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 6
    .param p1, "columnCount"    # I
    .annotation runtime Lc8/vbg;
        name = "columnWidth"
    .end annotation

    .prologue
    .line 142
    iget-object v1, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    invoke-virtual {v1}, Lc8/NYf;->getColumnWidth()F

    move-result v1

    iget v2, p0, Lc8/odg;->mColumnWidth:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lc8/odg;->markComponentUsable()V

    .line 144
    invoke-direct {p0}, Lc8/odg;->updateRecyclerAttr()V

    .line 145
    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Ifg;

    invoke-virtual {v1}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    .line 146
    .local v0, "wxRecyclerView":Lc8/efg;
    invoke-virtual {p0}, Lc8/odg;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lc8/odg;->mLayoutType:I

    iget v3, p0, Lc8/odg;->mColumnCount:I

    iget v4, p0, Lc8/odg;->mColumnGap:F

    invoke-virtual {p0}, Lc8/odg;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lc8/efg;->initView(Landroid/content/Context;IIFI)V

    .line 148
    .end local v0    # "wxRecyclerView":Lc8/efg;
    :cond_0
    return-void
.end method

.method public setScrollable(Z)V
    .locals 2
    .param p1, "scrollable"    # Z
    .annotation runtime Lc8/vbg;
        name = "scrollable"
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Ifg;

    invoke-virtual {v1}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    .line 173
    .local v0, "inner":Lc8/efg;
    invoke-virtual {v0, p1}, Lc8/efg;->setScrollable(Z)V

    .line 174
    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lc8/Xcg;->updateProperties(Ljava/util/Map;)V

    .line 179
    const-string/jumbo v1, "padding"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "paddingLeft"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "paddingRight"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    :cond_0
    iget-object v1, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    if-eqz v1, :cond_2

    iget v1, p0, Lc8/odg;->mPaddingLeft:F

    iget-object v2, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    invoke-virtual {v2}, Lc8/NYf;->getPadding()Lc8/IZf;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/IZf;->get(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lc8/odg;->mPaddingRight:F

    iget-object v2, p0, Lc8/odg;->mRecyclerDom:Lc8/NYf;

    invoke-virtual {v2}, Lc8/NYf;->getPadding()Lc8/IZf;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lc8/IZf;->get(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 186
    :cond_1
    invoke-virtual {p0}, Lc8/odg;->markComponentUsable()V

    .line 187
    invoke-direct {p0}, Lc8/odg;->updateRecyclerAttr()V

    .line 188
    invoke-virtual {p0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Ifg;

    invoke-virtual {v1}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    .line 189
    .local v0, "wxRecyclerView":Lc8/efg;
    invoke-virtual {p0}, Lc8/odg;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lc8/odg;->mLayoutType:I

    iget v3, p0, Lc8/odg;->mColumnCount:I

    iget v4, p0, Lc8/odg;->mColumnGap:F

    invoke-virtual {p0}, Lc8/odg;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lc8/efg;->initView(Landroid/content/Context;IIFI)V

    .line 193
    .end local v0    # "wxRecyclerView":Lc8/efg;
    :cond_2
    return-void
.end method
