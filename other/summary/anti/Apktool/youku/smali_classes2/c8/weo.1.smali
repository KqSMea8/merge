.class public abstract Lc8/weo;
.super Lc8/iv;
.source "ARecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/iv",
        "<",
        "Lc8/Qv;",
        ">;"
    }
.end annotation


# instance fields
.field protected cacheViewHolder:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lc8/Qv;",
            ">;>;"
        }
    .end annotation
.end field

.field protected canLoadMore:Z

.field protected dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mCheckList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mIsEditModel:Z

.field protected onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    invoke-direct {p0}, Lc8/iv;-><init>()V

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/weo;->cacheViewHolder:Landroid/util/SparseArray;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/weo;->dataList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/weo;->mCheckList:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lc8/weo;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lc8/weo;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Lc8/iv;-><init>()V

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/weo;->cacheViewHolder:Landroid/util/SparseArray;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/weo;->dataList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/weo;->mCheckList:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lc8/weo;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lc8/weo;->dataList:Ljava/util/List;

    .line 63
    if-nez p2, :cond_0

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/weo;->dataList:Ljava/util/List;

    .line 66
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lc8/weo;->mInflater:Landroid/view/LayoutInflater;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2}, Lc8/weo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 72
    iput-object p3, p0, Lc8/weo;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 73
    return-void
.end method


# virtual methods
.method public getCheckList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    iget-object v0, p0, Lc8/weo;->mCheckList:Ljava/util/List;

    return-object v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    iget-object v0, p0, Lc8/weo;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    iget-object v0, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-static {v0}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemData(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lc8/weo;->dataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 174
    iget-object v0, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 97
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    iget-object v1, p0, Lc8/weo;->cacheViewHolder:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 98
    .local v0, "holderRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Qv;

    iget-object v1, v1, Lc8/Qv;->itemView:Landroid/view/View;

    .line 101
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 314
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    iget-object v0, p0, Lc8/weo;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method protected isChecked(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/weo;->mCheckList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEditModel()Z
    .locals 1

    .prologue
    .line 199
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    iget-boolean v0, p0, Lc8/weo;->mIsEditModel:Z

    return v0
.end method

.method public isEmptyAdapter()Z
    .locals 1

    .prologue
    .line 332
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    iget-object v0, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-static {v0}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isSelectAll()Z
    .locals 2

    .prologue
    .line 244
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    iget-object v0, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-static {v0}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/weo;->mCheckList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lc8/weo;->dataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    :cond_0
    invoke-virtual {p0}, Lc8/weo;->getItemCount()I

    .line 159
    iget-object v0, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    invoke-virtual {p0}, Lc8/weo;->notifyDataSetChanged()V

    .line 164
    :cond_1
    return-void
.end method

.method public notifyDataSetInserted(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lc8/weo;->getItemCount()I

    move-result v0

    .line 138
    .local v0, "count":I
    iget-object v1, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-static {v1}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    iput-object p1, p0, Lc8/weo;->dataList:Ljava/util/List;

    .line 144
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lc8/weo;->notifyItemRangeInserted(II)V

    .line 146
    .end local v0    # "count":I
    :cond_0
    return-void

    .line 141
    .restart local v0    # "count":I
    :cond_1
    iget-object v1, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public onBindViewHolder(Lc8/Qv;I)V
    .locals 2
    .param p1, "holder"    # Lc8/Qv;
    .param p2, "position"    # I

    .prologue
    .line 77
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    instance-of v0, p1, Lc8/xeo;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 78
    check-cast v0, Lc8/xeo;

    invoke-virtual {p0, p2}, Lc8/weo;->getItemData(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lc8/xeo;->bindViewHolder(Ljava/lang/Object;I)V

    .line 80
    :cond_0
    iget-object v0, p0, Lc8/weo;->cacheViewHolder:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    return-void
.end method

.method public onItemEditCheckedChange(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/weo;->mCheckList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lc8/weo;->mCheckList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 190
    :goto_0
    invoke-virtual {p0}, Lc8/weo;->notifyDataSetChanged()V

    .line 191
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lc8/weo;->mCheckList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onItemViewRemoved(Ljava/lang/Object;I)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Lc8/weo;->notifyItemRemoved(I)V

    .line 298
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lc8/weo;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lc8/weo;->notifyItemRangeChanged(II)V

    .line 299
    return-void
.end method

.method public onItemsViewRemoved(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-static {v0}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 310
    :cond_0
    invoke-virtual {p0}, Lc8/weo;->notifyDataSetChanged()V

    .line 311
    return-void
.end method

.method public onViewDetachedFromWindow(Lc8/Qv;)V
    .locals 2
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 85
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    invoke-super {p0, p1}, Lc8/iv;->onViewDetachedFromWindow(Lc8/Qv;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onViewDetachedFromWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lc8/Qv;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lc8/weo;->cacheViewHolder:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lc8/Qv;->getAdapterPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 88
    return-void
.end method

.method public resetCheckList()V
    .locals 1

    .prologue
    .line 279
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    iget-object v0, p0, Lc8/weo;->mCheckList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 280
    return-void
.end method

.method public resetCheckList(Ljava/util/List;)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 286
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    iget-object v0, p0, Lc8/weo;->mCheckList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 287
    return-void
.end method

.method public setCheckList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    .local p1, "mCheckList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lc8/weo;->mCheckList:Ljava/util/List;

    .line 273
    return-void
.end method

.method public setDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lc8/weo;->dataList:Ljava/util/List;

    .line 119
    return-void
.end method

.method public setEditModel(Z)V
    .locals 1
    .param p1, "editModel"    # Z

    .prologue
    .line 208
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    iput-boolean p1, p0, Lc8/weo;->mIsEditModel:Z

    .line 209
    iget-boolean v0, p0, Lc8/weo;->mIsEditModel:Z

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lc8/weo;->mCheckList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    :cond_0
    invoke-virtual {p0}, Lc8/weo;->notifyDataSetChanged()V

    .line 213
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 323
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    iput-object p1, p0, Lc8/weo;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 324
    return-void
.end method

.method public setSelectAll(Z)V
    .locals 4
    .param p1, "isSelectAll"    # Z

    .prologue
    .line 221
    .local p0, "this":Lc8/weo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewAdapter<TT;>;"
    if-eqz p1, :cond_0

    .line 222
    iget-object v2, p0, Lc8/weo;->mCheckList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 223
    iget-object v2, p0, Lc8/weo;->mCheckList:Ljava/util/List;

    iget-object v3, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    :goto_0
    invoke-virtual {p0}, Lc8/weo;->notifyDataSetChanged()V

    .line 236
    return-void

    .line 225
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v1, "nevCheckList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-static {v2}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 228
    iget-object v2, p0, Lc8/weo;->mCheckList:Ljava/util/List;

    iget-object v3, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    iget-object v2, p0, Lc8/weo;->dataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    .end local v0    # "i":I
    :cond_2
    iput-object v1, p0, Lc8/weo;->mCheckList:Ljava/util/List;

    goto :goto_0
.end method
