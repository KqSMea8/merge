.class public Lc8/Jx;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v4/animation/AnimatorListenerCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Mx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecoverAnimation"
.end annotation


# instance fields
.field final mActionState:I

.field final mAnimationType:I

.field mEnded:Z

.field private mFraction:F

.field public mIsPendingCleanup:Z

.field mOverridden:Z

.field final mStartDx:F

.field final mStartDy:F

.field final mTargetX:F

.field final mTargetY:F

.field private final mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

.field final mViewHolder:Lc8/Qv;

.field mX:F

.field mY:F

.field final synthetic this$0:Lc8/Mx;


# direct methods
.method public constructor <init>(Lc8/Mx;Lc8/Qv;IIFFFF)V
    .locals 2
    .param p2, "viewHolder"    # Lc8/Qv;
    .param p3, "animationType"    # I
    .param p4, "actionState"    # I
    .param p5, "startDx"    # F
    .param p6, "startDy"    # F
    .param p7, "targetX"    # F
    .param p8, "targetY"    # F

    .prologue
    const/4 v0, 0x0

    .line 2333
    iput-object p1, p0, Lc8/Jx;->this$0:Lc8/Mx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2326
    iput-boolean v0, p0, Lc8/Jx;->mOverridden:Z

    .line 2328
    iput-boolean v0, p0, Lc8/Jx;->mEnded:Z

    .line 2334
    iput p4, p0, Lc8/Jx;->mActionState:I

    .line 2335
    iput p3, p0, Lc8/Jx;->mAnimationType:I

    .line 2336
    iput-object p2, p0, Lc8/Jx;->mViewHolder:Lc8/Qv;

    .line 2337
    iput p5, p0, Lc8/Jx;->mStartDx:F

    .line 2338
    iput p6, p0, Lc8/Jx;->mStartDy:F

    .line 2339
    iput p7, p0, Lc8/Jx;->mTargetX:F

    .line 2340
    iput p8, p0, Lc8/Jx;->mTargetY:F

    .line 2341
    invoke-static {}, Landroid/support/v4/animation/AnimatorCompatHelper;->emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Lc8/Jx;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    .line 2342
    iget-object v0, p0, Lc8/Jx;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    new-instance v1, Lc8/Ix;

    invoke-direct {v1, p0, p1}, Lc8/Ix;-><init>(Lc8/Jx;Lc8/Mx;)V

    invoke-interface {v0, v1}, Landroid/support/v4/animation/ValueAnimatorCompat;->addUpdateListener(Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V

    .line 2349
    iget-object v0, p0, Lc8/Jx;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    iget-object v1, p2, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/animation/ValueAnimatorCompat;->setTarget(Landroid/view/View;)V

    .line 2350
    iget-object v0, p0, Lc8/Jx;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, p0}, Landroid/support/v4/animation/ValueAnimatorCompat;->addListener(Landroid/support/v4/animation/AnimatorListenerCompat;)V

    .line 2351
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Jx;->setFraction(F)V

    .line 2352
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 2364
    iget-object v0, p0, Lc8/Jx;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0}, Landroid/support/v4/animation/ValueAnimatorCompat;->cancel()V

    .line 2365
    return-void
.end method

.method public onAnimationCancel(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 1
    .param p1, "animation"    # Landroid/support/v4/animation/ValueAnimatorCompat;

    .prologue
    .line 2403
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lc8/Jx;->setFraction(F)V

    .line 2404
    return-void
.end method

.method public onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 2
    .param p1, "animation"    # Landroid/support/v4/animation/ValueAnimatorCompat;

    .prologue
    const/4 v1, 0x1

    .line 2395
    iget-boolean v0, p0, Lc8/Jx;->mEnded:Z

    if-nez v0, :cond_0

    .line 2396
    iget-object v0, p0, Lc8/Jx;->mViewHolder:Lc8/Qv;

    invoke-virtual {v0, v1}, Lc8/Qv;->setIsRecyclable(Z)V

    .line 2398
    :cond_0
    iput-boolean v1, p0, Lc8/Jx;->mEnded:Z

    .line 2399
    return-void
.end method

.method public onAnimationRepeat(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 0
    .param p1, "animation"    # Landroid/support/v4/animation/ValueAnimatorCompat;

    .prologue
    .line 2409
    return-void
.end method

.method public onAnimationStart(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 0
    .param p1, "animation"    # Landroid/support/v4/animation/ValueAnimatorCompat;

    .prologue
    .line 2391
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 2355
    iget-object v0, p0, Lc8/Jx;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/animation/ValueAnimatorCompat;->setDuration(J)V

    .line 2356
    return-void
.end method

.method public setFraction(F)V
    .locals 0
    .param p1, "fraction"    # F

    .prologue
    .line 2368
    iput p1, p0, Lc8/Jx;->mFraction:F

    .line 2369
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 2359
    iget-object v0, p0, Lc8/Jx;->mViewHolder:Lc8/Qv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Qv;->setIsRecyclable(Z)V

    .line 2360
    iget-object v0, p0, Lc8/Jx;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0}, Landroid/support/v4/animation/ValueAnimatorCompat;->start()V

    .line 2361
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 2376
    iget v0, p0, Lc8/Jx;->mStartDx:F

    iget v1, p0, Lc8/Jx;->mTargetX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2377
    iget-object v0, p0, Lc8/Jx;->mViewHolder:Lc8/Qv;

    iget-object v0, v0, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lc8/Jx;->mX:F

    .line 2381
    :goto_0
    iget v0, p0, Lc8/Jx;->mStartDy:F

    iget v1, p0, Lc8/Jx;->mTargetY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2382
    iget-object v0, p0, Lc8/Jx;->mViewHolder:Lc8/Qv;

    iget-object v0, v0, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lc8/Jx;->mY:F

    .line 2386
    :goto_1
    return-void

    .line 2379
    :cond_0
    iget v0, p0, Lc8/Jx;->mStartDx:F

    iget v1, p0, Lc8/Jx;->mFraction:F

    iget v2, p0, Lc8/Jx;->mTargetX:F

    iget v3, p0, Lc8/Jx;->mStartDx:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lc8/Jx;->mX:F

    goto :goto_0

    .line 2384
    :cond_1
    iget v0, p0, Lc8/Jx;->mStartDy:F

    iget v1, p0, Lc8/Jx;->mFraction:F

    iget v2, p0, Lc8/Jx;->mTargetY:F

    iget v3, p0, Lc8/Jx;->mStartDy:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lc8/Jx;->mY:F

    goto :goto_1
.end method
