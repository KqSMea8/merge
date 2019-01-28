.class public Lc8/pF;
.super Lc8/RD;
.source "WVUI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v0, 0x1

    .line 20
    const-string/jumbo v1, "showLoadingBox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {p0, p2, p3}, Lc8/pF;->showLoading(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 27
    :goto_0
    return v0

    .line 23
    :cond_0
    const-string/jumbo v1, "hideLoadingBox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {p0, p2, p3}, Lc8/pF;->hideLoading(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hideLoading(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/pF;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->hideLoadingView()V

    .line 43
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 44
    return-void
.end method

.method public final showLoading(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 34
    iget-object v0, p0, Lc8/pF;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->showLoadingView()V

    .line 35
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 36
    return-void
.end method
