.class public Lc8/Lof;
.super Ljava/lang/Object;
.source "TipsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mof;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Mof;


# direct methods
.method constructor <init>(Lc8/Mof;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lc8/Lof;->this$1:Lc8/Mof;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 388
    iget-object v1, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget-object v1, v1, Lc8/Mof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget v2, v2, Lc8/Mof;->mDestX:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget-object v1, v1, Lc8/Mof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget v2, v2, Lc8/Mof;->mDestY:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_1

    .line 389
    iget-object v1, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget-object v1, v1, Lc8/Mof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget v2, v2, Lc8/Mof;->mDestX:I

    iget-object v3, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget-object v3, v3, Lc8/Mof;->this$0:Lc8/Nof;

    iget-object v3, v3, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget-object v3, v3, Lc8/Mof;->this$0:Lc8/Nof;

    iget-object v3, v3, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 390
    iget-object v1, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget-object v1, v1, Lc8/Mof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget v2, v2, Lc8/Mof;->mDestY:I

    iget-object v3, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget-object v3, v3, Lc8/Mof;->this$0:Lc8/Nof;

    iget-object v3, v3, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget-object v3, v3, Lc8/Mof;->this$0:Lc8/Nof;

    iget-object v3, v3, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 399
    :goto_0
    :try_start_0
    iget-object v1, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget-object v1, v1, Lc8/Mof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget-object v2, v2, Lc8/Mof;->this$0:Lc8/Nof;

    iget-object v2, v2, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget-object v3, v3, Lc8/Mof;->this$0:Lc8/Nof;

    iget-object v3, v3, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_1
    iget-object v1, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget-object v1, v1, Lc8/Mof;->this$0:Lc8/Nof;

    invoke-static {v1}, Lc8/Nof;->access$800(Lc8/Nof;)Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    move-result-object v1

    sget-object v2, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->CLOSE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    if-ne v1, v2, :cond_0

    .line 405
    iget-object v1, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget-object v1, v1, Lc8/Mof;->this$0:Lc8/Nof;

    invoke-virtual {v1}, Lc8/Nof;->destroy()V

    .line 407
    :cond_0
    return-void

    .line 392
    :cond_1
    iget-object v1, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget-object v1, v1, Lc8/Mof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget v2, v2, Lc8/Mof;->mDestX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 393
    iget-object v1, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget-object v1, v1, Lc8/Mof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget v2, v2, Lc8/Mof;->mDestY:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 394
    iget-object v1, p0, Lc8/Lof;->this$1:Lc8/Mof;

    invoke-virtual {v1}, Lc8/Mof;->cancel()Z

    .line 395
    iget-object v1, p0, Lc8/Lof;->this$1:Lc8/Mof;

    iget-object v1, v1, Lc8/Mof;->this$0:Lc8/Nof;

    invoke-static {v1}, Lc8/Nof;->access$1100(Lc8/Nof;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
