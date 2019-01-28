.class public Lc8/vjb;
.super Lc8/Ajb;
.source "BaseWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->createWebChromeClient()Landroid/webkit/WebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 240
    iput-object p1, p0, Lc8/vjb;->this$0:Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;

    invoke-direct {p0}, Lc8/Ajb;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lc8/vjb;->this$0:Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;

    iget-boolean v0, v0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->canReceiveTitle:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lc8/vjb;->this$0:Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;

    iget-object v0, v0, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    return-void
.end method
