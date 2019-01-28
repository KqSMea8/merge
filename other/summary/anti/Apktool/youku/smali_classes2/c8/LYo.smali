.class public Lc8/LYo;
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
    .line 477
    iput-object p1, p0, Lc8/LYo;->this$0:Lc8/UYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 481
    invoke-static {}, Lc8/bzo;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    iget-object v0, p0, Lc8/LYo;->this$0:Lc8/UYo;

    invoke-virtual {v0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$string;->tips_no_network:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "===\u662f\u5426\u8ba1\u65f6=isCountTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/LYo;->this$0:Lc8/UYo;

    iget-boolean v1, v1, Lc8/UYo;->isCountTimer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "===\u662f\u5426\u624b\u673a\u53f7=isPhoneNumberRegist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/LYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$200(Lc8/UYo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "===\u662f\u5426\u6709\u6548\u624b\u673a\u53f7==checkNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/LYo;->this$0:Lc8/UYo;

    iget-object v2, p0, Lc8/LYo;->this$0:Lc8/UYo;

    invoke-static {v2}, Lc8/UYo;->access$300(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lc8/UYo;->access$400(Lc8/UYo;Landroid/widget/EditText;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lc8/LYo;->this$0:Lc8/UYo;

    iget-boolean v0, v0, Lc8/UYo;->isCountTimer:Z

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lc8/LYo;->this$0:Lc8/UYo;

    invoke-static {v0}, Lc8/UYo;->access$200(Lc8/UYo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/LYo;->this$0:Lc8/UYo;

    iget-object v1, p0, Lc8/LYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$300(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lc8/UYo;->access$400(Lc8/UYo;Landroid/widget/EditText;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lc8/LYo;->this$0:Lc8/UYo;

    iget-object v1, p0, Lc8/LYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$300(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lc8/KYo;

    invoke-direct {v2, p0}, Lc8/KYo;-><init>(Lc8/LYo;)V

    invoke-static {v0, v1, v2}, Lc8/UYo;->access$800(Lc8/UYo;Ljava/lang/String;Lc8/SYo;)V

    goto/16 :goto_0
.end method
