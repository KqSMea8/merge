.class public Lc8/po;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImplV9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qo;->onDestroyActionMode(Lc8/lq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/qo;


# direct methods
.method constructor <init>(Lc8/qo;)V
    .locals 0
    .param p1, "this$1"    # Lc8/qo;

    .prologue
    .line 1814
    iput-object p1, p0, Lc8/po;->this$1:Lc8/qo;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1817
    iget-object v0, p0, Lc8/po;->this$1:Lc8/qo;

    iget-object v0, v0, Lc8/qo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModeView:Lc8/yr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lc8/yr;->setVisibility(I)V

    .line 1818
    iget-object v0, p0, Lc8/po;->this$1:Lc8/qo;

    iget-object v0, v0, Lc8/qo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 1819
    iget-object v0, p0, Lc8/po;->this$1:Lc8/qo;

    iget-object v0, v0, Lc8/qo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1823
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/po;->this$1:Lc8/qo;

    iget-object v0, v0, Lc8/qo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-virtual {v0}, Lc8/yr;->removeAllViews()V

    .line 1824
    iget-object v0, p0, Lc8/po;->this$1:Lc8/qo;

    iget-object v0, v0, Lc8/qo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1825
    iget-object v0, p0, Lc8/po;->this$1:Lc8/qo;

    iget-object v0, v0, Lc8/qo;->this$0:Lc8/vo;

    iput-object v2, v0, Lc8/vo;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1826
    return-void

    .line 1820
    :cond_1
    iget-object v0, p0, Lc8/po;->this$1:Lc8/qo;

    iget-object v0, v0, Lc8/qo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-virtual {v0}, Lc8/yr;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Lc8/po;->this$1:Lc8/qo;

    iget-object v0, v0, Lc8/qo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-virtual {v0}, Lc8/yr;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_0
.end method
