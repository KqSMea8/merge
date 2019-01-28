.class public final Lcom/uc/webview/export/internal/setup/s;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/r;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/r;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/s;->a:Lcom/uc/webview/export/internal/setup/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/s;->a:Lcom/uc/webview/export/internal/setup/r;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/r;->a(Lcom/uc/webview/export/internal/setup/r;)Lcom/uc/webview/export/internal/interfaces/IWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->destroy()V

    .line 47
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/s;->a:Lcom/uc/webview/export/internal/setup/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/r;->a(Lcom/uc/webview/export/internal/setup/r;Lcom/uc/webview/export/internal/interfaces/IWebView;)Lcom/uc/webview/export/internal/interfaces/IWebView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
