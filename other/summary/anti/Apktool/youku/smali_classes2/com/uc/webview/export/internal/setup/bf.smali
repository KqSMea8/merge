.class public final Lcom/uc/webview/export/internal/setup/bf;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Lcom/uc/webview/export/internal/setup/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/be;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/be;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bf;->a:Lcom/uc/webview/export/internal/setup/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 110
    check-cast p1, Lcom/uc/webview/export/internal/setup/o;

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->k:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/o;->stop()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    :cond_1
    return-void
.end method
