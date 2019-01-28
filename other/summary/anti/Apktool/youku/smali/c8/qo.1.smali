.class public Lc8/qo;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Lc8/kq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeCallbackWrapperV9"
.end annotation


# instance fields
.field private mWrapped:Lc8/kq;

.field final synthetic this$0:Lc8/vo;


# direct methods
.method public constructor <init>(Lc8/vo;Lc8/kq;)V
    .locals 0
    .param p1, "this$0"    # Lc8/vo;
    .param p2, "wrapped"    # Lc8/kq;

    .prologue
    .line 1785
    iput-object p1, p0, Lc8/qo;->this$0:Lc8/vo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1786
    iput-object p2, p0, Lc8/qo;->mWrapped:Lc8/kq;

    .line 1787
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lc8/lq;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Lc8/lq;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1801
    iget-object v0, p0, Lc8/qo;->mWrapped:Lc8/kq;

    invoke-interface {v0, p1, p2}, Lc8/kq;->onActionItemClicked(Lc8/lq;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Lc8/lq;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lc8/lq;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1791
    iget-object v0, p0, Lc8/qo;->mWrapped:Lc8/kq;

    invoke-interface {v0, p1, p2}, Lc8/kq;->onCreateActionMode(Lc8/lq;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Lc8/lq;)V
    .locals 3
    .param p1, "mode"    # Lc8/lq;

    .prologue
    .line 1806
    iget-object v0, p0, Lc8/qo;->mWrapped:Lc8/kq;

    invoke-interface {v0, p1}, Lc8/kq;->onDestroyActionMode(Lc8/lq;)V

    .line 1807
    iget-object v0, p0, Lc8/qo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1808
    iget-object v0, p0, Lc8/qo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lc8/qo;->this$0:Lc8/vo;

    iget-object v1, v1, Lc8/vo;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1811
    :cond_0
    iget-object v0, p0, Lc8/qo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModeView:Lc8/yr;

    if-eqz v0, :cond_1

    .line 1812
    iget-object v0, p0, Lc8/qo;->this$0:Lc8/vo;

    invoke-virtual {v0}, Lc8/vo;->endOnGoingFadeAnimation()V

    .line 1813
    iget-object v0, p0, Lc8/qo;->this$0:Lc8/vo;

    iget-object v1, p0, Lc8/qo;->this$0:Lc8/vo;

    iget-object v1, v1, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iput-object v1, v0, Lc8/vo;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1814
    iget-object v0, p0, Lc8/qo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v1, Lc8/po;

    invoke-direct {v1, p0}, Lc8/po;-><init>(Lc8/qo;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1829
    :cond_1
    iget-object v0, p0, Lc8/qo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mAppCompatCallback:Lc8/Rn;

    if-eqz v0, :cond_2

    .line 1830
    iget-object v0, p0, Lc8/qo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mAppCompatCallback:Lc8/Rn;

    iget-object v1, p0, Lc8/qo;->this$0:Lc8/vo;

    iget-object v1, v1, Lc8/vo;->mActionMode:Lc8/lq;

    invoke-interface {v0, v1}, Lc8/Rn;->onSupportActionModeFinished(Lc8/lq;)V

    .line 1832
    :cond_2
    iget-object v0, p0, Lc8/qo;->this$0:Lc8/vo;

    const/4 v1, 0x0

    iput-object v1, v0, Lc8/vo;->mActionMode:Lc8/lq;

    .line 1833
    return-void
.end method

.method public onPrepareActionMode(Lc8/lq;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lc8/lq;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1796
    iget-object v0, p0, Lc8/qo;->mWrapped:Lc8/kq;

    invoke-interface {v0, p1, p2}, Lc8/kq;->onPrepareActionMode(Lc8/lq;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
