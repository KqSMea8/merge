.class public Lc8/OYo;
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
    .line 601
    iput-object p1, p0, Lc8/OYo;->this$0:Lc8/UYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v4, 0x0

    .line 605
    if-nez p2, :cond_1

    .line 606
    iget-object v1, p0, Lc8/OYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$1700(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lc8/OYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$200(Lc8/UYo;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 609
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 610
    :cond_0
    iget-object v1, p0, Lc8/OYo;->this$0:Lc8/UYo;

    invoke-static {v1, v4}, Lc8/UYo;->access$1800(Lc8/UYo;Z)V

    .line 611
    iget-object v1, p0, Lc8/OYo;->this$0:Lc8/UYo;

    invoke-virtual {v1}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->regist_user_name_tip_empty:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 627
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 613
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lc8/OYo;->this$0:Lc8/UYo;

    const/4 v2, 0x4

    const/16 v3, 0x10

    invoke-static {v1, v0, v2, v3}, Lc8/UYo;->access$1900(Lc8/UYo;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 614
    iget-object v1, p0, Lc8/OYo;->this$0:Lc8/UYo;

    invoke-static {v1, v4}, Lc8/UYo;->access$1800(Lc8/UYo;Z)V

    .line 615
    iget-object v1, p0, Lc8/OYo;->this$0:Lc8/UYo;

    invoke-virtual {v1}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->regist_user_name_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_3
    const-string/jumbo v1, ""

    invoke-static {}, Lc8/UYo;->access$2000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lc8/UYo;->access$2000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 620
    :cond_4
    iget-object v1, p0, Lc8/OYo;->this$0:Lc8/UYo;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lc8/UYo;->access$1800(Lc8/UYo;Z)V

    .line 621
    iget-object v1, p0, Lc8/OYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$2100(Lc8/UYo;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 624
    :cond_5
    iget-object v1, p0, Lc8/OYo;->this$0:Lc8/UYo;

    iget-object v2, p0, Lc8/OYo;->this$0:Lc8/UYo;

    invoke-static {v2}, Lc8/UYo;->access$1700(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lc8/UYo;->access$2200(Lc8/UYo;Landroid/widget/EditText;Z)Z

    goto :goto_0
.end method
