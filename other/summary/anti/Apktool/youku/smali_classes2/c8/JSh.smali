.class public Lc8/JSh;
.super Landroid/content/BroadcastReceiver;
.source "LoginJSBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KSh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginReceiver"
.end annotation


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 119
    iput-object p1, p0, Lc8/JSh;->mWebView:Landroid/webkit/WebView;

    .line 120
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.youku.action.LOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    const-string/jumbo v1, "YKWeb.YoukuJSBridge"

    const-string/jumbo v2, "Login and call WebView callback by JS."

    invoke-static {v1, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lc8/JSh;->mWebView:Landroid/webkit/WebView;

    invoke-static {v1}, Lc8/KSh;->access$000(Landroid/webkit/WebView;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const-string/jumbo v1, "com.youku.action.LOGOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    const-string/jumbo v1, "YKWeb.YoukuJSBridge"

    const-string/jumbo v2, "Logout and reload WebView."

    invoke-static {v1, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lc8/JSh;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method
