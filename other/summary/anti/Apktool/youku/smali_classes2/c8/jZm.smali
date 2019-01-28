.class public Lc8/jZm;
.super Lc8/FD;
.source "PoplayerWebViewClient.java"


# instance fields
.field private final mConfigItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/poplayer/trigger/BaseConfigItem;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configItem"    # Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lc8/FD;-><init>(Landroid/content/Context;)V

    .line 127
    iput-object p2, p0, Lc8/jZm;->mConfigItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    .line 128
    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Lc8/FD;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 165
    :try_start_0
    iget-object v4, p0, Lc8/jZm;->mConfigItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    iget-object v1, v4, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    .line 166
    .local v1, "uuid":Ljava/lang/String;
    invoke-static {}, Lc8/TYm;->getInstance()Lc8/TYm;

    move-result-object v4

    invoke-virtual {v4, v1}, Lc8/TYm;->isLoadError(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    .end local v1    # "uuid":Ljava/lang/String;
    :goto_0
    return-void

    .line 169
    .restart local v1    # "uuid":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lc8/TYm;->getInstance()Lc8/TYm;

    move-result-object v4

    invoke-virtual {v4, v1}, Lc8/TYm;->urlLoaded(Ljava/lang/String;)J

    move-result-wide v2

    .line 170
    .local v2, "loadedTime":J
    invoke-static {v1, v2, v3}, Lc8/VYm;->onLoaded(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    .end local v1    # "uuid":Ljava/lang/String;
    .end local v2    # "loadedTime":J
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PoplayerUCWebViewClient.finish.fail"

    invoke-static {v4, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Lc8/FD;->onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    :try_start_0
    iget-object v5, p0, Lc8/jZm;->mConfigItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    iget-object v4, v5, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    .line 182
    .local v4, "uuid":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "errorCodeStr":Ljava/lang/String;
    invoke-static {}, Lc8/TYm;->getInstance()Lc8/TYm;

    move-result-object v5

    invoke-virtual {v5, v4, v1, p4}, Lc8/TYm;->urlLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 184
    .local v2, "loadedTime":J
    invoke-static {v4, v1, p4, v2, v3}, Lc8/VYm;->onLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1    # "errorCodeStr":Ljava/lang/String;
    .end local v2    # "loadedTime":J
    .end local v4    # "uuid":Ljava/lang/String;
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PoplayerUCWebViewClient.recrivedErr.fail"

    invoke-static {v5, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 8
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "handler"    # Lcom/uc/webview/export/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3}, Lc8/FD;->onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 195
    :try_start_0
    iget-object v6, p0, Lc8/jZm;->mConfigItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    iget-object v3, v6, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    .line 196
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

    .line 197
    .local v1, "errorCode":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "failingUrl":Ljava/lang/String;
    invoke-static {}, Lc8/TYm;->getInstance()Lc8/TYm;

    move-result-object v6

    invoke-virtual {v6, v3, v1, v2}, Lc8/TYm;->urlLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 199
    .local v4, "loadErrorTime":J
    invoke-static {v3, v1, v2, v4, v5}, Lc8/VYm;->onLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v2    # "failingUrl":Ljava/lang/String;
    .end local v3    # "uuid":Ljava/lang/String;
    .end local v4    # "loadErrorTime":J
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "PoplayerUCWebViewClient.sslErr.fail"

    invoke-static {v6, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "webview"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 133
    :try_start_0
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    .local v0, "context":Landroid/content/Context;
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 135
    invoke-super {p0, p1, p2}, Lc8/FD;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z

    move-result v2

    .line 156
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return v2

    .line 153
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    invoke-super {p0, p1, p2}, Lc8/FD;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 154
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PoplayerUCWebViewClient.shouldOverrideUrlLoading.error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    invoke-super {p0, p1, p2}, Lc8/FD;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method
