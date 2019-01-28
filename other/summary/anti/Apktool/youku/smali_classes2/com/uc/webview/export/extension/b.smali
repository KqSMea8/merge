.class public final Lcom/uc/webview/export/extension/b;
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
.field final synthetic a:Lcom/uc/webview/export/extension/a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/extension/a;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lcom/uc/webview/export/extension/b;->a:Lcom/uc/webview/export/extension/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 834
    check-cast p1, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v0, "updateProgress"

    iget-object v1, p0, Lcom/uc/webview/export/extension/b;->a:Lcom/uc/webview/export/extension/a;

    iget-object v1, v1, Lcom/uc/webview/export/extension/a;->b:Ljava/util/Map;

    invoke-static {v0, p1, v1}, Lcom/uc/webview/export/extension/UCCore;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
