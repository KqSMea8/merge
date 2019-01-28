.class public Lc8/Jof;
.super Ljava/lang/Object;
.source "TipsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Nof;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nof;


# direct methods
.method constructor <init>(Lc8/Nof;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lc8/Jof;->this$0:Lc8/Nof;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 238
    iget-object v0, p0, Lc8/Jof;->this$0:Lc8/Nof;

    iget-object v0, v0, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lc8/Jof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 240
    :try_start_0
    iget-object v0, p0, Lc8/Jof;->this$0:Lc8/Nof;

    iget-object v0, v0, Lc8/Nof;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lc8/Jof;->this$0:Lc8/Nof;

    iget-object v1, v1, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lc8/Jof;->this$0:Lc8/Nof;

    iget-object v2, v2, Lc8/Nof;->mPopupWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    iget-object v0, p0, Lc8/Jof;->this$0:Lc8/Nof;

    iget-object v0, v0, Lc8/Nof;->mPopView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lc8/Jof;->this$0:Lc8/Nof;

    new-instance v1, Lc8/Mof;

    iget-object v2, p0, Lc8/Jof;->this$0:Lc8/Nof;

    invoke-direct {v1, v2}, Lc8/Mof;-><init>(Lc8/Nof;)V

    invoke-static {v0, v1}, Lc8/Nof;->access$1002(Lc8/Nof;Lc8/Mof;)Lc8/Mof;

    .line 245
    iget-object v0, p0, Lc8/Jof;->this$0:Lc8/Nof;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lc8/Nof;->access$1102(Lc8/Nof;Ljava/util/Timer;)Ljava/util/Timer;

    .line 246
    iget-object v0, p0, Lc8/Jof;->this$0:Lc8/Nof;

    invoke-static {v0}, Lc8/Nof;->access$1100(Lc8/Nof;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lc8/Jof;->this$0:Lc8/Nof;

    invoke-static {v1}, Lc8/Nof;->access$1000(Lc8/Nof;)Lc8/Mof;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x10

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 247
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
