.class public Lc8/wOf;
.super Lc8/iv;
.source "SmoothRecyclerScrollFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xOf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmoothAdapter"
.end annotation


# instance fields
.field private mDelegateAdapter:Lc8/iv;

.field final synthetic this$0:Lc8/xOf;


# direct methods
.method protected constructor <init>(Lc8/xOf;Lc8/iv;)V
    .locals 1
    .param p1, "this$0"    # Lc8/xOf;
    .param p2, "baseAdapter"    # Lc8/iv;

    .prologue
    .line 114
    iput-object p1, p0, Lc8/wOf;->this$0:Lc8/xOf;

    invoke-direct {p0}, Lc8/iv;-><init>()V

    .line 115
    iput-object p2, p0, Lc8/wOf;->mDelegateAdapter:Lc8/iv;

    .line 116
    invoke-virtual {p2}, Lc8/iv;->hasStableIds()Z

    move-result v0

    invoke-super {p0, v0}, Lc8/iv;->setHasStableIds(Z)V

    .line 117
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lc8/wOf;->mDelegateAdapter:Lc8/iv;

    invoke-virtual {v0}, Lc8/iv;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lc8/wOf;->mDelegateAdapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lc8/wOf;->mDelegateAdapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Lc8/Qv;I)V
    .locals 2
    .param p1, "holder"    # Lc8/Qv;
    .param p2, "position"    # I

    .prologue
    .line 126
    const/4 v1, 0x2

    iget-object v0, p0, Lc8/wOf;->this$0:Lc8/xOf;

    invoke-virtual {v0}, Lc8/xOf;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->getScrollState()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 128
    iget-object v0, p0, Lc8/wOf;->this$0:Lc8/xOf;

    iget-object v1, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lc8/xOf;->access$000(Lc8/xOf;Landroid/view/View;)V

    .line 134
    :goto_0
    iget-object v0, p0, Lc8/wOf;->mDelegateAdapter:Lc8/iv;

    invoke-virtual {v0, p1, p2}, Lc8/iv;->onBindViewHolder(Lc8/Qv;I)V

    .line 135
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lc8/wOf;->this$0:Lc8/xOf;

    iget-object v1, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lc8/xOf;->access$100(Lc8/xOf;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/Qv;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lc8/wOf;->mDelegateAdapter:Lc8/iv;

    invoke-virtual {v0, p1, p2}, Lc8/iv;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/Qv;

    move-result-object v0

    return-object v0
.end method

.method public onViewAttachedToWindow(Lc8/Qv;)V
    .locals 1
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 165
    iget-object v0, p0, Lc8/wOf;->mDelegateAdapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->onViewAttachedToWindow(Lc8/Qv;)V

    .line 166
    return-void
.end method

.method public onViewDetachedFromWindow(Lc8/Qv;)V
    .locals 1
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 170
    iget-object v0, p0, Lc8/wOf;->mDelegateAdapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->onViewDetachedFromWindow(Lc8/Qv;)V

    .line 171
    return-void
.end method

.method public onViewRecycled(Lc8/Qv;)V
    .locals 1
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 160
    iget-object v0, p0, Lc8/wOf;->mDelegateAdapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->onViewRecycled(Lc8/Qv;)V

    .line 161
    return-void
.end method

.method public registerAdapterDataObserver(Lc8/kv;)V
    .locals 1
    .param p1, "observer"    # Lc8/kv;

    .prologue
    .line 175
    iget-object v0, p0, Lc8/wOf;->mDelegateAdapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->registerAdapterDataObserver(Lc8/kv;)V

    .line 176
    return-void
.end method

.method public unregisterAdapterDataObserver(Lc8/kv;)V
    .locals 1
    .param p1, "observer"    # Lc8/kv;

    .prologue
    .line 180
    iget-object v0, p0, Lc8/wOf;->mDelegateAdapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->unregisterAdapterDataObserver(Lc8/kv;)V

    .line 181
    return-void
.end method
