.class public Lc8/ajb;
.super Lc8/xjb;
.source "LoginWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/ui/LoginWebViewActivity;->createWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/auth/third/ui/LoginWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/ali/auth/third/ui/LoginWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/auth/third/ui/LoginWebViewActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lc8/ajb;->this$0:Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-direct {p0}, Lc8/xjb;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lc8/xjb;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLoadResource url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lc8/xjb;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageFinished url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Lc8/xjb;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 76
    sget-object v0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageStarted url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 55
    sget-object v2, Lcom/ali/auth/third/ui/LoginWebViewActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldOverrideUrlLoading url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 57
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lc8/ajb;->this$0:Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-static {v2}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->access$000(Lcom/ali/auth/third/ui/LoginWebViewActivity;)Lc8/hib;

    move-result-object v2

    invoke-interface {v2, p2}, Lc8/hib;->isLoginUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    new-instance v2, Lc8/Nib;

    iget-object v3, p0, Lc8/ajb;->this$0:Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-static {v3}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->access$100(Lcom/ali/auth/third/ui/LoginWebViewActivity;)Lc8/sjb;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/Nib;-><init>(Landroid/webkit/WebView;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/Nib;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 69
    .end local p1    # "view":Landroid/webkit/WebView;
    :goto_0
    return v1

    .line 60
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_0
    iget-object v2, p0, Lc8/ajb;->this$0:Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-virtual {v2, p2}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->checkWebviewBridge(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    iget-object v1, p0, Lc8/ajb;->this$0:Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-static {v1, v0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->access$200(Lcom/ali/auth/third/ui/LoginWebViewActivity;Landroid/net/Uri;)Z

    move-result v1

    goto :goto_0

    .line 64
    :cond_1
    instance-of v2, p1, Lc8/sjb;

    if-eqz v2, :cond_2

    .line 65
    check-cast p1, Lc8/sjb;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-virtual {p1, p2}, Lc8/sjb;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
