.class public Lc8/Obo;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ImageViewTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ubo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ubo;


# direct methods
.method public constructor <init>(Lc8/Ubo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ubo;

    .prologue
    .line 315
    iput-object p1, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDoubleTap. double tap enabled? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    iget-boolean v3, v3, Lc8/Ubo;->mDoubleTapEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mDoubleTapListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    .line 329
    invoke-static {v3}, Lc8/Ubo;->access$100(Lc8/Ubo;)Lc8/Rbo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    iget-object v2, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    invoke-static {v2}, Lc8/Ubo;->access$100(Lc8/Ubo;)Lc8/Rbo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    invoke-static {v2}, Lc8/Ubo;->access$100(Lc8/Ubo;)Lc8/Rbo;

    move-result-object v2

    iget-object v3, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    invoke-interface {v2, v3}, Lc8/Rbo;->onDoubleTap(Lc8/Ubo;)V

    .line 333
    :cond_0
    iget-object v2, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    iget-boolean v2, v2, Lc8/Ubo;->mDoubleTapEnabled:Z

    if-eqz v2, :cond_1

    .line 334
    iget-object v2, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lc8/Ubo;->mUserScaled:Z

    .line 335
    iget-object v2, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    invoke-virtual {v2}, Lc8/Ubo;->getScale()F

    move-result v0

    .line 337
    .local v0, "scale":F
    iget-object v2, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    iget-object v3, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    invoke-virtual {v3}, Lc8/Ubo;->getMaxScale()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lc8/Ubo;->onDoubleTapPost(FF)F

    move-result v1

    .line 338
    .local v1, "targetScale":F
    iget-object v2, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    invoke-virtual {v2}, Lc8/Ubo;->getMaxScale()F

    move-result v2

    iget-object v3, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    .line 339
    invoke-virtual {v3}, Lc8/Ubo;->getMinScale()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 338
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 340
    iget-object v2, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/high16 v5, 0x43c80000    # 400.0f

    invoke-virtual {v2, v1, v3, v4, v5}, Lc8/Ubo;->zoomTo(FFFF)V

    .line 342
    iget-object v2, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    invoke-virtual {v2}, Lc8/Ubo;->invalidate()V

    .line 344
    .end local v0    # "scale":F
    .end local v1    # "targetScale":F
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 368
    iget-object v0, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc8/Ubo;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 349
    iget-object v0, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    invoke-virtual {v0}, Lc8/Ubo;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    iget-object v0, v0, Lc8/Ubo;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/Ubo;->setPressed(Z)V

    .line 352
    iget-object v0, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    invoke-virtual {v0}, Lc8/Ubo;->performLongClick()Z

    .line 355
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onScroll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " e2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " distanceX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " distanceY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc8/Ubo;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 320
    iget-object v0, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    invoke-static {v0}, Lc8/Ubo;->access$000(Lc8/Ubo;)Lc8/Sbo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lc8/Obo;->this$0:Lc8/Ubo;

    invoke-static {v0}, Lc8/Ubo;->access$000(Lc8/Ubo;)Lc8/Sbo;

    move-result-object v0

    invoke-interface {v0}, Lc8/Sbo;->onSingleTapConfirmed()V

    .line 323
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
