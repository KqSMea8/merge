.class public Lc8/Fu;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Hu;


# direct methods
.method constructor <init>(Lc8/Hu;)V
    .locals 0

    .prologue
    .line 1343
    iput-object p1, p0, Lc8/Fu;->this$0:Lc8/Hu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1344
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1348
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1349
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1350
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1352
    .local v2, "y":I
    if-nez v0, :cond_1

    iget-object v3, p0, Lc8/Fu;->this$0:Lc8/Hu;

    iget-object v3, v3, Lc8/Hu;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lc8/Fu;->this$0:Lc8/Hu;

    iget-object v3, v3, Lc8/Hu;->mPopup:Landroid/widget/PopupWindow;

    .line 1353
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ltz v1, :cond_1

    iget-object v3, p0, Lc8/Fu;->this$0:Lc8/Hu;

    iget-object v3, v3, Lc8/Hu;->mPopup:Landroid/widget/PopupWindow;

    .line 1354
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-ltz v2, :cond_1

    iget-object v3, p0, Lc8/Fu;->this$0:Lc8/Hu;

    iget-object v3, v3, Lc8/Hu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1355
    iget-object v3, p0, Lc8/Fu;->this$0:Lc8/Hu;

    iget-object v3, v3, Lc8/Hu;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lc8/Fu;->this$0:Lc8/Hu;

    iget-object v4, v4, Lc8/Hu;->mResizePopupRunnable:Lc8/Gu;

    const-wide/16 v6, 0xfa

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1359
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 1356
    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1357
    iget-object v3, p0, Lc8/Fu;->this$0:Lc8/Hu;

    iget-object v3, v3, Lc8/Hu;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lc8/Fu;->this$0:Lc8/Hu;

    iget-object v4, v4, Lc8/Hu;->mResizePopupRunnable:Lc8/Gu;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
