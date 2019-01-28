.class public Lc8/Bx;
.super Lc8/Jx;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mx;->select(Lc8/Qv;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mx;

.field final synthetic val$prevSelected:Lc8/Qv;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lc8/Mx;Lc8/Qv;IIFFFFILc8/Qv;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Mx;
    .param p2, "viewHolder"    # Lc8/Qv;
    .param p3, "animationType"    # I
    .param p4, "actionState"    # I
    .param p5, "startDx"    # F
    .param p6, "startDy"    # F
    .param p7, "targetX"    # F
    .param p8, "targetY"    # F

    .prologue
    .line 610
    iput-object p1, p0, Lc8/Bx;->this$0:Lc8/Mx;

    iput p9, p0, Lc8/Bx;->val$swipeDir:I

    iput-object p10, p0, Lc8/Bx;->val$prevSelected:Lc8/Qv;

    invoke-direct/range {p0 .. p8}, Lc8/Jx;-><init>(Lc8/Mx;Lc8/Qv;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 3
    .param p1, "animation"    # Landroid/support/v4/animation/ValueAnimatorCompat;

    .prologue
    .line 613
    invoke-super {p0, p1}, Lc8/Jx;->onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 614
    iget-boolean v0, p0, Lc8/Bx;->mOverridden:Z

    if-eqz v0, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    iget v0, p0, Lc8/Bx;->val$swipeDir:I

    if-gtz v0, :cond_3

    .line 619
    iget-object v0, p0, Lc8/Bx;->this$0:Lc8/Mx;

    iget-object v0, v0, Lc8/Mx;->mCallback:Lc8/Gx;

    iget-object v1, p0, Lc8/Bx;->this$0:Lc8/Mx;

    iget-object v1, v1, Lc8/Mx;->mRecyclerView:Lc8/Rv;

    iget-object v2, p0, Lc8/Bx;->val$prevSelected:Lc8/Qv;

    invoke-virtual {v0, v1, v2}, Lc8/Gx;->clearView(Lc8/Rv;Lc8/Qv;)V

    .line 632
    :cond_2
    :goto_1
    iget-object v0, p0, Lc8/Bx;->this$0:Lc8/Mx;

    iget-object v0, v0, Lc8/Mx;->mOverdrawChild:Landroid/view/View;

    iget-object v1, p0, Lc8/Bx;->val$prevSelected:Lc8/Qv;

    iget-object v1, v1, Lc8/Qv;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 633
    iget-object v0, p0, Lc8/Bx;->this$0:Lc8/Mx;

    iget-object v1, p0, Lc8/Bx;->val$prevSelected:Lc8/Qv;

    iget-object v1, v1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lc8/Mx;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    goto :goto_0

    .line 623
    :cond_3
    iget-object v0, p0, Lc8/Bx;->this$0:Lc8/Mx;

    iget-object v0, v0, Lc8/Mx;->mPendingCleanup:Ljava/util/List;

    iget-object v1, p0, Lc8/Bx;->val$prevSelected:Lc8/Qv;

    iget-object v1, v1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Bx;->mIsPendingCleanup:Z

    .line 625
    iget v0, p0, Lc8/Bx;->val$swipeDir:I

    if-lez v0, :cond_2

    .line 628
    iget-object v0, p0, Lc8/Bx;->this$0:Lc8/Mx;

    iget v1, p0, Lc8/Bx;->val$swipeDir:I

    invoke-virtual {v0, p0, v1}, Lc8/Mx;->postDispatchSwipe(Lc8/Jx;I)V

    goto :goto_1
.end method
