.class public Lc8/Spb;
.super Lc8/FD;
.source "WXWVWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Upb;->initWebView(Lc8/DD;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Upb;


# direct methods
.method constructor <init>(Lc8/Upb;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Upb;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 140
    iput-object p1, p0, Lc8/Spb;->this$0:Lc8/Upb;

    invoke-direct {p0, p2}, Lc8/FD;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lc8/FD;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 154
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

    .line 155
    iget-object v0, p0, Lc8/Spb;->this$0:Lc8/Upb;

    iget-object v0, v0, Lc8/Upb;->mOnPageListener:Lc8/feg;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lc8/Spb;->this$0:Lc8/Upb;

    iget-object v0, v0, Lc8/Upb;->mOnPageListener:Lc8/feg;

    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->canGoForward()Z

    move-result v2

    invoke-interface {v0, p2, v1, v2}, Lc8/feg;->onPageFinish(Ljava/lang/String;ZZ)V

    .line 158
    :cond_0
    return-void
.end method

.method public onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3}, Lc8/FD;->onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 145
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

    .line 146
    iget-object v0, p0, Lc8/Spb;->this$0:Lc8/Upb;

    iget-object v0, v0, Lc8/Upb;->mOnPageListener:Lc8/feg;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lc8/Spb;->this$0:Lc8/Upb;

    iget-object v0, v0, Lc8/Upb;->mOnPageListener:Lc8/feg;

    invoke-interface {v0, p2}, Lc8/feg;->onPageStart(Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method

.method public onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Lc8/FD;->onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lc8/Spb;->this$0:Lc8/Upb;

    iget-object v0, v0, Lc8/Upb;->mOnErrorListener:Lc8/eeg;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lc8/Spb;->this$0:Lc8/Upb;

    iget-object v0, v0, Lc8/Upb;->mOnErrorListener:Lc8/eeg;

    const-string/jumbo v1, "error"

    const-string/jumbo v2, "page error"

    invoke-interface {v0, v1, v2}, Lc8/eeg;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "handler"    # Lcom/uc/webview/export/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 190
    invoke-super {p0, p1, p2, p3}, Lc8/FD;->onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 191
    iget-object v0, p0, Lc8/Spb;->this$0:Lc8/Upb;

    iget-object v0, v0, Lc8/Upb;->mOnErrorListener:Lc8/eeg;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lc8/Spb;->this$0:Lc8/Upb;

    iget-object v0, v0, Lc8/Upb;->mOnErrorListener:Lc8/eeg;

    const-string/jumbo v1, "error"

    const-string/jumbo v2, "ssl error"

    invoke-interface {v0, v1, v2}, Lc8/eeg;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 172
    if-eqz p2, :cond_1

    iget-object v2, p0, Lc8/Spb;->this$0:Lc8/Upb;

    .line 173
    invoke-static {v2}, Lc8/Upb;->access$000(Lc8/Upb;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Spb;->this$0:Lc8/Upb;

    invoke-static {v2}, Lc8/Upb;->access$000(Lc8/Upb;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    :cond_0
    invoke-static {}, Lc8/Upb;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    :cond_1
    :goto_0
    return v1

    .line 178
    :cond_2
    iget-object v2, p0, Lc8/Spb;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 179
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Fob;->getEventModuleAdapter()Lc8/Lob;

    move-result-object v0

    .line 180
    .local v0, "event":Lc8/Lob;
    if-eqz v0, :cond_3

    .line 181
    iget-object v1, p0, Lc8/Spb;->this$0:Lc8/Upb;

    invoke-static {v1}, Lc8/Upb;->access$200(Lc8/Upb;)Lc8/nVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lc8/Lob;->openURL(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method
