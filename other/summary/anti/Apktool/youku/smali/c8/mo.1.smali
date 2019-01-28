.class public Lc8/mo;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/vo;->startSupportActionModeFromWindow(Lc8/kq;)Lc8/lq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/vo;


# direct methods
.method constructor <init>(Lc8/vo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/vo;

    .prologue
    .line 783
    iput-object p1, p0, Lc8/mo;->this$0:Lc8/vo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 786
    iget-object v0, p0, Lc8/mo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lc8/mo;->this$0:Lc8/vo;

    iget-object v1, v1, Lc8/vo;->mActionModeView:Lc8/yr;

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 789
    iget-object v0, p0, Lc8/mo;->this$0:Lc8/vo;

    invoke-virtual {v0}, Lc8/vo;->endOnGoingFadeAnimation()V

    .line 791
    iget-object v0, p0, Lc8/mo;->this$0:Lc8/vo;

    invoke-virtual {v0}, Lc8/vo;->shouldAnimateActionModeView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lc8/mo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModeView:Lc8/yr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 793
    iget-object v0, p0, Lc8/mo;->this$0:Lc8/vo;

    iget-object v1, p0, Lc8/mo;->this$0:Lc8/vo;

    iget-object v1, v1, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iput-object v1, v0, Lc8/vo;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 794
    iget-object v0, p0, Lc8/mo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v1, Lc8/lo;

    invoke-direct {v1, p0}, Lc8/lo;-><init>(Lc8/mo;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 811
    :goto_0
    return-void

    .line 808
    :cond_0
    iget-object v0, p0, Lc8/mo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 809
    iget-object v0, p0, Lc8/mo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-virtual {v0, v3}, Lc8/yr;->setVisibility(I)V

    goto :goto_0
.end method
