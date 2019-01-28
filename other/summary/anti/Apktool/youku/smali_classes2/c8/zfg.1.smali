.class public Lc8/zfg;
.super Ljava/lang/Object;
.source "WXSwipeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gfg;->startLoadmore(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Gfg;


# direct methods
.method constructor <init>(Lc8/Gfg;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lc8/zfg;->this$0:Lc8/Gfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 611
    iget-object v1, p0, Lc8/zfg;->this$0:Lc8/Gfg;

    invoke-static {v1}, Lc8/Gfg;->access$400(Lc8/Gfg;)Lc8/ufg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ufg;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 612
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 613
    iget-object v1, p0, Lc8/zfg;->this$0:Lc8/Gfg;

    invoke-static {v1}, Lc8/Gfg;->access$400(Lc8/Gfg;)Lc8/ufg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/ufg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    iget-object v1, p0, Lc8/zfg;->this$0:Lc8/Gfg;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lc8/Gfg;->access$100(Lc8/Gfg;F)V

    .line 615
    return-void
.end method
