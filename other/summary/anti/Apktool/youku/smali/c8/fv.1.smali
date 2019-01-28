.class public Lc8/fv;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lc8/ux;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rv;
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
    .line 511
    iput-object p1, p0, Lc8/fv;->this$0:Lc8/Rv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processAppeared(Lc8/Qv;Lc8/pv;Lc8/pv;)V
    .locals 1
    .param p1, "viewHolder"    # Lc8/Qv;
    .param p2, "preInfo"    # Lc8/pv;
    .param p3, "info"    # Lc8/pv;

    .prologue
    .line 521
    iget-object v0, p0, Lc8/fv;->this$0:Lc8/Rv;

    invoke-virtual {v0, p1, p2, p3}, Lc8/Rv;->animateAppearance(Lc8/Qv;Lc8/pv;Lc8/pv;)V

    .line 522
    return-void
.end method

.method public processDisappeared(Lc8/Qv;Lc8/pv;Lc8/pv;)V
    .locals 1
    .param p1, "viewHolder"    # Lc8/Qv;
    .param p2, "info"    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "postInfo"    # Lc8/pv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 515
    iget-object v0, p0, Lc8/fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0, p1}, Lc8/Fv;->unscrapView(Lc8/Qv;)V

    .line 516
    iget-object v0, p0, Lc8/fv;->this$0:Lc8/Rv;

    invoke-virtual {v0, p1, p2, p3}, Lc8/Rv;->animateDisappearance(Lc8/Qv;Lc8/pv;Lc8/pv;)V

    .line 517
    return-void
.end method

.method public processPersistent(Lc8/Qv;Lc8/pv;Lc8/pv;)V
    .locals 1
    .param p1, "viewHolder"    # Lc8/Qv;
    .param p2, "preInfo"    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "postInfo"    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 527
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc8/Qv;->setIsRecyclable(Z)V

    .line 528
    iget-object v0, p0, Lc8/fv;->this$0:Lc8/Rv;

    iget-boolean v0, v0, Lc8/Rv;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lc8/fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    invoke-virtual {v0, p1, p1, p2, p3}, Lc8/qv;->animateChange(Lc8/Qv;Lc8/Qv;Lc8/pv;Lc8/pv;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lc8/fv;->this$0:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->postAnimationRunner()V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v0, p0, Lc8/fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    invoke-virtual {v0, p1, p2, p3}, Lc8/qv;->animatePersistence(Lc8/Qv;Lc8/pv;Lc8/pv;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lc8/fv;->this$0:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->postAnimationRunner()V

    goto :goto_0
.end method

.method public unused(Lc8/Qv;)V
    .locals 3
    .param p1, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 542
    iget-object v0, p0, Lc8/fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p1, Lc8/Qv;->itemView:Landroid/view/View;

    iget-object v2, p0, Lc8/fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0, v1, v2}, Lc8/xv;->removeAndRecycleView(Landroid/view/View;Lc8/Fv;)V

    .line 543
    return-void
.end method
