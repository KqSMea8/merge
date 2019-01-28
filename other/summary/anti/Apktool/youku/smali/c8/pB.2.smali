.class public abstract Lc8/pB;
.super Landroid/app/Activity;
.source "BaseHybridActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mViewController:Lc8/yI;

.field protected mWebView:Landroid/webkit/WebView;

.field protected postData:[B

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-object v0, p0, Lc8/pB;->url:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lc8/pB;->postData:[B

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 86
    iget-object v0, p0, Lc8/pB;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/pB;->mWebView:Landroid/webkit/WebView;

    instance-of v0, v0, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lc8/pB;->mWebView:Landroid/webkit/WebView;

    check-cast v0, Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/taobao/windvane/webview/WVWebView;->onActivityResult(IILandroid/content/Intent;)V

    .line 89
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lc8/pB;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "PARAMS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/webview/ParamsParcelable;

    .line 46
    .local v1, "params":Landroid/taobao/windvane/webview/ParamsParcelable;
    const-string/jumbo v2, "URL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/pB;->url:Ljava/lang/String;

    .line 47
    const-string/jumbo v2, "DATA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lc8/pB;->postData:[B

    .line 49
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lc8/pB;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v2, Lc8/yI;

    invoke-direct {v2, p0}, Lc8/yI;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lc8/pB;->mViewController:Lc8/yI;

    .line 51
    iget-object v2, p0, Lc8/pB;->mViewController:Lc8/yI;

    invoke-virtual {v2, v1}, Lc8/yI;->init(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    .line 52
    iget-object v2, p0, Lc8/pB;->mViewController:Lc8/yI;

    invoke-virtual {v2}, Lc8/yI;->getWebview()Landroid/taobao/windvane/webview/WVWebView;

    move-result-object v2

    iput-object v2, p0, Lc8/pB;->mWebView:Landroid/webkit/WebView;

    .line 53
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lc8/pB;->mViewController:Lc8/yI;

    invoke-virtual {v0}, Lc8/yI;->destroy()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/pB;->mViewController:Lc8/yI;

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 61
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lc8/pB;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lc8/pB;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 81
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 82
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lc8/pB;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lc8/pB;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 73
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    return-void
.end method
