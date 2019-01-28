.class public Lc8/KYo;
.super Ljava/lang/Object;
.source "CardRegistUIView.java"

# interfaces
.implements Lc8/SYo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/LYo;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/LYo;


# direct methods
.method constructor <init>(Lc8/LYo;)V
    .locals 0
    .param p1, "this$1"    # Lc8/LYo;

    .prologue
    .line 492
    iput-object p1, p0, Lc8/KYo;->this$1:Lc8/LYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failCallBack(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 500
    iget-object v0, p0, Lc8/KYo;->this$1:Lc8/LYo;

    iget-object v0, v0, Lc8/LYo;->this$0:Lc8/UYo;

    iget-object v1, p0, Lc8/KYo;->this$1:Lc8/LYo;

    iget-object v1, v1, Lc8/LYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$300(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/UYo;->access$500(Lc8/UYo;Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method public hasBeenUsed(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 505
    iget-object v0, p0, Lc8/KYo;->this$1:Lc8/LYo;

    iget-object v0, v0, Lc8/LYo;->this$0:Lc8/UYo;

    invoke-static {v0, v1}, Lc8/UYo;->access$602(Lc8/UYo;Z)Z

    .line 506
    iget-object v0, p0, Lc8/KYo;->this$1:Lc8/LYo;

    iget-object v0, v0, Lc8/LYo;->this$0:Lc8/UYo;

    invoke-static {v0, v1}, Lc8/UYo;->access$700(Lc8/UYo;Z)V

    .line 507
    invoke-static {p1}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public successCallBack(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 495
    iget-object v0, p0, Lc8/KYo;->this$1:Lc8/LYo;

    iget-object v0, v0, Lc8/LYo;->this$0:Lc8/UYo;

    iget-object v1, p0, Lc8/KYo;->this$1:Lc8/LYo;

    iget-object v1, v1, Lc8/LYo;->this$0:Lc8/UYo;

    invoke-static {v1}, Lc8/UYo;->access$300(Lc8/UYo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/UYo;->access$500(Lc8/UYo;Ljava/lang/String;)V

    .line 496
    return-void
.end method
