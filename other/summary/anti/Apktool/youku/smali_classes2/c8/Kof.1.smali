.class public Lc8/Kof;
.super Ljava/lang/Object;
.source "TipsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowRunnable"
.end annotation


# instance fields
.field count:I

.field private mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lc8/Nof;


# direct methods
.method public constructor <init>(Lc8/Nof;Landroid/app/Activity;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 322
    iput-object p1, p0, Lc8/Kof;->this$0:Lc8/Nof;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lc8/Kof;->count:I

    .line 323
    iput-object p2, p0, Lc8/Kof;->mActivity:Landroid/app/Activity;

    .line 324
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 328
    iget-object v1, p0, Lc8/Kof;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    sget-boolean v1, Lc8/Nof;->ISSHOW:Z

    if-nez v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const/4 v0, 0x0

    .line 332
    .local v0, "token":Landroid/os/IBinder;
    :try_start_0
    iget-object v1, p0, Lc8/Kof;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 336
    :goto_1
    if-eqz v0, :cond_3

    .line 339
    :try_start_1
    iget-object v1, p0, Lc8/Kof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 340
    iget-object v1, p0, Lc8/Kof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 341
    iget-object v1, p0, Lc8/Kof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lc8/Kof;->this$0:Lc8/Nof;

    iget-object v2, v2, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lc8/Kof;->this$0:Lc8/Nof;

    iget-object v3, v3, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/Kof;->mActivity:Landroid/app/Activity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 347
    :try_start_2
    iget-object v1, p0, Lc8/Kof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 348
    iget-object v1, p0, Lc8/Kof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lc8/Kof;->this$0:Lc8/Nof;

    iget-object v2, v2, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 350
    :cond_2
    iget-object v1, p0, Lc8/Kof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lc8/Kof;->this$0:Lc8/Nof;

    iget-object v2, v2, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lc8/Kof;->this$0:Lc8/Nof;

    iget-object v3, v3, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 355
    :cond_3
    iget v1, p0, Lc8/Kof;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/Kof;->count:I

    .line 356
    iget-object v1, p0, Lc8/Kof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 357
    iget v1, p0, Lc8/Kof;->count:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lc8/Kof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mShowRunnable:Lc8/Kof;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lc8/Kof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mAnimationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lc8/Kof;->this$0:Lc8/Nof;

    iget-object v2, v2, Lc8/Nof;->mShowRunnable:Lc8/Kof;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method
