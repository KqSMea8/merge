.class public Lc8/hv;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lc8/ks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Rv;->initAdapterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Rv;


# direct methods
.method constructor <init>(Lc8/Rv;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Rv;

    .prologue
    .line 812
    iput-object p1, p0, Lc8/hv;->this$0:Lc8/Rv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchUpdate(Lc8/ls;)V
    .locals 5
    .param p1, "op"    # Lc8/ls;

    .prologue
    .line 855
    iget v0, p1, Lc8/ls;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 870
    :goto_0
    :pswitch_0
    return-void

    .line 857
    :pswitch_1
    iget-object v0, p0, Lc8/hv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/hv;->this$0:Lc8/Rv;

    iget v2, p1, Lc8/ls;->positionStart:I

    iget v3, p1, Lc8/ls;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lc8/xv;->onItemsAdded(Lc8/Rv;II)V

    goto :goto_0

    .line 860
    :pswitch_2
    iget-object v0, p0, Lc8/hv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/hv;->this$0:Lc8/Rv;

    iget v2, p1, Lc8/ls;->positionStart:I

    iget v3, p1, Lc8/ls;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lc8/xv;->onItemsRemoved(Lc8/Rv;II)V

    goto :goto_0

    .line 863
    :pswitch_3
    iget-object v0, p0, Lc8/hv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/hv;->this$0:Lc8/Rv;

    iget v2, p1, Lc8/ls;->positionStart:I

    iget v3, p1, Lc8/ls;->itemCount:I

    iget-object v4, p1, Lc8/ls;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/xv;->onItemsUpdated(Lc8/Rv;IILjava/lang/Object;)V

    goto :goto_0

    .line 867
    :pswitch_4
    iget-object v0, p0, Lc8/hv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/hv;->this$0:Lc8/Rv;

    iget v2, p1, Lc8/ls;->positionStart:I

    iget v3, p1, Lc8/ls;->itemCount:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/xv;->onItemsMoved(Lc8/Rv;III)V

    goto :goto_0

    .line 855
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public findViewHolder(I)Lc8/Qv;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 815
    iget-object v2, p0, Lc8/hv;->this$0:Lc8/Rv;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lc8/Rv;->findViewHolderForPosition(IZ)Lc8/Qv;

    move-result-object v0

    .line 816
    .local v0, "vh":Lc8/Qv;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 827
    .end local v0    # "vh":Lc8/Qv;
    :cond_0
    :goto_0
    return-object v0

    .line 821
    .restart local v0    # "vh":Lc8/Qv;
    :cond_1
    iget-object v2, p0, Lc8/hv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mChildHelper:Lc8/ht;

    iget-object v3, v0, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lc8/ht;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 825
    goto :goto_0
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 845
    iget-object v0, p0, Lc8/hv;->this$0:Lc8/Rv;

    invoke-virtual {v0, p1, p2, p3}, Lc8/Rv;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 846
    iget-object v0, p0, Lc8/hv;->this$0:Lc8/Rv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Rv;->mItemsChanged:Z

    .line 847
    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 879
    iget-object v0, p0, Lc8/hv;->this$0:Lc8/Rv;

    invoke-virtual {v0, p1, p2}, Lc8/Rv;->offsetPositionRecordsForInsert(II)V

    .line 880
    iget-object v0, p0, Lc8/hv;->this$0:Lc8/Rv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Rv;->mItemsAddedOrRemoved:Z

    .line 881
    return-void
.end method

.method public offsetPositionsForMove(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 885
    iget-object v0, p0, Lc8/hv;->this$0:Lc8/Rv;

    invoke-virtual {v0, p1, p2}, Lc8/Rv;->offsetPositionRecordsForMove(II)V

    .line 887
    iget-object v0, p0, Lc8/hv;->this$0:Lc8/Rv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Rv;->mItemsAddedOrRemoved:Z

    .line 888
    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v1, 0x1

    .line 832
    iget-object v0, p0, Lc8/hv;->this$0:Lc8/Rv;

    invoke-virtual {v0, p1, p2, v1}, Lc8/Rv;->offsetPositionRecordsForRemove(IIZ)V

    .line 833
    iget-object v0, p0, Lc8/hv;->this$0:Lc8/Rv;

    iput-boolean v1, v0, Lc8/Rv;->mItemsAddedOrRemoved:Z

    .line 834
    iget-object v0, p0, Lc8/hv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mState:Lc8/Nv;

    iget v1, v0, Lc8/Nv;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr v1, p2

    iput v1, v0, Lc8/Nv;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 835
    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 839
    iget-object v0, p0, Lc8/hv;->this$0:Lc8/Rv;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lc8/Rv;->offsetPositionRecordsForRemove(IIZ)V

    .line 840
    iget-object v0, p0, Lc8/hv;->this$0:Lc8/Rv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Rv;->mItemsAddedOrRemoved:Z

    .line 841
    return-void
.end method

.method public onDispatchFirstPass(Lc8/ls;)V
    .locals 0
    .param p1, "op"    # Lc8/ls;

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Lc8/hv;->dispatchUpdate(Lc8/ls;)V

    .line 852
    return-void
.end method

.method public onDispatchSecondPass(Lc8/ls;)V
    .locals 0
    .param p1, "op"    # Lc8/ls;

    .prologue
    .line 874
    invoke-virtual {p0, p1}, Lc8/hv;->dispatchUpdate(Lc8/ls;)V

    .line 875
    return-void
.end method
