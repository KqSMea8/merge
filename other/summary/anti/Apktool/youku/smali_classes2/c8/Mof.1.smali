.class public Lc8/Mof;
.super Ljava/util/TimerTask;
.source "TipsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrayAnimationTimerTask"
.end annotation


# instance fields
.field mDestX:I

.field mDestY:I

.field final synthetic this$0:Lc8/Nof;


# direct methods
.method public constructor <init>(Lc8/Nof;)V
    .locals 2

    .prologue
    .line 369
    iput-object p1, p0, Lc8/Mof;->this$0:Lc8/Nof;

    .line 371
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 372
    invoke-static {p1}, Lc8/Nof;->access$800(Lc8/Nof;)Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    move-result-object v0

    sget-object v1, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->CLOSE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p1, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lc8/Mof;->mDestX:I

    .line 380
    :goto_0
    iget-object v0, p1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lc8/Mof;->mDestY:I

    .line 381
    return-void

    .line 374
    :cond_0
    invoke-static {p1}, Lc8/Nof;->access$800(Lc8/Nof;)Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    move-result-object v0

    sget-object v1, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->HIDE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    if-ne v0, v1, :cond_1

    .line 375
    invoke-static {p1}, Lc8/Nof;->access$500(Lc8/Nof;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lc8/Mof;->mDestX:I

    goto :goto_0

    .line 377
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lc8/Mof;->mDestX:I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 386
    :try_start_0
    iget-object v0, p0, Lc8/Mof;->this$0:Lc8/Nof;

    iget-object v0, v0, Lc8/Nof;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lc8/Lof;

    invoke-direct {v1, p0}, Lc8/Lof;-><init>(Lc8/Mof;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
