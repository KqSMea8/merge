.class public Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;
.super Landroid/app/Activity;
.source "BaseWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/wjb;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public authWebView:Lc8/sjb;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field protected backButton:Landroid/widget/ImageView;

.field public canReceiveTitle:Z

.field protected closeButton:Landroid/widget/ImageView;

.field protected titleBar:Landroid/widget/RelativeLayout;

.field public titleText:Landroid/widget/TextView;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 172
    return-void
.end method

.method private initViews()V
    .locals 15

    .prologue
    const/16 v14, 0xf

    const/4 v13, 0x1

    const/4 v12, -0x2

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 114
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    .local v3, "mainView":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "ali_auth_titlebar_height"

    invoke-static {v6, v7}, Lc8/Yhb;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v2, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 119
    .local v2, "layoutParamsTitleBar":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->titleBar:Landroid/widget/RelativeLayout;

    .line 120
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->titleBar:Landroid/widget/RelativeLayout;

    const-string/jumbo v7, "#F8F8F8"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 122
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->titleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->backButton:Landroid/widget/ImageView;

    .line 125
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v12, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v0, "backButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0x9

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 127
    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 128
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "ali_auth_space_10"

    invoke-static {v6, v7}, Lc8/Yhb;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 129
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->backButton:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 130
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "drawable"

    const-string/jumbo v9, "com_taobao_tae_sdk_web_view_title_bar_back"

    invoke-static {v7, v8, v9}, Lc8/Yhb;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "ali_auth_space_20"

    invoke-static {v7, v8}, Lc8/Yhb;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v11, v11, v7, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 133
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->titleText:Landroid/widget/TextView;

    .line 134
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v5, "titleTextParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 136
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "ali_auth_space_160"

    invoke-static {v7, v8}, Lc8/Yhb;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 137
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 138
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->titleText:Landroid/widget/TextView;

    const-string/jumbo v7, "#3d4245"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->titleText:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->closeButton:Landroid/widget/ImageView;

    .line 142
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v12, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 143
    .local v1, "closeButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 144
    invoke-virtual {v1, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "ali_auth_space_10"

    invoke-static {v6, v7}, Lc8/Yhb;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 146
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->closeButton:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 147
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "drawable"

    const-string/jumbo v9, "com_taobao_tae_sdk_web_view_title_bar_close"

    invoke-static {v7, v8, v9}, Lc8/Yhb;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "ali_auth_space_20"

    invoke-static {v7, v8}, Lc8/Yhb;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7, v11, v11, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 150
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->titleBar:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->titleBar:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {v6, v7, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->titleBar:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->createTaeWebView()Lc8/sjb;

    move-result-object v6

    iput-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    .line 155
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    if-nez v6, :cond_0

    .line 156
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 157
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->finish()V

    .line 170
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->createWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/sjb;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 161
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->createWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/sjb;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 162
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_1

    .line 163
    invoke-static {}, Lc8/Jhb;->isDebugEnabled()Z

    move-result v6

    invoke-static {v6}, Lc8/sjb;->setWebContentsDebuggingEnabled(Z)V

    .line 166
    :cond_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 167
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    invoke-virtual {p0, v3}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected createTaeWebView()Lc8/sjb;
    .locals 1

    .prologue
    .line 253
    :try_start_0
    new-instance v0, Lc8/sjb;

    invoke-direct {v0, p0}, Lc8/sjb;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 240
    new-instance v0, Lc8/vjb;

    invoke-direct {v0, p0}, Lc8/vjb;-><init>(Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;)V

    return-object v0
.end method

.method protected createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 236
    new-instance v0, Lc8/xjb;

    invoke-direct {v0}, Lc8/xjb;-><init>()V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 227
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 228
    const-class v1, Lc8/njb;

    const-string/jumbo v2, "requestCodeKey"

    .line 229
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 228
    invoke-static {v1, v2}, Lc8/Bgb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/njb;

    .line 230
    .local v0, "activityResultHandler":Lc8/njb;
    if-eqz v0, :cond_0

    .line 231
    const/4 v1, 0x2

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-interface/range {v0 .. v7}, Lc8/njb;->onActivityResult(IIILandroid/content/Intent;Landroid/app/Activity;Ljava/util/Map;Landroid/webkit/WebView;)V

    .line 233
    :cond_0
    return-void
.end method

.method public onBackHistory()V
    .locals 2
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lc8/Wgb;->USER_CANCEL:Lc8/Wgb;

    iget v1, v1, Lc8/Wgb;->code:I

    invoke-virtual {p0, v1, v0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 272
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 273
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->finish()V

    .line 274
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->onBackHistory()V

    .line 267
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-direct {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->initViews()V

    .line 52
    iget-object v3, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->backButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 53
    iget-object v3, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->backButton:Landroid/widget/ImageView;

    new-instance v4, Lc8/tjb;

    invoke-direct {v4, p0}, Lc8/tjb;-><init>(Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :cond_0
    iget-object v3, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->closeButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 63
    iget-object v3, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->closeButton:Landroid/widget/ImageView;

    new-instance v4, Lc8/ujb;

    invoke-direct {v4, p0}, Lc8/ujb;-><init>(Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v3, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->closeButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    :cond_1
    const/4 v0, 0x0

    .line 75
    .local v0, "contextParams":Ljava/io/Serializable;
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 76
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "ui_contextParams"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 80
    :cond_2
    :goto_0
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 81
    iget-object v3, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {v3}, Lc8/sjb;->getContextParameters()Ljava/util/HashMap;

    move-result-object v3

    check-cast v0, Ljava/util/Map;

    .end local v0    # "contextParams":Ljava/io/Serializable;
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 84
    :cond_3
    const/4 v1, 0x0

    .line 85
    .local v1, "title":Ljava/lang/String;
    const/4 v2, 0x0

    .line 87
    .local v2, "url":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 88
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string/jumbo v3, "url"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 92
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 96
    iput-boolean v7, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->canReceiveTitle:Z

    .line 101
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 102
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    :cond_6
    sget-object v3, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lc8/Bgb;->checkServiceValid()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 106
    new-instance v3, Lc8/wjb;

    invoke-direct {v3, p0}, Lc8/wjb;-><init>(Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v7, [Ljava/lang/String;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lc8/wjb;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    :goto_2
    return-void

    .line 77
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    .restart local v0    # "contextParams":Ljava/io/Serializable;
    :cond_7
    if-eqz p1, :cond_2

    .line 78
    const-string/jumbo v3, "ui_contextParams"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto/16 :goto_0

    .line 98
    .end local v0    # "contextParams":Ljava/io/Serializable;
    .restart local v1    # "title":Ljava/lang/String;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_8
    iput-boolean v6, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->canReceiveTitle:Z

    .line 99
    iget-object v3, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 108
    :cond_9
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 109
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->finish()V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {v1}, Lc8/sjb;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 212
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 213
    iget-object v1, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {v1}, Lc8/sjb;->removeAllViews()V

    .line 216
    iget-object v1, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {v1}, Lc8/sjb;->destroy()V

    .line 218
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 219
    return-void
.end method

.method protected onFailure(Lc8/Wgb;)V
    .locals 0
    .param p1, "resultCode"    # Lc8/Wgb;

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->finish()V

    .line 262
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 278
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 279
    iget-object v0, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    if-eqz v0, :cond_0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {v0}, Lc8/sjb;->resumeTimers()V

    .line 282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {v0}, Lc8/sjb;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 203
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {v1}, Lc8/sjb;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string/jumbo v0, "ui_contextParams"

    iget-object v1, p0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {v1}, Lc8/sjb;->getContextParameters()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 206
    return-void
.end method

.method public setResult(Lc8/Wgb;)V
    .locals 0
    .param p1, "resultCode"    # Lc8/Wgb;

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->onFailure(Lc8/Wgb;)V

    .line 223
    return-void
.end method
