.class public Lc8/ZSh;
.super Lc8/RD;
.source "WVLoginJSBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/YSh;
    }
.end annotation


# static fields
.field public static final PLUGIN_NAME:Ljava/lang/String; = "WVLoginJSBridge"


# instance fields
.field private loginReceiver:Lc8/YSh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 101
    return-void
.end method

.method private showLoginView(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 6
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 47
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .local v1, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "from"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "from":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 57
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 58
    .local v2, "result":Lc8/kE;
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v3

    .line 59
    .local v3, "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    const-string/jumbo v4, "error"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v4, "login"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    const-string/jumbo v4, "uid"

    iget-object v5, v3, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v4, "yid"

    iget-object v5, v3, Lcom/youku/usercenter/passport/remote/UserInfo;->mYid:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v4, "ytid"

    iget-object v5, v3, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v4, "avatar"

    iget-object v5, v3, Lcom/youku/usercenter/passport/remote/UserInfo;->mAvatarUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v4, "username"

    iget-object v5, v3, Lcom/youku/usercenter/passport/remote/UserInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v4, "nickname"

    iget-object v5, v3, Lcom/youku/usercenter/passport/remote/UserInfo;->mNickName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    .end local v0    # "from":Ljava/lang/String;
    .end local v1    # "jsObj":Lorg/json/JSONObject;
    .end local v2    # "result":Lc8/kE;
    .end local v3    # "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v4

    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0

    .line 69
    .restart local v0    # "from":Ljava/lang/String;
    .restart local v1    # "jsObj":Lorg/json/JSONObject;
    :cond_0
    :try_start_2
    iget-object v4, p0, Lc8/ZSh;->loginReceiver:Lc8/YSh;

    if-eqz v4, :cond_1

    .line 70
    iget-object v4, p0, Lc8/ZSh;->loginReceiver:Lc8/YSh;

    invoke-virtual {v4, p2}, Lc8/YSh;->updateCallBackContext(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 72
    :cond_1
    iget-object v4, p0, Lc8/ZSh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v4}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lc8/Gko;->startLoginActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 76
    :catch_1
    move-exception v4

    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 37
    const-string/jumbo v0, "showLoginView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0, p2, p3}, Lc8/ZSh;->showLoginView(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 39
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getLoginFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.youku.action.LOGIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v1, "com.youku.action.LOGOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    return-object v0
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p3, "paramObj"    # Ljava/lang/Object;

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3}, Lc8/RD;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;)V

    .line 89
    new-instance v0, Lc8/YSh;

    invoke-direct {v0, p2}, Lc8/YSh;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v0, p0, Lc8/ZSh;->loginReceiver:Lc8/YSh;

    .line 90
    invoke-interface {p2}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lc8/ZSh;->loginReceiver:Lc8/YSh;

    invoke-virtual {p0}, Lc8/ZSh;->getLoginFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lc8/RD;->onDestroy()V

    .line 83
    iget-object v0, p0, Lc8/ZSh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lc8/ZSh;->loginReceiver:Lc8/YSh;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    return-void
.end method
