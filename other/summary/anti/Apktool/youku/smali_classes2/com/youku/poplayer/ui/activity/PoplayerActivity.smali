.class public Lcom/youku/poplayer/ui/activity/PoplayerActivity;
.super Lc8/Qn;
.source "PoplayerActivity.java"


# instance fields
.field private request:Lc8/yXb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lc8/Qn;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/youku/poplayer/ui/activity/PoplayerActivity;)Lc8/yXb;
    .locals 1
    .param p0, "x0"    # Lcom/youku/poplayer/ui/activity/PoplayerActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->request:Lc8/yXb;

    return-object v0
.end method

.method public static synthetic access$002(Lcom/youku/poplayer/ui/activity/PoplayerActivity;Lc8/yXb;)Lc8/yXb;
    .locals 0
    .param p0, "x0"    # Lcom/youku/poplayer/ui/activity/PoplayerActivity;
    .param p1, "x1"    # Lc8/yXb;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->request:Lc8/yXb;

    return-object p1
.end method

.method private initCache()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 118
    sget v3, Lc8/PYm;->URL_TYPE:I

    packed-switch v3, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 121
    :pswitch_0
    sget v3, Lcom/youku/phone/R$id;->onLine:I

    invoke-virtual {p0, v3}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 122
    .local v1, "onLineBut":Landroid/widget/RadioButton;
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 126
    .end local v1    # "onLineBut":Landroid/widget/RadioButton;
    :pswitch_1
    sget v3, Lcom/youku/phone/R$id;->prepare:I

    invoke-virtual {p0, v3}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 127
    .local v2, "prepareBut":Landroid/widget/RadioButton;
    invoke-virtual {v2}, Landroid/widget/RadioButton;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 131
    .end local v2    # "prepareBut":Landroid/widget/RadioButton;
    :pswitch_2
    sget v3, Lcom/youku/phone/R$id;->daily:I

    invoke-virtual {p0, v3}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 132
    .local v0, "dailyBut":Landroid/widget/RadioButton;
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initDebugUtil()V
    .locals 2

    .prologue
    .line 97
    sget v0, Lcom/youku/phone/R$id;->openSupport:I

    invoke-virtual {p0, v0}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lc8/KYm;

    invoke-direct {v1, p0}, Lc8/KYm;-><init>(Lcom/youku/poplayer/ui/activity/PoplayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    sget v0, Lcom/youku/phone/R$id;->clearTimes:I

    invoke-virtual {p0, v0}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lc8/LYm;

    invoke-direct {v1, p0}, Lc8/LYm;-><init>(Lcom/youku/poplayer/ui/activity/PoplayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method private initHost()V
    .locals 5

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->initCache()V

    .line 59
    sget v4, Lcom/youku/phone/R$id;->urlRadioGroup:I

    invoke-virtual {p0, v4}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 60
    .local v1, "mUrlRadioGroup":Landroid/widget/RadioGroup;
    sget v4, Lcom/youku/phone/R$id;->onLine:I

    invoke-virtual {p0, v4}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 61
    .local v2, "onLineBut":Landroid/widget/RadioButton;
    sget v4, Lcom/youku/phone/R$id;->prepare:I

    invoke-virtual {p0, v4}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 62
    .local v3, "prepareBut":Landroid/widget/RadioButton;
    sget v4, Lcom/youku/phone/R$id;->daily:I

    invoke-virtual {p0, v4}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 63
    .local v0, "dailyBut":Landroid/widget/RadioButton;
    new-instance v4, Lc8/JYm;

    invoke-direct {v4, p0, v2, v3, v0}, Lc8/JYm;-><init>(Lcom/youku/poplayer/ui/activity/PoplayerActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 94
    return-void
.end method

.method private initPopRequest()V
    .locals 2

    .prologue
    .line 142
    sget v0, Lcom/youku/phone/R$id;->openPopBut:I

    invoke-virtual {p0, v0}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lc8/NYm;

    invoke-direct {v1, p0}, Lc8/NYm;-><init>(Lcom/youku/poplayer/ui/activity/PoplayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    sget v0, Lcom/youku/phone/R$id;->closePopBut:I

    invoke-virtual {p0, v0}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lc8/OYm;

    invoke-direct {v1, p0}, Lc8/OYm;-><init>(Lcom/youku/poplayer/ui/activity/PoplayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    return-void
.end method

.method private initTitle()V
    .locals 2

    .prologue
    .line 49
    sget v0, Lcom/youku/phone/R$id;->action_back:I

    invoke-virtual {p0, v0}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lc8/IYm;

    invoke-direct {v1, p0}, Lc8/IYm;-><init>(Lcom/youku/poplayer/ui/activity/PoplayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-super {p0, p1}, Lc8/Qn;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget v0, Lcom/youku/phone/R$layout;->activity_poplayer_layout:I

    invoke-virtual {p0, v0}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->initTitle()V

    .line 43
    invoke-direct {p0}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->initHost()V

    .line 44
    invoke-direct {p0}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->initDebugUtil()V

    .line 45
    invoke-direct {p0}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->initPopRequest()V

    .line 46
    return-void
.end method
