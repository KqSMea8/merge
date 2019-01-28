.class public Lc8/kZm;
.super Lc8/HI;
.source "PoplayerWebViewClient.java"


# instance fields
.field private final mConfigItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/poplayer/trigger/BaseConfigItem;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configItem"    # Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lc8/HI;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lc8/kZm;->mConfigItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    .line 26
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lc8/HI;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 61
    :try_start_0
    iget-object v4, p0, Lc8/kZm;->mConfigItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    iget-object v1, v4, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    .line 62
    .local v1, "uuid":Ljava/lang/String;
    invoke-static {}, Lc8/TYm;->getInstance()Lc8/TYm;

    move-result-object v4

    invoke-virtual {v4, v1}, Lc8/TYm;->isLoadError(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    .end local v1    # "uuid":Ljava/lang/String;
    :goto_0
    return-void

    .line 65
    .restart local v1    # "uuid":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lc8/TYm;->getInstance()Lc8/TYm;

    move-result-object v4

    invoke-virtual {v4, v1}, Lc8/TYm;->urlLoaded(Ljava/lang/String;)J

    move-result-wide v2

    .line 66
    .local v2, "loadedTime":J
    invoke-static {v1, v2, v3}, Lc8/VYm;->onLoaded(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v1    # "uuid":Ljava/lang/String;
    .end local v2    # "loadedTime":J
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PoplayerWebViewClient.finish.fail"

    invoke-static {v4, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Lc8/HI;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v6, 0x0

    .line 78
    .local v6, "proHost":Ljava/lang/String;
    const/4 v3, -0x8

    if-eq v3, p2, :cond_0

    const/16 v3, -0xb

    if-ne v3, p2, :cond_1

    .line 79
    :cond_0
    :try_start_0
    const-string/jumbo v3, "http.proxyHost"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    :cond_1
    iget-object v3, p0, Lc8/kZm;->mConfigItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    iget-object v1, v3, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    .line 82
    .local v1, "uuid":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "errorCodeStr":Ljava/lang/String;
    invoke-static {}, Lc8/TYm;->getInstance()Lc8/TYm;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p4}, Lc8/TYm;->urlLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .local v4, "loadErrorTime":J
    move-object v3, p4

    .line 84
    invoke-static/range {v1 .. v6}, Lc8/VYm;->onLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "uuid":Ljava/lang/String;
    .end local v2    # "errorCodeStr":Ljava/lang/String;
    .end local v4    # "loadErrorTime":J
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PoplayerWebViewClient.recrivedErr.fail"

    invoke-static {v3, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3}, Lc8/HI;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 111
    :try_start_0
    iget-object v6, p0, Lc8/kZm;->mConfigItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    iget-object v3, v6, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    .line 112
    .local v3, "uuid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "http."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "errorCode":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "failingUrl":Ljava/lang/String;
    invoke-static {}, Lc8/TYm;->getInstance()Lc8/TYm;

    move-result-object v6

    invoke-virtual {v6, v3, v1, v2}, Lc8/TYm;->urlLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 115
    .local v4, "loadErrorTime":J
    invoke-static {v3, v1, v2, v4, v5}, Lc8/VYm;->onLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v2    # "failingUrl":Ljava/lang/String;
    .end local v3    # "uuid":Ljava/lang/String;
    .end local v4    # "loadErrorTime":J
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "PoplayerWebViewClient.sslErr.fail"

    invoke-static {v6, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3}, Lc8/HI;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 95
    :try_start_0
    iget-object v6, p0, Lc8/kZm;->mConfigItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    iget-object v3, v6, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    .line 96
    .local v3, "uuid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ssl."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "errorCode":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "failingUrl":Ljava/lang/String;
    invoke-static {}, Lc8/TYm;->getInstance()Lc8/TYm;

    move-result-object v6

    invoke-virtual {v6, v3, v1, v2}, Lc8/TYm;->urlLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 99
    .local v4, "loadErrorTime":J
    invoke-static {v3, v1, v2, v4, v5}, Lc8/VYm;->onLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v2    # "failingUrl":Ljava/lang/String;
    .end local v3    # "uuid":Ljava/lang/String;
    .end local v4    # "loadErrorTime":J
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "PoplayerWebViewClient.sslErr.fail"

    invoke-static {v6, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "webview"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 31
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 32
    .local v0, "context":Landroid/content/Context;
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 33
    invoke-super {p0, p1, p2}, Lc8/HI;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    .line 52
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return v2

    .line 49
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    invoke-super {p0, p1, p2}, Lc8/HI;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 50
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PoplayerWebViewClient.shouldOverrideUrlLoading.error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    invoke-super {p0, p1, p2}, Lc8/HI;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method
