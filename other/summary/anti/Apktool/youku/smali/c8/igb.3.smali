.class public Lc8/igb;
.super Lc8/ggb;
.source "BindFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PAGE_NAME:Ljava/lang/String; = "Page_Bind"


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lc8/ggb;-><init>()V

    return-void
.end method

.method public static newInstance()Lc8/igb;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lc8/igb;

    invoke-direct {v0}, Lc8/igb;-><init>()V

    .line 32
    .local v0, "fragment":Lc8/igb;
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 45
    .local v0, "viewId":I
    sget v1, Lcom/youku/phone/R$id;->com_taobao_tae_sdk_web_view_title_bar_back_button:I

    if-ne v0, v1, :cond_2

    .line 46
    iget-object v1, p0, Lc8/igb;->mAuthPresenter:Lc8/egb;

    if-nez v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v1, p0, Lc8/igb;->mAuthPresenter:Lc8/egb;

    invoke-virtual {v1}, Lc8/egb;->onCancel()V

    goto :goto_0

    .line 50
    :cond_2
    sget v1, Lcom/youku/phone/R$id;->aliauth_bind_btn:I

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lc8/igb;->mAuthPresenter:Lc8/egb;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lc8/igb;->mAuthPresenter:Lc8/egb;

    invoke-virtual {v1}, Lc8/egb;->auth()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    sget v0, Lcom/youku/phone/R$layout;->aliauth_bind_page:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/igb;->mRootView:Landroid/view/View;

    .line 38
    invoke-virtual {p0}, Lc8/igb;->setupView()V

    .line 39
    iget-object v0, p0, Lc8/igb;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public setupView()V
    .locals 18

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/igb;->mRootView:Landroid/view/View;

    sget v14, Lcom/youku/phone/R$id;->com_taobao_tae_sdk_web_view_title_bar_title:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 60
    .local v11, "titleView":Landroid/widget/TextView;
    sget v13, Lcom/youku/phone/R$string;->aliauth_bind:I

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    .line 62
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/igb;->mRootView:Landroid/view/View;

    sget v14, Lcom/youku/phone/R$id;->aliauth_bind_hint_tv:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 63
    .local v6, "hintInfoTV":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/igb;->mRootView:Landroid/view/View;

    sget v14, Lcom/youku/phone/R$id;->aliauth_bind_btn:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 65
    .local v3, "bindButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lc8/igb;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/youku/phone/R$string;->aliauth_hint_info:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "\u4f18\u9177"

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lc8/igb;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/youku/phone/R$string;->aliauth_confirm_bind:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/igb;->mRootView:Landroid/view/View;

    sget v14, Lcom/youku/phone/R$id;->aliauth_bind_protocol_tip:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 69
    .local v7, "protocalTV":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lc8/igb;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/youku/phone/R$string;->aliauth_bind_protocal:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 70
    .local v10, "tip":Ljava/lang/String;
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 72
    .local v8, "ss":Landroid/text/SpannableString;
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v14, "#6c6c6c"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v8, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 74
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v14, "#318AD5"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v14, 0x6

    const/16 v15, 0xe

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v8, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 76
    new-instance v13, Lc8/hgb;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lc8/hgb;-><init>(Lc8/igb;)V

    const/4 v14, 0x6

    const/16 v15, 0xe

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v8, v13, v14, v15, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 84
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 86
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/igb;->mRootView:Landroid/view/View;

    sget v14, Lcom/youku/phone/R$id;->aliauth_bind_nickname_tv:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 89
    .local v12, "usernameTV":Landroid/widget/TextView;
    sget-object v13, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v13}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v13

    iget-object v13, v13, Lc8/Sgb;->user:Lc8/chb;

    iget-object v13, v13, Lc8/chb;->nick:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 90
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\u6dd8\u5b9d\u8d26\u6237:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v14}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v14

    iget-object v14, v14, Lc8/Sgb;->user:Lc8/chb;

    iget-object v14, v14, Lc8/chb;->nick:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/igb;->mRootView:Landroid/view/View;

    sget v14, Lcom/youku/phone/R$id;->aliauth_bind_avatar_iv:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/lgb;

    .line 95
    .local v1, "avatarTV":Lc8/lgb;
    sget-object v13, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v13}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v13

    iget-object v13, v13, Lc8/Sgb;->user:Lc8/chb;

    iget-object v13, v13, Lc8/chb;->avatarUrl:Ljava/lang/String;

    invoke-static {v13}, Lc8/qgb;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lc8/ogb;->getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 96
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    .line 97
    invoke-virtual {v1, v4}, Lc8/lgb;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/igb;->mRootView:Landroid/view/View;

    sget v14, Lcom/youku/phone/R$id;->com_taobao_tae_sdk_web_view_title_bar_back_button:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 106
    .local v2, "back":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/igb;->mRootView:Landroid/view/View;

    sget v14, Lcom/youku/phone/R$id;->com_taobao_tae_sdk_web_view_title_bar_close_button:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 109
    .local v5, "closeBtn":Landroid/widget/ImageView;
    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    return-void

    .line 99
    .end local v2    # "back":Landroid/widget/ImageView;
    .end local v5    # "closeBtn":Landroid/widget/ImageView;
    :cond_1
    new-instance v9, Lc8/pgb;

    invoke-virtual/range {p0 .. p0}, Lc8/igb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "HeadImages"

    const/16 v15, 0xa0

    invoke-direct {v9, v13, v1, v14, v15}, Lc8/pgb;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 100
    .local v9, "task":Lc8/pgb;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v15}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v15

    iget-object v15, v15, Lc8/Sgb;->user:Lc8/chb;

    iget-object v15, v15, Lc8/chb;->avatarUrl:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v9, v13}, Lc8/pgb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
