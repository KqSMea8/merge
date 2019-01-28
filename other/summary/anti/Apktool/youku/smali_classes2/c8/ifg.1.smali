.class public Lc8/ifg;
.super Lc8/iv;
.source "RecyclerViewBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc8/hfg;",
        ">",
        "Lc8/iv",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private iRecyclerAdapterListener:Lc8/gfg;


# direct methods
.method public constructor <init>(Lc8/gfg;)V
    .locals 0
    .param p1, "Listener"    # Lc8/gfg;

    .prologue
    .line 33
    .local p0, "this":Lc8/ifg;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    invoke-direct {p0}, Lc8/iv;-><init>()V

    .line 34
    iput-object p1, p0, Lc8/ifg;->iRecyclerAdapterListener:Lc8/gfg;

    .line 35
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lc8/ifg;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    iget-object v0, p0, Lc8/ifg;->iRecyclerAdapterListener:Lc8/gfg;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lc8/ifg;->iRecyclerAdapterListener:Lc8/gfg;

    invoke-interface {v0}, Lc8/gfg;->getItemCount()I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 77
    .local p0, "this":Lc8/ifg;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    iget-object v0, p0, Lc8/ifg;->iRecyclerAdapterListener:Lc8/gfg;

    invoke-interface {v0, p1}, Lc8/gfg;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    .local p0, "this":Lc8/ifg;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    iget-object v0, p0, Lc8/ifg;->iRecyclerAdapterListener:Lc8/gfg;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lc8/ifg;->iRecyclerAdapterListener:Lc8/gfg;

    invoke-interface {v0, p1}, Lc8/gfg;->getItemViewType(I)I

    move-result p1

    .line 72
    .end local p1    # "position":I
    :cond_0
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Lc8/Qv;I)V
    .locals 0
    .param p1, "x0"    # Lc8/Qv;
    .param p2, "x1"    # I

    .prologue
    .line 29
    .local p0, "this":Lc8/ifg;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    check-cast p1, Lc8/hfg;

    .end local p1    # "x0":Lc8/Qv;
    invoke-virtual {p0, p1, p2}, Lc8/ifg;->onBindViewHolder(Lc8/hfg;I)V

    return-void
.end method

.method public onBindViewHolder(Lc8/hfg;I)V
    .locals 1
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lc8/ifg;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    .local p1, "viewHolder":Lc8/hfg;, "TT;"
    iget-object v0, p0, Lc8/ifg;->iRecyclerAdapterListener:Lc8/gfg;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lc8/ifg;->iRecyclerAdapterListener:Lc8/gfg;

    invoke-interface {v0, p1, p2}, Lc8/gfg;->onBindViewHolder(Lc8/Qv;I)V

    .line 65
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/Qv;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 29
    .local p0, "this":Lc8/ifg;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/ifg;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/hfg;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/hfg;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lc8/ifg;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    iget-object v0, p0, Lc8/ifg;->iRecyclerAdapterListener:Lc8/gfg;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lc8/ifg;->iRecyclerAdapterListener:Lc8/gfg;

    invoke-interface {v0, p1, p2}, Lc8/gfg;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/Qv;

    move-result-object v0

    check-cast v0, Lc8/hfg;

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onFailedToRecycleView(Lc8/Qv;)Z
    .locals 1
    .param p1, "x0"    # Lc8/Qv;

    .prologue
    .line 29
    .local p0, "this":Lc8/ifg;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    check-cast p1, Lc8/hfg;

    .end local p1    # "x0":Lc8/Qv;
    invoke-virtual {p0, p1}, Lc8/ifg;->onFailedToRecycleView(Lc8/hfg;)Z

    move-result v0

    return v0
.end method

.method public onFailedToRecycleView(Lc8/hfg;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lc8/ifg;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    .local p1, "holder":Lc8/hfg;, "TT;"
    iget-object v0, p0, Lc8/ifg;->iRecyclerAdapterListener:Lc8/gfg;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lc8/ifg;->iRecyclerAdapterListener:Lc8/gfg;

    invoke-interface {v0, p1}, Lc8/gfg;->onFailedToRecycleView(Lc8/Qv;)Z

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lc8/iv;->onFailedToRecycleView(Lc8/Qv;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onViewAttachedToWindow(Lc8/Qv;)V
    .locals 0
    .param p1, "x0"    # Lc8/Qv;

    .prologue
    .line 29
    .local p0, "this":Lc8/ifg;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    check-cast p1, Lc8/hfg;

    .end local p1    # "x0":Lc8/Qv;
    invoke-virtual {p0, p1}, Lc8/ifg;->onViewAttachedToWindow(Lc8/hfg;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lc8/hfg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lc8/ifg;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    .local p1, "holder":Lc8/hfg;, "TT;"
    invoke-super {p0, p1}, Lc8/iv;->onViewAttachedToWindow(Lc8/Qv;)V

    .line 49
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/hfg;->isFullSpan()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p1, Lc8/hfg;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 51
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lc8/Lw;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 54
    check-cast v1, Lc8/Lw;

    .line 55
    .local v1, "p":Lc8/Lw;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lc8/Lw;->setFullSpan(Z)V

    .line 58
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "p":Lc8/Lw;
    :cond_0
    return-void
.end method

.method public bridge synthetic onViewRecycled(Lc8/Qv;)V
    .locals 0
    .param p1, "x0"    # Lc8/Qv;

    .prologue
    .line 29
    .local p0, "this":Lc8/ifg;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    check-cast p1, Lc8/hfg;

    .end local p1    # "x0":Lc8/Qv;
    invoke-virtual {p0, p1}, Lc8/ifg;->onViewRecycled(Lc8/hfg;)V

    return-void
.end method

.method public onViewRecycled(Lc8/hfg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lc8/ifg;, "Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter<TT;>;"
    .local p1, "holder":Lc8/hfg;, "TT;"
    iget-object v0, p0, Lc8/ifg;->iRecyclerAdapterListener:Lc8/gfg;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lc8/ifg;->iRecyclerAdapterListener:Lc8/gfg;

    invoke-interface {v0, p1}, Lc8/gfg;->onViewRecycled(Lc8/Qv;)V

    .line 93
    :cond_0
    invoke-super {p0, p1}, Lc8/iv;->onViewRecycled(Lc8/Qv;)V

    .line 94
    return-void
.end method
