.class public Lc8/fDo;
.super Landroid/support/v4/app/Fragment;
.source "PlayerWebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static debugMode:Z

.field private static testMode:Z

.field private static webviewType:Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;


# instance fields
.field private mDefaultWebView:Landroid/webkit/WebView;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mHandler:Landroid/os/Handler;

.field private mLoadingImgView:Landroid/widget/ImageView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mUrl:Ljava/lang/String;

.field private mWVWebView:Landroid/taobao/windvane/webview/WVWebView;

.field mWVWebViewClient:Lc8/HI;

.field mWebViewClient:Landroid/webkit/WebViewClient;

.field private mWvWebViewFragment:Lc8/ND;

.field private mYkWebViewFragment:Lc8/sHn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string/jumbo v0, "PlayerWebViewFragment"

    sput-object v0, Lc8/fDo;->TAG:Ljava/lang/String;

    .line 44
    sget-boolean v0, Lc8/KWc;->DEBUG:Z

    sput-boolean v0, Lc8/fDo;->debugMode:Z

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lc8/fDo;->testMode:Z

    .line 46
    sget-object v0, Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;->WvWebView:Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;

    .line 60
    sput-object v0, Lc8/fDo;->webviewType:Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;

    invoke-virtual {v0}, Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/fDo;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[static] ver = dev_20171030, testMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lc8/fDo;->testMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lc8/fDo;->mHandler:Landroid/os/Handler;

    .line 57
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/fDo;->mUrl:Ljava/lang/String;

    .line 196
    new-instance v0, Lc8/dDo;

    invoke-virtual {p0}, Lc8/fDo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/dDo;-><init>(Lc8/fDo;Landroid/content/Context;)V

    iput-object v0, p0, Lc8/fDo;->mWVWebViewClient:Lc8/HI;

    .line 212
    new-instance v0, Lc8/eDo;

    invoke-direct {v0, p0}, Lc8/eDo;-><init>(Lc8/fDo;)V

    iput-object v0, p0, Lc8/fDo;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic access$000(Lc8/fDo;)Lc8/sHn;
    .locals 1
    .param p0, "x0"    # Lc8/fDo;

    .prologue
    .line 37
    iget-object v0, p0, Lc8/fDo;->mYkWebViewFragment:Lc8/sHn;

    return-object v0
.end method

.method static synthetic access$100(Lc8/fDo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/fDo;

    .prologue
    .line 37
    iget-object v0, p0, Lc8/fDo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/fDo;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lc8/fDo;

    .prologue
    .line 37
    iget-object v0, p0, Lc8/fDo;->mDefaultWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lc8/fDo;)Landroid/taobao/windvane/webview/WVWebView;
    .locals 1
    .param p0, "x0"    # Lc8/fDo;

    .prologue
    .line 37
    iget-object v0, p0, Lc8/fDo;->mWVWebView:Landroid/taobao/windvane/webview/WVWebView;

    return-object v0
.end method

.method static synthetic access$400(Lc8/fDo;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lc8/fDo;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lc8/fDo;->checkPayUrl(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0}, Lc8/fDo;->log(Ljava/lang/String;)V

    return-void
.end method

.method private checkPayUrl(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    const-string/jumbo v0, "[checkPayUrl]"

    invoke-static {v0}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 191
    sget-boolean v0, Lc8/fDo;->debugMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/fDo;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/fDo;->mUrl:Ljava/lang/String;

    const-string/jumbo v1, "payment_url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 192
    const-string/jumbo v0, "miss pay url"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 194
    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 68
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lc8/fDo;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v5, -0x1

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[newInstance] url1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 81
    new-instance v2, Lc8/fDo;

    invoke-direct {v2}, Lc8/fDo;-><init>()V

    .line 82
    .local v2, "playerWebViewFragment":Lc8/fDo;
    sget-boolean v3, Lc8/fDo;->testMode:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lc8/fDo;->debugMode:Z

    if-eqz v3, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "payment_url"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 84
    const-string/jumbo v1, "https://h5.vip.youku.com/buy?sourceid=&spm="

    .line 86
    .local v1, "payUrl":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    const-string/jumbo v3, "?"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?payment_url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 98
    .end local v1    # "payUrl":Ljava/lang/String;
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[newInstance] url2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2, p0}, Lc8/fDo;->setUrl(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2, p1}, Lc8/fDo;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-object v2

    .line 87
    .restart local v1    # "payUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[newInstance] url encode error! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/fDo;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&payment_url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method private onViewCreatedDefaultWebView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 157
    const-string/jumbo v0, "[onViewCreatedDefaultWebView]"

    invoke-static {v0}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lc8/fDo;->mWVWebView:Landroid/taobao/windvane/webview/WVWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/webview/WVWebView;->setVisibility(I)V

    .line 159
    invoke-static {}, Lc8/ETh;->getInstance()Lc8/ETh;

    move-result-object v0

    invoke-virtual {p0}, Lc8/fDo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lc8/fDo;->mDefaultWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lc8/fDo;->mWebViewClient:Landroid/webkit/WebViewClient;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/ETh;->bindWebView(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V

    .line 160
    iget-object v0, p0, Lc8/fDo;->mDefaultWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 161
    iget-object v0, p0, Lc8/fDo;->mDefaultWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 162
    iget-object v0, p0, Lc8/fDo;->mDefaultWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 163
    iget-object v0, p0, Lc8/fDo;->mDefaultWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 164
    iget-object v0, p0, Lc8/fDo;->mHandler:Landroid/os/Handler;

    new-instance v1, Lc8/bDo;

    invoke-direct {v1, p0}, Lc8/bDo;-><init>(Lc8/fDo;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    return-void
.end method

.method private onViewCreatedWVWebViewFragment()V
    .locals 4

    .prologue
    .line 134
    const-string/jumbo v1, "[onViewCreatedWVWebViewFragment]"

    invoke-static {v1}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 135
    new-instance v1, Lc8/ND;

    invoke-virtual {p0}, Lc8/fDo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/ND;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lc8/fDo;->mWvWebViewFragment:Lc8/ND;

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lc8/ND;->URL:Ljava/lang/String;

    iget-object v2, p0, Lc8/fDo;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lc8/fDo;->mWvWebViewFragment:Lc8/ND;

    invoke-virtual {v1, v0}, Lc8/ND;->setArguments(Landroid/os/Bundle;)V

    .line 139
    iget-object v1, p0, Lc8/fDo;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$id;->vip_guide_framelayout:I

    iget-object v3, p0, Lc8/fDo;->mWvWebViewFragment:Lc8/ND;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 140
    return-void
.end method

.method private onViewCreatedWvWebView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 173
    const-string/jumbo v0, "[onViewCreatedWvWebView]"

    invoke-static {v0}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lc8/fDo;->mDefaultWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 175
    invoke-static {}, Lc8/ETh;->getInstance()Lc8/ETh;

    move-result-object v0

    invoke-virtual {p0}, Lc8/fDo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lc8/fDo;->mWVWebView:Landroid/taobao/windvane/webview/WVWebView;

    iget-object v3, p0, Lc8/fDo;->mWebViewClient:Landroid/webkit/WebViewClient;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/ETh;->bindWebView(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V

    .line 176
    iget-object v0, p0, Lc8/fDo;->mWVWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0, v5}, Landroid/taobao/windvane/webview/WVWebView;->setBackgroundColor(I)V

    .line 177
    iget-object v0, p0, Lc8/fDo;->mWVWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVWebView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 178
    iget-object v0, p0, Lc8/fDo;->mWVWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0, v5}, Landroid/taobao/windvane/webview/WVWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 179
    iget-object v0, p0, Lc8/fDo;->mWVWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0, v5}, Landroid/taobao/windvane/webview/WVWebView;->setVerticalScrollBarEnabled(Z)V

    .line 180
    iget-object v0, p0, Lc8/fDo;->mHandler:Landroid/os/Handler;

    new-instance v1, Lc8/cDo;

    invoke-direct {v1, p0}, Lc8/cDo;-><init>(Lc8/fDo;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    return-void
.end method

.method private onViewCreatedYkWebViewFragment()V
    .locals 4

    .prologue
    .line 143
    const-string/jumbo v0, "[onViewCreatedYkWebViewFragment]"

    invoke-static {v0}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 144
    new-instance v0, Lc8/sHn;

    invoke-direct {v0}, Lc8/sHn;-><init>()V

    iput-object v0, p0, Lc8/fDo;->mYkWebViewFragment:Lc8/sHn;

    .line 145
    iget-object v0, p0, Lc8/fDo;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$id;->vip_guide_framelayout:I

    iget-object v2, p0, Lc8/fDo;->mYkWebViewFragment:Lc8/sHn;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 146
    iget-object v0, p0, Lc8/fDo;->mHandler:Landroid/os/Handler;

    new-instance v1, Lc8/aDo;

    invoke-direct {v1, p0}, Lc8/aDo;-><init>(Lc8/fDo;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    return-void
.end method


# virtual methods
.method public dismissLoading()V
    .locals 4

    .prologue
    .line 240
    :try_start_0
    iget-object v2, p0, Lc8/fDo;->mLoadingImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 241
    .local v0, "anim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 242
    iget-object v2, p0, Lc8/fDo;->mLoadingImgView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v2, p0, Lc8/fDo;->mDefaultWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 244
    iget-object v2, p0, Lc8/fDo;->mDefaultWebView:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 245
    iget-object v2, p0, Lc8/fDo;->mWVWebView:Landroid/taobao/windvane/webview/WVWebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/taobao/windvane/webview/WVWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 246
    iget-object v2, p0, Lc8/fDo;->mWVWebView:Landroid/taobao/windvane/webview/WVWebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/taobao/windvane/webview/WVWebView;->setVerticalScrollBarEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v0    # "anim":Landroid/graphics/drawable/AnimationDrawable;
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 262
    const-string/jumbo v0, "[onActivityCreated]"

    invoke-static {v0}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 268
    const-string/jumbo v0, "[onAttach]"

    invoke-static {v0}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "childFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 274
    const-string/jumbo v0, "[onAttachFragment]"

    invoke-static {v0}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {p0}, Lc8/fDo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lc8/fDo;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 256
    const-string/jumbo v0, "[onActivityCreated]"

    invoke-static {v0}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    const-string/jumbo v1, "[onCreateView]"

    invoke-static {v1}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 107
    sget v1, Lcom/youku/phone/R$layout;->player_webview_fragment:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/youku/phone/R$id;->vip_guide_back_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lc8/fDo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget v1, Lcom/youku/phone/R$id;->vip_guide_webview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lc8/fDo;->mDefaultWebView:Landroid/webkit/WebView;

    .line 110
    sget v1, Lcom/youku/phone/R$id;->vip_guide_wvwebview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/webview/WVWebView;

    iput-object v1, p0, Lc8/fDo;->mWVWebView:Landroid/taobao/windvane/webview/WVWebView;

    .line 111
    sget v1, Lcom/youku/phone/R$id;->vip_guide_loading_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lc8/fDo;->mLoadingImgView:Landroid/widget/ImageView;

    .line 112
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 316
    const-string/jumbo v0, "[onDestroy]"

    invoke-static {v0}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 304
    const-string/jumbo v0, "[onDestroyView]"

    invoke-static {v0}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 310
    const-string/jumbo v0, "[onDetach]"

    invoke-static {v0}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 292
    const-string/jumbo v0, "[onPause]"

    invoke-static {v0}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 286
    const-string/jumbo v0, "[onResume]"

    invoke-static {v0}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 280
    const-string/jumbo v0, "[onStart]"

    invoke-static {v0}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 297
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 298
    const-string/jumbo v0, "[onStop]"

    invoke-static {v0}, Lc8/fDo;->log(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 119
    :try_start_0
    sget-object v1, Lc8/fDo;->webviewType:Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;

    sget-object v2, Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;->WvWebViewFragment:Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;

    if-ne v1, v2, :cond_1

    .line 120
    invoke-direct {p0}, Lc8/fDo;->onViewCreatedWVWebViewFragment()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    sget-object v1, Lc8/fDo;->webviewType:Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;

    sget-object v2, Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;->YkWebViewFragment:Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;

    if-ne v1, v2, :cond_2

    .line 122
    invoke-direct {p0}, Lc8/fDo;->onViewCreatedYkWebViewFragment()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-object v1, Lc8/fDo;->webviewType:Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;

    sget-object v2, Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;->DefaultWebView:Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;

    if-ne v1, v2, :cond_3

    .line 124
    invoke-direct {p0}, Lc8/fDo;->onViewCreatedDefaultWebView()V

    goto :goto_0

    .line 125
    :cond_3
    sget-object v1, Lc8/fDo;->webviewType:Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;

    sget-object v2, Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;->WvWebView:Lcom/youku/vip/ext/ui/PlayerWebViewFragment$WebViewTypeEnum;

    if-ne v1, v2, :cond_0

    .line 126
    invoke-direct {p0}, Lc8/fDo;->onViewCreatedWvWebView()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "mOnClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 75
    iput-object p1, p0, Lc8/fDo;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 76
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUrl"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lc8/fDo;->mUrl:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public showLoading()V
    .locals 4

    .prologue
    .line 230
    :try_start_0
    iget-object v2, p0, Lc8/fDo;->mLoadingImgView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v2, p0, Lc8/fDo;->mLoadingImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 232
    .local v0, "anim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v0    # "anim":Landroid/graphics/drawable/AnimationDrawable;
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
