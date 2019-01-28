.class public final Lcom/uc/webview/export/internal/uc/wa/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/uc/wa/a;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/uc/wa/a;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/uc/webview/export/internal/uc/wa/c;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/c;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/uc/webview/export/internal/uc/wa/d;

    invoke-direct {v1, v0}, Lcom/uc/webview/export/internal/uc/wa/d;-><init>(Lcom/uc/webview/export/internal/uc/wa/a;)V

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/uc/wa/d;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 466
    const-string/jumbo v1, "SDKWaStat"

    const-string/jumbo v2, "update"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
