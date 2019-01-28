.class public Lc8/Bap;
.super Landroid/app/Dialog;
.source "SimpleTipsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mContext:Landroid/content/Context;

.field mNegative:Landroid/widget/TextView;

.field mNegativeText:Ljava/lang/String;

.field mPositive:Landroid/widget/TextView;

.field mPostiveText:Ljava/lang/String;

.field mTips:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tips"    # Ljava/lang/String;
    .param p3, "positiveText"    # Ljava/lang/String;
    .param p4, "negativeText"    # Ljava/lang/String;

    .prologue
    .line 30
    sget v0, Lcom/youku/phone/R$style;->VideoDownloadMemberCacheTIpDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    iput-object p1, p0, Lc8/Bap;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lc8/Bap;->mTips:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lc8/Bap;->mPostiveText:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lc8/Bap;->mNegativeText:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 53
    sget v0, Lcom/youku/phone/R$id;->member_cache_cancel:I

    invoke-virtual {p0, v0}, Lc8/Bap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/Bap;->mNegative:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lc8/Bap;->mNegative:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v0, Lcom/youku/phone/R$id;->member_cache_ok:I

    invoke-virtual {p0, v0}, Lc8/Bap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/Bap;->mPositive:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lc8/Bap;->mPositive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lc8/Bap;->mTips:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    sget v0, Lcom/youku/phone/R$id;->member_cache_text_body:I

    invoke-virtual {p0, v0}, Lc8/Bap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lc8/Bap;->mTips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lc8/Bap;->mPostiveText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lc8/Bap;->mPositive:Landroid/widget/TextView;

    iget-object v1, p0, Lc8/Bap;->mPostiveText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_1
    iget-object v0, p0, Lc8/Bap;->mNegativeText:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lc8/Bap;->mNegative:Landroid/widget/TextView;

    iget-object v1, p0, Lc8/Bap;->mNegativeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youku/phone/R$id;->member_cache_cancel:I

    if-ne v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lc8/Bap;->onNegativeButtonClicked()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lc8/Bap;->onPositiveButtonClicked()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/Bap;->requestWindowFeature(I)Z

    .line 43
    sget v0, Lcom/youku/phone/R$layout;->video_download_dialog_member_cache_tip_layout:I

    invoke-virtual {p0, v0}, Lc8/Bap;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lc8/Bap;->initView()V

    .line 50
    return-void
.end method

.method protected onNegativeButtonClicked()V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0}, Lc8/Bap;->dismiss()V

    .line 74
    return-void
.end method

.method protected onPositiveButtonClicked()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lc8/Bap;->dismiss()V

    .line 70
    return-void
.end method
