.class public Lc8/hD;
.super Ljava/lang/Object;
.source "WVUCWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oD;->onJsAlert(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oD;

.field final synthetic val$res:Lcom/uc/webview/export/JsResult;


# direct methods
.method constructor <init>(Lc8/oD;Lcom/uc/webview/export/JsResult;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lc8/hD;->this$0:Lc8/oD;

    iput-object p2, p0, Lc8/hD;->val$res:Lcom/uc/webview/export/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lc8/hD;->val$res:Lcom/uc/webview/export/JsResult;

    invoke-interface {v0}, Lcom/uc/webview/export/JsResult;->confirm()V

    .line 110
    return-void
.end method
