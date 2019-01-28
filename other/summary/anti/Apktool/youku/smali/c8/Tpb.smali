.class public Lc8/Tpb;
.super Lc8/oD;
.source "WXWVWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Upb;->initWebView(Lc8/DD;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Upb;


# direct methods
.method constructor <init>(Lc8/Upb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Upb;

    .prologue
    .line 197
    iput-object p1, p0, Lc8/Tpb;->this$0:Lc8/Upb;

    invoke-direct {p0}, Lc8/oD;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/uc/webview/export/WebView;I)V
    .locals 5
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    invoke-super {p0, p1, p2}, Lc8/oD;->onProgressChanged(Lcom/uc/webview/export/WebView;I)V

    .line 201
    iget-object v3, p0, Lc8/Tpb;->this$0:Lc8/Upb;

    if-ne p2, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lc8/Upb;->access$300(Lc8/Upb;Z)V

    .line 202
    iget-object v0, p0, Lc8/Tpb;->this$0:Lc8/Upb;

    if-eq p2, v4, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lc8/Upb;->access$400(Lc8/Upb;Z)V

    .line 203
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

    .line 204
    return-void

    :cond_0
    move v0, v2

    .line 201
    goto :goto_0

    :cond_1
    move v1, v2

    .line 202
    goto :goto_1
.end method

.method public onReceivedTitle(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Lc8/oD;->onReceivedTitle(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lc8/Tpb;->this$0:Lc8/Upb;

    iget-object v0, v0, Lc8/Upb;->mOnPageListener:Lc8/feg;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lc8/Tpb;->this$0:Lc8/Upb;

    iget-object v0, v0, Lc8/Upb;->mOnPageListener:Lc8/feg;

    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/feg;->onReceivedTitle(Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method
