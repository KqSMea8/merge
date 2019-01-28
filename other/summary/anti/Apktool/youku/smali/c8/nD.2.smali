.class public Lc8/nD;
.super Ljava/lang/Object;
.source "WVUCWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oD;->onJsPrompt(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oD;

.field final synthetic val$res:Lcom/uc/webview/export/JsPromptResult;


# direct methods
.method constructor <init>(Lc8/oD;Lcom/uc/webview/export/JsPromptResult;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lc8/nD;->this$0:Lc8/oD;

    iput-object p2, p0, Lc8/nD;->val$res:Lcom/uc/webview/export/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lc8/nD;->val$res:Lcom/uc/webview/export/JsPromptResult;

    invoke-interface {v0}, Lcom/uc/webview/export/JsPromptResult;->cancel()V

    .line 185
    return-void
.end method
