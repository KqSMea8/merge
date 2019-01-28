.class public Lc8/Fr;
.super Lc8/fr;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nr;


# direct methods
.method public constructor <init>(Lc8/Nr;Landroid/content/Context;Lc8/pr;Landroid/view/View;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Lc8/pr;
    .param p4, "anchorView"    # Landroid/view/View;

    .prologue
    .line 745
    iput-object p1, p0, Lc8/Fr;->this$0:Lc8/Nr;

    .line 746
    const/4 v4, 0x0

    sget v5, Lcom/youku/phone/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lc8/fr;-><init>(Landroid/content/Context;Lc8/Rq;Landroid/view/View;ZI)V

    .line 748
    invoke-virtual {p3}, Lc8/pr;->getItem()Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Lc8/Vq;

    .line 749
    .local v6, "item":Lc8/Vq;
    invoke-virtual {v6}, Lc8/Vq;->isActionButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    iget-object v0, p1, Lc8/Nr;->mOverflowButton:Lc8/Jr;

    if-nez v0, :cond_1

    invoke-static {p1}, Lc8/Nr;->access$200(Lc8/Nr;)Lc8/jr;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0}, Lc8/Fr;->setAnchorView(Landroid/view/View;)V

    .line 754
    :cond_0
    iget-object v0, p1, Lc8/Nr;->mPopupPresenterCallback:Lc8/Lr;

    invoke-virtual {p0, v0}, Lc8/Fr;->setPresenterCallback(Lc8/gr;)V

    .line 755
    return-void

    .line 751
    :cond_1
    iget-object v0, p1, Lc8/Nr;->mOverflowButton:Lc8/Jr;

    goto :goto_0
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lc8/Fr;->this$0:Lc8/Nr;

    const/4 v1, 0x0

    iput-object v1, v0, Lc8/Nr;->mActionButtonPopup:Lc8/Fr;

    .line 760
    iget-object v0, p0, Lc8/Fr;->this$0:Lc8/Nr;

    const/4 v1, 0x0

    iput v1, v0, Lc8/Nr;->mOpenSubMenuId:I

    .line 762
    invoke-super {p0}, Lc8/fr;->onDismiss()V

    .line 763
    return-void
.end method
