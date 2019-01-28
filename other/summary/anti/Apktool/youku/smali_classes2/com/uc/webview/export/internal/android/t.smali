.class public final Lcom/uc/webview/export/internal/android/t;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/android/t$a;
    }
.end annotation


# instance fields
.field private a:Lcom/uc/webview/export/WebView;

.field private b:Lcom/uc/webview/export/WebViewClient;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebViewClient;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    .line 30
    iput-object p2, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    .line 31
    return-void
.end method


# virtual methods
.method public final doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->doUpdateVisitedHistory(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V

    .line 145
    return-void
.end method

.method public final onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onFormResubmission(Lcom/uc/webview/export/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 139
    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/WebViewClient;->onLoadResource(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    invoke-static {p2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->statPV(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/WebViewClient;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 52
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/uc/webview/export/WebViewClient;->onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 108
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/uc/webview/export/internal/android/t;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    new-instance v0, Lcom/uc/webview/export/WebResourceRequest;

    .line 114
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 115
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v4

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/uc/webview/export/WebResourceRequest;-><init>(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;ZZ)V

    .line 116
    iget-object v1, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v2, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    new-instance v3, Lcom/uc/webview/export/internal/android/t$a;

    invoke-direct {v3, p3}, Lcom/uc/webview/export/internal/android/t$a;-><init>(Landroid/webkit/WebResourceError;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/uc/webview/export/WebViewClient;->onReceivedError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;Lcom/uc/webview/export/WebResourceError;)V

    .line 117
    return-void
.end method

.method public final onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    new-instance v2, Lcom/uc/webview/export/internal/android/c;

    invoke-direct {v2, p2}, Lcom/uc/webview/export/internal/android/c;-><init>(Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/uc/webview/export/WebViewClient;->onReceivedHttpAuthRequest(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->cancel()V

    goto :goto_0
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/uc/webview/export/WebResourceRequest;

    .line 124
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 125
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v4

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/uc/webview/export/WebResourceRequest;-><init>(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;ZZ)V

    .line 126
    new-instance v1, Lcom/uc/webview/export/WebResourceResponse;

    .line 127
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 129
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/WebResourceResponse;->setStatusCodeAndReasonPhrase(ILjava/lang/String;)V

    .line 130
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    .line 131
    iget-object v2, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v3, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v2, v3, v0, v1}, Lcom/uc/webview/export/WebViewClient;->onReceivedHttpError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;Lcom/uc/webview/export/WebResourceResponse;)V

    .line 132
    return-void
.end method

.method public final onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/uc/webview/export/WebViewClient;->onReceivedLoginRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    new-instance v2, Lcom/uc/webview/export/internal/android/g;

    invoke-direct {v2, p2}, Lcom/uc/webview/export/internal/android/g;-><init>(Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1, v2, p3}, Lcom/uc/webview/export/WebViewClient;->onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 151
    return-void
.end method

.method public final onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onScaleChanged(Lcom/uc/webview/export/WebView;FF)V

    .line 186
    return-void
.end method

.method public final onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/WebViewClient;->onUnhandledKeyEvent(Lcom/uc/webview/export/WebView;Landroid/view/KeyEvent;)V

    .line 181
    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldInterceptRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v1

    .line 73
    if-nez v1, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/uc/webview/export/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/uc/webview/export/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public final shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldOverrideKeyEvent(Lcom/uc/webview/export/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/uc/webview/export/WebResourceRequest;

    .line 42
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 44
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v4

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/uc/webview/export/WebResourceRequest;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZZ)V

    .line 46
    iget-object v1, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v2, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1, v2, v0}, Lcom/uc/webview/export/WebViewClient;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;)Z

    move-result v0

    return v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/t;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/t;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
