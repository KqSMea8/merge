.class public Lcom/ali/auth/third/ui/QrLoginActivity;
.super Landroid/app/Activity;
.source "QrLoginActivity.java"


# instance fields
.field protected backButton:Landroid/widget/ImageView;

.field protected closeButton:Landroid/widget/ImageView;

.field private mCacheQrCodeLoginUrl:Ljava/lang/String;

.field private mWebView:Lc8/sjb;

.field protected titleBar:Landroid/widget/RelativeLayout;

.field protected titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 13

    .prologue
    .line 59
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    .local v5, "mainView":Landroid/widget/LinearLayout;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "ali_auth_space_300"

    invoke-static {v9, v10}, Lc8/Yhb;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "ali_auth_space_300"

    invoke-static {v10, v11}, Lc8/Yhb;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v10

    float-to-int v10, v10

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "ali_auth_titlebar_height"

    invoke-static {v9, v10}, Lc8/Yhb;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v4, "layoutParamsTitleBar":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v8, Landroid/widget/RelativeLayout;

    invoke-direct {v8, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleBar:Landroid/widget/RelativeLayout;

    .line 65
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleBar:Landroid/widget/RelativeLayout;

    const-string/jumbo v9, "#F8F8F8"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 67
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->backButton:Landroid/widget/ImageView;

    .line 68
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v0, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v0, "backButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0x9

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70
    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "ali_auth_space_10"

    invoke-static {v8, v9}, Lc8/Yhb;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v8

    float-to-int v8, v8

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 72
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->backButton:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "drawable"

    const-string/jumbo v11, "com_taobao_tae_sdk_web_view_title_bar_back"

    invoke-static {v9, v10, v11}, Lc8/Yhb;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->backButton:Landroid/widget/ImageView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string/jumbo v12, "ali_auth_space_20"

    invoke-static {v11, v12}, Lc8/Yhb;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 76
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleText:Landroid/widget/TextView;

    .line 77
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v6, "titleTextParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xd

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "ali_auth_space_160"

    invoke-static {v9, v10}, Lc8/Yhb;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 80
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleText:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 81
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleText:Landroid/widget/TextView;

    const-string/jumbo v9, "#3d4245"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleText:Landroid/widget/TextView;

    const/4 v9, 0x2

    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 84
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->closeButton:Landroid/widget/ImageView;

    .line 85
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v2, "closeButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xb

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 87
    const/16 v8, 0xf

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 88
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "ali_auth_space_10"

    invoke-static {v8, v9}, Lc8/Yhb;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v8

    float-to-int v8, v8

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 89
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->closeButton:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 90
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "drawable"

    const-string/jumbo v11, "com_taobao_tae_sdk_web_view_title_bar_close"

    invoke-static {v9, v10, v11}, Lc8/Yhb;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "ali_auth_space_20"

    invoke-static {v9, v10}, Lc8/Yhb;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 94
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleBar:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {v8, v9, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleBar:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v8, v9, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->titleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 102
    .local v1, "bodyRL":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "ali_auth_space_300"

    invoke-static {v9, v10}, Lc8/Yhb;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v3, "layoutParamsBody":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 151
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->createTaeWebView()Lc8/sjb;

    move-result-object v8

    iput-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->mWebView:Lc8/sjb;

    .line 152
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->mWebView:Lc8/sjb;

    if-nez v8, :cond_0

    .line 153
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 154
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->finish()V

    .line 189
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->mWebView:Lc8/sjb;

    const-string/jumbo v9, "loginBridge"

    new-instance v10, Lc8/pib;

    invoke-direct {v10}, Lc8/pib;-><init>()V

    invoke-virtual {v8, v9, v10}, Lc8/sjb;->addBridgeObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->mWebView:Lc8/sjb;

    const-string/jumbo v9, "accountBridge"

    new-instance v10, Lc8/pib;

    invoke-direct {v10}, Lc8/pib;-><init>()V

    invoke-virtual {v8, v9, v10}, Lc8/sjb;->addBridgeObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->mWebView:Lc8/sjb;

    new-instance v9, Lc8/Ajb;

    invoke-direct {v9}, Lc8/Ajb;-><init>()V

    invoke-virtual {v8, v9}, Lc8/sjb;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 161
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->mWebView:Lc8/sjb;

    new-instance v9, Lc8/gjb;

    invoke-direct {v9, p0}, Lc8/gjb;-><init>(Lcom/ali/auth/third/ui/QrLoginActivity;)V

    invoke-virtual {v8, v9}, Lc8/sjb;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 182
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 183
    .local v7, "webviewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->mWebView:Lc8/sjb;

    invoke-virtual {v8, v7}, Lc8/sjb;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v8, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->mWebView:Lc8/sjb;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    invoke-virtual {p0, v5}, Lcom/ali/auth/third/ui/QrLoginActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected createTaeWebView()Lc8/sjb;
    .locals 1

    .prologue
    .line 193
    :try_start_0
    new-instance v0, Lc8/sjb;

    invoke-direct {v0, p0}, Lc8/sjb;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-direct {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->initViews()V

    .line 51
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "qrCodeLoginUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->mCacheQrCodeLoginUrl:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->mWebView:Lc8/sjb;

    iget-object v1, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->mCacheQrCodeLoginUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/sjb;->loadUrl(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->mWebView:Lc8/sjb;

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->mWebView:Lc8/sjb;

    invoke-virtual {v1}, Lc8/sjb;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 212
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 213
    iget-object v1, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->mWebView:Lc8/sjb;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->mWebView:Lc8/sjb;

    invoke-virtual {v1}, Lc8/sjb;->removeAllViews()V

    .line 216
    iget-object v1, p0, Lcom/ali/auth/third/ui/QrLoginActivity;->mWebView:Lc8/sjb;

    invoke-virtual {v1}, Lc8/sjb;->destroy()V

    .line 218
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 220
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lc8/Wgb;->USER_CANCEL:Lc8/Wgb;

    iget v1, v1, Lc8/Wgb;->code:I

    invoke-virtual {p0, v1, v0}, Lcom/ali/auth/third/ui/QrLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 203
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 204
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/QrLoginActivity;->finish()V

    .line 205
    const/4 v1, 0x1

    return v1
.end method
