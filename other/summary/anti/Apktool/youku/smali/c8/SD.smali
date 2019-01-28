.class public Lc8/SD;
.super Lc8/RD;
.source "WVAppEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lc8/SD;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    const-string/jumbo v1, "WV.Event.APP.Background"

    const-string/jumbo v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v0

    iget-object v1, p0, Lc8/SD;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v1}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lc8/cG;->didExitAtTime(Ljava/lang/String;J)V

    .line 25
    :cond_0
    invoke-super {p0}, Lc8/RD;->onPause()V

    .line 26
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0}, Lc8/RD;->onResume()V

    .line 31
    iget-object v1, p0, Lc8/SD;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v1}, Landroid/taobao/windvane/webview/IWVWebView;->getDataOnActive()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-string/jumbo v0, "{}"

    .line 34
    :cond_0
    iget-object v1, p0, Lc8/SD;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    const-string/jumbo v2, "WV.Event.APP.Active"

    invoke-interface {v1, v2, v0}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lc8/SD;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/taobao/windvane/webview/IWVWebView;->setDataOnActive(Ljava/lang/String;)V

    .line 37
    return-void
.end method
