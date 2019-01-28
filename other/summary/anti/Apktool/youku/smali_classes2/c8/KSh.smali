.class public Lc8/KSh;
.super Lc8/PSh;
.source "LoginJSBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/JSh;
    }
.end annotation


# instance fields
.field private mLoginReceiver:Landroid/content/BroadcastReceiver;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 30
    invoke-direct {p0}, Lc8/PSh;-><init>()V

    .line 31
    iput-object p1, p0, Lc8/KSh;->webView:Landroid/webkit/WebView;

    .line 32
    new-instance v0, Lc8/JSh;

    iget-object v1, p0, Lc8/KSh;->webView:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lc8/JSh;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lc8/KSh;->mLoginReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebView;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebView;

    .prologue
    .line 26
    invoke-static {p0}, Lc8/KSh;->loginSuccess(Landroid/webkit/WebView;)V

    return-void
.end method

.method public static getLoginFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.youku.action.LOGIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string/jumbo v1, "com.youku.action.LOGOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    return-object v0
.end method

.method private static loginSuccess(Landroid/webkit/WebView;)V
    .locals 2
    .param p0, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lc8/ISh;

    invoke-direct {v1, p0}, Lc8/ISh;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method


# virtual methods
.method public getLoginReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lc8/KSh;->mLoginReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public registerLoginReceiver()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lc8/KSh;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lc8/KSh;->mLoginReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lc8/KSh;->getLoginFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method public showLoginView(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 43
    :try_start_0
    const-class v2, Lc8/sin;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/sin;

    const-string/jumbo v3, "h5\u62c9\u8d77app\u767b\u5f55"

    const-string/jumbo v4, "\u5ba2\u6237\u7aef\u5185\u5d4c\u7684h5\uff0c\u62c9\u8d77app\u6a21\u5757"

    const/4 v5, 0x0

    const-string/jumbo v6, "htmlup.htmlupLogin"

    invoke-interface {v2, v3, v4, v5, v6}, Lc8/sin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :goto_0
    :try_start_1
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const-string/jumbo v2, "0"

    sput-object v2, Lc8/tin;->fromhtml:Ljava/lang/String;

    .line 50
    iget-object v2, p0, Lc8/KSh;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/Gko;->startLoginActivity(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    :goto_1
    invoke-super {p0, p1}, Lc8/PSh;->showLoginView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    .line 52
    :cond_0
    :try_start_2
    iget-object v2, p0, Lc8/KSh;->webView:Landroid/webkit/WebView;

    invoke-static {v2}, Lc8/KSh;->loginSuccess(Landroid/webkit/WebView;)V

    .line 54
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v2

    iget-object v1, v2, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    .line 56
    .local v1, "uid":Ljava/lang/String;
    :goto_3
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 57
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "error"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {v0}, Lc8/HTh;->generateParamsStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 54
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "uid":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public unregisterLoginReceiver()V
    .locals 4

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Lc8/KSh;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/KSh;->mLoginReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "YKWeb.YoukuJSBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UnregisterReceiver Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
