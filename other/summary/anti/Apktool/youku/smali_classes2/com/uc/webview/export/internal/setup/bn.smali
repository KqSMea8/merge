.class public final Lcom/uc/webview/export/internal/setup/bn;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/utility/download/UpdateTask;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/bm;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/bm;Lcom/uc/webview/export/utility/download/UpdateTask;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bn;->b:Lcom/uc/webview/export/internal/setup/bm;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/bn;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bn;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->start()Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 194
    return-void
.end method
