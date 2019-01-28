.class public Lcom/uc/webview/export/extension/UCClient;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/extension/UCClient$MoveCursorToTextInputResult;
    }
.end annotation


# static fields
.field public static final FORM_PROMPT_TYPE_COVER:I = 0x1

.field public static final FORM_PROMPT_TYPE_SAVE:I = 0x0

.field public static final WEBVIEW_EVENT_TYPE_EMPTY_SCREEN:I = 0x9

.field public static final WEBVIEW_EVENT_TYPE_LOADING_OTHER_TRIGGER:I = 0xb

.field public static final WEBVIEW_EVENT_TYPE_LOADING_USER_TRIGGER:I = 0xa

.field public static final WEBVIEW_EVENT_TYPE_NETWORK_IP_RESOLVED:I = 0xc

.field public static final WIFI_POLICY_CONTINUE:I = 0x0

.field public static final WIFI_POLICY_INTERRUP:I = 0x1

.field public static final WIFI_POLICY_USE_FOXY_SERVER:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmbedView(Lcom/uc/webview/export/extension/EmbedViewConfig;Lcom/uc/webview/export/extension/IEmbedViewContainer;)Lcom/uc/webview/export/extension/IEmbedView;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitlebarVisibleHeight()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public onBeforeURLRequest(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public onEndEditingTextField(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public onFirstLayoutFinished(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onFirstVisuallyNonEmptyDraw()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onMoveCursorToTextInput(Lcom/uc/webview/export/extension/UCClient$MoveCursorToTextInputResult;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onPrereadAborted(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public onPrereadFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public onPrereadPageOpened(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onPrereadStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public onReceivedDispatchResponse(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    return-void
.end method

.method public onResourceDidFinishLoading(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public onSaveFormDataPrompt(ILandroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    return-void
.end method

.method public onThemeChangedFinished(Lcom/uc/webview/export/WebView;)V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public onWebViewEvent(Lcom/uc/webview/export/WebView;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public onWifiSafePolicy(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/extension/IGenenalSyncResult;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/uc/webview/export/extension/IGenenalSyncResult;->setResult(I)V

    .line 77
    invoke-interface {p2}, Lcom/uc/webview/export/extension/IGenenalSyncResult;->wakeUp()V

    .line 78
    return-void
.end method

.method public onWillInterceptResponse(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public onWillSendRequest(Lcom/uc/webview/export/WebResourceRequest;)Lcom/uc/webview/export/WebResourceRequest;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method
