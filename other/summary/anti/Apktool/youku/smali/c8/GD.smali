.class public Lc8/GD;
.super Landroid/support/v4/app/Fragment;
.source "WVUCWebViewFragment.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static URL:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private mChromeClient:Lc8/oD;

.field private mWebView:Lc8/DD;

.field private mWebclient:Lc8/FD;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lc8/GD;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/GD;->TAG:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "url"

    sput-object v0, Lc8/GD;->URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 29
    iput-object v0, p0, Lc8/GD;->mWebView:Lc8/DD;

    .line 30
    iput-object v0, p0, Lc8/GD;->mWebclient:Lc8/FD;

    .line 31
    iput-object v0, p0, Lc8/GD;->mChromeClient:Lc8/oD;

    .line 32
    iput-object v0, p0, Lc8/GD;->url:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 29
    iput-object v0, p0, Lc8/GD;->mWebView:Lc8/DD;

    .line 30
    iput-object v0, p0, Lc8/GD;->mWebclient:Lc8/FD;

    .line 31
    iput-object v0, p0, Lc8/GD;->mChromeClient:Lc8/oD;

    .line 32
    iput-object v0, p0, Lc8/GD;->url:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lc8/GD;->activity:Landroid/app/Activity;

    .line 49
    return-void
.end method


# virtual methods
.method public getWebView()Lc8/DD;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 154
    iget-object v2, p0, Lc8/GD;->mWebView:Lc8/DD;

    if-nez v2, :cond_2

    .line 155
    iget-object v2, p0, Lc8/GD;->activity:Landroid/app/Activity;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lc8/GD;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 156
    .local v0, "lActivity":Landroid/app/Activity;
    :goto_0
    if-nez v0, :cond_1

    .line 157
    const/4 v2, 0x0

    .line 166
    .end local v0    # "lActivity":Landroid/app/Activity;
    :goto_1
    return-object v2

    .line 155
    :cond_0
    iget-object v0, p0, Lc8/GD;->activity:Landroid/app/Activity;

    goto :goto_0

    .line 158
    .restart local v0    # "lActivity":Landroid/app/Activity;
    :cond_1
    new-instance v2, Lc8/DD;

    invoke-direct {v2, v0}, Lc8/DD;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lc8/GD;->mWebView:Lc8/DD;

    .line 160
    iget-object v2, p0, Lc8/GD;->mWebclient:Lc8/FD;

    invoke-virtual {p0, v2}, Lc8/GD;->setWebViewClient(Lc8/FD;)V

    .line 161
    iget-object v2, p0, Lc8/GD;->mChromeClient:Lc8/oD;

    invoke-virtual {p0, v2}, Lc8/GD;->setWebchormeClient(Lc8/oD;)V

    .line 162
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 163
    .local v1, "param":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lc8/GD;->mWebView:Lc8/DD;

    invoke-virtual {v2, v1}, Lc8/DD;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    .end local v0    # "lActivity":Landroid/app/Activity;
    .end local v1    # "param":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v2, p0, Lc8/GD;->mWebView:Lc8/DD;

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 181
    iget-object v0, p0, Lc8/GD;->mWebView:Lc8/DD;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lc8/GD;->mWebView:Lc8/DD;

    invoke-virtual {v0, p1, p2, p3}, Lc8/DD;->onActivityResult(IILandroid/content/Intent;)V

    .line 184
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 40
    iput-object p1, p0, Lc8/GD;->activity:Landroid/app/Activity;

    .line 41
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lc8/GD;->getWebView()Lc8/DD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lc8/GD;->getWebView()Lc8/DD;

    move-result-object v0

    invoke-virtual {v0}, Lc8/DD;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lc8/GD;->getWebView()Lc8/DD;

    move-result-object v0

    invoke-virtual {v0}, Lc8/DD;->goBack()V

    .line 173
    const/4 v0, 0x1

    .line 176
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
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lc8/GD;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 56
    sget-object v1, Lc8/GD;->URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/GD;->url:Ljava/lang/String;

    .line 58
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-virtual {p0}, Lc8/GD;->getWebView()Lc8/DD;

    .line 111
    iget-object v0, p0, Lc8/GD;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/GD;->mWebView:Lc8/DD;

    if-nez v0, :cond_1

    .line 112
    :cond_0
    sget-object v0, Lc8/GD;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "image urls is null"

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    iget-object v0, p0, Lc8/GD;->mWebView:Lc8/DD;

    return-object v0

    .line 114
    :cond_1
    iget-object v0, p0, Lc8/GD;->mWebView:Lc8/DD;

    iget-object v1, p0, Lc8/GD;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/DD;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    iget-object v1, p0, Lc8/GD;->mWebView:Lc8/DD;

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lc8/GD;->mWebView:Lc8/DD;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lc8/DD;->setVisibility(I)V

    .line 64
    iget-object v1, p0, Lc8/GD;->mWebView:Lc8/DD;

    invoke-virtual {v1}, Lc8/DD;->removeAllViews()V

    .line 65
    iget-object v1, p0, Lc8/GD;->mWebView:Lc8/DD;

    invoke-virtual {v1}, Lc8/DD;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lc8/GD;->mWebView:Lc8/DD;

    invoke-virtual {v1}, Lc8/DD;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lc8/GD;->mWebView:Lc8/DD;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 68
    :cond_0
    iget-object v1, p0, Lc8/GD;->mWebView:Lc8/DD;

    invoke-virtual {v1}, Lc8/DD;->destroy()V

    .line 69
    iput-object v3, p0, Lc8/GD;->mWebView:Lc8/DD;

    .line 71
    :cond_1
    iput-object v3, p0, Lc8/GD;->activity:Landroid/app/Activity;

    .line 73
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lc8/GD;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 83
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 88
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lc8/GD;->mWebView:Lc8/DD;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lc8/GD;->mWebView:Lc8/DD;

    invoke-virtual {v0}, Lc8/DD;->onPause()V

    .line 94
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lc8/GD;->mWebView:Lc8/DD;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lc8/GD;->mWebView:Lc8/DD;

    invoke-virtual {v0}, Lc8/DD;->onResume()V

    .line 102
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 104
    return-void
.end method

.method public setWebViewClient(Lc8/FD;)V
    .locals 2
    .param p1, "webclient"    # Lc8/FD;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iput-object p1, p0, Lc8/GD;->mWebclient:Lc8/FD;

    .line 129
    iget-object v0, p0, Lc8/GD;->mWebView:Lc8/DD;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lc8/GD;->mWebView:Lc8/DD;

    iget-object v1, p0, Lc8/GD;->mWebclient:Lc8/FD;

    invoke-virtual {v0, v1}, Lc8/DD;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 133
    :cond_0
    return-void
.end method

.method public setWebchormeClient(Lc8/oD;)V
    .locals 2
    .param p1, "client"    # Lc8/oD;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    iput-object p1, p0, Lc8/GD;->mChromeClient:Lc8/oD;

    .line 144
    iget-object v0, p0, Lc8/GD;->mWebView:Lc8/DD;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lc8/GD;->mWebView:Lc8/DD;

    iget-object v1, p0, Lc8/GD;->mChromeClient:Lc8/oD;

    invoke-virtual {v0, v1}, Lc8/DD;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 148
    :cond_0
    return-void
.end method
