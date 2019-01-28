.class public Lc8/dgb;
.super Landroid/support/v4/app/Fragment;
.source "AgreementFragment.java"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lc8/dgb;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lc8/dgb;

    .prologue
    .line 16
    iget-object v0, p0, Lc8/dgb;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    sget v4, Lcom/youku/phone/R$layout;->aliauth_agreement_page:I

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 22
    .local v2, "rootView":Landroid/view/View;
    sget v4, Lcom/youku/phone/R$id;->com_taobao_tae_sdk_web_view_title_bar_title:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 23
    .local v3, "titleView":Landroid/widget/TextView;
    sget v4, Lcom/youku/phone/R$string;->aliauth_bind:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 25
    sget v4, Lcom/youku/phone/R$id;->aliauth_webview:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lc8/dgb;->mWebView:Landroid/webkit/WebView;

    .line 26
    iget-object v4, p0, Lc8/dgb;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v5, "http://terms.alicdn.com/legal-agreement/terms/TD/TD201608031631_71011.html"

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 27
    iget-object v4, p0, Lc8/dgb;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lc8/bgb;

    invoke-direct {v5, p0}, Lc8/bgb;-><init>(Lc8/dgb;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 35
    sget v4, Lcom/youku/phone/R$id;->com_taobao_tae_sdk_web_view_title_bar_back_button:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 36
    .local v0, "cancelBtn":Landroid/widget/ImageView;
    new-instance v4, Lc8/cgb;

    invoke-direct {v4, p0}, Lc8/cgb;-><init>(Lc8/dgb;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget v4, Lcom/youku/phone/R$id;->com_taobao_tae_sdk_web_view_title_bar_close_button:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 47
    .local v1, "closeBtn":Landroid/widget/ImageView;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    return-object v2
.end method
