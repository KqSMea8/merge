.class public Lc8/bq;
.super Lc8/cq;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchedCallback"
.end annotation

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
.field private final mBatchingListUpdateCallback:Lc8/Kp;

.field final mWrappedCallback:Lc8/cq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cq",
            "<TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/cq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/cq",
            "<TT2;>;)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, "this":Lc8/bq;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    .local p1, "wrappedCallback":Lc8/cq;, "Landroid/support/v7/util/SortedList$Callback<TT2;>;"
    invoke-direct {p0}, Lc8/cq;-><init>()V

    .line 774
    iput-object p1, p0, Lc8/bq;->mWrappedCallback:Lc8/cq;

    .line 775
    new-instance v0, Lc8/Kp;

    iget-object v1, p0, Lc8/bq;->mWrappedCallback:Lc8/cq;

    invoke-direct {v0, v1}, Lc8/Kp;-><init>(Lc8/Tp;)V

    iput-object v0, p0, Lc8/bq;->mBatchingListUpdateCallback:Lc8/Kp;

    .line 776
    return-void
.end method


# virtual methods
.method public areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .line 805
    .local p0, "this":Lc8/bq;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    .local p1, "oldItem":Ljava/lang/Object;, "TT2;"
    .local p2, "newItem":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Lc8/bq;->mWrappedCallback:Lc8/cq;

    invoke-virtual {v0, p1, p2}, Lc8/cq;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .line 810
    .local p0, "this":Lc8/bq;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    .local p1, "item1":Ljava/lang/Object;, "TT2;"
    .local p2, "item2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Lc8/bq;->mWrappedCallback:Lc8/cq;

    invoke-virtual {v0, p1, p2}, Lc8/cq;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)I"
        }
    .end annotation

    .prologue
    .line 780
    .local p0, "this":Lc8/bq;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    .local p1, "o1":Ljava/lang/Object;, "TT2;"
    .local p2, "o2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Lc8/bq;->mWrappedCallback:Lc8/cq;

    invoke-virtual {v0, p1, p2}, Lc8/cq;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public dispatchLastEvent()V
    .locals 1

    .prologue
    .line 818
    .local p0, "this":Lc8/bq;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Lc8/bq;->mBatchingListUpdateCallback:Lc8/Kp;

    invoke-virtual {v0}, Lc8/Kp;->dispatchLastEvent()V

    .line 819
    return-void
.end method

.method public onChanged(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 800
    .local p0, "this":Lc8/bq;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Lc8/bq;->mBatchingListUpdateCallback:Lc8/Kp;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lc8/Kp;->onChanged(IILjava/lang/Object;)V

    .line 801
    return-void
.end method

.method public onInserted(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 785
    .local p0, "this":Lc8/bq;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Lc8/bq;->mBatchingListUpdateCallback:Lc8/Kp;

    invoke-virtual {v0, p1, p2}, Lc8/Kp;->onInserted(II)V

    .line 786
    return-void
.end method

.method public onMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 795
    .local p0, "this":Lc8/bq;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Lc8/bq;->mBatchingListUpdateCallback:Lc8/Kp;

    invoke-virtual {v0, p1, p2}, Lc8/Kp;->onMoved(II)V

    .line 796
    return-void
.end method

.method public onRemoved(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 790
    .local p0, "this":Lc8/bq;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Lc8/bq;->mBatchingListUpdateCallback:Lc8/Kp;

    invoke-virtual {v0, p1, p2}, Lc8/Kp;->onRemoved(II)V

    .line 791
    return-void
.end method
