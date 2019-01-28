.class public Lc8/Cdc;
.super Landroid/os/CountDownTimer;
.source "VerifyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/verificationsdk/ui/VerifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestCountDownTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;JJ)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 1190
    iput-object p1, p0, Lc8/Cdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    .line 1191
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1192
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .prologue
    .line 1196
    iget-object v0, p0, Lc8/Cdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lc8/Cdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1198
    iget-object v0, p0, Lc8/Cdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lc8/Cdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v1}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "ali_vsdk_verify_sms_send_code"

    const-string/jumbo v3, "string"

    iget-object v4, p0, Lc8/Cdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1199
    iget-object v0, p0, Lc8/Cdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "#1475ea"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1201
    :cond_0
    iget-object v0, p0, Lc8/Cdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3200(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1202
    iget-object v0, p0, Lc8/Cdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3200(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1203
    :cond_1
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3406()I

    .line 1204
    return-void
.end method

.method public onTick(J)V
    .locals 9
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 1209
    iget-object v0, p0, Lc8/Cdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lc8/Cdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lc8/Cdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v2, p0, Lc8/Cdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "ali_vsdk_verify_sms_timeout"

    const-string/jumbo v4, "string"

    iget-object v5, p0, Lc8/Cdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    iget-object v0, p0, Lc8/Cdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "#adadad"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1214
    :cond_0
    return-void
.end method
