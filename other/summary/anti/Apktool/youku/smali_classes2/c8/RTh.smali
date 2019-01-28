.class public Lc8/RTh;
.super Lc8/AI;
.source "WebViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/TTh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebChromeClient"
.end annotation


# instance fields
.field private mUploadController:Lc8/lTh;

.field private mWrapper:Lc8/TTh;


# direct methods
.method public constructor <init>(Lc8/TTh;)V
    .locals 0
    .param p1, "wrapper"    # Lc8/TTh;

    .prologue
    .line 329
    invoke-direct {p0}, Lc8/AI;-><init>()V

    .line 330
    iput-object p1, p0, Lc8/RTh;->mWrapper:Lc8/TTh;

    .line 331
    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3
    .param p1, "msg"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 361
    sget-boolean v1, Lc8/KWc;->LOG:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[line:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " [source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lc8/OTh;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 390
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lc8/AI;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v1

    return v1

    .line 383
    .restart local v0    # "str":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v1, "WebViewWrapperConsole"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 349
    invoke-super {p0, p1, p2}, Lc8/AI;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 351
    iget-object v0, p0, Lc8/RTh;->mWrapper:Lc8/TTh;

    iget-boolean v0, v0, Lc8/TTh;->showProgress:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lc8/RTh;->mWrapper:Lc8/TTh;

    invoke-static {v0}, Lc8/TTh;->access$500(Lc8/TTh;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 354
    :cond_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 355
    iget-object v0, p0, Lc8/RTh;->mWrapper:Lc8/TTh;

    invoke-static {v0}, Lc8/TTh;->access$500(Lc8/TTh;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 357
    :cond_1
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "precomposed"    # Z

    .prologue
    .line 395
    invoke-super {p0, p1, p2, p3}, Lc8/AI;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 396
    iget-object v0, p0, Lc8/RTh;->mWrapper:Lc8/TTh;

    invoke-static {v0, p2}, Lc8/TTh;->access$902(Lc8/TTh;Ljava/lang/String;)Ljava/lang/String;

    .line 397
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 414
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    iget-object v0, p0, Lc8/RTh;->mUploadController:Lc8/lTh;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lc8/RTh;->mUploadController:Lc8/lTh;

    invoke-static {p3}, Lc8/pTh;->generateParams(Landroid/webkit/WebChromeClient$FileChooserParams;)Lc8/oTh;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lc8/lTh;->openFileChooser(Landroid/webkit/ValueCallback;Lc8/oTh;)V

    .line 416
    const/4 v0, 0x1

    .line 418
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 2
    .param p2, "acceptType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lc8/RTh;->mUploadController:Lc8/lTh;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lc8/RTh;->mUploadController:Lc8/lTh;

    invoke-static {p2}, Lc8/pTh;->generateParams(Ljava/lang/String;)Lc8/oTh;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lc8/lTh;->openFileChooser(Landroid/webkit/ValueCallback;Lc8/oTh;)V

    .line 403
    :cond_0
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lc8/RTh;->mUploadController:Lc8/lTh;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lc8/RTh;->mUploadController:Lc8/lTh;

    invoke-static {p2, p3}, Lc8/pTh;->generateParams(Ljava/lang/String;Ljava/lang/String;)Lc8/oTh;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lc8/lTh;->openFileChooser(Landroid/webkit/ValueCallback;Lc8/oTh;)V

    .line 409
    :cond_0
    return-void
.end method

.method public resetUploadController()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lc8/RTh;->mUploadController:Lc8/lTh;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lc8/RTh;->mUploadController:Lc8/lTh;

    invoke-virtual {v0}, Lc8/lTh;->reset()V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/RTh;->mUploadController:Lc8/lTh;

    .line 345
    :cond_0
    return-void
.end method

.method public setUploadController(Lc8/lTh;)V
    .locals 1
    .param p1, "uploadController"    # Lc8/lTh;

    .prologue
    .line 334
    iget-object v0, p0, Lc8/RTh;->mUploadController:Lc8/lTh;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lc8/RTh;->mUploadController:Lc8/lTh;

    invoke-virtual {v0}, Lc8/lTh;->reset()V

    .line 337
    :cond_0
    iput-object p1, p0, Lc8/RTh;->mUploadController:Lc8/lTh;

    .line 338
    return-void
.end method
