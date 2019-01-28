.class public Lc8/ap;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fp;


# direct methods
.method constructor <init>(Lc8/fp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/fp;

    .prologue
    .line 138
    iput-object p1, p0, Lc8/ap;->this$0:Lc8/fp;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lc8/ap;->this$0:Lc8/fp;

    iget-boolean v0, v0, Lc8/fp;->mContentAnimations:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ap;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lc8/ap;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContentView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 143
    iget-object v0, p0, Lc8/ap;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 145
    :cond_0
    iget-object v0, p0, Lc8/ap;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContainerView:Lc8/wr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lc8/wr;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lc8/ap;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContainerView:Lc8/wr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/wr;->setTransitioning(Z)V

    .line 147
    iget-object v0, p0, Lc8/ap;->this$0:Lc8/fp;

    const/4 v1, 0x0

    iput-object v1, v0, Lc8/fp;->mCurrentShowAnim:Lc8/vq;

    .line 148
    iget-object v0, p0, Lc8/ap;->this$0:Lc8/fp;

    invoke-virtual {v0}, Lc8/fp;->completeDeferredDestroyActionMode()V

    .line 149
    iget-object v0, p0, Lc8/ap;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lc8/ap;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 152
    :cond_1
    return-void
.end method
