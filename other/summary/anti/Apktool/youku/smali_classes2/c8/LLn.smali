.class public Lc8/LLn;
.super Lc8/uLn;
.source "ShowVideoPageDialog.java"


# instance fields
.field private cancelTextViewShowVideo:Landroid/widget/ImageView;

.field private doneTextViewShowVideo:Landroid/widget/TextView;

.field private durationTextViewShowVideo:Landroid/widget/TextView;

.field private imageViewShowVideo:Landroid/widget/ImageView;

.field private titleTextViewShowVideo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lc8/uLn;-><init>()V

    .line 30
    const/16 v0, 0x271a

    invoke-virtual {p0, v0}, Lc8/LLn;->setUPasswordDialogType(I)V

    .line 31
    return-void
.end method

.method public static newInstance(Lcom/youku/upassword/bean/UPasswordBean;)Lc8/LLn;
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
    new-instance v1, Lc8/LLn;

    invoke-direct {v1}, Lc8/LLn;-><init>()V

    .line 37
    .local v1, "fragment":Lc8/LLn;
    invoke-virtual {v1, v0}, Lc8/LLn;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v1
.end method


# virtual methods
.method protected initChildView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 43
    sget v0, Lcom/youku/phone/R$id;->upassword_dialog_show_video_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/LLn;->imageViewShowVideo:Landroid/widget/ImageView;

    .line 44
    sget v0, Lcom/youku/phone/R$id;->upassword_dialog_show_video_title_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/LLn;->titleTextViewShowVideo:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/youku/phone/R$id;->upassword_dialog_show_video_duration_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/LLn;->durationTextViewShowVideo:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/youku/phone/R$id;->upassword_dialog_show_video_cancel_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/LLn;->cancelTextViewShowVideo:Landroid/widget/ImageView;

    .line 47
    sget v0, Lcom/youku/phone/R$id;->upassword_dialog_show_video_done_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/LLn;->doneTextViewShowVideo:Landroid/widget/TextView;

    .line 48
    return-void
.end method

.method protected setData(Lcom/youku/upassword/bean/UPasswordBean;)V
    .locals 3
    .param p1, "uPasswordBean"    # Lcom/youku/upassword/bean/UPasswordBean;

    .prologue
    .line 52
    iget-object v0, p0, Lc8/LLn;->titleTextViewShowVideo:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/youku/upassword/bean/UPasswordBean;->titleStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lc8/LLn;->durationTextViewShowVideo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/youku/upassword/bean/UPasswordBean;->watchCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u6b21\u64ad\u653e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-static {}, Lc8/ELn;->getInstance()Lc8/ELn;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/upassword/bean/UPasswordBean;->imageUrlStr:Ljava/lang/String;

    iget-object v2, p0, Lc8/LLn;->imageViewShowVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lc8/ELn;->loadImageUrlGlide(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 55
    return-void
.end method

.method protected setOnclickEvent(Lcom/youku/upassword/bean/UPasswordBean;)V
    .locals 2
    .param p1, "uPasswordBean"    # Lcom/youku/upassword/bean/UPasswordBean;

    .prologue
    .line 59
    iget-object v0, p0, Lc8/LLn;->cancelTextViewShowVideo:Landroid/widget/ImageView;

    new-instance v1, Lc8/JLn;

    invoke-direct {v1, p0}, Lc8/JLn;-><init>(Lc8/LLn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lc8/LLn;->doneTextViewShowVideo:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/youku/upassword/bean/UPasswordBean;->btnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lc8/LLn;->doneTextViewShowVideo:Landroid/widget/TextView;

    new-instance v1, Lc8/KLn;

    invoke-direct {v1, p0, p1}, Lc8/KLn;-><init>(Lc8/LLn;Lcom/youku/upassword/bean/UPasswordBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method
