.class public Lc8/Eeg;
.super Landroid/webkit/WebViewClient;
.source "WXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Geg;->initWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Geg;


# direct methods
.method constructor <init>(Lc8/Geg;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lc8/Eeg;->this$0:Lc8/Geg;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 184
    const-string/jumbo v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageFinished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lc8/Eeg;->this$0:Lc8/Geg;

    invoke-static {v0}, Lc8/Geg;->access$000(Lc8/Geg;)Lc8/feg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lc8/Eeg;->this$0:Lc8/Geg;

    invoke-static {v0}, Lc8/Geg;->access$000(Lc8/Geg;)Lc8/feg;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    invoke-interface {v0, p2, v1, v2}, Lc8/feg;->onPageFinish(Ljava/lang/String;ZZ)V

    .line 188
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 174
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 175
    const-string/jumbo v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageStarted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lc8/Eeg;->this$0:Lc8/Geg;

    invoke-static {v0}, Lc8/Geg;->access$000(Lc8/Geg;)Lc8/feg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lc8/Eeg;->this$0:Lc8/Geg;

    invoke-static {v0}, Lc8/Geg;->access$000(Lc8/Geg;)Lc8/feg;

    move-result-object v0

    invoke-interface {v0, p2}, Lc8/feg;->onPageStart(Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 193
    iget-object v0, p0, Lc8/Eeg;->this$0:Lc8/Geg;

    invoke-static {v0}, Lc8/Geg;->access$100(Lc8/Geg;)Lc8/eeg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lc8/Eeg;->this$0:Lc8/Geg;

    invoke-static {v0}, Lc8/Geg;->access$100(Lc8/Geg;)Lc8/eeg;

    move-result-object v0

    const-string/jumbo v1, "error"

    const-string/jumbo v2, "page error"

    invoke-interface {v0, v1, v2}, Lc8/eeg;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;

    .prologue
    .line 201
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 202
    iget-object v0, p0, Lc8/Eeg;->this$0:Lc8/Geg;

    invoke-static {v0}, Lc8/Geg;->access$100(Lc8/Geg;)Lc8/eeg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lc8/Eeg;->this$0:Lc8/Geg;

    invoke-static {v0}, Lc8/Geg;->access$100(Lc8/Geg;)Lc8/eeg;

    move-result-object v0

    const-string/jumbo v1, "error"

    const-string/jumbo v2, "http error"

    invoke-interface {v0, v1, v2}, Lc8/eeg;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 209
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 210
    iget-object v0, p0, Lc8/Eeg;->this$0:Lc8/Geg;

    invoke-static {v0}, Lc8/Geg;->access$100(Lc8/Geg;)Lc8/eeg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lc8/Eeg;->this$0:Lc8/Geg;

    invoke-static {v0}, Lc8/Geg;->access$100(Lc8/Geg;)Lc8/eeg;

    move-result-object v0

    const-string/jumbo v1, "error"

    const-string/jumbo v2, "ssl error"

    invoke-interface {v0, v1, v2}, Lc8/eeg;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageOverride "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x1

    return v0
.end method
