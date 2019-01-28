.class public abstract Lc8/rH;
.super Ljava/lang/Object;
.source "WVWebViewClientFilter.java"

# interfaces
.implements Lc8/pH;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 8
    .param p1, "id"    # I
    .param p2, "ctx"    # Landroid/taobao/windvane/service/WVEventContext;
    .param p3, "obj"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Landroid/taobao/windvane/service/WVEventResult;

    invoke-direct {v0, v3}, Landroid/taobao/windvane/service/WVEventResult;-><init>(Z)V

    .line 29
    .local v0, "eventResult":Landroid/taobao/windvane/service/WVEventResult;
    packed-switch p1, :pswitch_data_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    iget-object v3, p2, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object v4, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lc8/rH;->shouldOverrideUrlLoading(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Z

    move-result v2

    .line 32
    .local v2, "result":Z
    iput-boolean v2, v0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    goto :goto_0

    .line 36
    .end local v2    # "result":Z
    :pswitch_1
    iget-object v3, p2, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object v4, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lc8/rH;->onPageStarted(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :pswitch_2
    iget-object v3, p2, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object v4, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lc8/rH;->onPageFinished(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_3
    iget-object v3, p2, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object v4, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lc8/rH;->shouldInterceptRequest(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Lc8/II;

    move-result-object v1

    .line 45
    .local v1, "response":Lc8/II;
    if-eqz v1, :cond_0

    .line 46
    iput-boolean v7, v0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    .line 47
    iput-object v1, v0, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    goto :goto_0

    .line 52
    .end local v1    # "response":Lc8/II;
    :pswitch_4
    iget-object v5, p2, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    aget-object v3, p3, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v3, p3, v7

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, p3, v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v3, v4}, Lc8/rH;->onReceivedError(Landroid/taobao/windvane/webview/IWVWebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPageFinished(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 18
    return-void
.end method

.method public onPageStarted(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 15
    return-void
.end method

.method public onReceivedError(Landroid/taobao/windvane/webview/IWVWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 25
    return-void
.end method

.method public shouldInterceptRequest(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Lc8/II;
    .locals 1
    .param p1, "view"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method
