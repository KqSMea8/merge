.class public Lc8/Nye;
.super Lc8/Oye;
.source "AuthWebViewClient.java"


# instance fields
.field private authed:Z

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lc8/Gye;Landroid/content/Context;Lc8/Uye;)V
    .locals 1
    .param p1, "callback"    # Lc8/Gye;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "param"    # Lc8/Uye;

    .prologue
    .line 37
    invoke-direct {p0, p1, p3}, Lc8/Oye;-><init>(Lc8/Gye;Lc8/Uye;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Nye;->authed:Z

    .line 38
    iput-object p2, p0, Lc8/Nye;->context:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private handleRedirectUrl(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {p1}, Lc8/Aye;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 137
    .local v7, "values":Landroid/os/Bundle;
    const-string/jumbo v8, "error"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "errorType":Ljava/lang/String;
    const-string/jumbo v8, "error_code"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "errorCode":Ljava/lang/String;
    const-string/jumbo v8, "error_description"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "errorDescription":Ljava/lang/String;
    const/4 v4, 0x0

    .line 141
    .local v4, "mListener":Lc8/Qwe;
    iget-object v8, p0, Lc8/Nye;->param:Lc8/Uye;

    invoke-virtual {v8}, Lc8/Uye;->getBaseData()Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lc8/Nye;->param:Lc8/Uye;

    invoke-virtual {v8}, Lc8/Uye;->getBaseData()Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->getCallback()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 142
    iget-object v8, p0, Lc8/Nye;->param:Lc8/Uye;

    invoke-virtual {v8}, Lc8/Uye;->getBaseData()Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->getCallback()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "callbackKey":Ljava/lang/String;
    invoke-static {}, Lc8/Hye;->getInstance()Lc8/Hye;

    move-result-object v5

    .line 144
    .local v5, "manager":Lc8/Hye;
    invoke-virtual {v5, v0}, Lc8/Hye;->getWeiboAuthListener(Ljava/lang/String;)Lc8/Qwe;

    move-result-object v4

    .line 145
    invoke-virtual {v5, v0}, Lc8/Hye;->removeWeiboAuthListener(Ljava/lang/String;)V

    .line 148
    .end local v0    # "callbackKey":Ljava/lang/String;
    .end local v5    # "manager":Lc8/Hye;
    :cond_0
    if-nez v3, :cond_2

    if-nez v1, :cond_2

    .line 149
    if-eqz v4, :cond_1

    .line 151
    invoke-static {v7}, Lc8/Owe;->parseAccessToken(Landroid/os/Bundle;)Lc8/Owe;

    move-result-object v6

    .line 152
    .local v6, "newToken":Lc8/Owe;
    iget-object v8, p0, Lc8/Nye;->context:Landroid/content/Context;

    invoke-static {v8, v6}, Lc8/Lwe;->writeAccessToken(Landroid/content/Context;Lc8/Owe;)V

    .line 153
    invoke-interface {v4, v6}, Lc8/Qwe;->onSuccess(Lc8/Owe;)V

    .line 160
    .end local v6    # "newToken":Lc8/Owe;
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    if-eqz v4, :cond_1

    .line 157
    new-instance v8, Lc8/Rwe;

    invoke-direct {v8, v1, v2}, Lc8/Rwe;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Lc8/Qwe;->onFailure(Lc8/Rwe;)V

    goto :goto_0
.end method

.method private needOverLoad(Ljava/lang/String;)Z
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 59
    const-string/jumbo v4, "sms:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, "sendIntent":Landroid/content/Intent;
    const-string/jumbo v4, "address"

    const-string/jumbo v5, "sms:"

    const-string/jumbo v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string/jumbo v4, "vnd.android-dir/mms-sms"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v4, p0, Lc8/Nye;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    .end local v2    # "sendIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 66
    :cond_1
    const-string/jumbo v4, "sinaweibo://browser/close"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 68
    iget-object v4, p0, Lc8/Nye;->param:Lc8/Uye;

    invoke-virtual {v4}, Lc8/Uye;->getBaseData()Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/Nye;->param:Lc8/Uye;

    invoke-virtual {v4}, Lc8/Uye;->getBaseData()Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->getCallback()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 69
    iget-object v4, p0, Lc8/Nye;->param:Lc8/Uye;

    invoke-virtual {v4}, Lc8/Uye;->getBaseData()Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->getCallback()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "callbackKey":Ljava/lang/String;
    invoke-static {}, Lc8/Hye;->getInstance()Lc8/Hye;

    move-result-object v1

    .line 71
    .local v1, "manager":Lc8/Hye;
    invoke-virtual {v1, v0}, Lc8/Hye;->getWeiboAuthListener(Ljava/lang/String;)Lc8/Qwe;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 72
    invoke-virtual {v1, v0}, Lc8/Hye;->getWeiboAuthListener(Ljava/lang/String;)Lc8/Qwe;

    move-result-object v4

    invoke-interface {v4}, Lc8/Qwe;->cancel()V

    .line 74
    :cond_2
    invoke-virtual {v1, v0}, Lc8/Hye;->removeWeiboAuthListener(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v0    # "callbackKey":Ljava/lang/String;
    .end local v1    # "manager":Lc8/Hye;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public closeWeb()V
    .locals 3

    .prologue
    .line 164
    invoke-super {p0}, Lc8/Oye;->closeWeb()V

    .line 165
    iget-object v2, p0, Lc8/Nye;->param:Lc8/Uye;

    invoke-virtual {v2}, Lc8/Uye;->getBaseData()Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/Nye;->param:Lc8/Uye;

    invoke-virtual {v2}, Lc8/Uye;->getBaseData()Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->getCallback()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    iget-object v2, p0, Lc8/Nye;->param:Lc8/Uye;

    invoke-virtual {v2}, Lc8/Uye;->getBaseData()Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->getCallback()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "callbackKey":Ljava/lang/String;
    invoke-static {}, Lc8/Hye;->getInstance()Lc8/Hye;

    move-result-object v1

    .line 168
    .local v1, "manager":Lc8/Hye;
    invoke-virtual {v1, v0}, Lc8/Hye;->getWeiboAuthListener(Ljava/lang/String;)Lc8/Qwe;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v1, v0}, Lc8/Hye;->getWeiboAuthListener(Ljava/lang/String;)Lc8/Qwe;

    move-result-object v2

    invoke-interface {v2}, Lc8/Qwe;->cancel()V

    .line 171
    :cond_0
    invoke-virtual {v1, v0}, Lc8/Hye;->removeWeiboAuthListener(Ljava/lang/String;)V

    .line 173
    .end local v0    # "callbackKey":Ljava/lang/String;
    .end local v1    # "manager":Lc8/Hye;
    :cond_1
    return-void
.end method

.method public onBackKeyDown()Z
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lc8/Nye;->closeWeb()V

    .line 178
    iget-object v0, p0, Lc8/Nye;->requestCallback:Lc8/Gye;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lc8/Nye;->requestCallback:Lc8/Gye;

    invoke-interface {v0}, Lc8/Gye;->closePage()V

    .line 181
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lc8/Oye;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lc8/Nye;->requestCallback:Lc8/Gye;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lc8/Nye;->requestCallback:Lc8/Gye;

    invoke-interface {v0, p1, p2}, Lc8/Gye;->onPageFinishedCallBack(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    iget-object v1, p0, Lc8/Nye;->requestCallback:Lc8/Gye;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lc8/Nye;->requestCallback:Lc8/Gye;

    invoke-interface {v1, p1, p2, p3}, Lc8/Gye;->onPageStartedCallBack(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 89
    :cond_0
    iget-object v1, p0, Lc8/Nye;->param:Lc8/Uye;

    invoke-virtual {v1}, Lc8/Uye;->getBaseData()Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v0

    .line 90
    .local v0, "authInfo":Lcom/sina/weibo/sdk/auth/AuthInfo;
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-boolean v1, p0, Lc8/Nye;->authed:Z

    if-nez v1, :cond_2

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/Nye;->authed:Z

    .line 93
    invoke-direct {p0, p2}, Lc8/Nye;->handleRedirectUrl(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 95
    iget-object v1, p0, Lc8/Nye;->requestCallback:Lc8/Gye;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lc8/Nye;->requestCallback:Lc8/Gye;

    invoke-interface {v1}, Lc8/Gye;->closePage()V

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lc8/Oye;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Lc8/Oye;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lc8/Nye;->requestCallback:Lc8/Gye;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lc8/Nye;->requestCallback:Lc8/Gye;

    invoke-interface {v0, p1, p2, p3, p4}, Lc8/Gye;->onReceivedErrorCallBack(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;
    .annotation build Lc8/N;
        api = 0x17
    .end annotation

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3}, Lc8/Oye;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 116
    iget-object v0, p0, Lc8/Nye;->requestCallback:Lc8/Gye;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lc8/Nye;->requestCallback:Lc8/Gye;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v1, v2, v3}, Lc8/Gye;->onReceivedErrorCallBack(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 46
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Nye;->needOverLoad(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lc8/Nye;->requestCallback:Lc8/Gye;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lc8/Nye;->requestCallback:Lc8/Gye;

    invoke-interface {v0, p1, p2}, Lc8/Gye;->shouldOverrideUrlLoadingCallBack(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 55
    :cond_0
    invoke-direct {p0, p2}, Lc8/Nye;->needOverLoad(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
