.class public Lc8/zjb;
.super Ljava/lang/Object;
.source "BridgeWebChromeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ajb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JavaScriptTask"
.end annotation


# instance fields
.field public script:Ljava/lang/String;

.field public webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "script"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lc8/zjb;->webView:Landroid/webkit/WebView;

    .line 150
    iput-object p2, p0, Lc8/zjb;->script:Ljava/lang/String;

    .line 151
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 157
    :try_start_0
    invoke-static {}, Lc8/Ajb;->access$000()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    :try_start_1
    iget-object v3, p0, Lc8/zjb;->webView:Landroid/webkit/WebView;

    iget-object v4, p0, Lc8/zjb;->script:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "ui"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fail to evaluate the script "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x1

    .line 168
    .local v1, "executeUsingLoadUrl":Z
    if-eqz v1, :cond_0

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/zjb;->script:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "loadUrlScript":Ljava/lang/String;
    iget-object v3, p0, Lc8/zjb;->webView:Landroid/webkit/WebView;

    instance-of v3, v3, Lc8/sjb;

    if-eqz v3, :cond_2

    .line 173
    iget-object v3, p0, Lc8/zjb;->webView:Landroid/webkit/WebView;

    check-cast v3, Lc8/sjb;

    invoke-virtual {v3, v2}, Lc8/sjb;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "executeUsingLoadUrl":Z
    .end local v2    # "loadUrlScript":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 175
    .restart local v1    # "executeUsingLoadUrl":Z
    .restart local v2    # "loadUrlScript":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lc8/zjb;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method
