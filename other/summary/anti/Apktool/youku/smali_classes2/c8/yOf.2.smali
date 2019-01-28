.class public Lc8/yOf;
.super Landroid/widget/BaseAdapter;
.source "SmoothScrollFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zOf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmoothAdapter"
.end annotation


# instance fields
.field private mDelegateAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lc8/zOf;


# direct methods
.method public constructor <init>(Lc8/zOf;Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lc8/zOf;
    .param p2, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 98
    iput-object p1, p0, Lc8/yOf;->this$0:Lc8/zOf;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 99
    iput-object p2, p0, Lc8/yOf;->mDelegateAdapter:Landroid/widget/ListAdapter;

    .line 100
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lc8/yOf;->mDelegateAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lc8/yOf;->mDelegateAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lc8/yOf;->mDelegateAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lc8/yOf;->mDelegateAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lc8/yOf;->mDelegateAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 159
    iget-object v1, p0, Lc8/yOf;->mDelegateAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, "itemView":Landroid/view/View;
    const/4 v1, 0x2

    iget-object v2, p0, Lc8/yOf;->this$0:Lc8/zOf;

    invoke-static {v2}, Lc8/zOf;->access$000(Lc8/zOf;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 162
    iget-object v1, p0, Lc8/yOf;->this$0:Lc8/zOf;

    invoke-static {v1, v0}, Lc8/zOf;->access$100(Lc8/zOf;Landroid/view/View;)V

    .line 169
    :goto_0
    return-object v0

    .line 166
    :cond_0
    iget-object v1, p0, Lc8/yOf;->this$0:Lc8/zOf;

    invoke-static {v1, v0}, Lc8/zOf;->access$200(Lc8/zOf;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lc8/yOf;->mDelegateAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lc8/yOf;->mDelegateAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lc8/yOf;->mDelegateAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lc8/yOf;->mDelegateAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lc8/yOf;->mDelegateAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lc8/yOf;->mDelegateAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 179
    :cond_0
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lc8/yOf;->mDelegateAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lc8/yOf;->mDelegateAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 188
    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 193
    iget-object v0, p0, Lc8/yOf;->mDelegateAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 194
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 199
    iget-object v0, p0, Lc8/yOf;->mDelegateAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 200
    return-void
.end method
