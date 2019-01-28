.class public interface abstract Lc8/Wgn;
.super Ljava/lang/Object;
.source "IWebViewService.java"


# virtual methods
.method public abstract bindWebView(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V
    .param p3    # Landroid/webkit/WebViewClient;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/webkit/WebChromeClient;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract initWindVaneParams()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onDestroy()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerLoginReceiver(Landroid/app/Activity;Landroid/webkit/WebView;)V
.end method

.method public abstract unregisterLoginReceiver(Landroid/app/Activity;Landroid/webkit/WebView;)V
.end method
