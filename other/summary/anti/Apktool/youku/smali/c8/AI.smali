.class public Lc8/AI;
.super Landroid/webkit/WebChromeClient;
.source "WVWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zI;
    }
.end annotation


# static fields
.field private static final MAX_QUOTA:J = 0x1400000L

.field private static final TAG:Ljava/lang/String; = "WVWebChromeClient"


# instance fields
.field public extraWebChromeClient:Landroid/webkit/WebChromeClient;

.field protected mContext:Landroid/content/Context;

.field public mWebView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 27
    iput-object v0, p0, Lc8/AI;->extraWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 30
    iput-object v0, p0, Lc8/AI;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 27
    iput-object v0, p0, Lc8/AI;->extraWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 30
    iput-object v0, p0, Lc8/AI;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 35
    iput-object p1, p0, Lc8/AI;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 12
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    const/4 v9, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 41
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v7

    const/16 v8, 0x7d1

    invoke-virtual {v7, v8}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v7

    iget-boolean v7, v7, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v7, :cond_0

    .line 100
    :goto_0
    return v6

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "hybrid://"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 46
    const-string/jumbo v7, "WVWebChromeClient"

    const-string/jumbo v8, "Call from console.log"

    invoke-static {v7, v8}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v7, p0, Lc8/AI;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v7, :cond_1

    .line 48
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v7

    iget-object v8, p0, Lc8/AI;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-virtual {v7, v8, v1}, Lc8/fE;->callMethod(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    if-eqz v1, :cond_3

    const-string/jumbo v7, "wvNativeCallback"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 54
    const-string/jumbo v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 55
    .local v2, "firstPos":I
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string/jumbo v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 58
    .local v5, "secondPos":I
    invoke-virtual {v1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "id":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v3}, Lc8/cI;->getNativeCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object v0

    .line 62
    .local v0, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 63
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 64
    invoke-static {v3}, Lc8/cI;->clearNativeCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_2
    const-string/jumbo v7, "WVWebChromeClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NativeCallback failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v0    # "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    .end local v2    # "firstPos":I
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "secondPos":I
    :cond_3
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 72
    const-string/jumbo v4, "onConsoleMessage: %s at %s: %s"

    .line 73
    .local v4, "message":Ljava/lang/String;
    sget-object v7, Lc8/zI;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 92
    const-string/jumbo v7, "WVWebChromeClient"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v11

    invoke-static {v7, v4, v8}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .end local v4    # "message":Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v6, p0, Lc8/AI;->extraWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v6, :cond_5

    .line 98
    iget-object v6, p0, Lc8/AI;->extraWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v6, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v6

    goto/16 :goto_0

    .line 75
    .restart local v4    # "message":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v7, "WVWebChromeClient"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v11

    invoke-static {v7, v4, v8}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 79
    :pswitch_1
    const-string/jumbo v7, "WVWebChromeClient"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v11

    invoke-static {v7, v4, v8}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 83
    :pswitch_2
    const-string/jumbo v7, "WVWebChromeClient"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v11

    invoke-static {v7, v4, v8}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 100
    .end local v4    # "message":Ljava/lang/String;
    :cond_5
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v6

    goto/16 :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "quota"    # J
    .param p5, "estimatedDatabaseSize"    # J
    .param p7, "totalQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 114
    const-wide/32 v0, 0x1400000

    cmp-long v0, p5, v0

    if-gez v0, :cond_0

    .line 115
    invoke-interface {p9, p5, p6}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 107
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 108
    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string/jumbo v0, "WVWebChromeClient"

    const-string/jumbo v3, "onJsPrompt: %s; defaultValue: %s; url: %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p3, v4, v2

    aput-object p4, v4, v1

    aput-object p2, v4, v6

    invoke-static {v0, v3, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_0
    instance-of v0, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v0, :cond_1

    .line 128
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v3

    const/16 v4, 0x7d3

    move-object v0, p1

    check-cast v0, Landroid/taobao/windvane/webview/IWVWebView;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v2

    aput-object p4, v5, v1

    aput-object p5, v5, v6

    invoke-virtual {v3, v4, v0, p2, v5}, Lc8/qH;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v0

    iget-boolean v0, v0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 139
    .end local p1    # "view":Landroid/webkit/WebView;
    :goto_0
    return v0

    .line 131
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_1
    if-eqz p4, :cond_2

    const-string/jumbo v0, "wv_hybrid:"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v0

    check-cast p1, Landroid/taobao/windvane/webview/WVWebView;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-virtual {v0, p1, p3}, Lc8/fE;->callMethod(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v0, ""

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    move v0, v1

    .line 134
    goto :goto_0

    .line 136
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_2
    iget-object v0, p0, Lc8/AI;->extraWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lc8/AI;->extraWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 139
    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 146
    return-void
.end method
