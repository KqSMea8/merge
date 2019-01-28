.class public Lc8/Ax;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lc8/Bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Mx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mx;


# direct methods
.method constructor <init>(Lc8/Mx;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Mx;

    .prologue
    .line 303
    iput-object p1, p0, Lc8/Ax;->this$0:Lc8/Mx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lc8/Rv;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 306
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v5, v5, Lc8/Mx;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v5, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 310
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 311
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 312
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Lc8/Mx;->mActivePointerId:I

    .line 313
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, Lc8/Mx;->mInitialTouchX:F

    .line 314
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Lc8/Mx;->mInitialTouchY:F

    .line 315
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    invoke-virtual {v5}, Lc8/Mx;->obtainVelocityTracker()V

    .line 316
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v5, v5, Lc8/Mx;->mSelected:Lc8/Qv;

    if-nez v5, :cond_1

    .line 317
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    invoke-virtual {v5, p2}, Lc8/Mx;->findAnimation(Landroid/view/MotionEvent;)Lc8/Jx;

    move-result-object v1

    .line 318
    .local v1, "animation":Lc8/Jx;
    if-eqz v1, :cond_1

    .line 319
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget v6, v5, Lc8/Mx;->mInitialTouchX:F

    iget v7, v1, Lc8/Jx;->mX:F

    sub-float/2addr v6, v7

    iput v6, v5, Lc8/Mx;->mInitialTouchX:F

    .line 320
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget v6, v5, Lc8/Mx;->mInitialTouchY:F

    iget v7, v1, Lc8/Jx;->mY:F

    sub-float/2addr v6, v7

    iput v6, v5, Lc8/Mx;->mInitialTouchY:F

    .line 321
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v6, v1, Lc8/Jx;->mViewHolder:Lc8/Qv;

    invoke-virtual {v5, v6, v3}, Lc8/Mx;->endRecoverAnimation(Lc8/Qv;Z)I

    .line 322
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v5, v5, Lc8/Mx;->mPendingCleanup:Ljava/util/List;

    iget-object v6, v1, Lc8/Jx;->mViewHolder:Lc8/Qv;

    iget-object v6, v6, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 323
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v5, v5, Lc8/Mx;->mCallback:Lc8/Gx;

    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v6, v6, Lc8/Mx;->mRecyclerView:Lc8/Rv;

    iget-object v7, v1, Lc8/Jx;->mViewHolder:Lc8/Qv;

    invoke-virtual {v5, v6, v7}, Lc8/Gx;->clearView(Lc8/Rv;Lc8/Qv;)V

    .line 325
    :cond_0
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v6, v1, Lc8/Jx;->mViewHolder:Lc8/Qv;

    iget v7, v1, Lc8/Jx;->mActionState:I

    invoke-virtual {v5, v6, v7}, Lc8/Mx;->select(Lc8/Qv;I)V

    .line 326
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget v6, v6, Lc8/Mx;->mSelectedFlags:I

    invoke-virtual {v5, p2, v6, v4}, Lc8/Mx;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 343
    .end local v1    # "animation":Lc8/Jx;
    :cond_1
    :goto_0
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v5, v5, Lc8/Mx;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_2

    .line 344
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v5, v5, Lc8/Mx;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 346
    :cond_2
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v5, v5, Lc8/Mx;->mSelected:Lc8/Qv;

    if-eqz v5, :cond_6

    :goto_1
    return v3

    .line 329
    :cond_3
    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    if-ne v0, v3, :cond_5

    .line 330
    :cond_4
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iput v6, v5, Lc8/Mx;->mActivePointerId:I

    .line 331
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lc8/Mx;->select(Lc8/Qv;I)V

    goto :goto_0

    .line 332
    :cond_5
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget v5, v5, Lc8/Mx;->mActivePointerId:I

    if-eq v5, v6, :cond_1

    .line 335
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget v5, v5, Lc8/Mx;->mActivePointerId:I

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 339
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 340
    iget-object v5, p0, Lc8/Ax;->this$0:Lc8/Mx;

    invoke-virtual {v5, v0, p2, v2}, Lc8/Mx;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    goto :goto_0

    .end local v2    # "index":I
    :cond_6
    move v3, v4

    .line 346
    goto :goto_1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lc8/Ax;->this$0:Lc8/Mx;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lc8/Mx;->select(Lc8/Qv;I)V

    goto :goto_0
.end method

.method public onTouchEvent(Lc8/Rv;Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 351
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v6, v6, Lc8/Mx;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v6, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 356
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v6, v6, Lc8/Mx;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_0

    .line 357
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v6, v6, Lc8/Mx;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 359
    :cond_0
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget v6, v6, Lc8/Mx;->mActivePointerId:I

    if-ne v6, v8, :cond_2

    .line 405
    :cond_1
    :goto_0
    return-void

    .line 362
    :cond_2
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 363
    .local v0, "action":I
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget v6, v6, Lc8/Mx;->mActivePointerId:I

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 364
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_3

    .line 365
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    invoke-virtual {v6, v0, p2, v1}, Lc8/Mx;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    .line 367
    :cond_3
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v5, v6, Lc8/Mx;->mSelected:Lc8/Qv;

    .line 368
    .local v5, "viewHolder":Lc8/Qv;
    if-eqz v5, :cond_1

    .line 371
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 389
    :cond_4
    :goto_1
    :pswitch_1
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Lc8/Mx;->select(Lc8/Qv;I)V

    .line 390
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iput v8, v6, Lc8/Mx;->mActivePointerId:I

    goto :goto_0

    .line 374
    :pswitch_2
    if-ltz v1, :cond_1

    .line 375
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v7, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget v7, v7, Lc8/Mx;->mSelectedFlags:I

    invoke-virtual {v6, p2, v7, v1}, Lc8/Mx;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 376
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    invoke-virtual {v6, v5}, Lc8/Mx;->moveIfNecessary(Lc8/Qv;)V

    .line 377
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v6, v6, Lc8/Mx;->mRecyclerView:Lc8/Rv;

    iget-object v7, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v7, v7, Lc8/Mx;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lc8/Rv;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 378
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v6, v6, Lc8/Mx;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 379
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v6, v6, Lc8/Mx;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v6}, Lc8/Rv;->invalidate()V

    goto :goto_0

    .line 384
    :pswitch_3
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v6, v6, Lc8/Mx;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_4

    .line 385
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v6, v6, Lc8/Mx;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 393
    :pswitch_4
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 394
    .local v4, "pointerIndex":I
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 395
    .local v3, "pointerId":I
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget v6, v6, Lc8/Mx;->mActivePointerId:I

    if-ne v3, v6, :cond_1

    .line 398
    if-nez v4, :cond_5

    const/4 v2, 0x1

    .line 399
    .local v2, "newPointerIndex":I
    :cond_5
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Lc8/Mx;->mActivePointerId:I

    .line 400
    iget-object v6, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget-object v7, p0, Lc8/Ax;->this$0:Lc8/Mx;

    iget v7, v7, Lc8/Mx;->mSelectedFlags:I

    invoke-virtual {v6, p2, v7, v4}, Lc8/Mx;->updateDxDy(Landroid/view/MotionEvent;II)V

    goto/16 :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
