.class public final Lcom/uc/webview/export/internal/setup/t;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/ap;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/r;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/r;Lcom/uc/webview/export/internal/setup/ap;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/t;->b:Lcom/uc/webview/export/internal/setup/r;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/t;->a:Lcom/uc/webview/export/internal/setup/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/setup/r;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/t;->b:Lcom/uc/webview/export/internal/setup/r;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/t;->b:Lcom/uc/webview/export/internal/setup/r;

    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/r;->b(Lcom/uc/webview/export/internal/setup/r;)Lcom/uc/webview/export/internal/interfaces/IWebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/r;->a(Lcom/uc/webview/export/internal/setup/r;Lcom/uc/webview/export/internal/interfaces/IWebView;)Lcom/uc/webview/export/internal/interfaces/IWebView;

    .line 69
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/t;->b:Lcom/uc/webview/export/internal/setup/r;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/r;->a(Lcom/uc/webview/export/internal/setup/r;)Lcom/uc/webview/export/internal/interfaces/IWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/t;->b:Lcom/uc/webview/export/internal/setup/r;

    const-string/jumbo v1, "precreate_webview_url"

    .line 71
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/r;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/t;->b:Lcom/uc/webview/export/internal/setup/r;

    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/r;->a(Lcom/uc/webview/export/internal/setup/r;)Lcom/uc/webview/export/internal/interfaces/IWebView;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/t;->a:Lcom/uc/webview/export/internal/setup/ap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/ap;->a(ILjava/lang/Object;)V

    .line 85
    :goto_1
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/t;->b:Lcom/uc/webview/export/internal/setup/r;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/r;->a(Lcom/uc/webview/export/internal/setup/r;)Lcom/uc/webview/export/internal/interfaces/IWebView;

    move-result-object v0

    const-string/jumbo v1, "<html><head></head><body onload=\"console.log(\"WebView init\");\"></body></html>"

    const-string/jumbo v2, "text/html"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/interfaces/IWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/t;->a:Lcom/uc/webview/export/internal/setup/ap;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/ap;->a(ILjava/lang/Object;)V

    goto :goto_1
.end method
