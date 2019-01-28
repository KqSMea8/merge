.class public abstract Lc8/Sx;
.super Lc8/cq;
.source "SortedListAdapterCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/cq",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field final mAdapter:Lc8/iv;


# direct methods
.method public constructor <init>(Lc8/iv;)V
    .locals 0
    .param p1, "adapter"    # Lc8/iv;

    .prologue
    .line 36
    .local p0, "this":Lc8/Sx;, "Landroid/support/v7/widget/util/SortedListAdapterCallback<TT2;>;"
    invoke-direct {p0}, Lc8/cq;-><init>()V

    .line 37
    iput-object p1, p0, Lc8/Sx;->mAdapter:Lc8/iv;

    .line 38
    return-void
.end method


# virtual methods
.method public onChanged(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 57
    .local p0, "this":Lc8/Sx;, "Landroid/support/v7/widget/util/SortedListAdapterCallback<TT2;>;"
    iget-object v0, p0, Lc8/Sx;->mAdapter:Lc8/iv;

    invoke-virtual {v0, p1, p2}, Lc8/iv;->notifyItemRangeChanged(II)V

    .line 58
    return-void
.end method

.method public onInserted(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 42
    .local p0, "this":Lc8/Sx;, "Landroid/support/v7/widget/util/SortedListAdapterCallback<TT2;>;"
    iget-object v0, p0, Lc8/Sx;->mAdapter:Lc8/iv;

    invoke-virtual {v0, p1, p2}, Lc8/iv;->notifyItemRangeInserted(II)V

    .line 43
    return-void
.end method

.method public onMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 52
    .local p0, "this":Lc8/Sx;, "Landroid/support/v7/widget/util/SortedListAdapterCallback<TT2;>;"
    iget-object v0, p0, Lc8/Sx;->mAdapter:Lc8/iv;

    invoke-virtual {v0, p1, p2}, Lc8/iv;->notifyItemMoved(II)V

    .line 53
    return-void
.end method

.method public onRemoved(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 47
    .local p0, "this":Lc8/Sx;, "Landroid/support/v7/widget/util/SortedListAdapterCallback<TT2;>;"
    iget-object v0, p0, Lc8/Sx;->mAdapter:Lc8/iv;

    invoke-virtual {v0, p1, p2}, Lc8/iv;->notifyItemRangeRemoved(II)V

    .line 48
    return-void
.end method
