.class public Lc8/Hv;
.super Lc8/kv;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Rv;


# direct methods
.method constructor <init>(Lc8/Rv;)V
    .locals 0

    .prologue
    .line 4927
    iput-object p1, p0, Lc8/Hv;->this$0:Lc8/Rv;

    invoke-direct {p0}, Lc8/kv;-><init>()V

    .line 4928
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 4932
    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Rv;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4933
    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mState:Lc8/Nv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Nv;->mStructureChanged:Z

    .line 4935
    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->setDataSetChangedAfterLayout()V

    .line 4936
    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v0}, Lc8/ms;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4937
    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->requestLayout()V

    .line 4939
    :cond_0
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 4943
    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Rv;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4944
    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v0, p1, p2, p3}, Lc8/ms;->onItemRangeChanged(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4945
    invoke-virtual {p0}, Lc8/Hv;->triggerUpdateProcessor()V

    .line 4947
    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 4951
    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Rv;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4952
    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v0, p1, p2}, Lc8/ms;->onItemRangeInserted(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4953
    invoke-virtual {p0}, Lc8/Hv;->triggerUpdateProcessor()V

    .line 4955
    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 4967
    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Rv;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4968
    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v0, p1, p2, p3}, Lc8/ms;->onItemRangeMoved(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4969
    invoke-virtual {p0}, Lc8/Hv;->triggerUpdateProcessor()V

    .line 4971
    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 4959
    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Rv;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4960
    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v0, p1, p2}, Lc8/ms;->onItemRangeRemoved(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4961
    invoke-virtual {p0}, Lc8/Hv;->triggerUpdateProcessor()V

    .line 4963
    :cond_0
    return-void
.end method

.method triggerUpdateProcessor()V
    .locals 2

    .prologue
    .line 4974
    sget-boolean v0, Lc8/Rv;->POST_UPDATES_ON_ANIMATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    iget-boolean v0, v0, Lc8/Rv;->mHasFixedSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    iget-boolean v0, v0, Lc8/Rv;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 4975
    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    iget-object v1, p0, Lc8/Hv;->this$0:Lc8/Rv;

    iget-object v1, v1, Lc8/Rv;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4980
    :goto_0
    return-void

    .line 4977
    :cond_0
    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Rv;->mAdapterUpdateDuringMeasure:Z

    .line 4978
    iget-object v0, p0, Lc8/Hv;->this$0:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->requestLayout()V

    goto :goto_0
.end method
