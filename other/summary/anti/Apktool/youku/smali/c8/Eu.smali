.class public Lc8/Eu;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Hu;


# direct methods
.method constructor <init>(Lc8/Hu;)V
    .locals 0

    .prologue
    .line 1364
    iput-object p1, p0, Lc8/Eu;->this$0:Lc8/Hu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1365
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1371
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1375
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lc8/Eu;->this$0:Lc8/Hu;

    .line 1376
    invoke-virtual {v0}, Lc8/Hu;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Eu;->this$0:Lc8/Hu;

    iget-object v0, v0, Lc8/Hu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lc8/Eu;->this$0:Lc8/Hu;

    iget-object v0, v0, Lc8/Hu;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lc8/Eu;->this$0:Lc8/Hu;

    iget-object v1, v1, Lc8/Hu;->mResizePopupRunnable:Lc8/Gu;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1378
    iget-object v0, p0, Lc8/Eu;->this$0:Lc8/Hu;

    iget-object v0, v0, Lc8/Hu;->mResizePopupRunnable:Lc8/Gu;

    invoke-virtual {v0}, Lc8/Gu;->run()V

    .line 1380
    :cond_0
    return-void
.end method
