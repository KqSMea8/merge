.class public Lc8/kdo;
.super Ljava/lang/Object;
.source "CircularProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/udo;->setProgress(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/udo;


# direct methods
.method constructor <init>(Lc8/udo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/udo;

    .prologue
    .line 342
    iput-object p1, p0, Lc8/kdo;->this$0:Lc8/udo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 345
    iget-object v1, p0, Lc8/kdo;->this$0:Lc8/udo;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lc8/udo;->access$002(Lc8/udo;F)F

    .line 346
    iget-object v0, p0, Lc8/kdo;->this$0:Lc8/udo;

    invoke-virtual {v0}, Lc8/udo;->invalidate()V

    .line 347
    return-void
.end method
