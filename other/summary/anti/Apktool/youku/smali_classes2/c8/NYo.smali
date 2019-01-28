.class public Lc8/NYo;
.super Ljava/lang/Object;
.source "CardRegistUIView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/UYo;->AddListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/UYo;


# direct methods
.method constructor <init>(Lc8/UYo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/UYo;

    .prologue
    .line 571
    iput-object p1, p0, Lc8/NYo;->this$0:Lc8/UYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/16 v2, 0x81

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 575
    if-nez p2, :cond_3

    .line 576
    iget-object v1, p0, Lc8/NYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$1200(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 577
    iget-object v1, p0, Lc8/NYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$1200(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "pwd":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    :cond_0
    iget-object v1, p0, Lc8/NYo;->this$0:Lc8/UYo;

    invoke-static {v1, v4}, Lc8/UYo;->access$1300(Lc8/UYo;Z)V

    .line 581
    iget-object v1, p0, Lc8/NYo;->this$0:Lc8/UYo;

    invoke-virtual {v1}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->regist_user_pwd1_tip_empty:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 598
    .end local v0    # "pwd":Ljava/lang/String;
    :goto_0
    return-void

    .line 583
    .restart local v0    # "pwd":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lc8/NYo;->this$0:Lc8/UYo;

    const/4 v2, 0x6

    const/16 v3, 0x10

    invoke-static {v1, v0, v2, v3}, Lc8/UYo;->access$1400(Lc8/UYo;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 584
    iget-object v1, p0, Lc8/NYo;->this$0:Lc8/UYo;

    invoke-static {v1, v4}, Lc8/UYo;->access$1300(Lc8/UYo;Z)V

    .line 585
    iget-object v1, p0, Lc8/NYo;->this$0:Lc8/UYo;

    invoke-virtual {v1}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->regist_user_pwd1_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 588
    :cond_2
    iget-object v1, p0, Lc8/NYo;->this$0:Lc8/UYo;

    invoke-static {v1, v5}, Lc8/UYo;->access$1300(Lc8/UYo;Z)V

    .line 589
    iget-object v1, p0, Lc8/NYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$1500(Lc8/UYo;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 592
    .end local v0    # "pwd":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lc8/NYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$1600(Lc8/UYo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 593
    iget-object v1, p0, Lc8/NYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$1200(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 595
    :cond_4
    iget-object v1, p0, Lc8/NYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$1200(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method
