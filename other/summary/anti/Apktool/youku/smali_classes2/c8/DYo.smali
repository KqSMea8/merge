.class public Lc8/DYo;
.super Ljava/lang/Object;
.source "CardRegistUIView.java"

# interfaces
.implements Lc8/ehn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/UYo;->doRegist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 964
    iput-object p1, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lc8/ghn;)V
    .locals 5
    .param p1, "e"    # Lc8/ghn;

    .prologue
    const/4 v4, 0x0

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doRegist onFailed code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lc8/ghn;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lc8/ghn;->getErrorInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 984
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-static {v2, v4}, Lc8/UYo;->access$3002(Lc8/UYo;Z)Z

    .line 985
    invoke-interface {p1}, Lc8/ghn;->getErrorCode()I

    move-result v1

    .line 986
    .local v1, "result":I
    const/4 v0, 0x0

    .line 987
    .local v0, "focus":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 988
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-virtual {v2}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$string;->login_error_unknown:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 1020
    :cond_0
    :goto_0
    new-instance v2, Lc8/TYo;

    iget-object v3, p0, Lc8/DYo;->this$0:Lc8/UYo;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lc8/TYo;-><init>(Lc8/UYo;Lc8/BYo;)V

    const/16 v3, 0x7d5

    invoke-virtual {v2, v3}, Lc8/TYo;->sendEmptyMessage(I)Z

    .line 1021
    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 1022
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-static {v2}, Lc8/UYo;->access$300(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1026
    :cond_1
    :goto_1
    return-void

    .line 989
    :cond_2
    sget v2, Lcom/youku/phone/R$string;->tips_not_responding:I

    if-ne v1, v2, :cond_3

    .line 990
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-virtual {v2}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$string;->tips_not_responding:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :cond_3
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-static {v2}, Lc8/UYo;->access$3100(Lc8/UYo;)I

    move-result v2

    and-int/2addr v2, v1

    iget-object v3, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-static {v3}, Lc8/UYo;->access$3100(Lc8/UYo;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 993
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-virtual {v2}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$string;->login_error_unknown:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 995
    :cond_4
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-static {v2}, Lc8/UYo;->access$3200(Lc8/UYo;)I

    move-result v2

    and-int/2addr v2, v1

    iget-object v3, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-static {v3}, Lc8/UYo;->access$3200(Lc8/UYo;)I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 996
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-static {v2, v4}, Lc8/UYo;->access$1800(Lc8/UYo;Z)V

    .line 997
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-virtual {v2}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$string;->regist_user_name_tip_exists:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 999
    const/4 v0, 0x2

    .line 1001
    :cond_5
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-static {v2}, Lc8/UYo;->access$3300(Lc8/UYo;)I

    move-result v2

    and-int/2addr v2, v1

    iget-object v3, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-static {v3}, Lc8/UYo;->access$3300(Lc8/UYo;)I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 1002
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-static {v2, v4}, Lc8/UYo;->access$1800(Lc8/UYo;Z)V

    .line 1003
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-virtual {v2}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$string;->regist_user_name_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 1005
    const/4 v0, 0x2

    .line 1007
    :cond_6
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-static {v2}, Lc8/UYo;->access$3400(Lc8/UYo;)I

    move-result v2

    and-int/2addr v2, v1

    iget-object v3, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-static {v3}, Lc8/UYo;->access$3400(Lc8/UYo;)I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 1008
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-static {v2, v4}, Lc8/UYo;->access$700(Lc8/UYo;Z)V

    .line 1009
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-virtual {v2}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$string;->regist_user_email_tip_exists:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 1011
    const/4 v0, 0x3

    .line 1013
    :cond_7
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-static {v2}, Lc8/UYo;->access$3500(Lc8/UYo;)I

    move-result v2

    and-int/2addr v2, v1

    iget-object v3, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-static {v3}, Lc8/UYo;->access$3500(Lc8/UYo;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1014
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-static {v2, v4}, Lc8/UYo;->access$700(Lc8/UYo;Z)V

    .line 1015
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-virtual {v2}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$string;->user_login_error_wrong_email:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 1017
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 1023
    :cond_8
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1024
    iget-object v2, p0, Lc8/DYo;->this$0:Lc8/UYo;

    invoke-static {v2}, Lc8/UYo;->access$1700(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 969
    new-instance v0, Lc8/TYo;

    iget-object v1, p0, Lc8/DYo;->this$0:Lc8/UYo;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc8/TYo;-><init>(Lc8/UYo;Lc8/BYo;)V

    const/16 v1, 0x7d4

    invoke-virtual {v0, v1}, Lc8/TYo;->sendEmptyMessage(I)Z

    .line 970
    iget-object v0, p0, Lc8/DYo;->this$0:Lc8/UYo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/UYo;->access$3002(Lc8/UYo;Z)Z

    .line 971
    return-void
.end method
