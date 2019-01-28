.class public Lc8/Cx;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mx;->postDispatchSwipe(Lc8/Jx;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mx;

.field final synthetic val$anim:Lc8/Jx;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lc8/Mx;Lc8/Jx;I)V
    .locals 0
    .param p1, "this$0"    # Lc8/Mx;

    .prologue
    .line 674
    iput-object p1, p0, Lc8/Cx;->this$0:Lc8/Mx;

    iput-object p2, p0, Lc8/Cx;->val$anim:Lc8/Jx;

    iput p3, p0, Lc8/Cx;->val$swipeDir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 677
    iget-object v1, p0, Lc8/Cx;->this$0:Lc8/Mx;

    iget-object v1, v1, Lc8/Mx;->mRecyclerView:Lc8/Rv;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/Cx;->this$0:Lc8/Mx;

    iget-object v1, v1, Lc8/Mx;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v1}, Lc8/Rv;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/Cx;->val$anim:Lc8/Jx;

    iget-boolean v1, v1, Lc8/Jx;->mOverridden:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lc8/Cx;->val$anim:Lc8/Jx;

    iget-object v1, v1, Lc8/Jx;->mViewHolder:Lc8/Qv;

    .line 679
    invoke-virtual {v1}, Lc8/Qv;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 680
    iget-object v1, p0, Lc8/Cx;->this$0:Lc8/Mx;

    iget-object v1, v1, Lc8/Mx;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v1}, Lc8/Rv;->getItemAnimator()Lc8/qv;

    move-result-object v0

    .line 684
    .local v0, "animator":Lc8/qv;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/qv;->isRunning(Lc8/nv;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lc8/Cx;->this$0:Lc8/Mx;

    .line 685
    invoke-virtual {v1}, Lc8/Mx;->hasRunningRecoverAnim()Z

    move-result v1

    if-nez v1, :cond_2

    .line 686
    iget-object v1, p0, Lc8/Cx;->this$0:Lc8/Mx;

    iget-object v1, v1, Lc8/Mx;->mCallback:Lc8/Gx;

    iget-object v2, p0, Lc8/Cx;->val$anim:Lc8/Jx;

    iget-object v2, v2, Lc8/Jx;->mViewHolder:Lc8/Qv;

    iget v3, p0, Lc8/Cx;->val$swipeDir:I

    invoke-virtual {v1, v2, v3}, Lc8/Gx;->onSwiped(Lc8/Qv;I)V

    .line 691
    .end local v0    # "animator":Lc8/qv;
    :cond_1
    :goto_0
    return-void

    .line 688
    .restart local v0    # "animator":Lc8/qv;
    :cond_2
    iget-object v1, p0, Lc8/Cx;->this$0:Lc8/Mx;

    iget-object v1, v1, Lc8/Mx;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v1, p0}, Lc8/Rv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
