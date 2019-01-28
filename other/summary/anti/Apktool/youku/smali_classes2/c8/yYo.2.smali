.class public Lc8/yYo;
.super Ljava/lang/Object;
.source "CardRegistUIView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 785
    iput-object p1, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 789
    invoke-static {}, Lc8/bzo;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 790
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-virtual {v0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$string;->tips_no_network:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    iget-object v1, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$300(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/UYo;->access$2402(Lc8/UYo;Ljava/lang/String;)Ljava/lang/String;

    .line 794
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    iget-object v1, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$1700(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/UYo;->access$2502(Lc8/UYo;Ljava/lang/String;)Ljava/lang/String;

    .line 795
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    iget-object v1, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$1200(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/UYo;->access$2602(Lc8/UYo;Ljava/lang/String;)Ljava/lang/String;

    .line 798
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v0}, Lc8/UYo;->access$200(Lc8/UYo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 800
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v0}, Lc8/UYo;->access$2400(Lc8/UYo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    iget-object v1, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$2400(Lc8/UYo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 801
    :cond_2
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-virtual {v0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$string;->regist_user_email_tip_empty:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v0, v4}, Lc8/UYo;->access$602(Lc8/UYo;Z)Z

    .line 804
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v0, v4}, Lc8/UYo;->access$700(Lc8/UYo;Z)V

    .line 815
    :cond_3
    :goto_1
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v0}, Lc8/UYo;->access$2500(Lc8/UYo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, ""

    iget-object v1, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$2500(Lc8/UYo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 816
    :cond_4
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-virtual {v0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$string;->regist_user_name_tip_empty:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v0, v4}, Lc8/UYo;->access$602(Lc8/UYo;Z)Z

    .line 819
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v0, v4}, Lc8/UYo;->access$1800(Lc8/UYo;Z)V

    goto/16 :goto_0

    .line 806
    :cond_5
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    iget-object v1, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$2400(Lc8/UYo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/UYo;->access$900(Lc8/UYo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 807
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-virtual {v0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$string;->regist_user_email_tip:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v0, v4}, Lc8/UYo;->access$602(Lc8/UYo;Z)Z

    .line 810
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v0, v4}, Lc8/UYo;->access$700(Lc8/UYo;Z)V

    goto :goto_1

    .line 821
    :cond_6
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    iget-object v1, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$2500(Lc8/UYo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lc8/UYo;->access$1900(Lc8/UYo;Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-virtual {v0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$string;->regist_user_name_tip:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v0, v4}, Lc8/UYo;->access$602(Lc8/UYo;Z)Z

    .line 825
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v0, v4}, Lc8/UYo;->access$1800(Lc8/UYo;Z)V

    goto/16 :goto_0

    .line 829
    :cond_7
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    iget-object v1, p0, Lc8/yYo;->this$0:Lc8/UYo;

    iget-object v2, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v2}, Lc8/UYo;->access$300(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v3}, Lc8/UYo;->access$600(Lc8/UYo;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lc8/UYo;->access$400(Lc8/UYo;Landroid/widget/EditText;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lc8/UYo;->access$602(Lc8/UYo;Z)Z

    .line 830
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v0}, Lc8/UYo;->access$600(Lc8/UYo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lc8/yYo;->this$0:Lc8/UYo;

    iget-object v1, p0, Lc8/yYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$300(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lc8/xYo;

    invoke-direct {v2, p0}, Lc8/xYo;-><init>(Lc8/yYo;)V

    invoke-static {v0, v1, v2}, Lc8/UYo;->access$800(Lc8/UYo;Ljava/lang/String;Lc8/SYo;)V

    goto/16 :goto_0
.end method
