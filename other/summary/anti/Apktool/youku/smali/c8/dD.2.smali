.class public Lc8/dD;
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

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$res:Lcom/uc/webview/export/JsPromptResult;


# direct methods
.method constructor <init>(Lc8/oD;Lcom/uc/webview/export/JsPromptResult;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lc8/dD;->this$0:Lc8/oD;

    iput-object p2, p0, Lc8/dD;->val$res:Lcom/uc/webview/export/JsPromptResult;

    iput-object p3, p0, Lc8/dD;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lc8/dD;->val$res:Lcom/uc/webview/export/JsPromptResult;

    iget-object v1, p0, Lc8/dD;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uc/webview/export/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 178
    return-void
.end method
