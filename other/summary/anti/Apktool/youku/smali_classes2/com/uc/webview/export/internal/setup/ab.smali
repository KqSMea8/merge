.class public final Lcom/uc/webview/export/internal/setup/ab;
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
.field final a:Landroid/webkit/ValueCallback;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/v;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/v;)V
    .locals 5

    .prologue
    .line 403
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ab;->b:Lcom/uc/webview/export/internal/setup/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ab;->b:Lcom/uc/webview/export/internal/setup/v;

    const/16 v1, 0x2717

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "switch"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/v;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ab;->a:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ab;->a:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ab;->a:Landroid/webkit/ValueCallback;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ab;->b:Lcom/uc/webview/export/internal/setup/v;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
