.class public Lc8/YSh;
.super Landroid/content/BroadcastReceiver;
.source "WVLoginJSBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ZSh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginReceiver"
.end annotation


# instance fields
.field private callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private webView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 0
    .param p1, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 106
    iput-object p1, p0, Lc8/YSh;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 107
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "com.youku.action.LOGIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    :try_start_0
    iget-object v3, p0, Lc8/YSh;->callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v3, :cond_0

    .line 120
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 122
    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    .line 123
    .local v1, "result":Lc8/kE;
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v2

    .line 124
    .local v2, "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    const-string/jumbo v3, "error"

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v3, "login"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    const-string/jumbo v3, "uid"

    iget-object v4, v2, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v3, "yid"

    iget-object v4, v2, Lcom/youku/usercenter/passport/remote/UserInfo;->mYid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v3, "ytid"

    iget-object v4, v2, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v3, "avatar"

    iget-object v4, v2, Lcom/youku/usercenter/passport/remote/UserInfo;->mAvatarUrl:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string/jumbo v3, "username"

    iget-object v4, v2, Lcom/youku/usercenter/passport/remote/UserInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v3, "nickname"

    iget-object v4, v2, Lcom/youku/usercenter/passport/remote/UserInfo;->mNickName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v3, p0, Lc8/YSh;->callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v1    # "result":Lc8/kE;
    .end local v2    # "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const-string/jumbo v3, "com.youku.action.LOGOUT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    iget-object v3, p0, Lc8/YSh;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lc8/YSh;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object v4, p0, Lc8/YSh;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v4}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/taobao/windvane/webview/IWVWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method updateCallBackContext(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 110
    iput-object p1, p0, Lc8/YSh;->callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 111
    return-void
.end method
