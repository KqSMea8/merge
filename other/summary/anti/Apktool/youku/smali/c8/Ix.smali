.class public Lc8/Ix;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v4/animation/AnimatorUpdateListenerCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jx;-><init>(Lc8/Mx;Lc8/Qv;IIFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Jx;

.field final synthetic val$this$0:Lc8/Mx;


# direct methods
.method constructor <init>(Lc8/Jx;Lc8/Mx;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Jx;

    .prologue
    .line 2343
    iput-object p1, p0, Lc8/Ix;->this$1:Lc8/Jx;

    iput-object p2, p0, Lc8/Ix;->val$this$0:Lc8/Mx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 2
    .param p1, "animation"    # Landroid/support/v4/animation/ValueAnimatorCompat;

    .prologue
    .line 2346
    iget-object v0, p0, Lc8/Ix;->this$1:Lc8/Jx;

    invoke-interface {p1}, Landroid/support/v4/animation/ValueAnimatorCompat;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lc8/Jx;->setFraction(F)V

    .line 2347
    return-void
.end method
