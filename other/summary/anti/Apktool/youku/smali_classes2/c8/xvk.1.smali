.class public Lc8/xvk;
.super Landroid/app/Dialog;
.source "FreeFlowDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/wvk;
    }
.end annotation


# instance fields
.field private cancelText:Ljava/lang/String;

.field private confirmBtnListener:Lc8/wvk;

.field private doneText:Ljava/lang/String;

.field private free_flow_dialog_txt:Landroid/widget/TextView;

.field private layout_free_flow_dialog_cancel:Landroid/widget/TextView;

.field private layout_free_flow_dialog_goplay:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private showText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 28
    sget v0, Lcom/youku/phone/R$style;->SoKuDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 20
    iput-object v1, p0, Lc8/xvk;->free_flow_dialog_txt:Landroid/widget/TextView;

    .line 21
    iput-object v1, p0, Lc8/xvk;->layout_free_flow_dialog_cancel:Landroid/widget/TextView;

    .line 22
    iput-object v1, p0, Lc8/xvk;->layout_free_flow_dialog_goplay:Landroid/widget/TextView;

    .line 24
    iput-object v1, p0, Lc8/xvk;->doneText:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lc8/xvk;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 20
    iput-object v0, p0, Lc8/xvk;->free_flow_dialog_txt:Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lc8/xvk;->layout_free_flow_dialog_cancel:Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lc8/xvk;->layout_free_flow_dialog_goplay:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lc8/xvk;->doneText:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lc8/xvk;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 53
    sget v0, Lcom/youku/phone/R$id;->free_flow_dialog_txt:I

    invoke-virtual {p0, v0}, Lc8/xvk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/xvk;->free_flow_dialog_txt:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/youku/phone/R$id;->free_flow_dialog_txt_cancel:I

    invoke-virtual {p0, v0}, Lc8/xvk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/xvk;->layout_free_flow_dialog_cancel:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/youku/phone/R$id;->free_flow_dialog_txt_goplay:I

    invoke-virtual {p0, v0}, Lc8/xvk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/xvk;->layout_free_flow_dialog_goplay:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lc8/xvk;->layout_free_flow_dialog_cancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lc8/xvk;->layout_free_flow_dialog_goplay:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lc8/xvk;->showText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lc8/xvk;->free_flow_dialog_txt:Landroid/widget/TextView;

    iget-object v1, p0, Lc8/xvk;->showText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lc8/xvk;->doneText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lc8/xvk;->setDoneShowText(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lc8/xvk;->cancelText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lc8/xvk;->setCancelShowText(Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 68
    .local v0, "i":I
    sget v1, Lcom/youku/phone/R$id;->free_flow_dialog_txt_goplay:I

    if-ne v0, v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lc8/xvk;->dismiss()V

    .line 70
    iget-object v1, p0, Lc8/xvk;->confirmBtnListener:Lc8/wvk;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lc8/xvk;->confirmBtnListener:Lc8/wvk;

    invoke-interface {v1}, Lc8/wvk;->cancelClickEvent()V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    sget v1, Lcom/youku/phone/R$id;->free_flow_dialog_txt_cancel:I

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lc8/xvk;->dismiss()V

    .line 75
    iget-object v1, p0, Lc8/xvk;->confirmBtnListener:Lc8/wvk;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lc8/xvk;->confirmBtnListener:Lc8/wvk;

    invoke-interface {v1}, Lc8/wvk;->doClickEvent()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Lcom/youku/phone/R$layout;->free_flow_dialog_view:I

    invoke-virtual {p0, v0}, Lc8/xvk;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lc8/xvk;->initView()V

    .line 50
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 116
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCancelShowText(Ljava/lang/String;)V
    .locals 1
    .param p1, "cancelText"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lc8/xvk;->cancelText:Ljava/lang/String;

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/xvk;->layout_free_flow_dialog_goplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lc8/xvk;->layout_free_flow_dialog_goplay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    return-void
.end method

.method public setConfirmBtnListener(Lc8/wvk;)V
    .locals 0
    .param p1, "confirmBtnListener"    # Lc8/wvk;

    .prologue
    .line 103
    iput-object p1, p0, Lc8/xvk;->confirmBtnListener:Lc8/wvk;

    .line 104
    return-void
.end method

.method public setDoneShowText(Ljava/lang/String;)V
    .locals 1
    .param p1, "doneText"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lc8/xvk;->doneText:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/xvk;->layout_free_flow_dialog_cancel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lc8/xvk;->layout_free_flow_dialog_cancel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setShowText(Ljava/lang/String;)V
    .locals 1
    .param p1, "showText"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lc8/xvk;->showText:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/xvk;->free_flow_dialog_txt:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lc8/xvk;->free_flow_dialog_txt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    return-void
.end method

.method public showFreeFlowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/wvk;)V
    .locals 0
    .param p1, "showText"    # Ljava/lang/String;
    .param p2, "doneText"    # Ljava/lang/String;
    .param p3, "cancelText"    # Ljava/lang/String;
    .param p4, "confirmBtnListener"    # Lc8/wvk;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lc8/xvk;->setShowText(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p2}, Lc8/xvk;->setDoneShowText(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p3}, Lc8/xvk;->setCancelShowText(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p4}, Lc8/xvk;->setConfirmBtnListener(Lc8/wvk;)V

    .line 42
    invoke-virtual {p0}, Lc8/xvk;->show()V

    .line 43
    return-void
.end method
