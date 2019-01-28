.class public Lc8/Odo;
.super Ljava/lang/Object;
.source "SmoothImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Tdo;->startTransform(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Tdo;


# direct methods
.method constructor <init>(Lc8/Tdo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Tdo;

    .prologue
    .line 414
    iput-object p1, p0, Lc8/Odo;->this$0:Lc8/Tdo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Odo;->this$0:Lc8/Tdo;

    invoke-static {v0}, Lc8/Tdo;->access$200(Lc8/Tdo;)Lc8/Sdo;

    move-result-object v1

    const-string/jumbo v0, "scale"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lc8/Sdo;->scale:F

    .line 418
    iget-object v0, p0, Lc8/Odo;->this$0:Lc8/Tdo;

    invoke-static {v0}, Lc8/Tdo;->access$200(Lc8/Tdo;)Lc8/Sdo;

    move-result-object v0

    iget-object v1, v0, Lc8/Sdo;->rect:Lc8/Qdo;

    const-string/jumbo v0, "left"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lc8/Qdo;->left:F

    .line 419
    iget-object v0, p0, Lc8/Odo;->this$0:Lc8/Tdo;

    invoke-static {v0}, Lc8/Tdo;->access$200(Lc8/Tdo;)Lc8/Sdo;

    move-result-object v0

    iget-object v1, v0, Lc8/Sdo;->rect:Lc8/Qdo;

    const-string/jumbo v0, "top"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lc8/Qdo;->top:F

    .line 420
    iget-object v0, p0, Lc8/Odo;->this$0:Lc8/Tdo;

    invoke-static {v0}, Lc8/Tdo;->access$200(Lc8/Tdo;)Lc8/Sdo;

    move-result-object v0

    iget-object v1, v0, Lc8/Sdo;->rect:Lc8/Qdo;

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lc8/Qdo;->width:F

    .line 421
    iget-object v0, p0, Lc8/Odo;->this$0:Lc8/Tdo;

    invoke-static {v0}, Lc8/Tdo;->access$200(Lc8/Tdo;)Lc8/Sdo;

    move-result-object v0

    iget-object v1, v0, Lc8/Sdo;->rect:Lc8/Qdo;

    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lc8/Qdo;->height:F

    .line 422
    iget-object v1, p0, Lc8/Odo;->this$0:Lc8/Tdo;

    const-string/jumbo v0, "alpha"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lc8/Tdo;->access$302(Lc8/Tdo;I)I

    .line 423
    iget-object v0, p0, Lc8/Odo;->this$0:Lc8/Tdo;

    invoke-virtual {v0}, Lc8/Tdo;->invalidate()V

    .line 424
    const-string/jumbo v0, "SmoothImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Odo;->this$0:Lc8/Tdo;

    invoke-virtual {v2}, Lc8/Tdo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Oao;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    monitor-exit p0

    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
