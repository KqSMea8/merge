.class public final Lcom/uc/webview/export/internal/setup/aq;
.super Landroid/os/HandlerThread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/aq;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/aq;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    new-instance v1, Lcom/uc/webview/export/internal/setup/ar;

    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/aq;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/uc/webview/export/internal/setup/ar;-><init>(Lcom/uc/webview/export/internal/setup/aq;Landroid/os/Looper;)V

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/aq;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 505
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    return-void
.end method
