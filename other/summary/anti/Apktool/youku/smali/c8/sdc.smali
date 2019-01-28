.class public Lc8/sdc;
.super Ljava/lang/Object;
.source "VerifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initNoCaptchaUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 445
    iput-object p1, p0, Lc8/sdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 448
    iget-object v0, p0, Lc8/sdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lc8/sdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lc8/sdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v1}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 450
    iget-object v0, p0, Lc8/sdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 451
    iget-object v0, p0, Lc8/sdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1200()Lcom/alibaba/verificationsdk/ui/VerifyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initUI(Lcom/alibaba/verificationsdk/ui/VerifyType;)V

    .line 453
    :cond_0
    return-void
.end method
