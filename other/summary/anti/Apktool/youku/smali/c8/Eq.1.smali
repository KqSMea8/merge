.class public Lc8/Eq;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Jq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jq;


# direct methods
.method constructor <init>(Lc8/Jq;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jq;

    .prologue
    .line 95
    iput-object p1, p0, Lc8/Eq;->this$0:Lc8/Jq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 101
    iget-object v2, p0, Lc8/Eq;->this$0:Lc8/Jq;

    invoke-virtual {v2}, Lc8/Jq;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/Eq;->this$0:Lc8/Jq;

    iget-object v2, v2, Lc8/Jq;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lc8/Eq;->this$0:Lc8/Jq;

    iget-object v2, v2, Lc8/Jq;->mShowingMenus:Ljava/util/List;

    const/4 v3, 0x0

    .line 102
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Hq;

    iget-object v2, v2, Lc8/Hq;->window:Lc8/Mu;

    invoke-virtual {v2}, Lc8/Mu;->isModal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    iget-object v2, p0, Lc8/Eq;->this$0:Lc8/Jq;

    iget-object v0, v2, Lc8/Jq;->mShownAnchorView:Landroid/view/View;

    .line 104
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    .line 105
    :cond_0
    iget-object v2, p0, Lc8/Eq;->this$0:Lc8/Jq;

    invoke-virtual {v2}, Lc8/Jq;->dismiss()V

    .line 113
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    return-void

    .line 108
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lc8/Eq;->this$0:Lc8/Jq;

    iget-object v2, v2, Lc8/Jq;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Hq;

    .line 109
    .local v1, "info":Lc8/Hq;
    iget-object v3, v1, Lc8/Hq;->window:Lc8/Mu;

    invoke-virtual {v3}, Lc8/Mu;->show()V

    goto :goto_0
.end method
