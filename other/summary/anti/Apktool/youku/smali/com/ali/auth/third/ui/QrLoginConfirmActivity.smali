.class public Lcom/ali/auth/third/ui/QrLoginConfirmActivity;
.super Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;
.source "QrLoginConfirmActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lc8/ijb;

    invoke-direct {v0, p0}, Lc8/ijb;-><init>(Lcom/ali/auth/third/ui/QrLoginConfirmActivity;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    iget-object v0, p0, Lcom/ali/auth/third/ui/QrLoginConfirmActivity;->authWebView:Lc8/sjb;

    const-string/jumbo v1, "accountBridge"

    new-instance v2, Lc8/pib;

    invoke-direct {v2}, Lc8/pib;-><init>()V

    invoke-virtual {v0, v1, v2}, Lc8/sjb;->addBridgeObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    return-void
.end method
