.class public Lc8/sYo;
.super Ljava/lang/Object;
.source "CardRegistUIView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 693
    iput-object p1, p0, Lc8/sYo;->this$0:Lc8/UYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 707
    iget-object v0, p0, Lc8/sYo;->this$0:Lc8/UYo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/UYo;->access$1800(Lc8/UYo;Z)V

    .line 708
    iget-object v0, p0, Lc8/sYo;->this$0:Lc8/UYo;

    invoke-static {v0}, Lc8/UYo;->access$2100(Lc8/UYo;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 703
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 698
    return-void
.end method
