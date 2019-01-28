.class public Lc8/oD;
.super Lcom/uc/webview/export/WebChromeClient;
.source "WVUCWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/eD;
    }
.end annotation


# static fields
.field public static final FilePathCallbackID:I = 0xf

.field private static final KEY_CANCEL:Ljava/lang/String;

.field private static final KEY_CONFIRM:Ljava/lang/String;

.field private static final KEY_FROM:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WVUCWebChromeClient"


# instance fields
.field protected mContext:Landroid/content/Context;

.field public mFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public mWebView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lc8/OH;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u6765\u81ea\u4e8e\uff1a"

    :goto_0
    sput-object v0, Lc8/oD;->KEY_FROM:Ljava/lang/String;

    .line 44
    invoke-static {}, Lc8/OH;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u786e\u5b9a"

    :goto_1
    sput-object v0, Lc8/oD;->KEY_CONFIRM:Ljava/lang/String;

    .line 45
    invoke-static {}, Lc8/OH;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u53d6\u6d88"

    :goto_2
    sput-object v0, Lc8/oD;->KEY_CANCEL:Ljava/lang/String;

    return-void

    .line 43
    :cond_0
    const-string/jumbo v0, "From: "

    goto :goto_0

    .line 44
    :cond_1
    const-string/jumbo v0, "OK"

    goto :goto_1

    .line 45
    :cond_2
    const-string/jumbo v0, "Cancel"

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Lcom/uc/webview/export/WebChromeClient;-><init>()V

    .line 39
    iput-object v0, p0, Lc8/oD;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 41
    iput-object v0, p0, Lc8/oD;->mFilePathCallback:Landroid/webkit/ValueCallback;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Lcom/uc/webview/export/WebChromeClient;-><init>()V

    .line 39
    iput-object v0, p0, Lc8/oD;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 41
    iput-object v0, p0, Lc8/oD;->mFilePathCallback:Landroid/webkit/ValueCallback;

    .line 88
    iput-object p1, p0, Lc8/oD;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method static synthetic access$001(Lc8/oD;Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p0, "x0"    # Lc8/oD;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;)V

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

    .line 199
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v7

    const/16 v8, 0x7d1

    invoke-virtual {v7, v8}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v7

    iget-boolean v7, v7, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v7, :cond_0

    .line 255
    :goto_0
    return v6

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "data":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 203
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "hybrid://"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 204
    const-string/jumbo v7, "WVUCWebChromeClient"

    const-string/jumbo v8, "Call from console.log"

    invoke-static {v7, v8}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v7, p0, Lc8/oD;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v7, :cond_1

    .line 206
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v7

    iget-object v8, p0, Lc8/oD;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-virtual {v7, v8, v1}, Lc8/fE;->callMethod(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    const-string/jumbo v7, "wvNativeCallback"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 211
    const-string/jumbo v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 212
    .local v2, "firstPos":I
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    const-string/jumbo v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 215
    .local v5, "secondPos":I
    invoke-virtual {v1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "id":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-static {v3}, Lc8/cI;->getNativeCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object v0

    .line 219
    .local v0, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 220
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 221
    invoke-static {v3}, Lc8/cI;->clearNativeCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    const-string/jumbo v7, "WVUCWebChromeClient"

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

    .line 229
    .end local v0    # "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    .end local v2    # "firstPos":I
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "secondPos":I
    :cond_3
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 230
    const-string/jumbo v4, "onConsoleMessage: %s at %s: %s"

    .line 231
    .local v4, "message":Ljava/lang/String;
    sget-object v7, Lc8/eD;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 250
    const-string/jumbo v7, "WVUCWebChromeClient"

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

    .line 255
    .end local v4    # "message":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v6

    goto/16 :goto_0

    .line 233
    .restart local v4    # "message":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v7, "WVUCWebChromeClient"

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

    .line 237
    :pswitch_1
    const-string/jumbo v7, "WVUCWebChromeClient"

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

    .line 241
    :pswitch_2
    const-string/jumbo v7, "WVUCWebChromeClient"

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

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/uc/webview/export/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/uc/webview/export/GeolocationPermissions$Callback;

    .prologue
    .line 94
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/uc/webview/export/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 95
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/uc/webview/export/GeolocationPermissions$Callback;)V

    .line 96
    return-void
.end method

.method public onJsAlert(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
    .locals 8
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/uc/webview/export/JsResult;

    .prologue
    .line 101
    move-object v4, p4

    .line 102
    .local v4, "res":Lcom/uc/webview/export/JsResult;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 104
    .local v3, "netUri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "host":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lc8/oD;->KEY_FROM:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget-object v6, Lc8/oD;->KEY_CONFIRM:Ljava/lang/String;

    new-instance v7, Lc8/hD;

    invoke-direct {v7, p0, v4}, Lc8/hD;-><init>(Lc8/oD;Lcom/uc/webview/export/JsResult;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    new-instance v5, Lc8/iD;

    invoke-direct {v5, p0, v4}, Lc8/iD;-><init>(Lc8/oD;Lcom/uc/webview/export/JsResult;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 120
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 121
    const/4 v5, 0x1

    return v5
.end method

.method public onJsConfirm(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
    .locals 8
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/uc/webview/export/JsResult;

    .prologue
    .line 127
    move-object v4, p4

    .line 128
    .local v4, "res":Lcom/uc/webview/export/JsResult;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 130
    .local v3, "netUri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "host":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lc8/oD;->KEY_FROM:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget-object v6, Lc8/oD;->KEY_CONFIRM:Ljava/lang/String;

    new-instance v7, Lc8/kD;

    invoke-direct {v7, p0, v4}, Lc8/kD;-><init>(Lc8/oD;Lcom/uc/webview/export/JsResult;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    sget-object v6, Lc8/oD;->KEY_CANCEL:Ljava/lang/String;

    new-instance v7, Lc8/jD;

    invoke-direct {v7, p0, v4}, Lc8/jD;-><init>(Lc8/oD;Lcom/uc/webview/export/JsResult;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    new-instance v5, Lc8/lD;

    invoke-direct {v5, p0, v4}, Lc8/lD;-><init>(Lc8/oD;Lcom/uc/webview/export/JsResult;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 151
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 152
    const/4 v5, 0x1

    return v5
.end method

.method public onJsPrompt(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsPromptResult;)Z
    .locals 8
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/uc/webview/export/JsPromptResult;

    .prologue
    const/4 v7, 0x1

    .line 158
    if-eqz p4, :cond_0

    const-string/jumbo v4, "wv_hybrid:"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v4

    check-cast p1, Landroid/taobao/windvane/webview/IWVWebView;

    .end local p1    # "webView":Lcom/uc/webview/export/WebView;
    invoke-virtual {v4, p1, p3}, Lc8/fE;->callMethod(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v4, ""

    invoke-interface {p5, v4}, Lcom/uc/webview/export/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 194
    :goto_0
    return v7

    .line 164
    .restart local p1    # "webView":Lcom/uc/webview/export/WebView;
    :cond_0
    new-instance v0, Landroid/widget/EditText;

    iget-object v4, p0, Lc8/oD;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 167
    .local v2, "netUri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "host":Ljava/lang/String;
    move-object v3, p5

    .line 169
    .local v3, "res":Lcom/uc/webview/export/JsPromptResult;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lc8/oD;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lc8/oD;->KEY_FROM:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget-object v5, Lc8/oD;->KEY_CONFIRM:Ljava/lang/String;

    new-instance v6, Lc8/dD;

    invoke-direct {v6, p0, v3, v0}, Lc8/dD;-><init>(Lc8/oD;Lcom/uc/webview/export/JsPromptResult;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget-object v5, Lc8/oD;->KEY_CANCEL:Ljava/lang/String;

    new-instance v6, Lc8/nD;

    invoke-direct {v6, p0, v3}, Lc8/nD;-><init>(Lc8/oD;Lcom/uc/webview/export/JsPromptResult;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lc8/mD;

    invoke-direct {v5, p0, v3}, Lc8/mD;-><init>(Lc8/oD;Lcom/uc/webview/export/JsPromptResult;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onReceivedTitle(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {p2}, Lc8/dI;->isCommonUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebChromeClient;->onReceivedTitle(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string/jumbo v0, "WVUCWebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ignore default title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onShowFileChooser(Lcom/uc/webview/export/WebView;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/WebChromeClient$FileChooserParams;)Z
    .locals 6
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;
    .param p3, "fileChooserParams"    # Lcom/uc/webview/export/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/uc/webview/export/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    const/4 v3, 0x0

    .line 70
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v3

    .line 82
    :goto_0
    return v2

    .line 74
    :cond_1
    iput-object p2, p0, Lc8/oD;->mFilePathCallback:Landroid/webkit/ValueCallback;

    .line 76
    :try_start_0
    invoke-virtual {p3}, Lcom/uc/webview/export/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v1

    .line 77
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lc8/oD;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string/jumbo v4, "choose"

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v2, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    const/4 v2, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v2, v3

    .line 80
    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "valueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    move-object v0, p1

    .line 51
    .local v0, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    :try_start_0
    iget-object v1, p0, Lc8/oD;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "android.permission.CAMERA"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/jH;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Lc8/iH;

    move-result-object v1

    new-instance v2, Lc8/gD;

    invoke-direct {v2, p0, v0}, Lc8/gD;-><init>(Lc8/oD;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v1, v2}, Lc8/iH;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v1

    new-instance v2, Lc8/fD;

    invoke-direct {v2, p0}, Lc8/fD;-><init>(Lc8/oD;)V

    invoke-virtual {v1, v2}, Lc8/iH;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v1

    invoke-virtual {v1}, Lc8/iH;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
