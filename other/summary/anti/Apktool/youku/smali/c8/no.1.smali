.class public Lc8/no;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImplV9.java"


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
    .line 837
    iput-object p1, p0, Lc8/no;->this$0:Lc8/vo;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 850
    iget-object v0, p0, Lc8/no;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModeView:Lc8/yr;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 851
    iget-object v0, p0, Lc8/no;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 852
    iget-object v0, p0, Lc8/no;->this$0:Lc8/vo;

    iput-object v2, v0, Lc8/vo;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 853
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 840
    iget-object v0, p0, Lc8/no;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModeView:Lc8/yr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/yr;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lc8/no;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModeView:Lc8/yr;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lc8/yr;->sendAccessibilityEvent(I)V

    .line 843
    iget-object v0, p0, Lc8/no;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-virtual {v0}, Lc8/yr;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lc8/no;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-virtual {v0}, Lc8/yr;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 846
    :cond_0
    return-void
.end method
