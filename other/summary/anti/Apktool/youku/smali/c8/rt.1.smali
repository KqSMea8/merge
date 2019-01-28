.class public Lc8/rt;
.super Lc8/wt;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xt;->animateMoveImpl(Lc8/Qv;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xt;

.field final synthetic val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Lc8/Qv;


# direct methods
.method constructor <init>(Lc8/xt;Lc8/Qv;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0
    .param p1, "this$0"    # Lc8/xt;

    .prologue
    .line 287
    iput-object p1, p0, Lc8/rt;->this$0:Lc8/xt;

    iput-object p2, p0, Lc8/rt;->val$holder:Lc8/Qv;

    iput p3, p0, Lc8/rt;->val$deltaX:I

    iput p4, p0, Lc8/rt;->val$deltaY:I

    iput-object p5, p0, Lc8/rt;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lc8/wt;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 294
    iget v0, p0, Lc8/rt;->val$deltaX:I

    if-eqz v0, :cond_0

    .line 295
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 297
    :cond_0
    iget v0, p0, Lc8/rt;->val$deltaY:I

    if-eqz v0, :cond_1

    .line 298
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 300
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 303
    iget-object v0, p0, Lc8/rt;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 304
    iget-object v0, p0, Lc8/rt;->this$0:Lc8/xt;

    iget-object v1, p0, Lc8/rt;->val$holder:Lc8/Qv;

    invoke-virtual {v0, v1}, Lc8/xt;->dispatchMoveFinished(Lc8/Qv;)V

    .line 305
    iget-object v0, p0, Lc8/rt;->this$0:Lc8/xt;

    iget-object v0, v0, Lc8/xt;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lc8/rt;->val$holder:Lc8/Qv;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, p0, Lc8/rt;->this$0:Lc8/xt;

    invoke-virtual {v0}, Lc8/xt;->dispatchFinishedWhenDone()V

    .line 307
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 290
    iget-object v0, p0, Lc8/rt;->this$0:Lc8/xt;

    iget-object v1, p0, Lc8/rt;->val$holder:Lc8/Qv;

    invoke-virtual {v0, v1}, Lc8/xt;->dispatchMoveStarting(Lc8/Qv;)V

    .line 291
    return-void
.end method
