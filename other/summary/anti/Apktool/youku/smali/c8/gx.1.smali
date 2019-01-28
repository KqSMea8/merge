.class public Lc8/gx;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lc8/hr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lc8/Vq;

.field mMenu:Lc8/Rq;

.field final synthetic this$0:Lc8/kx;


# direct methods
.method constructor <init>(Lc8/kx;)V
    .locals 0

    .prologue
    .line 2297
    iput-object p1, p0, Lc8/gx;->this$0:Lc8/kx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2298
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lc8/Rq;Lc8/Vq;)Z
    .locals 3
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "item"    # Lc8/Vq;

    .prologue
    const/4 v2, 0x0

    .line 2387
    iget-object v0, p0, Lc8/gx;->this$0:Lc8/kx;

    iget-object v0, v0, Lc8/kx;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Lc8/mq;

    if-eqz v0, :cond_0

    .line 2388
    iget-object v0, p0, Lc8/gx;->this$0:Lc8/kx;

    iget-object v0, v0, Lc8/kx;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Lc8/mq;

    invoke-interface {v0}, Lc8/mq;->onActionViewCollapsed()V

    .line 2391
    :cond_0
    iget-object v0, p0, Lc8/gx;->this$0:Lc8/kx;

    iget-object v1, p0, Lc8/gx;->this$0:Lc8/kx;

    iget-object v1, v1, Lc8/kx;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lc8/kx;->removeView(Landroid/view/View;)V

    .line 2392
    iget-object v0, p0, Lc8/gx;->this$0:Lc8/kx;

    iget-object v1, p0, Lc8/gx;->this$0:Lc8/kx;

    iget-object v1, v1, Lc8/kx;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lc8/kx;->removeView(Landroid/view/View;)V

    .line 2393
    iget-object v0, p0, Lc8/gx;->this$0:Lc8/kx;

    iput-object v2, v0, Lc8/kx;->mExpandedActionView:Landroid/view/View;

    .line 2395
    iget-object v0, p0, Lc8/gx;->this$0:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->addChildrenForExpandedActionView()V

    .line 2396
    iput-object v2, p0, Lc8/gx;->mCurrentExpandedItem:Lc8/Vq;

    .line 2397
    iget-object v0, p0, Lc8/gx;->this$0:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->requestLayout()V

    .line 2398
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lc8/Vq;->setActionViewExpanded(Z)V

    .line 2400
    const/4 v0, 0x1

    return v0
.end method

.method public expandItemActionView(Lc8/Rq;Lc8/Vq;)Z
    .locals 4
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "item"    # Lc8/Vq;

    .prologue
    const/4 v3, 0x1

    .line 2358
    iget-object v1, p0, Lc8/gx;->this$0:Lc8/kx;

    invoke-virtual {v1}, Lc8/kx;->ensureCollapseButtonView()V

    .line 2359
    iget-object v1, p0, Lc8/gx;->this$0:Lc8/kx;

    iget-object v1, v1, Lc8/kx;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lc8/gx;->this$0:Lc8/kx;

    if-eq v1, v2, :cond_0

    .line 2360
    iget-object v1, p0, Lc8/gx;->this$0:Lc8/kx;

    iget-object v2, p0, Lc8/gx;->this$0:Lc8/kx;

    iget-object v2, v2, Lc8/kx;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Lc8/kx;->addView(Landroid/view/View;)V

    .line 2362
    :cond_0
    iget-object v1, p0, Lc8/gx;->this$0:Lc8/kx;

    invoke-virtual {p2}, Lc8/Vq;->getActionView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lc8/kx;->mExpandedActionView:Landroid/view/View;

    .line 2363
    iput-object p2, p0, Lc8/gx;->mCurrentExpandedItem:Lc8/Vq;

    .line 2364
    iget-object v1, p0, Lc8/gx;->this$0:Lc8/kx;

    iget-object v1, v1, Lc8/kx;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lc8/gx;->this$0:Lc8/kx;

    if-eq v1, v2, :cond_1

    .line 2365
    iget-object v1, p0, Lc8/gx;->this$0:Lc8/kx;

    invoke-virtual {v1}, Lc8/kx;->generateDefaultLayoutParams()Lc8/hx;

    move-result-object v0

    .line 2366
    .local v0, "lp":Lc8/hx;
    const v1, 0x800003

    iget-object v2, p0, Lc8/gx;->this$0:Lc8/kx;

    iget v2, v2, Lc8/kx;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lc8/hx;->gravity:I

    .line 2367
    const/4 v1, 0x2

    iput v1, v0, Lc8/hx;->mViewType:I

    .line 2368
    iget-object v1, p0, Lc8/gx;->this$0:Lc8/kx;

    iget-object v1, v1, Lc8/kx;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2369
    iget-object v1, p0, Lc8/gx;->this$0:Lc8/kx;

    iget-object v2, p0, Lc8/gx;->this$0:Lc8/kx;

    iget-object v2, v2, Lc8/kx;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lc8/kx;->addView(Landroid/view/View;)V

    .line 2372
    .end local v0    # "lp":Lc8/hx;
    :cond_1
    iget-object v1, p0, Lc8/gx;->this$0:Lc8/kx;

    invoke-virtual {v1}, Lc8/kx;->removeChildrenForExpandedActionView()V

    .line 2373
    iget-object v1, p0, Lc8/gx;->this$0:Lc8/kx;

    invoke-virtual {v1}, Lc8/kx;->requestLayout()V

    .line 2374
    invoke-virtual {p2, v3}, Lc8/Vq;->setActionViewExpanded(Z)V

    .line 2376
    iget-object v1, p0, Lc8/gx;->this$0:Lc8/kx;

    iget-object v1, v1, Lc8/kx;->mExpandedActionView:Landroid/view/View;

    instance-of v1, v1, Lc8/mq;

    if-eqz v1, :cond_2

    .line 2377
    iget-object v1, p0, Lc8/gx;->this$0:Lc8/kx;

    iget-object v1, v1, Lc8/kx;->mExpandedActionView:Landroid/view/View;

    check-cast v1, Lc8/mq;

    invoke-interface {v1}, Lc8/mq;->onActionViewExpanded()V

    .line 2380
    :cond_2
    return v3
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 2353
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 2405
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lc8/jr;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 2311
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lc8/Rq;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lc8/Rq;

    .prologue
    .line 2303
    iget-object v0, p0, Lc8/gx;->mMenu:Lc8/Rq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/gx;->mCurrentExpandedItem:Lc8/Vq;

    if-eqz v0, :cond_0

    .line 2304
    iget-object v0, p0, Lc8/gx;->mMenu:Lc8/Rq;

    iget-object v1, p0, Lc8/gx;->mCurrentExpandedItem:Lc8/Vq;

    invoke-virtual {v0, v1}, Lc8/Rq;->collapseItemActionView(Lc8/Vq;)Z

    .line 2306
    :cond_0
    iput-object p2, p0, Lc8/gx;->mMenu:Lc8/Rq;

    .line 2307
    return-void
.end method

.method public onCloseMenu(Lc8/Rq;Z)V
    .locals 0
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 2349
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2415
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 2410
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lc8/pr;)Z
    .locals 1
    .param p1, "subMenu"    # Lc8/pr;

    .prologue
    .line 2344
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lc8/gr;)V
    .locals 0
    .param p1, "cb"    # Lc8/gr;

    .prologue
    .line 2340
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .prologue
    .line 2317
    iget-object v4, p0, Lc8/gx;->mCurrentExpandedItem:Lc8/Vq;

    if-eqz v4, :cond_1

    .line 2318
    const/4 v1, 0x0

    .line 2320
    .local v1, "found":Z
    iget-object v4, p0, Lc8/gx;->mMenu:Lc8/Rq;

    if-eqz v4, :cond_0

    .line 2321
    iget-object v4, p0, Lc8/gx;->mMenu:Lc8/Rq;

    invoke-virtual {v4}, Lc8/Rq;->size()I

    move-result v0

    .line 2322
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2323
    iget-object v4, p0, Lc8/gx;->mMenu:Lc8/Rq;

    invoke-virtual {v4, v2}, Lc8/Rq;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2324
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Lc8/gx;->mCurrentExpandedItem:Lc8/Vq;

    if-ne v3, v4, :cond_2

    .line 2325
    const/4 v1, 0x1

    .line 2331
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    if-nez v1, :cond_1

    .line 2333
    iget-object v4, p0, Lc8/gx;->mMenu:Lc8/Rq;

    iget-object v5, p0, Lc8/gx;->mCurrentExpandedItem:Lc8/Vq;

    invoke-virtual {p0, v4, v5}, Lc8/gx;->collapseItemActionView(Lc8/Rq;Lc8/Vq;)Z

    .line 2336
    .end local v1    # "found":Z
    :cond_1
    return-void

    .line 2322
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
