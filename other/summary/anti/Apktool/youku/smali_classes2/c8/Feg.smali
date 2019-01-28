.class public Lc8/Feg;
.super Landroid/webkit/WebChromeClient;
.source "WXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Geg;->initWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Geg;


# direct methods
.method constructor <init>(Lc8/Geg;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lc8/Feg;->this$0:Lc8/Geg;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 219
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 220
    iget-object v3, p0, Lc8/Feg;->this$0:Lc8/Geg;

    if-ne p2, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lc8/Geg;->access$200(Lc8/Geg;Z)V

    .line 221
    iget-object v0, p0, Lc8/Feg;->this$0:Lc8/Geg;

    if-eq p2, v4, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lc8/Geg;->access$300(Lc8/Geg;Z)V

    .line 222
    const-string/jumbo v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageProgressChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void

    :cond_0
    move v0, v2

    .line 220
    goto :goto_0

    :cond_1
    move v1, v2

    .line 221
    goto :goto_1
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lc8/Feg;->this$0:Lc8/Geg;

    invoke-static {v0}, Lc8/Geg;->access$000(Lc8/Geg;)Lc8/feg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lc8/Feg;->this$0:Lc8/Geg;

    invoke-static {v0}, Lc8/Geg;->access$000(Lc8/Geg;)Lc8/feg;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/feg;->onReceivedTitle(Ljava/lang/String;)V

    .line 231
    :cond_0
    return-void
.end method
