.class public Lc8/vD;
.super Ljava/lang/Object;
.source "WVUCWebView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/DD;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/DD;


# direct methods
.method constructor <init>(Lc8/DD;)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Lc8/vD;->this$0:Lc8/DD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 772
    :try_start_0
    iget-object v3, p0, Lc8/vD;->this$0:Lc8/DD;

    invoke-virtual {v3}, Lc8/DD;->getHitTestResult()Lcom/uc/webview/export/WebView$HitTestResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 777
    .local v1, "result":Lcom/uc/webview/export/WebView$HitTestResult;
    if-nez v1, :cond_1

    .line 796
    .end local v1    # "result":Lcom/uc/webview/export/WebView$HitTestResult;
    :cond_0
    :goto_0
    return v2

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WVUCWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getHitTestResult error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 780
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "result":Lcom/uc/webview/export/WebView$HitTestResult;
    :cond_1
    iget-object v3, p0, Lc8/vD;->this$0:Lc8/DD;

    invoke-static {v3}, Lc8/DD;->access$500(Lc8/DD;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 783
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 784
    const-string/jumbo v3, "WVUCWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Long click on WebView, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :cond_2
    invoke-virtual {v1}, Lcom/uc/webview/export/WebView$HitTestResult;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView$HitTestResult;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 789
    :cond_3
    iget-object v2, p0, Lc8/vD;->this$0:Lc8/DD;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/DD;->access$102(Lc8/DD;Ljava/lang/String;)Ljava/lang/String;

    .line 790
    iget-object v2, p0, Lc8/vD;->this$0:Lc8/DD;

    new-instance v3, Lc8/jI;

    iget-object v4, p0, Lc8/vD;->this$0:Lc8/DD;

    iget-object v4, v4, Lc8/DD;->context:Landroid/content/Context;

    iget-object v5, p0, Lc8/vD;->this$0:Lc8/DD;

    iget-object v6, p0, Lc8/vD;->this$0:Lc8/DD;

    invoke-static {v6}, Lc8/DD;->access$000(Lc8/DD;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lc8/vD;->this$0:Lc8/DD;

    invoke-static {v7}, Lc8/DD;->access$600(Lc8/DD;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lc8/jI;-><init>(Landroid/content/Context;Landroid/view/View;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-static {v2, v3}, Lc8/DD;->access$202(Lc8/DD;Lc8/jI;)Lc8/jI;

    .line 793
    iget-object v2, p0, Lc8/vD;->this$0:Lc8/DD;

    invoke-static {v2}, Lc8/DD;->access$200(Lc8/DD;)Lc8/jI;

    move-result-object v2

    invoke-virtual {v2}, Lc8/jI;->show()V

    .line 794
    const/4 v2, 0x1

    goto/16 :goto_0
.end method
