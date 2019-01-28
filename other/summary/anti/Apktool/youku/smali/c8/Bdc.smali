.class public Lc8/Bdc;
.super Landroid/os/CountDownTimer;
.source "VerifyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/verificationsdk/ui/VerifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshCountDownTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;JJ)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 1170
    iput-object p1, p0, Lc8/Bdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    .line 1171
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1172
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1176
    iget-object v1, p0, Lc8/Bdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v1}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Bdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v1}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1177
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1178
    .local v0, "flp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lc8/Bdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v2, p0, Lc8/Bdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->addroot(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 1179
    iget-object v1, p0, Lc8/Bdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v1}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->removeBall()V

    .line 1181
    .end local v0    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 1186
    return-void
.end method
