.class public Lc8/Ob;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zb;


# direct methods
.method constructor <init>(Lc8/Zb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Zb;

    .prologue
    .line 335
    iput-object p1, p0, Lc8/Ob;->this$0:Lc8/Zb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 339
    move-object v1, p1

    check-cast v1, Lc8/Nb;

    .line 340
    .local v1, "itemView":Lc8/Nb;
    iget-object v3, p0, Lc8/Ob;->this$0:Lc8/Zb;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lc8/Zb;->setUpdateSuspended(Z)V

    .line 341
    invoke-virtual {v1}, Lc8/Nb;->getItemData()Lc8/Vq;

    move-result-object v0

    .line 342
    .local v0, "item":Lc8/Vq;
    iget-object v3, p0, Lc8/Ob;->this$0:Lc8/Zb;

    iget-object v3, v3, Lc8/Zb;->mMenu:Lc8/Rq;

    iget-object v4, p0, Lc8/Ob;->this$0:Lc8/Zb;

    invoke-virtual {v3, v0, v4, v5}, Lc8/Rq;->performItemAction(Landroid/view/MenuItem;Lc8/hr;I)Z

    move-result v2

    .line 343
    .local v2, "result":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/Vq;->isCheckable()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 344
    iget-object v3, p0, Lc8/Ob;->this$0:Lc8/Zb;

    iget-object v3, v3, Lc8/Zb;->mAdapter:Lc8/Qb;

    invoke-virtual {v3, v0}, Lc8/Qb;->setCheckedItem(Lc8/Vq;)V

    .line 346
    :cond_0
    iget-object v3, p0, Lc8/Ob;->this$0:Lc8/Zb;

    invoke-virtual {v3, v5}, Lc8/Zb;->setUpdateSuspended(Z)V

    .line 347
    iget-object v3, p0, Lc8/Ob;->this$0:Lc8/Zb;

    invoke-virtual {v3, v5}, Lc8/Zb;->updateMenuView(Z)V

    .line 348
    return-void
.end method
