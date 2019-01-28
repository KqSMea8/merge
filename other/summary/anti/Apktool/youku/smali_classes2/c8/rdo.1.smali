.class public Lc8/rdo;
.super Ljava/lang/Object;
.source "CircularProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/udo;->createIndeterminateAnimator(F)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/udo;

.field final synthetic val$maxSweep:F

.field final synthetic val$start:F


# direct methods
.method constructor <init>(Lc8/udo;FF)V
    .locals 0
    .param p1, "this$0"    # Lc8/udo;

    .prologue
    .line 549
    iput-object p1, p0, Lc8/rdo;->this$0:Lc8/udo;

    iput p2, p0, Lc8/rdo;->val$maxSweep:F

    iput p3, p0, Lc8/rdo;->val$start:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 552
    iget-object v1, p0, Lc8/rdo;->this$0:Lc8/udo;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lc8/udo;->access$302(Lc8/udo;F)F

    .line 553
    iget-object v0, p0, Lc8/rdo;->this$0:Lc8/udo;

    iget v1, p0, Lc8/rdo;->val$maxSweep:F

    iget-object v2, p0, Lc8/rdo;->this$0:Lc8/udo;

    invoke-static {v2}, Lc8/udo;->access$300(Lc8/udo;)F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lc8/rdo;->val$start:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lc8/udo;->access$402(Lc8/udo;F)F

    .line 554
    iget-object v0, p0, Lc8/rdo;->this$0:Lc8/udo;

    invoke-virtual {v0}, Lc8/udo;->invalidate()V

    .line 555
    return-void
.end method
