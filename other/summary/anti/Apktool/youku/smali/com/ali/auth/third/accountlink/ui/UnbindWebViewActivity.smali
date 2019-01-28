.class public Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;
.super Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;
.source "UnbindWebViewActivity.java"


# static fields
.field public static final CALLBACK:Ljava/lang/String; = "https://accountlink.taobao.com/confirmUnbind.htm"

.field private static Tag:Ljava/lang/String;

.field public static loginCallback:Lc8/xgb;


# instance fields
.field public isFromLogin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "login.WebViewActivity"

    sput-object v0, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->Tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->isFromLogin:Z

    return-void
.end method


# virtual methods
.method public cancleOperation()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->setResult(I)V

    .line 72
    invoke-virtual {p0}, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->finish()V

    .line 73
    return-void
.end method

.method protected createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lc8/ngb;

    invoke-direct {v0, p0}, Lc8/ngb;-><init>(Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->isFromLogin:Z

    .line 36
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->onDestroy()V

    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->loginCallback:Lc8/xgb;

    .line 138
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 62
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->cancleOperation()V

    .line 64
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    if-nez p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->authWebView:Lc8/sjb;

    invoke-virtual {v1, v0}, Lc8/sjb;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->onResume()V

    .line 54
    sget-object v0, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->loginCallback:Lc8/xgb;

    sput-object v0, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    .line 55
    iget-boolean v0, p0, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->isFromLogin:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->cancleOperation()V

    .line 58
    :cond_0
    return-void
.end method
