.class public Lc8/STh;
.super Lc8/HI;
.source "WebViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/TTh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewClient"
.end annotation


# instance fields
.field private mWrapper:Lc8/TTh;


# direct methods
.method public constructor <init>(Lc8/TTh;)V
    .locals 1
    .param p1, "wrapper"    # Lc8/TTh;

    .prologue
    .line 247
    invoke-virtual {p1}, Lc8/TTh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/HI;-><init>(Landroid/content/Context;)V

    .line 248
    iput-object p1, p0, Lc8/STh;->mWrapper:Lc8/TTh;

    .line 249
    return-void
.end method


# virtual methods
.method public executeWebViewLoadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 320
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-super {p0, p1, p2}, Lc8/HI;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lc8/STh;->mWrapper:Lc8/TTh;

    iget-object v1, p0, Lc8/STh;->mWrapper:Lc8/TTh;

    invoke-static {v1}, Lc8/TTh;->access$600(Lc8/TTh;)Landroid/taobao/windvane/webview/WVWebView;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/TTh;->access$700(Lc8/TTh;Landroid/view/View;)V

    .line 303
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 292
    invoke-super {p0, p1, p2, p3}, Lc8/HI;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 293
    iget-object v0, p0, Lc8/STh;->mWrapper:Lc8/TTh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/TTh;->access$402(Lc8/TTh;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lc8/STh;->mWrapper:Lc8/TTh;

    iget-boolean v0, v0, Lc8/TTh;->showProgress:Z

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lc8/STh;->mWrapper:Lc8/TTh;

    invoke-static {v0}, Lc8/TTh;->access$500(Lc8/TTh;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 297
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-super {p0, p1, p2, p3, p4}, Lc8/HI;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lc8/STh;->mWrapper:Lc8/TTh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/TTh;->access$402(Lc8/TTh;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    const-string/jumbo v0, "WebViewWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u52a0\u8f7d\u5931\u8d25! errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", description = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", failingUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lc8/STh;->mWrapper:Lc8/TTh;

    iget-object v1, p0, Lc8/STh;->mWrapper:Lc8/TTh;

    invoke-static {v1}, Lc8/TTh;->access$800(Lc8/TTh;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/TTh;->access$700(Lc8/TTh;Landroid/view/View;)V

    .line 312
    return-void
.end method

.method shouldExecuteCustomLoad(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldOverrideUrlLoading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    :try_start_0
    invoke-static {p1, p2}, Lc8/Gko;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    .line 263
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc8/STh;->mWrapper:Lc8/TTh;

    invoke-virtual {v4}, Lc8/TTh;->getSchemeExtra()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p2, v3, v4}, Lc8/HTh;->navActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    invoke-static {p2}, Lc8/HTh;->shouldOverrideUrlByAli(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 268
    if-eqz p2, :cond_3

    .line 269
    :try_start_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 270
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "//d.m.taobao.com/goAlipay.htm?"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Lc8/STh;->mWrapper:Lc8/TTh;

    const-string/jumbo v2, "backURL"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/TTh;->access$002(Lc8/TTh;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    iget-object v1, p0, Lc8/STh;->mWrapper:Lc8/TTh;

    const-string/jumbo v2, "unSuccessUrl"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/TTh;->access$102(Lc8/TTh;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".alipay.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    iget-object v1, p0, Lc8/STh;->mWrapper:Lc8/TTh;

    const-string/jumbo v2, "return_url"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/TTh;->access$202(Lc8/TTh;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    const-string/jumbo v1, "tbz"

    const-string/jumbo v2, "alipay_from"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    iget-object v1, p0, Lc8/STh;->mWrapper:Lc8/TTh;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lc8/TTh;->access$302(Lc8/TTh;Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 284
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lc8/HI;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 286
    :cond_4
    invoke-virtual {p0, p1, p2}, Lc8/STh;->shouldExecuteCustomLoad(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1, p2}, Lc8/HI;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method
