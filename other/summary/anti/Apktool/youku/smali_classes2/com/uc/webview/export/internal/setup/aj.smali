.class public final Lcom/uc/webview/export/internal/setup/aj;
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
        "Lcom/uc/webview/export/internal/setup/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/ai;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/ai;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/aj;->a:Lcom/uc/webview/export/internal/setup/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 85
    check-cast p1, Lcom/uc/webview/export/internal/setup/r;

    iget-object v0, p1, Lcom/uc/webview/export/internal/setup/r;->a:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    const/16 v0, 0x272b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Lcom/uc/webview/export/internal/setup/s;

    invoke-direct {v3, p1}, Lcom/uc/webview/export/internal/setup/s;-><init>(Lcom/uc/webview/export/internal/setup/r;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
