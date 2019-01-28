.class public final Lcom/uc/webview/export/internal/setup/n;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/ap;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/m;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/m;Lcom/uc/webview/export/internal/setup/ap;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/n;->b:Lcom/uc/webview/export/internal/setup/m;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/n;->a:Lcom/uc/webview/export/internal/setup/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/n;->b:Lcom/uc/webview/export/internal/setup/m;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/m;->a()V

    .line 213
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/n;->a:Lcom/uc/webview/export/internal/setup/ap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/ap;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/n;->a:Lcom/uc/webview/export/internal/setup/ap;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/ap;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method
