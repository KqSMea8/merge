.class public Lc8/BI;
.super Ljava/lang/Object;
.source "WVWebView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/webview/WVWebView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/webview/WVWebView;


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/webview/WVWebView;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 329
    iput-object p1, p0, Lc8/BI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 333
    const/4 v0, 0x0

    .line 335
    .local v0, "result":Landroid/webkit/WebView$HitTestResult;
    :try_start_0
    iget-object v2, p0, Lc8/BI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v2}, Landroid/taobao/windvane/webview/WVWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 338
    :goto_0
    if-nez v0, :cond_1

    .line 354
    :cond_0
    :goto_1
    return v1

    .line 341
    :cond_1
    iget-object v2, p0, Lc8/BI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-static {v2}, Landroid/taobao/windvane/webview/WVWebView;->access$000(Landroid/taobao/windvane/webview/WVWebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 345
    const-string/jumbo v2, "WVWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Long click on WebView, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_2
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 349
    :cond_3
    iget-object v1, p0, Lc8/BI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/webview/WVWebView;->access$102(Landroid/taobao/windvane/webview/WVWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    iget-object v1, p0, Lc8/BI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    new-instance v2, Lc8/jI;

    iget-object v3, p0, Lc8/BI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    iget-object v3, v3, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    iget-object v4, p0, Lc8/BI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    iget-object v5, p0, Lc8/BI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-static {v5}, Landroid/taobao/windvane/webview/WVWebView;->access$300(Landroid/taobao/windvane/webview/WVWebView;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lc8/BI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-static {v6}, Landroid/taobao/windvane/webview/WVWebView;->access$400(Landroid/taobao/windvane/webview/WVWebView;)Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lc8/jI;-><init>(Landroid/content/Context;Landroid/view/View;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-static {v1, v2}, Landroid/taobao/windvane/webview/WVWebView;->access$202(Landroid/taobao/windvane/webview/WVWebView;Lc8/jI;)Lc8/jI;

    .line 351
    iget-object v1, p0, Lc8/BI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-static {v1}, Landroid/taobao/windvane/webview/WVWebView;->access$200(Landroid/taobao/windvane/webview/WVWebView;)Lc8/jI;

    move-result-object v1

    invoke-virtual {v1}, Lc8/jI;->show()V

    .line 352
    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method
