.class public Lc8/RYo;
.super Landroid/os/CountDownTimer;
.source "CardRegistUIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UYo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CountTimerTextView"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/UYo;


# direct methods
.method public constructor <init>(Lc8/UYo;JJ)V
    .locals 0
    .param p1, "this$0"    # Lc8/UYo;
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 1344
    iput-object p1, p0, Lc8/RYo;->this$0:Lc8/UYo;

    .line 1345
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1346
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 1350
    iget-object v0, p0, Lc8/RYo;->this$0:Lc8/UYo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc8/UYo;->isCountTimer:Z

    .line 1351
    iget-object v0, p0, Lc8/RYo;->this$0:Lc8/UYo;

    invoke-static {v0}, Lc8/UYo;->access$3700(Lc8/UYo;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "\u53d1\u9001\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    iget-object v0, p0, Lc8/RYo;->this$0:Lc8/UYo;

    invoke-virtual {v0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lc8/RYo;->this$0:Lc8/UYo;

    invoke-static {v0}, Lc8/UYo;->access$3700(Lc8/UYo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lc8/RYo;->this$0:Lc8/UYo;

    invoke-virtual {v1}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->login_regist_default_light_bule:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1355
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 1359
    iget-object v0, p0, Lc8/RYo;->this$0:Lc8/UYo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/UYo;->isCountTimer:Z

    .line 1360
    iget-object v0, p0, Lc8/RYo;->this$0:Lc8/UYo;

    invoke-virtual {v0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lc8/RYo;->this$0:Lc8/UYo;

    invoke-static {v0}, Lc8/UYo;->access$3700(Lc8/UYo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lc8/RYo;->this$0:Lc8/UYo;

    invoke-virtual {v1}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$color;->black_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1363
    :cond_0
    iget-object v0, p0, Lc8/RYo;->this$0:Lc8/UYo;

    invoke-static {v0}, Lc8/UYo;->access$3700(Lc8/UYo;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "60\u79d2\u5012\u8ba1\u65f6 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1364
    return-void
.end method
