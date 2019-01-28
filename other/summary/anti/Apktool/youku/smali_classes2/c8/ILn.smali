.class public Lc8/ILn;
.super Lc8/uLn;
.source "ShowH5PageDialog.java"


# instance fields
.field private cancelTextViewShowH5:Landroid/widget/ImageView;

.field private doneTextViewShowH5:Landroid/widget/TextView;

.field private imageViewShowH5:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lc8/uLn;-><init>()V

    .line 30
    const/16 v0, 0x271b

    invoke-virtual {p0, v0}, Lc8/ILn;->setUPasswordDialogType(I)V

    .line 31
    return-void
.end method

.method public static newInstance(Lcom/youku/upassword/bean/UPasswordBean;)Lc8/ILn;
    .locals 3
    .param p0, "uPasswordBean"    # Lcom/youku/upassword/bean/UPasswordBean;

    .prologue
    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "UPasswordBeanFlag"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 36
    new-instance v1, Lc8/ILn;

    invoke-direct {v1}, Lc8/ILn;-><init>()V

    .line 37
    .local v1, "fragment":Lc8/ILn;
    invoke-virtual {v1, v0}, Lc8/ILn;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v1
.end method


# virtual methods
.method protected initChildView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 43
    sget v0, Lcom/youku/phone/R$id;->upassword_dialog_show_h5_image_imageview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/ILn;->imageViewShowH5:Landroid/widget/ImageView;

    .line 44
    sget v0, Lcom/youku/phone/R$id;->upassword_dialog_show_h5_cancel_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/ILn;->cancelTextViewShowH5:Landroid/widget/ImageView;

    .line 45
    sget v0, Lcom/youku/phone/R$id;->upassword_dialog_show_h5_done_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/ILn;->doneTextViewShowH5:Landroid/widget/TextView;

    .line 46
    return-void
.end method

.method protected setData(Lcom/youku/upassword/bean/UPasswordBean;)V
    .locals 3
    .param p1, "uPasswordBean"    # Lcom/youku/upassword/bean/UPasswordBean;

    .prologue
    .line 50
    invoke-static {}, Lc8/ELn;->getInstance()Lc8/ELn;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/upassword/bean/UPasswordBean;->imageUrlStr:Ljava/lang/String;

    iget-object v2, p0, Lc8/ILn;->imageViewShowH5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lc8/ELn;->loadImageUrlGlide(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 51
    return-void
.end method

.method protected setOnclickEvent(Lcom/youku/upassword/bean/UPasswordBean;)V
    .locals 2
    .param p1, "uPasswordBean"    # Lcom/youku/upassword/bean/UPasswordBean;

    .prologue
    .line 55
    iget-object v0, p0, Lc8/ILn;->cancelTextViewShowH5:Landroid/widget/ImageView;

    new-instance v1, Lc8/GLn;

    invoke-direct {v1, p0}, Lc8/GLn;-><init>(Lc8/ILn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lc8/ILn;->doneTextViewShowH5:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/youku/upassword/bean/UPasswordBean;->btnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lc8/ILn;->doneTextViewShowH5:Landroid/widget/TextView;

    new-instance v1, Lc8/HLn;

    invoke-direct {v1, p0, p1}, Lc8/HLn;-><init>(Lc8/ILn;Lcom/youku/upassword/bean/UPasswordBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method
