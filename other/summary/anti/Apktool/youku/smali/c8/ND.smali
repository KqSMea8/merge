.class public Lc8/ND;
.super Landroid/support/v4/app/Fragment;
.source "WVWebViewFragment.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static URL:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private mChromeClient:Lc8/AI;

.field private mWebView:Landroid/taobao/windvane/webview/WVWebView;

.field private mWebclient:Lc8/HI;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lc8/ND;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/ND;->TAG:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "url"

    sput-object v0, Lc8/ND;->URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 33
    iput-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    .line 34
    iput-object v0, p0, Lc8/ND;->mWebclient:Lc8/HI;

    .line 35
    iput-object v0, p0, Lc8/ND;->mChromeClient:Lc8/AI;

    .line 36
    iput-object v0, p0, Lc8/ND;->url:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 33
    iput-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    .line 34
    iput-object v0, p0, Lc8/ND;->mWebclient:Lc8/HI;

    .line 35
    iput-object v0, p0, Lc8/ND;->mChromeClient:Lc8/AI;

    .line 36
    iput-object v0, p0, Lc8/ND;->url:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lc8/ND;->activity:Landroid/app/Activity;

    .line 52
    return-void
.end method


# virtual methods
.method public getWebView()Landroid/webkit/WebView;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 156
    iget-object v2, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    if-nez v2, :cond_2

    .line 157
    iget-object v2, p0, Lc8/ND;->activity:Landroid/app/Activity;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lc8/ND;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 158
    .local v0, "lActivity":Landroid/app/Activity;
    :goto_0
    if-nez v0, :cond_1

    .line 159
    const/4 v2, 0x0

    .line 167
    .end local v0    # "lActivity":Landroid/app/Activity;
    :goto_1
    return-object v2

    .line 157
    :cond_0
    iget-object v0, p0, Lc8/ND;->activity:Landroid/app/Activity;

    goto :goto_0

    .line 160
    .restart local v0    # "lActivity":Landroid/app/Activity;
    :cond_1
    new-instance v2, Landroid/taobao/windvane/webview/WVWebView;

    invoke-direct {v2, v0}, Landroid/taobao/windvane/webview/WVWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    .line 162
    iget-object v2, p0, Lc8/ND;->mWebclient:Lc8/HI;

    invoke-virtual {p0, v2}, Lc8/ND;->setWebViewClient(Lc8/HI;)V

    .line 163
    iget-object v2, p0, Lc8/ND;->mChromeClient:Lc8/AI;

    invoke-virtual {p0, v2}, Lc8/ND;->setWebchormeClient(Lc8/AI;)V

    .line 164
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 165
    .local v1, "param":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v2, v1}, Landroid/taobao/windvane/webview/WVWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    .end local v0    # "lActivity":Landroid/app/Activity;
    .end local v1    # "param":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v2, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 182
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/taobao/windvane/webview/WVWebView;->onActivityResult(IILandroid/content/Intent;)V

    .line 185
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 44
    iput-object p1, p0, Lc8/ND;->activity:Landroid/app/Activity;

    .line 45
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lc8/ND;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lc8/ND;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lc8/ND;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 174
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lc8/ND;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 58
    sget-object v1, Lc8/ND;->URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/ND;->url:Ljava/lang/String;

    .line 60
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-virtual {p0}, Lc8/ND;->getWebView()Landroid/webkit/WebView;

    .line 113
    iget-object v0, p0, Lc8/ND;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    if-nez v0, :cond_1

    .line 114
    :cond_0
    sget-object v0, Lc8/ND;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "image urls is null"

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    return-object v0

    .line 116
    :cond_1
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    iget-object v1, p0, Lc8/ND;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/webview/WVWebView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVWebView;->removeAllViews()V

    .line 67
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    const-string/jumbo v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVWebView;->destroy()V

    .line 72
    iput-object v2, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    .line 74
    :cond_1
    iput-object v2, p0, Lc8/ND;->activity:Landroid/app/Activity;

    .line 76
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 85
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 90
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVWebView;->onPause()V

    .line 96
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVWebView;->onResume()V

    .line 104
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 106
    return-void
.end method

.method public setWebViewClient(Lc8/HI;)V
    .locals 2
    .param p1, "webclient"    # Lc8/HI;

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    iput-object p1, p0, Lc8/ND;->mWebclient:Lc8/HI;

    .line 131
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    iget-object v1, p0, Lc8/ND;->mWebclient:Lc8/HI;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/webview/WVWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 135
    :cond_0
    return-void
.end method

.method public setWebchormeClient(Lc8/AI;)V
    .locals 2
    .param p1, "client"    # Lc8/AI;

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 144
    iput-object p1, p0, Lc8/ND;->mChromeClient:Lc8/AI;

    .line 146
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lc8/ND;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    iget-object v1, p0, Lc8/ND;->mChromeClient:Lc8/AI;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/webview/WVWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 150
    :cond_0
    return-void
.end method
