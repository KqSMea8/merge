.class public Lc8/Kr;
.super Lc8/fr;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nr;


# direct methods
.method public constructor <init>(Lc8/Nr;Landroid/content/Context;Lc8/Rq;Landroid/view/View;Z)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menu"    # Lc8/Rq;
    .param p4, "anchorView"    # Landroid/view/View;
    .param p5, "overflowOnly"    # Z

    .prologue
    .line 727
    iput-object p1, p0, Lc8/Kr;->this$0:Lc8/Nr;

    .line 728
    sget v5, Lcom/youku/phone/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lc8/fr;-><init>(Landroid/content/Context;Lc8/Rq;Landroid/view/View;ZI)V

    .line 729
    const v0, 0x800005

    invoke-virtual {p0, v0}, Lc8/Kr;->setGravity(I)V

    .line 730
    iget-object v0, p1, Lc8/Nr;->mPopupPresenterCallback:Lc8/Lr;

    invoke-virtual {p0, v0}, Lc8/Kr;->setPresenterCallback(Lc8/gr;)V

    .line 731
    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lc8/Kr;->this$0:Lc8/Nr;

    invoke-static {v0}, Lc8/Nr;->access$000(Lc8/Nr;)Lc8/Rq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lc8/Kr;->this$0:Lc8/Nr;

    invoke-static {v0}, Lc8/Nr;->access$100(Lc8/Nr;)Lc8/Rq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Rq;->close()V

    .line 738
    :cond_0
    iget-object v0, p0, Lc8/Kr;->this$0:Lc8/Nr;

    const/4 v1, 0x0

    iput-object v1, v0, Lc8/Nr;->mOverflowPopup:Lc8/Kr;

    .line 740
    invoke-super {p0}, Lc8/fr;->onDismiss()V

    .line 741
    return-void
.end method
