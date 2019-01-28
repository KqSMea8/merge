.class public Lc8/Gfb;
.super Ljava/lang/Object;
.source "LottieValueAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hfb;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Hfb;


# direct methods
.method constructor <init>(Lc8/Hfb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Hfb;

    .prologue
    .line 20
    iput-object p1, p0, Lc8/Gfb;->this$0:Lc8/Hfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/Gfb;->this$0:Lc8/Hfb;

    invoke-static {v0}, Lc8/Hfb;->access$000(Lc8/Hfb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v1, p0, Lc8/Gfb;->this$0:Lc8/Hfb;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lc8/Hfb;->access$102(Lc8/Hfb;F)F

    .line 27
    :cond_0
    return-void
.end method
