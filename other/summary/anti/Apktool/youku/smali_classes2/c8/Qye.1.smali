.class public Lc8/Qye;
.super Lc8/Oye;
.source "ShareWebViewClient.java"


# static fields
.field private static final RESP_PARAM_CODE:Ljava/lang/String; = "code"

.field private static final RESP_PARAM_MSG:Ljava/lang/String; = "msg"

.field private static final RESP_SUCC_CODE:Ljava/lang/String; = "0"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lc8/Gye;Lc8/Uye;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lc8/Gye;
    .param p3, "param"    # Lc8/Uye;

    .prologue
    .line 39
    invoke-direct {p0, p2, p3}, Lc8/Oye;-><init>(Lc8/Gye;Lc8/Uye;)V

    .line 40
    iput-object p1, p0, Lc8/Qye;->activity:Landroid/app/Activity;

    .line 41
    return-void
.end method

.method private needOverLoad(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string/jumbo v5, "sinaweibo://browser/close"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 95
    invoke-static {p1}, Lc8/Cye;->parseUri(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 97
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v5, p0, Lc8/Qye;->param:Lc8/Uye;

    invoke-virtual {v5}, Lc8/Uye;->getBaseData()Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lc8/Qye;->param:Lc8/Uye;

    invoke-virtual {v5}, Lc8/Uye;->getBaseData()Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->getCallback()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 98
    iget-object v5, p0, Lc8/Qye;->param:Lc8/Uye;

    invoke-virtual {v5}, Lc8/Uye;->getBaseData()Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->getCallback()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "callbackKey":Ljava/lang/String;
    invoke-static {}, Lc8/Hye;->getInstance()Lc8/Hye;

    move-result-object v4

    .line 100
    .local v4, "manager":Lc8/Hye;
    invoke-virtual {v4, v1}, Lc8/Hye;->getWeiboAuthListener(Ljava/lang/String;)Lc8/Qwe;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 103
    invoke-virtual {v4, v1}, Lc8/Hye;->removeWeiboAuthListener(Ljava/lang/String;)V

    .line 106
    .end local v1    # "callbackKey":Ljava/lang/String;
    .end local v4    # "manager":Lc8/Hye;
    :cond_0
    const-string/jumbo v5, "code"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "errCode":Ljava/lang/String;
    const-string/jumbo v5, "msg"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "errMsg":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    iget-object v5, p0, Lc8/Qye;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lc8/Qye;->sendSdkCancleResponse(Landroid/app/Activity;)V

    .line 117
    :goto_0
    iget-object v5, p0, Lc8/Qye;->requestCallback:Lc8/Gye;

    if-eqz v5, :cond_1

    .line 118
    iget-object v5, p0, Lc8/Qye;->requestCallback:Lc8/Gye;

    invoke-interface {v5}, Lc8/Gye;->closePage()V

    .line 120
    :cond_1
    const/4 v5, 0x1

    .line 122
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "errCode":Ljava/lang/String;
    .end local v3    # "errMsg":Ljava/lang/String;
    :goto_1
    return v5

    .line 111
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "errCode":Ljava/lang/String;
    .restart local v3    # "errMsg":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 112
    iget-object v5, p0, Lc8/Qye;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v5, v3}, Lc8/Qye;->sendSdkErrorResponse(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_3
    iget-object v5, p0, Lc8/Qye;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lc8/Qye;->sendSdkOkResponse(Landroid/app/Activity;)V

    goto :goto_0

    .line 122
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "errCode":Ljava/lang/String;
    .end local v3    # "errMsg":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private sendSdkResponse(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "errCode"    # I
    .param p3, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 128
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.sina.weibo.sdk.action.ACTION_SDK_REQ_ACTIVITY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "packageName":Ljava/lang/String;
    const/high16 v3, 0x20000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 137
    const-string/jumbo v3, "_weibo_appPackage"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string/jumbo v3, "_weibo_resp_errcode"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string/jumbo v3, "_weibo_resp_errstr"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const/16 v3, 0x2fd

    :try_start_0
    invoke-virtual {p1, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public closeWeb()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lc8/Oye;->closeWeb()V

    .line 163
    iget-object v0, p0, Lc8/Qye;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lc8/Qye;->sendSdkCancleResponse(Landroid/app/Activity;)V

    .line 164
    return-void
.end method

.method public onBackKeyDown()Z
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lc8/Qye;->closeWeb()V

    .line 169
    iget-object v0, p0, Lc8/Qye;->requestCallback:Lc8/Gye;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lc8/Qye;->requestCallback:Lc8/Gye;

    invoke-interface {v0}, Lc8/Gye;->closePage()V

    .line 172
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lc8/Oye;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lc8/Qye;->requestCallback:Lc8/Gye;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lc8/Qye;->requestCallback:Lc8/Gye;

    invoke-interface {v0, p1, p2}, Lc8/Gye;->onPageFinishedCallBack(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Lc8/Oye;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 46
    iget-object v0, p0, Lc8/Qye;->requestCallback:Lc8/Gye;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lc8/Qye;->requestCallback:Lc8/Gye;

    invoke-interface {v0, p1, p2, p3}, Lc8/Gye;->onPageStartedCallBack(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 49
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Lc8/Oye;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lc8/Qye;->requestCallback:Lc8/Gye;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lc8/Qye;->requestCallback:Lc8/Gye;

    invoke-interface {v0, p1, p2, p3, p4}, Lc8/Gye;->onReceivedErrorCallBack(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 74
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
    .line 62
    invoke-super {p0, p1, p2, p3}, Lc8/Oye;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 63
    iget-object v0, p0, Lc8/Qye;->requestCallback:Lc8/Gye;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lc8/Qye;->requestCallback:Lc8/Gye;

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

    .line 66
    :cond_0
    return-void
.end method

.method public sendSdkCancleResponse(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 149
    const/4 v0, 0x1

    const-string/jumbo v1, "send cancel!!!"

    invoke-direct {p0, p1, v0, v1}, Lc8/Qye;->sendSdkResponse(Landroid/app/Activity;ILjava/lang/String;)V

    .line 150
    return-void
.end method

.method public sendSdkErrorResponse(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 157
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lc8/Qye;->sendSdkResponse(Landroid/app/Activity;ILjava/lang/String;)V

    .line 158
    return-void
.end method

.method public sendSdkOkResponse(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 153
    const/4 v0, 0x0

    const-string/jumbo v1, "send ok!!!"

    invoke-direct {p0, p1, v0, v1}, Lc8/Qye;->sendSdkResponse(Landroid/app/Activity;ILjava/lang/String;)V

    .line 154
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
    .line 81
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Qye;->needOverLoad(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lc8/Qye;->requestCallback:Lc8/Gye;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lc8/Qye;->requestCallback:Lc8/Gye;

    invoke-interface {v0, p1, p2}, Lc8/Gye;->shouldOverrideUrlLoadingCallBack(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 90
    :cond_0
    invoke-direct {p0, p2}, Lc8/Qye;->needOverLoad(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
