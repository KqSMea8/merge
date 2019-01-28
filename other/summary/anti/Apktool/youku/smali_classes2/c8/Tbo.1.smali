.class public Lc8/Tbo;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ImageViewTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ubo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaleListener"
.end annotation


# instance fields
.field protected mScaled:Z

.field final synthetic this$0:Lc8/Ubo;


# direct methods
.method public constructor <init>(Lc8/Ubo;)V
    .locals 1
    .param p1, "this$0"    # Lc8/Ubo;

    .prologue
    .line 372
    iput-object p1, p0, Lc8/Tbo;->this$0:Lc8/Ubo;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Tbo;->mScaled:Z

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v5, 0x1

    .line 378
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v3

    sub-float v0, v2, v3

    .line 379
    .local v0, "span":F
    iget-object v2, p0, Lc8/Tbo;->this$0:Lc8/Ubo;

    invoke-virtual {v2}, Lc8/Ubo;->getScale()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    mul-float v1, v2, v3

    .line 380
    .local v1, "targetScale":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onScale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " targetScale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    iget-object v2, p0, Lc8/Tbo;->this$0:Lc8/Ubo;

    iget-boolean v2, v2, Lc8/Ubo;->mScaleEnabled:Z

    if-eqz v2, :cond_0

    .line 383
    iget-boolean v2, p0, Lc8/Tbo;->mScaled:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    .line 384
    iget-object v2, p0, Lc8/Tbo;->this$0:Lc8/Ubo;

    iput-boolean v5, v2, Lc8/Ubo;->mUserScaled:Z

    .line 385
    iget-object v2, p0, Lc8/Tbo;->this$0:Lc8/Ubo;

    invoke-virtual {v2}, Lc8/Ubo;->getMaxScale()F

    move-result v2

    iget-object v3, p0, Lc8/Tbo;->this$0:Lc8/Ubo;

    .line 386
    invoke-virtual {v3}, Lc8/Ubo;->getMinScale()F

    move-result v3

    const v4, 0x3ecccccd    # 0.4f

    sub-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 385
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onScale.zoomTo.targetScale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    iget-object v2, p0, Lc8/Tbo;->this$0:Lc8/Ubo;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    .line 389
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    .line 388
    invoke-virtual {v2, v1, v3, v4}, Lc8/Ubo;->zoomTo(FFF)V

    .line 390
    iget-object v2, p0, Lc8/Tbo;->this$0:Lc8/Ubo;

    iput v5, v2, Lc8/Ubo;->mDoubleTapDirection:I

    .line 391
    iget-object v2, p0, Lc8/Tbo;->this$0:Lc8/Ubo;

    invoke-virtual {v2}, Lc8/Ubo;->invalidate()V

    .line 400
    :cond_0
    :goto_0
    return v5

    .line 396
    :cond_1
    iget-boolean v2, p0, Lc8/Tbo;->mScaled:Z

    if-nez v2, :cond_0

    .line 397
    iput-boolean v5, p0, Lc8/Tbo;->mScaled:Z

    goto :goto_0
.end method
