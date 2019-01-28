.class public Lc8/ryb;
.super Ljava/lang/Object;
.source "AliWXActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/syb;->transform3D(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;ZJLandroid/animation/Animator$AnimatorListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/syb;

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic val$originFromPivotX:F

.field final synthetic val$originToPivotX:F

.field final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/syb;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;FLandroid/view/View;F)V
    .locals 0
    .param p1, "this$0"    # Lc8/syb;

    .prologue
    .line 251
    iput-object p1, p0, Lc8/ryb;->this$0:Lc8/syb;

    iput-object p2, p0, Lc8/ryb;->val$listener:Landroid/animation/Animator$AnimatorListener;

    iput-object p3, p0, Lc8/ryb;->val$toView:Landroid/view/View;

    iput p4, p0, Lc8/ryb;->val$originToPivotX:F

    iput-object p5, p0, Lc8/ryb;->val$fromView:Landroid/view/View;

    iput p6, p0, Lc8/ryb;->val$originFromPivotX:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 270
    iget-object v0, p0, Lc8/ryb;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lc8/ryb;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lc8/ryb;->val$toView:Landroid/view/View;

    iget v1, p0, Lc8/ryb;->val$originToPivotX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 274
    iget-object v0, p0, Lc8/ryb;->val$fromView:Landroid/view/View;

    iget v1, p0, Lc8/ryb;->val$originFromPivotX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 275
    iget-object v0, p0, Lc8/ryb;->this$0:Lc8/syb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/syb;->access$302(Lc8/syb;Z)Z

    .line 276
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 260
    iget-object v0, p0, Lc8/ryb;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lc8/ryb;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lc8/ryb;->val$toView:Landroid/view/View;

    iget v1, p0, Lc8/ryb;->val$originToPivotX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 264
    iget-object v0, p0, Lc8/ryb;->val$fromView:Landroid/view/View;

    iget v1, p0, Lc8/ryb;->val$originFromPivotX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 265
    iget-object v0, p0, Lc8/ryb;->this$0:Lc8/syb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/syb;->access$302(Lc8/syb;Z)Z

    .line 266
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 280
    iget-object v0, p0, Lc8/ryb;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lc8/ryb;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 282
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 254
    iget-object v0, p0, Lc8/ryb;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lc8/ryb;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 256
    :cond_0
    return-void
.end method
