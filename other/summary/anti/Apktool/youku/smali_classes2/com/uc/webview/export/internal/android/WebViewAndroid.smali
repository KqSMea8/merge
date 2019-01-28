.class public Lcom/uc/webview/export/internal/android/WebViewAndroid;
.super Landroid/webkit/WebView;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/IWebView;


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/android/WebViewAndroid$a;
    }
.end annotation


# instance fields
.field private a:Lcom/uc/webview/export/WebView;

.field private b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/uc/webview/export/WebView;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-object p3, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/WebView;

    .line 66
    new-instance v0, Lcom/uc/webview/export/internal/android/t;

    new-instance v1, Lcom/uc/webview/export/WebViewClient;

    invoke-direct {v1}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    invoke-direct {v0, p3, v1}, Lcom/uc/webview/export/internal/android/t;-><init>(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebViewClient;)V

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 67
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 68
    return-void
.end method


# virtual methods
.method public clearClientCertPreferencesNoStatic(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreComputeScroll()V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->computeScroll()V

    goto :goto_0
.end method

.method public copyBackForwardListInner()Lcom/uc/webview/export/WebBackForwardList;
    .locals 2

    .prologue
    .line 346
    invoke-super {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 347
    if-eqz v1, :cond_0

    .line 348
    new-instance v0, Lcom/uc/webview/export/internal/android/h;

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/android/h;-><init>(Landroid/webkit/WebBackForwardList;)V

    .line 350
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createWebMessageChannelInner()Ljava/lang/Object;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 407
    invoke-super {p0}, Landroid/webkit/WebView;->createWebMessageChannel()[Landroid/webkit/WebMessagePort;

    move-result-object v2

    .line 408
    if-nez v2, :cond_0

    .line 409
    const/4 v0, 0x0

    .line 415
    :goto_0
    return-object v0

    .line 411
    :cond_0
    array-length v0, v2

    new-array v1, v0, [Lcom/uc/webview/export/internal/android/n;

    .line 412
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 413
    new-instance v3, Lcom/uc/webview/export/internal/android/n;

    aget-object v4, v2, v0

    invoke-direct {v3, v4}, Lcom/uc/webview/export/internal/android/n;-><init>(Landroid/webkit/WebMessagePort;)V

    aput-object v3, v1, v0

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 415
    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreDestroy()V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 124
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreDraw(Landroid/graphics/Canvas;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 340
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 342
    :cond_0
    return-void
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 293
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 294
    invoke-super {p0, p1}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    .line 296
    :cond_0
    return-void
.end method

.method public getCommonExtension()Lcom/uc/webview/export/internal/interfaces/ICommonExtension;
    .locals 0

    .prologue
    .line 257
    return-object p0
.end method

.method public getHitTestResultInner()Lcom/uc/webview/export/internal/interfaces/IWebView$IHitTestResult;
    .locals 3

    .prologue
    .line 355
    invoke-super {p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_0

    .line 357
    new-instance v0, Lcom/uc/webview/export/internal/android/WebViewAndroid$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/uc/webview/export/internal/android/WebViewAndroid$a;-><init>(Lcom/uc/webview/export/internal/android/WebViewAndroid;Landroid/webkit/WebView$HitTestResult;B)V

    .line 359
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOverrideObject()Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    return-object v0
.end method

.method public getSettingsInner()Lcom/uc/webview/export/WebSettings;
    .locals 2

    .prologue
    .line 364
    new-instance v0, Lcom/uc/webview/export/internal/android/p;

    invoke-super {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/android/p;-><init>(Landroid/webkit/WebSettings;)V

    return-object v0
.end method

.method public getUCExtension()Lcom/uc/webview/export/internal/interfaces/IUCExtension;
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 274
    return-object p0
.end method

.method public notifyForegroundChanged(Z)V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreOnConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreOnScrollChanged(IIII)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    goto :goto_0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreOnVisibilityChanged(Landroid/view/View;I)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreOverScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 180
    :goto_0
    return v0

    .line 175
    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postVisualStateCallback(JLcom/uc/webview/export/WebView$b;)V
    .locals 3

    .prologue
    .line 395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 396
    new-instance v0, Lcom/uc/webview/export/internal/android/s;

    invoke-direct {v0, p0, p3}, Lcom/uc/webview/export/internal/android/s;-><init>(Lcom/uc/webview/export/internal/android/WebViewAndroid;Lcom/uc/webview/export/WebView$b;)V

    invoke-super {p0, p1, p2, v0}, Landroid/webkit/WebView;->postVisualStateCallback(JLandroid/webkit/WebView$VisualStateCallback;)V

    .line 402
    :cond_0
    return-void
.end method

.method public postWebMessageInner(Lcom/uc/webview/export/WebMessage;Landroid/net/Uri;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 422
    new-instance v0, Lcom/uc/webview/export/internal/android/m;

    invoke-direct {v0, p1}, Lcom/uc/webview/export/internal/android/m;-><init>(Lcom/uc/webview/export/WebMessage;)V

    .line 423
    invoke-super {p0, v0, p2}, Landroid/webkit/WebView;->postWebMessage(Landroid/webkit/WebMessage;Landroid/net/Uri;)V

    .line 424
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreRequestLayout()V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0
.end method

.method public restoreStateInner(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;
    .locals 2

    .prologue
    .line 369
    invoke-super {p0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 370
    if-nez v1, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 373
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/uc/webview/export/internal/android/h;

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/android/h;-><init>(Landroid/webkit/WebBackForwardList;)V

    goto :goto_0
.end method

.method public saveStateInner(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;
    .locals 2

    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 380
    if-nez v1, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 383
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/uc/webview/export/internal/android/h;

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/android/h;-><init>(Landroid/webkit/WebBackForwardList;)V

    goto :goto_0
.end method

.method public setDownloadListener(Lcom/uc/webview/export/DownloadListener;)V
    .locals 1

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    new-instance v0, Lcom/uc/webview/export/internal/android/a;

    invoke-direct {v0, p1}, Lcom/uc/webview/export/internal/android/a;-><init>(Lcom/uc/webview/export/DownloadListener;)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    goto :goto_0
.end method

.method public setFindListener(Lcom/uc/webview/export/WebView$FindListener;)V
    .locals 2

    .prologue
    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 310
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v0}, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 317
    :cond_0
    return-void

    .line 310
    :cond_1
    new-instance v0, Lcom/uc/webview/export/internal/android/r;

    invoke-direct {v0, p0, p1}, Lcom/uc/webview/export/internal/android/r;-><init>(Lcom/uc/webview/export/internal/android/WebViewAndroid;Lcom/uc/webview/export/WebView$FindListener;)V

    goto :goto_0
.end method

.method public setOverrideObject(Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    .line 280
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreSetVisibility(I)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V
    .locals 2

    .prologue
    .line 330
    if-nez p1, :cond_0

    .line 331
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    new-instance v0, Lcom/uc/webview/export/internal/android/i;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/WebView;

    invoke-direct {v0, v1, p1}, Lcom/uc/webview/export/internal/android/i;-><init>(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebChromeClient;)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_0
.end method

.method public setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V
    .locals 2

    .prologue
    .line 322
    if-nez p1, :cond_0

    .line 323
    new-instance p1, Lcom/uc/webview/export/WebViewClient;

    invoke-direct {p1}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    .line 325
    :cond_0
    new-instance v0, Lcom/uc/webview/export/internal/android/t;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/WebView;

    invoke-direct {v0, v1, p1}, Lcom/uc/webview/export/internal/android/t;-><init>(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebViewClient;)V

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 326
    return-void
.end method

.method public superComputeScroll()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Landroid/webkit/WebView;->computeScroll()V

    .line 186
    return-void
.end method

.method public superDestroy()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 210
    return-void
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 206
    return-void
.end method

.method public superOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    return-void
.end method

.method public superOnInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreOnInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public superOnInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreOnInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0
.end method

.method public superOnScrollChanged(IIII)V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 198
    return-void
.end method

.method public superOnVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 194
    return-void
.end method

.method public superOverScrollBy(IIIIIIIIZ)Z
    .locals 1

    .prologue
    .line 223
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method public superPerformAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->corePerformAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public superRequestLayout()V
    .locals 0

    .prologue
    .line 217
    invoke-super {p0}, Landroid/webkit/WebView;->requestLayout()V

    .line 218
    return-void
.end method

.method public superSetVisibility(I)V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 214
    return-void
.end method
