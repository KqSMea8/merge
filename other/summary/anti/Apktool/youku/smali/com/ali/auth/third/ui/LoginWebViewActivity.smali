.class public Lcom/ali/auth/third/ui/LoginWebViewActivity;
.super Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;
.source "LoginWebViewActivity.java"


# static fields
.field public static final CALLBACK:Ljava/lang/String; = "https://www.alipay.com/webviewbridge"

.field public static final TAG:Ljava/lang/String;

.field public static scene:Ljava/lang/String;

.field public static token:Ljava/lang/String;


# instance fields
.field private mLoginService:Lc8/hib;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/ali/auth/third/ui/LoginWebViewActivity;)Lc8/hib;
    .locals 1
    .param p0, "x0"    # Lcom/ali/auth/third/ui/LoginWebViewActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->mLoginService:Lc8/hib;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/ali/auth/third/ui/LoginWebViewActivity;)Lc8/sjb;
    .locals 1
    .param p0, "x0"    # Lcom/ali/auth/third/ui/LoginWebViewActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->authWebView:Lc8/sjb;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/ali/auth/third/ui/LoginWebViewActivity;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ali/auth/third/ui/LoginWebViewActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->overrideCallback(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static synthetic access$300(Lcom/ali/auth/third/ui/LoginWebViewActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/ali/auth/third/ui/LoginWebViewActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->titleText:Landroid/widget/TextView;

    return-object v0
.end method

.method private overrideCallback(Landroid/net/Uri;)Z
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    .line 103
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->serialBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 105
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 106
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "bundle":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 107
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v4, "havana_mobile_reg_otherWebView"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    const-string/jumbo v4, "action"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "loginId"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "quit"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 112
    :cond_1
    const-string/jumbo v4, "havana_iv_token"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "ivtoken":Ljava/lang/String;
    sget-object v4, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    iget v4, v4, Lc8/Wgb;->code:I

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "iv_token"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->finish()V

    .line 131
    .end local v2    # "ivtoken":Ljava/lang/String;
    :cond_2
    :goto_0
    return v3

    .line 116
    :cond_3
    const-string/jumbo v4, "relogin"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 117
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->finish()V

    goto :goto_0

    .line 119
    :cond_4
    const-string/jumbo v4, "mobile_confirm_login"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    const-string/jumbo v4, "trustLogin"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 123
    const-string/jumbo v4, "continueLogin"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 124
    const-string/jumbo v4, "aliusersdk_h5querystring"

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v4, "token"

    sget-object v5, Lcom/ali/auth/third/ui/LoginWebViewActivity;->token:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v4, "scene"

    sget-object v5, Lcom/ali/auth/third/ui/LoginWebViewActivity;->scene:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v4, Lc8/Wgb;->CHECK:Lc8/Wgb;

    iget v4, v4, Lc8/Wgb;->code:I

    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->finish()V

    goto :goto_0

    .line 131
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static serialBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p0, "params"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 137
    const-string/jumbo v4, "&"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "strs":[Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .restart local v0    # "bundle":Landroid/os/Bundle;
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v3, v4

    .line 141
    .local v2, "str":Ljava/lang/String;
    const-string/jumbo v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 142
    .local v1, "pos":I
    if-lez v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_0

    .line 143
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "pos":I
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "strs":[Ljava/lang/String;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public checkWebviewBridge(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 94
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "prefix":Ljava/lang/String;
    const-string/jumbo v2, "https://www.alipay.com/webviewbridge"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const/4 v2, 0x1

    .line 99
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected createWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lc8/bjb;

    invoke-direct {v0, p0}, Lc8/bjb;-><init>(Lcom/ali/auth/third/ui/LoginWebViewActivity;)V

    return-object v0
.end method

.method protected createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lc8/ajb;

    invoke-direct {v0, p0}, Lc8/ajb;-><init>(Lcom/ali/auth/third/ui/LoginWebViewActivity;)V

    return-object v0
.end method

.method public onBackHistory()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {v1}, Lc8/sjb;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {v1}, Lc8/sjb;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "authorization-notice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {v1}, Lc8/sjb;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "agreement"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {v1}, Lc8/sjb;->goBack()V

    .line 177
    :goto_0
    return-void

    .line 172
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lc8/Wgb;->USER_CANCEL:Lc8/Wgb;

    iget v1, v1, Lc8/Wgb;->code:I

    invoke-virtual {p0, v1, v0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 174
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 175
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->authWebView:Lc8/sjb;

    if-nez v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->finish()V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->authWebView:Lc8/sjb;

    const-string/jumbo v1, "accountBridge"

    new-instance v2, Lc8/pib;

    invoke-direct {v2}, Lc8/pib;-><init>()V

    invoke-virtual {v0, v1, v2}, Lc8/sjb;->addBridgeObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->authWebView:Lc8/sjb;

    const-string/jumbo v1, "loginBridge"

    new-instance v2, Lc8/pib;

    invoke-direct {v2}, Lc8/pib;-><init>()V

    invoke-virtual {v0, v1, v2}, Lc8/sjb;->addBridgeObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    const-class v0, Lc8/hib;

    invoke-static {v0}, Lc8/sgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/hib;

    iput-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->mLoginService:Lc8/hib;

    .line 44
    sget-object v0, Lc8/Bgb;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lc8/Bgb;->context:Landroid/content/Context;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->onDestroy()V

    .line 182
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 183
    return-void
.end method
