.class public Lcom/uc/webview/export/extension/UCExtension;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/extension/UCExtension$OnSoftKeyboardListener;,
        Lcom/uc/webview/export/extension/UCExtension$TextSelectionClient;,
        Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;
    }
.end annotation


# static fields
.field public static final CORE_STATUS_IS_SUPPORT_HEVC:I = 0x0

.field public static final LAYOUT_STYLE_ADAPT_SCREEN:I = 0x2

.field public static final LAYOUT_STYLE_MOBILE_OPTIMUM:I = 0x4

.field public static final LAYOUT_STYLE_ZOOM_OPTIMUM:I = 0x1

.field public static final MOVE_CURSOR_KEY_NEXT_ENABLE:Ljava/lang/String; = "next_enable"

.field public static final MOVE_CURSOR_KEY_PREVIOUS_ENABLE:Ljava/lang/String; = "previous_enable"

.field public static final MOVE_CURSOR_KEY_SUCCEED:Ljava/lang/String; = "succeed"

.field public static final MOVE_CURSOR_STEP_CURRENT:I = 0x0

.field public static final MOVE_CURSOR_STEP_NEXT:I = 0x1

.field public static final MOVE_CURSOR_STEP_PREV:I = -0x1

.field public static final TYPE_PAGE_STORAGE_ALL:I = 0x2

.field public static final TYPE_PAGE_STORAGE_MHTML:I = 0x3

.field public static final TYPE_PAGE_STORAGE_ONLY_HTML:I = 0x0

.field public static final TYPE_PAGE_STORAGE_TEXT:I = 0x1


# instance fields
.field private a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/interfaces/IWebView;)V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-interface {p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getUCExtension()Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    .line 169
    return-void
.end method


# virtual methods
.method public getActiveLayoutStyle()I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getActiveLayoutStyle()I

    move-result v0

    return v0
.end method

.method public getBackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getBackUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoreStatus(ILandroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getCoreStatus(ILandroid/webkit/ValueCallback;)V

    .line 435
    return-void
.end method

.method public getFocusedNodeAnchorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getFocusedNodeAnchorText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusedNodeImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getFocusedNodeImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusedNodeLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getFocusedNodeLinkUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForwardUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getForwardUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpsRemoteCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getHttpsRemoteCertificate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getPageEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getPageSize()I

    move-result v0

    return v0
.end method

.method public getUCSettings()Lcom/uc/webview/export/extension/UCSettings;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    move-result-object v0

    return-object v0
.end method

.method public ignoreTouchEvent()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->ignoreTouchEvent()Z

    move-result v0

    return v0
.end method

.method public injectJavascriptNativeCallback(JJ)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 452
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    .line 453
    iget-object v2, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    const/16 v3, 0x17

    invoke-interface {v2, v3, v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 454
    if-nez v0, :cond_0

    move v0, v1

    .line 457
    :goto_0
    return v0

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isLoadFromCachedPage()Z
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 383
    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x0

    .line 386
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public moveCursorToTextInput(I)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->moveCursorToTextInput(I)V

    .line 266
    return-void
.end method

.method public notifyVisibleRectChanged()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->notifyVisibleRectChanged()V

    .line 414
    return-void
.end method

.method public savePage(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->savePage(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ValueCallback;)V

    .line 427
    return-void
.end method

.method public setBackForwardListListener(Lcom/uc/webview/export/extension/IBackForwardListListener;)V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->setBackForwardListListener(Lcom/uc/webview/export/extension/IBackForwardListListener;)V

    .line 255
    return-void
.end method

.method public setClient(Lcom/uc/webview/export/extension/UCClient;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->setClient(Lcom/uc/webview/export/extension/UCClient;)V

    .line 178
    return-void
.end method

.method public setEmbeddedTitleBar(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 405
    return-void
.end method

.method public setInjectJSProvider(Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;I)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->setInjectJSProvider(Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;I)V

    .line 323
    return-void
.end method

.method public setPrivateBrowsing(Z)V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->setPrivateBrowsing(Z)V

    .line 444
    return-void
.end method

.method public setSoftKeyboardListener(Lcom/uc/webview/export/extension/UCExtension$OnSoftKeyboardListener;)V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->setSoftKeyboardListener(Lcom/uc/webview/export/extension/UCExtension$OnSoftKeyboardListener;)V

    .line 366
    return-void
.end method

.method public setTextSelectionClient(Lcom/uc/webview/export/extension/UCExtension$TextSelectionClient;)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->setTextSelectionClient(Lcom/uc/webview/export/extension/UCExtension$TextSelectionClient;)V

    .line 376
    return-void
.end method
