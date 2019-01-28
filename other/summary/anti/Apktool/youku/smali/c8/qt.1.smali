.class public Lc8/qt;
.super Lc8/wt;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xt;->animateAddImpl(Lc8/Qv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xt;

.field final synthetic val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic val$holder:Lc8/Qv;


# direct methods
.method constructor <init>(Lc8/xt;Lc8/Qv;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0
    .param p1, "this$0"    # Lc8/xt;

    .prologue
    .line 229
    iput-object p1, p0, Lc8/qt;->this$0:Lc8/xt;

    iput-object p2, p0, Lc8/qt;->val$holder:Lc8/Qv;

    iput-object p3, p0, Lc8/qt;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lc8/wt;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 236
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 237
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 241
    iget-object v0, p0, Lc8/qt;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 242
    iget-object v0, p0, Lc8/qt;->this$0:Lc8/xt;

    iget-object v1, p0, Lc8/qt;->val$holder:Lc8/Qv;

    invoke-virtual {v0, v1}, Lc8/xt;->dispatchAddFinished(Lc8/Qv;)V

    .line 243
    iget-object v0, p0, Lc8/qt;->this$0:Lc8/xt;

    iget-object v0, v0, Lc8/xt;->mAddAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lc8/qt;->val$holder:Lc8/Qv;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lc8/qt;->this$0:Lc8/xt;

    invoke-virtual {v0}, Lc8/xt;->dispatchFinishedWhenDone()V

    .line 245
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 232
    iget-object v0, p0, Lc8/qt;->this$0:Lc8/xt;

    iget-object v1, p0, Lc8/qt;->val$holder:Lc8/Qv;

    invoke-virtual {v0, v1}, Lc8/xt;->dispatchAddStarting(Lc8/Qv;)V

    .line 233
    return-void
.end method
