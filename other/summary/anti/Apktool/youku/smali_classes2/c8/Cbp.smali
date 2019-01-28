.class public Lc8/Cbp;
.super Landroid/app/Dialog;
.source "YoukuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Bbp;,
        Lc8/Abp;,
        Lcom/youku/widget/YoukuDialog$TYPE;
    }
.end annotation


# instance fields
.field private checkedItem:I

.field private content:Ljava/lang/String;

.field private contentTV:Landroid/widget/TextView;

.field public currentType:Lcom/youku/widget/YoukuDialog$TYPE;

.field private downloadPathIsVisibility:Z

.field private highQualityBtn:Landroid/widget/RadioButton;

.field private item1:Landroid/widget/RelativeLayout;

.field private item2:Landroid/widget/RelativeLayout;

.field private item3:Landroid/widget/RelativeLayout;

.field private item4:Landroid/widget/RelativeLayout;

.field private item5:Landroid/widget/RelativeLayout;

.field private item_1080:Landroid/widget/RelativeLayout;

.field private languageTextView:Landroid/widget/TextView;

.field private listener:Lc8/Abp;

.field protected mContext:Landroid/app/Activity;

.field private negitiveText:Ljava/lang/String;

.field private negtiveBtn:Landroid/widget/TextView;

.field private negtive_btn_color_resId:I

.field private negtive_btn_layout:Landroid/view/View;

.field private negtive_btn_layout_resId:I

.field private normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

.field private normalPositiveBtnListener:Landroid/view/View$OnClickListener;

.field private normalQualityBtn:Landroid/widget/RadioButton;

.field onBackClickListener:Lc8/Bbp;

.field private positiveBtn:Landroid/widget/TextView;

.field private positiveBtnListener:Landroid/view/View$OnClickListener;

.field private positiveText:Ljava/lang/String;

.field private positive_btn_layout:Landroid/view/View;

.field private selectedLanguageName:Ljava/lang/String;

.field private superQuality1080Btn:Landroid/widget/RadioButton;

.field private superQualityBtn:Landroid/widget/RadioButton;

.field private title:Landroid/widget/TextView;

.field private titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    sget v0, Lcom/youku/phone/R$style;->YoukuDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 59
    iput v1, p0, Lc8/Cbp;->negtive_btn_layout_resId:I

    .line 60
    iput v1, p0, Lc8/Cbp;->negtive_btn_color_resId:I

    .line 70
    iput-boolean v1, p0, Lc8/Cbp;->downloadPathIsVisibility:Z

    .line 72
    iput-object v2, p0, Lc8/Cbp;->onBackClickListener:Lc8/Bbp;

    .line 112
    iput-object v2, p0, Lc8/Cbp;->languageTextView:Landroid/widget/TextView;

    .line 82
    iput-object p1, p0, Lc8/Cbp;->mContext:Landroid/app/Activity;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "checkedItem"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lc8/Cbp;-><init>(Landroid/app/Activity;)V

    .line 105
    sget-object v0, Lcom/youku/widget/YoukuDialog$TYPE;->picker:Lcom/youku/widget/YoukuDialog$TYPE;

    iput-object v0, p0, Lc8/Cbp;->currentType:Lcom/youku/widget/YoukuDialog$TYPE;

    .line 106
    iput p2, p0, Lc8/Cbp;->checkedItem:I

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/youku/widget/YoukuDialog$TYPE;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/youku/widget/YoukuDialog$TYPE;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 86
    invoke-direct {p0, p1}, Lc8/Cbp;-><init>(Landroid/app/Activity;)V

    .line 87
    iput-object p2, p0, Lc8/Cbp;->currentType:Lcom/youku/widget/YoukuDialog$TYPE;

    .line 88
    const-class v1, Lc8/ven;

    invoke-static {v1}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/ven;

    invoke-interface {v1}, Lc8/ven;->getDownloadFormat()I

    move-result v0

    .line 89
    .local v0, "selectedFormat":I
    if-ne v0, v2, :cond_0

    .line 90
    iput v2, p0, Lc8/Cbp;->checkedItem:I

    .line 101
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 92
    iput v3, p0, Lc8/Cbp;->checkedItem:I

    goto :goto_0

    .line 93
    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 94
    const-class v1, Lc8/vdn;

    invoke-static {v1}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vdn;

    invoke-interface {v1}, Lc8/vdn;->isShow1080P()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    const/4 v1, 0x5

    iput v1, p0, Lc8/Cbp;->checkedItem:I

    goto :goto_0

    .line 97
    :cond_2
    iput v3, p0, Lc8/Cbp;->checkedItem:I

    goto :goto_0

    .line 100
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lc8/Cbp;->checkedItem:I

    goto :goto_0
.end method

.method static synthetic access$000(Lc8/Cbp;I)V
    .locals 0
    .param p0, "x0"    # Lc8/Cbp;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lc8/Cbp;->resetSelectedSwitcher(I)V

    return-void
.end method

.method static synthetic access$100(Lc8/Cbp;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lc8/Cbp;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/Cbp;->normalQualityBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Cbp;)Lc8/Abp;
    .locals 1
    .param p0, "x0"    # Lc8/Cbp;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/Cbp;->listener:Lc8/Abp;

    return-object v0
.end method

.method static synthetic access$300(Lc8/Cbp;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lc8/Cbp;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/Cbp;->highQualityBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$400(Lc8/Cbp;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lc8/Cbp;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/Cbp;->superQualityBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$500(Lc8/Cbp;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lc8/Cbp;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/Cbp;->superQuality1080Btn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$600(Lc8/Cbp;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lc8/Cbp;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/Cbp;->positiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lc8/Cbp;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lc8/Cbp;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/Cbp;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$800(Lc8/Cbp;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lc8/Cbp;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/Cbp;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private resetSelectedSwitcher(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 280
    if-nez p1, :cond_0

    .line 285
    iget-object v0, p0, Lc8/Cbp;->highQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 286
    iget-object v0, p0, Lc8/Cbp;->superQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 287
    iget-object v0, p0, Lc8/Cbp;->superQuality1080Btn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 310
    :goto_0
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 293
    iget-object v0, p0, Lc8/Cbp;->normalQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 294
    iget-object v0, p0, Lc8/Cbp;->superQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 295
    iget-object v0, p0, Lc8/Cbp;->superQuality1080Btn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 296
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 297
    iget-object v0, p0, Lc8/Cbp;->normalQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 298
    iget-object v0, p0, Lc8/Cbp;->superQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 299
    iget-object v0, p0, Lc8/Cbp;->highQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lc8/Cbp;->normalQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 306
    iget-object v0, p0, Lc8/Cbp;->highQualityBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 307
    iget-object v0, p0, Lc8/Cbp;->superQuality1080Btn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lc8/Cbp;->item1:Landroid/widget/RelativeLayout;

    new-instance v1, Lc8/rbp;

    invoke-direct {v1, p0}, Lc8/rbp;-><init>(Lc8/Cbp;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lc8/Cbp;->normalQualityBtn:Landroid/widget/RadioButton;

    new-instance v1, Lc8/sbp;

    invoke-direct {v1, p0}, Lc8/sbp;-><init>(Lc8/Cbp;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v0, p0, Lc8/Cbp;->item2:Landroid/widget/RelativeLayout;

    new-instance v1, Lc8/tbp;

    invoke-direct {v1, p0}, Lc8/tbp;-><init>(Lc8/Cbp;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v0, p0, Lc8/Cbp;->highQualityBtn:Landroid/widget/RadioButton;

    new-instance v1, Lc8/ubp;

    invoke-direct {v1, p0}, Lc8/ubp;-><init>(Lc8/Cbp;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lc8/Cbp;->item3:Landroid/widget/RelativeLayout;

    new-instance v1, Lc8/vbp;

    invoke-direct {v1, p0}, Lc8/vbp;-><init>(Lc8/Cbp;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v0, p0, Lc8/Cbp;->superQualityBtn:Landroid/widget/RadioButton;

    new-instance v1, Lc8/wbp;

    invoke-direct {v1, p0}, Lc8/wbp;-><init>(Lc8/Cbp;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v0, p0, Lc8/Cbp;->item_1080:Landroid/widget/RelativeLayout;

    new-instance v1, Lc8/xbp;

    invoke-direct {v1, p0}, Lc8/xbp;-><init>(Lc8/Cbp;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v0, p0, Lc8/Cbp;->superQuality1080Btn:Landroid/widget/RadioButton;

    new-instance v1, Lc8/ybp;

    invoke-direct {v1, p0}, Lc8/ybp;-><init>(Lc8/Cbp;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    iget-object v0, p0, Lc8/Cbp;->item4:Landroid/widget/RelativeLayout;

    new-instance v1, Lc8/zbp;

    invoke-direct {v1, p0}, Lc8/zbp;-><init>(Lc8/Cbp;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v0, p0, Lc8/Cbp;->item5:Landroid/widget/RelativeLayout;

    new-instance v1, Lc8/mbp;

    invoke-direct {v1, p0}, Lc8/mbp;-><init>(Lc8/Cbp;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    iget-object v0, p0, Lc8/Cbp;->positive_btn_layout:Landroid/view/View;

    new-instance v1, Lc8/nbp;

    invoke-direct {v1, p0}, Lc8/nbp;-><init>(Lc8/Cbp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    iget-object v0, p0, Lc8/Cbp;->negtive_btn_layout:Landroid/view/View;

    new-instance v1, Lc8/obp;

    invoke-direct {v1, p0}, Lc8/obp;-><init>(Lc8/Cbp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    return-void
.end method

.method private setNormalListener()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lc8/Cbp;->positive_btn_layout:Landroid/view/View;

    new-instance v1, Lc8/pbp;

    invoke-direct {v1, p0}, Lc8/pbp;-><init>(Lc8/Cbp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    iget-object v0, p0, Lc8/Cbp;->negtive_btn_layout:Landroid/view/View;

    new-instance v1, Lc8/qbp;

    invoke-direct {v1, p0}, Lc8/qbp;-><init>(Lc8/Cbp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    return-void
.end method


# virtual methods
.method public hideNegtiveBtn(Z)V
    .locals 2
    .param p1, "isHide"    # Z

    .prologue
    .line 663
    iget-object v0, p0, Lc8/Cbp;->negtive_btn_layout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 664
    if-eqz p1, :cond_1

    .line 665
    iget-object v0, p0, Lc8/Cbp;->negtive_btn_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    iget-object v0, p0, Lc8/Cbp;->negtive_btn_layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lc8/Cbp;->currentType:Lcom/youku/widget/YoukuDialog$TYPE;

    sget-object v1, Lcom/youku/widget/YoukuDialog$TYPE;->update:Lcom/youku/widget/YoukuDialog$TYPE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lc8/Cbp;->onBackClickListener:Lc8/Bbp;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lc8/Cbp;->onBackClickListener:Lc8/Bbp;

    invoke-interface {v0}, Lc8/Bbp;->onBackPress()V

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 125
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 126
    iget-object v3, p0, Lc8/Cbp;->currentType:Lcom/youku/widget/YoukuDialog$TYPE;

    sget-object v4, Lcom/youku/widget/YoukuDialog$TYPE;->picker:Lcom/youku/widget/YoukuDialog$TYPE;

    if-ne v3, v4, :cond_d

    .line 127
    sget v3, Lcom/youku/phone/R$layout;->youku_dialog_picker:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->setContentView(I)V

    .line 128
    sget v3, Lcom/youku/phone/R$id;->positive_btn_layout:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lc8/Cbp;->positive_btn_layout:Landroid/view/View;

    .line 129
    sget v3, Lcom/youku/phone/R$id;->negtive_btn_layout:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lc8/Cbp;->negtive_btn_layout:Landroid/view/View;

    .line 130
    sget v3, Lcom/youku/phone/R$id;->positive_btn:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lc8/Cbp;->positiveBtn:Landroid/widget/TextView;

    .line 131
    sget v3, Lcom/youku/phone/R$id;->negtive_btn:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lc8/Cbp;->negtiveBtn:Landroid/widget/TextView;

    .line 132
    sget v3, Lcom/youku/phone/R$id;->picker_dialog_title:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lc8/Cbp;->title:Landroid/widget/TextView;

    .line 133
    iget-object v3, p0, Lc8/Cbp;->titleText:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Cbp;->titleText:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    iget-object v3, p0, Lc8/Cbp;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lc8/Cbp;->titleText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_0
    sget v3, Lcom/youku/phone/R$id;->item1:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lc8/Cbp;->item1:Landroid/widget/RelativeLayout;

    .line 136
    sget v3, Lcom/youku/phone/R$id;->item2:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lc8/Cbp;->item2:Landroid/widget/RelativeLayout;

    .line 137
    sget v3, Lcom/youku/phone/R$id;->item3:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lc8/Cbp;->item3:Landroid/widget/RelativeLayout;

    .line 138
    sget v3, Lcom/youku/phone/R$id;->item4:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lc8/Cbp;->item4:Landroid/widget/RelativeLayout;

    .line 139
    sget v3, Lcom/youku/phone/R$id;->item5:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lc8/Cbp;->item5:Landroid/widget/RelativeLayout;

    .line 140
    sget v3, Lcom/youku/phone/R$id;->item_1080:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lc8/Cbp;->item_1080:Landroid/widget/RelativeLayout;

    .line 141
    const-class v3, Lc8/vdn;

    invoke-static {v3}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/vdn;

    invoke-interface {v3}, Lc8/vdn;->isHD2Supported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    iget-object v3, p0, Lc8/Cbp;->item3:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 143
    :cond_1
    sget-boolean v3, Lc8/Dfh;->isHighEnd:Z

    if-nez v3, :cond_2

    .line 144
    iget-object v3, p0, Lc8/Cbp;->item2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 146
    :cond_2
    const-class v3, Lc8/vdn;

    invoke-static {v3}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/vdn;

    invoke-interface {v3}, Lc8/vdn;->isShow1080P()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 147
    iget-object v3, p0, Lc8/Cbp;->item_1080:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    :goto_0
    const-class v3, Lc8/ven;

    invoke-static {v3}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/ven;

    invoke-interface {v3}, Lc8/ven;->getDownloadLanguage()I

    move-result v2

    .line 152
    .local v2, "lang_id":I
    sget-object v3, Lc8/IVo;->ALL_LANGAUGE:[Lc8/IVo;

    aget-object v3, v3, v2

    iget-object v3, v3, Lc8/IVo;->desc:Ljava/lang/String;

    iput-object v3, p0, Lc8/Cbp;->selectedLanguageName:Ljava/lang/String;

    .line 153
    sget v3, Lcom/youku/phone/R$id;->item4_tv:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lc8/Cbp;->languageTextView:Landroid/widget/TextView;

    .line 154
    iget-object v3, p0, Lc8/Cbp;->languageTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lc8/Cbp;->selectedLanguageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    sget v3, Lcom/youku/phone/R$id;->normal_quality:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lc8/Cbp;->normalQualityBtn:Landroid/widget/RadioButton;

    .line 157
    sget v3, Lcom/youku/phone/R$id;->high_quality:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lc8/Cbp;->highQualityBtn:Landroid/widget/RadioButton;

    .line 159
    sget v3, Lcom/youku/phone/R$id;->super_quality:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lc8/Cbp;->superQualityBtn:Landroid/widget/RadioButton;

    .line 160
    sget v3, Lcom/youku/phone/R$id;->super_quality_1080:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lc8/Cbp;->superQuality1080Btn:Landroid/widget/RadioButton;

    .line 162
    iget-object v3, p0, Lc8/Cbp;->item1:Landroid/widget/RelativeLayout;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 163
    iget-object v3, p0, Lc8/Cbp;->item2:Landroid/widget/RelativeLayout;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 164
    iget-object v3, p0, Lc8/Cbp;->item3:Landroid/widget/RelativeLayout;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 165
    iget-object v3, p0, Lc8/Cbp;->normalQualityBtn:Landroid/widget/RadioButton;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 166
    iget-object v3, p0, Lc8/Cbp;->highQualityBtn:Landroid/widget/RadioButton;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 167
    iget-object v3, p0, Lc8/Cbp;->superQualityBtn:Landroid/widget/RadioButton;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 168
    iget-object v3, p0, Lc8/Cbp;->item4:Landroid/widget/RelativeLayout;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 169
    iget-object v3, p0, Lc8/Cbp;->item5:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 170
    iget-object v3, p0, Lc8/Cbp;->superQuality1080Btn:Landroid/widget/RadioButton;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 171
    iget-object v3, p0, Lc8/Cbp;->item_1080:Landroid/widget/RelativeLayout;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 173
    invoke-direct {p0}, Lc8/Cbp;->setListeners()V

    .line 174
    iget v3, p0, Lc8/Cbp;->checkedItem:I

    if-nez v3, :cond_6

    .line 175
    iget-object v3, p0, Lc8/Cbp;->item1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 186
    :cond_3
    :goto_1
    invoke-static {}, Lc8/Xyo;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v7, :cond_b

    .line 187
    iget-object v3, p0, Lc8/Cbp;->item5:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 192
    :goto_2
    iget-boolean v3, p0, Lc8/Cbp;->downloadPathIsVisibility:Z

    if-eqz v3, :cond_c

    .line 193
    iget-object v3, p0, Lc8/Cbp;->item5:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 245
    .end local v2    # "lang_id":I
    :cond_4
    :goto_3
    return-void

    .line 149
    :cond_5
    iget-object v3, p0, Lc8/Cbp;->item_1080:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 176
    .restart local v2    # "lang_id":I
    :cond_6
    iget v3, p0, Lc8/Cbp;->checkedItem:I

    if-ne v3, v8, :cond_7

    .line 177
    iget-object v3, p0, Lc8/Cbp;->item2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_1

    .line 178
    :cond_7
    iget v3, p0, Lc8/Cbp;->checkedItem:I

    if-ne v3, v7, :cond_8

    .line 179
    iget-object v3, p0, Lc8/Cbp;->item3:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_1

    .line 180
    :cond_8
    iget v3, p0, Lc8/Cbp;->checkedItem:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    .line 181
    iget-object v3, p0, Lc8/Cbp;->item4:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_1

    .line 182
    :cond_9
    iget v3, p0, Lc8/Cbp;->checkedItem:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_a

    .line 183
    iget-object v3, p0, Lc8/Cbp;->item5:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_1

    .line 184
    :cond_a
    iget v3, p0, Lc8/Cbp;->checkedItem:I

    if-ne v3, v9, :cond_3

    .line 185
    iget-object v3, p0, Lc8/Cbp;->item_1080:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_1

    .line 189
    :cond_b
    iget-object v3, p0, Lc8/Cbp;->item5:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 195
    :cond_c
    iget-object v3, p0, Lc8/Cbp;->item5:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 197
    .end local v2    # "lang_id":I
    :cond_d
    iget-object v3, p0, Lc8/Cbp;->currentType:Lcom/youku/widget/YoukuDialog$TYPE;

    sget-object v4, Lcom/youku/widget/YoukuDialog$TYPE;->normal:Lcom/youku/widget/YoukuDialog$TYPE;

    if-ne v3, v4, :cond_13

    .line 198
    sget v3, Lcom/youku/phone/R$layout;->youku_dialog_normal:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->setContentView(I)V

    .line 199
    sget v3, Lcom/youku/phone/R$id;->positive_btn_layout:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lc8/Cbp;->positive_btn_layout:Landroid/view/View;

    .line 200
    sget v3, Lcom/youku/phone/R$id;->negtive_btn_layout:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lc8/Cbp;->negtive_btn_layout:Landroid/view/View;

    .line 201
    sget v3, Lcom/youku/phone/R$id;->positive_btn:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lc8/Cbp;->positiveBtn:Landroid/widget/TextView;

    .line 202
    sget v3, Lcom/youku/phone/R$id;->negtive_btn:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lc8/Cbp;->negtiveBtn:Landroid/widget/TextView;

    .line 203
    iget v3, p0, Lc8/Cbp;->negtive_btn_layout_resId:I

    if-eqz v3, :cond_e

    .line 204
    iget-object v3, p0, Lc8/Cbp;->negtive_btn_layout:Landroid/view/View;

    iget v4, p0, Lc8/Cbp;->negtive_btn_layout_resId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 206
    :cond_e
    iget v3, p0, Lc8/Cbp;->negtive_btn_color_resId:I

    if-eqz v3, :cond_f

    .line 207
    iget-object v3, p0, Lc8/Cbp;->negtiveBtn:Landroid/widget/TextView;

    iget v4, p0, Lc8/Cbp;->negtive_btn_color_resId:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    :cond_f
    sget v3, Lcom/youku/phone/R$id;->content:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lc8/Cbp;->contentTV:Landroid/widget/TextView;

    .line 210
    iget-object v3, p0, Lc8/Cbp;->content:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lc8/Cbp;->content:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_10

    .line 211
    iget-object v3, p0, Lc8/Cbp;->contentTV:Landroid/widget/TextView;

    iget-object v4, p0, Lc8/Cbp;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_10
    iget-object v3, p0, Lc8/Cbp;->positiveText:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lc8/Cbp;->positiveText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_11

    .line 213
    iget-object v3, p0, Lc8/Cbp;->positiveBtn:Landroid/widget/TextView;

    iget-object v4, p0, Lc8/Cbp;->positiveText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_11
    iget-object v3, p0, Lc8/Cbp;->negitiveText:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lc8/Cbp;->negitiveText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    .line 215
    iget-object v3, p0, Lc8/Cbp;->negtiveBtn:Landroid/widget/TextView;

    iget-object v4, p0, Lc8/Cbp;->negitiveText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_12
    invoke-direct {p0}, Lc8/Cbp;->setNormalListener()V

    goto/16 :goto_3

    .line 217
    :cond_13
    iget-object v3, p0, Lc8/Cbp;->currentType:Lcom/youku/widget/YoukuDialog$TYPE;

    sget-object v4, Lcom/youku/widget/YoukuDialog$TYPE;->update:Lcom/youku/widget/YoukuDialog$TYPE;

    if-ne v3, v4, :cond_4

    .line 218
    sget v3, Lcom/youku/phone/R$layout;->youku_dialog_title:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->setContentView(I)V

    .line 219
    sget v3, Lcom/youku/phone/R$id;->positive_btn_layout:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lc8/Cbp;->positive_btn_layout:Landroid/view/View;

    .line 220
    sget v3, Lcom/youku/phone/R$id;->negtive_btn_layout:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lc8/Cbp;->negtive_btn_layout:Landroid/view/View;

    .line 221
    sget v3, Lcom/youku/phone/R$id;->positive_btn:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lc8/Cbp;->positiveBtn:Landroid/widget/TextView;

    .line 222
    sget v3, Lcom/youku/phone/R$id;->negtive_btn:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lc8/Cbp;->negtiveBtn:Landroid/widget/TextView;

    .line 223
    iget v3, p0, Lc8/Cbp;->negtive_btn_layout_resId:I

    if-eqz v3, :cond_14

    .line 224
    iget-object v3, p0, Lc8/Cbp;->negtive_btn_layout:Landroid/view/View;

    iget v4, p0, Lc8/Cbp;->negtive_btn_layout_resId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 226
    :cond_14
    iget v3, p0, Lc8/Cbp;->negtive_btn_color_resId:I

    if-eqz v3, :cond_15

    .line 227
    iget-object v3, p0, Lc8/Cbp;->negtiveBtn:Landroid/widget/TextView;

    iget v4, p0, Lc8/Cbp;->negtive_btn_color_resId:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    :cond_15
    sget v3, Lcom/youku/phone/R$id;->dialog_title:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 231
    .local v1, "dialog_title":Landroid/widget/TextView;
    iget-object v3, p0, Lc8/Cbp;->titleText:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lc8/Cbp;->titleText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_16

    .line 232
    iget-object v3, p0, Lc8/Cbp;->titleText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_16
    sget v3, Lcom/youku/phone/R$id;->dialog_message:I

    invoke-virtual {p0, v3}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 235
    .local v0, "dialog_message":Landroid/widget/TextView;
    iget-object v3, p0, Lc8/Cbp;->content:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lc8/Cbp;->content:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_17

    .line 236
    iget-object v3, p0, Lc8/Cbp;->content:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_17
    iget-object v3, p0, Lc8/Cbp;->positiveText:Ljava/lang/String;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lc8/Cbp;->positiveText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_18

    .line 239
    iget-object v3, p0, Lc8/Cbp;->positiveBtn:Landroid/widget/TextView;

    iget-object v4, p0, Lc8/Cbp;->positiveText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :cond_18
    iget-object v3, p0, Lc8/Cbp;->negitiveText:Ljava/lang/String;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lc8/Cbp;->negitiveText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_19

    .line 241
    iget-object v3, p0, Lc8/Cbp;->negtiveBtn:Landroid/widget/TextView;

    iget-object v4, p0, Lc8/Cbp;->negitiveText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :cond_19
    invoke-direct {p0}, Lc8/Cbp;->setNormalListener()V

    goto/16 :goto_3
.end method

.method public setDownloadPathVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lc8/Cbp;->item5:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lc8/Cbp;->item5:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 260
    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Cbp;->downloadPathIsVisibility:Z

    .line 265
    :cond_1
    :goto_0
    return-void

    .line 262
    :cond_2
    if-nez p1, :cond_1

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Cbp;->downloadPathIsVisibility:Z

    goto :goto_0
.end method

.method public setItemClickListener(Lc8/Abp;)V
    .locals 0
    .param p1, "listener"    # Lc8/Abp;

    .prologue
    .line 269
    iput-object p1, p0, Lc8/Cbp;->listener:Lc8/Abp;

    .line 270
    return-void
.end method

.method public setMessage(I)V
    .locals 1
    .param p1, "content"    # I

    .prologue
    .line 642
    iget-object v0, p0, Lc8/Cbp;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc8/Cbp;->content:Ljava/lang/String;

    .line 643
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 651
    iput-object p1, p0, Lc8/Cbp;->content:Ljava/lang/String;

    .line 652
    return-void
.end method

.method public setNormalNegtiveBackGround(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 633
    iput p1, p0, Lc8/Cbp;->negtive_btn_layout_resId:I

    .line 634
    return-void
.end method

.method public setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 618
    iput-object p2, p0, Lc8/Cbp;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    .line 619
    iget-object v0, p0, Lc8/Cbp;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc8/Cbp;->negitiveText:Ljava/lang/String;

    .line 620
    return-void
.end method

.method public setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 628
    iput-object p2, p0, Lc8/Cbp;->normalNegtiveBtnListener:Landroid/view/View$OnClickListener;

    .line 629
    iput-object p1, p0, Lc8/Cbp;->negitiveText:Ljava/lang/String;

    .line 630
    return-void
.end method

.method public setNormalNegtiveTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 637
    iput p1, p0, Lc8/Cbp;->negtive_btn_color_resId:I

    .line 638
    return-void
.end method

.method public setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 613
    iput-object p2, p0, Lc8/Cbp;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    .line 614
    iget-object v0, p0, Lc8/Cbp;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc8/Cbp;->positiveText:Ljava/lang/String;

    .line 615
    return-void
.end method

.method public setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 623
    iput-object p2, p0, Lc8/Cbp;->normalPositiveBtnListener:Landroid/view/View$OnClickListener;

    .line 624
    iput-object p1, p0, Lc8/Cbp;->positiveText:Ljava/lang/String;

    .line 625
    return-void
.end method

.method public setOnBackClickListener(Lc8/Bbp;)V
    .locals 0
    .param p1, "listener"    # Lc8/Bbp;

    .prologue
    .line 673
    iput-object p1, p0, Lc8/Cbp;->onBackClickListener:Lc8/Bbp;

    .line 674
    return-void
.end method

.method public setPositiveBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "positiveBtnListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 313
    iput-object p1, p0, Lc8/Cbp;->positiveBtnListener:Landroid/view/View$OnClickListener;

    .line 314
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 646
    iget-object v0, p0, Lc8/Cbp;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc8/Cbp;->titleText:Ljava/lang/String;

    .line 647
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 655
    iput-object p1, p0, Lc8/Cbp;->titleText:Ljava/lang/String;

    .line 656
    return-void
.end method

.method public updateLanguageTextView()V
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Lc8/Cbp;->languageTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 116
    const-class v1, Lc8/ven;

    invoke-static {v1}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/ven;

    invoke-interface {v1}, Lc8/ven;->getDownloadLanguage()I

    move-result v0

    .line 117
    .local v0, "lang_id":I
    sget-object v1, Lc8/IVo;->ALL_LANGAUGE:[Lc8/IVo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lc8/IVo;->desc:Ljava/lang/String;

    iput-object v1, p0, Lc8/Cbp;->selectedLanguageName:Ljava/lang/String;

    .line 118
    sget v1, Lcom/youku/phone/R$id;->item4_tv:I

    invoke-virtual {p0, v1}, Lc8/Cbp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lc8/Cbp;->languageTextView:Landroid/widget/TextView;

    .line 119
    iget-object v1, p0, Lc8/Cbp;->languageTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lc8/Cbp;->selectedLanguageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .end local v0    # "lang_id":I
    :cond_0
    return-void
.end method
