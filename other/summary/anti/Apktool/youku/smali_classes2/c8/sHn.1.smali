.class public Lc8/sHn;
.super Landroid/support/v4/app/Fragment;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/rHn;
    }
.end annotation


# static fields
.field public static final KEY_EXTRA_URL_DATA:Ljava/lang/String; = "KEY_EXTRA_URL_DATA"

.field public static final KEY_EXTRA_VIEW_BG:Ljava/lang/String; = "KEY_EXTRA_VIEW_BG"

.field public static final KEY_EXTRA_VIEW_INVISIBLE:Ljava/lang/String; = "KEY_EXTRA_VIEW_INVISIBLE"

.field private static final UPLOAD_FILE_REQUEST_CODE:I = 0x2017


# instance fields
.field private isLoaded:Z

.field private mActivity:Landroid/app/Activity;

.field private mCheckAPPJSBridge:Lc8/CSh;

.field private mLoadUrlJSBridge:Lc8/HSh;

.field private mLoginJSBridge:Lc8/KSh;

.field private mOnWebViewCreatedListener:Lc8/rHn;

.field private mPayJSBridge:Lc8/OSh;

.field private mUploadController:Lc8/lTh;

.field private mUserBehaviourJSBridge:Lc8/TSh;

.field private mWrapper:Lc8/TTh;

.field private webViewContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 182
    return-void
.end method


# virtual methods
.method public loadJS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v0}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lc8/HTh;->loadJS(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 187
    if-nez p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "WebViewFragment loadUrl should not run JS"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_2
    iget-object v0, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v0, p1}, Lc8/TTh;->loadUrl(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 207
    iget-object v0, p0, Lc8/sHn;->mUploadController:Lc8/lTh;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lc8/sHn;->mUploadController:Lc8/lTh;

    invoke-virtual {v0, p1, p2, p3}, Lc8/lTh;->onResult(IILandroid/content/Intent;)V

    .line 210
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    iput-object p1, p0, Lc8/sHn;->mActivity:Landroid/app/Activity;

    .line 56
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance v2, Lc8/TTh;

    iget-object v3, p0, Lc8/sHn;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lc8/TTh;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    .line 62
    iput-boolean v5, p0, Lc8/sHn;->isLoaded:Z

    .line 63
    new-instance v2, Lc8/KSh;

    iget-object v3, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v3}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/KSh;-><init>(Landroid/webkit/WebView;)V

    iput-object v2, p0, Lc8/sHn;->mLoginJSBridge:Lc8/KSh;

    .line 64
    new-instance v2, Lc8/TSh;

    iget-object v3, p0, Lc8/sHn;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-direct {v2, v3, v4}, Lc8/TSh;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v2, p0, Lc8/sHn;->mUserBehaviourJSBridge:Lc8/TSh;

    .line 65
    new-instance v2, Lc8/HSh;

    iget-object v3, p0, Lc8/sHn;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v4}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lc8/HSh;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    iput-object v2, p0, Lc8/sHn;->mLoadUrlJSBridge:Lc8/HSh;

    .line 66
    new-instance v2, Lc8/OSh;

    iget-object v3, p0, Lc8/sHn;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v4}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lc8/OSh;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    iput-object v2, p0, Lc8/sHn;->mPayJSBridge:Lc8/OSh;

    .line 68
    iget-object v2, p0, Lc8/sHn;->mLoginJSBridge:Lc8/KSh;

    invoke-virtual {v2}, Lc8/KSh;->registerLoginReceiver()V

    .line 69
    new-instance v2, Lc8/CSh;

    iget-object v3, p0, Lc8/sHn;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lc8/CSh;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lc8/sHn;->mCheckAPPJSBridge:Lc8/CSh;

    .line 71
    iget-object v2, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    const/4 v3, 0x5

    new-array v3, v3, [Lc8/iTh;

    iget-object v4, p0, Lc8/sHn;->mLoginJSBridge:Lc8/KSh;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lc8/sHn;->mUserBehaviourJSBridge:Lc8/TSh;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lc8/sHn;->mLoadUrlJSBridge:Lc8/HSh;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lc8/sHn;->mPayJSBridge:Lc8/OSh;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lc8/sHn;->mCheckAPPJSBridge:Lc8/CSh;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lc8/TTh;->addJavascriptInterfaces([Lc8/iTh;)V

    .line 74
    iget-object v2, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v2}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-static {v2}, Lc8/HTh;->resetWebView(Landroid/webkit/WebView;)V

    .line 76
    iget-object v2, p0, Lc8/sHn;->mOnWebViewCreatedListener:Lc8/rHn;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lc8/sHn;->mOnWebViewCreatedListener:Lc8/rHn;

    iget-object v3, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-interface {v2, v3, p1}, Lc8/rHn;->setOnWebViewCreated(Lc8/TTh;Landroid/os/Bundle;)V

    .line 80
    :cond_0
    iget-object v2, p0, Lc8/sHn;->mUploadController:Lc8/lTh;

    if-nez v2, :cond_2

    .line 81
    new-instance v2, Lc8/lTh;

    const/16 v3, 0x2017

    const-string/jumbo v4, "\u4e0a\u4f20\u6587\u4ef6"

    invoke-direct {v2, p0, v3, v4}, Lc8/lTh;-><init>(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iput-object v2, p0, Lc8/sHn;->mUploadController:Lc8/lTh;

    .line 87
    :goto_0
    iget-object v2, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v2}, Lc8/TTh;->getWebChromeClient()Lc8/RTh;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v2}, Lc8/TTh;->getWebChromeClient()Lc8/RTh;

    move-result-object v2

    iget-object v3, p0, Lc8/sHn;->mUploadController:Lc8/lTh;

    invoke-virtual {v2, v3}, Lc8/RTh;->setUploadController(Lc8/lTh;)V

    .line 90
    :cond_1
    iget-object v2, p0, Lc8/sHn;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 91
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/youku/phone/R$layout;->webview_fragment_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, "view":Landroid/view/View;
    check-cast v1, Landroid/widget/LinearLayout;

    .end local v1    # "view":Landroid/view/View;
    iput-object v1, p0, Lc8/sHn;->webViewContainer:Landroid/widget/LinearLayout;

    .line 93
    iget-object v2, p0, Lc8/sHn;->webViewContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    return-void

    .line 84
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    iget-object v2, p0, Lc8/sHn;->mUploadController:Lc8/lTh;

    invoke-virtual {v2}, Lc8/lTh;->reset()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 162
    invoke-virtual {p0}, Lc8/sHn;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 163
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    iget-object v5, p0, Lc8/sHn;->webViewContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 164
    iget-object v5, p0, Lc8/sHn;->webViewContainer:Landroid/widget/LinearLayout;

    sget v6, Lcom/youku/phone/R$id;->custom_toolbar:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/aHn;

    .line 165
    .local v2, "customToolbar":Lc8/aHn;
    const-string/jumbo v5, "title"

    const-string/jumbo v6, "\u7f51\u9875"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lc8/aHn;->setLogoText(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2}, Lc8/aHn;->goneMenu()V

    .line 167
    const-string/jumbo v5, "Key_extra_has_actionbar"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 168
    .local v3, "hasActionbar":Z
    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v4}, Lc8/aHn;->setVisibility(I)V

    .line 169
    const-string/jumbo v4, "KEY_EXTRA_VIEW_BG"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 170
    .local v1, "bgColor":I
    iget-object v4, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v4}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 172
    .end local v1    # "bgColor":I
    .end local v2    # "customToolbar":Lc8/aHn;
    .end local v3    # "hasActionbar":Z
    :cond_0
    iget-object v4, p0, Lc8/sHn;->webViewContainer:Landroid/widget/LinearLayout;

    return-object v4

    .line 168
    .restart local v2    # "customToolbar":Lc8/aHn;
    .restart local v3    # "hasActionbar":Z
    :cond_1
    const/16 v4, 0x8

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 144
    iget-object v0, p0, Lc8/sHn;->mLoginJSBridge:Lc8/KSh;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lc8/sHn;->mLoginJSBridge:Lc8/KSh;

    invoke-virtual {v0}, Lc8/KSh;->unregisterLoginReceiver()V

    .line 147
    :cond_0
    iget-object v0, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v0}, Lc8/TTh;->getWebChromeClient()Lc8/RTh;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v0}, Lc8/TTh;->getWebChromeClient()Lc8/RTh;

    move-result-object v0

    invoke-virtual {v0}, Lc8/RTh;->resetUploadController()V

    .line 150
    :cond_1
    iget-object v0, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-static {v0}, Lc8/HTh;->destroyWebView(Lc8/TTh;)V

    .line 151
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/sHn;->mActivity:Landroid/app/Activity;

    .line 157
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 133
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 103
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 104
    iget-boolean v3, p0, Lc8/sHn;->isLoaded:Z

    if-nez v3, :cond_4

    .line 105
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/sHn;->isLoaded:Z

    .line 106
    invoke-virtual {p0}, Lc8/sHn;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 108
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "url":Ljava/lang/String;
    const-string/jumbo v3, "KEY_EXTRA_URL_DATA"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "data":Ljava/lang/String;
    iget-object v3, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v3}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    const-string/jumbo v3, "KEY_EXTRA_VIEW_INVISIBLE"

    .line 111
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    .line 110
    :goto_0
    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 112
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 113
    const-string/jumbo v3, "youku"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "load url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v3, "<!DOCTYPE>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    iget-object v3, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v3}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    const-string/jumbo v4, "text/html; charset=UTF-8"

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 111
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 118
    :cond_2
    iget-object v3, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v3, v2}, Lc8/TTh;->loadUrl(Ljava/lang/String;)I

    goto :goto_1

    .line 120
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    const-string/jumbo v3, "youku"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "load data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v3}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    const-string/jumbo v4, "text/html"

    const-string/jumbo v5, "utf-8"

    invoke-virtual {v3, v1, v4, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 126
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v3}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-static {v3}, Lc8/HTh;->resumeWebView(Landroid/webkit/WebView;)V

    goto :goto_1
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 99
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 138
    iget-object v0, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v0}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lc8/HTh;->pauseWebView(Landroid/webkit/WebView;)V

    .line 139
    return-void
.end method

.method public sendActivateEvent()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v0}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v0}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/webview/IWVWebView;

    const-string/jumbo v1, "WV.Event.APP.PageActivate"

    const-string/jumbo v2, "{}"

    invoke-static {v0, v1, v2}, Lc8/sH;->postNotificationToJS(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    return-void
.end method

.method public sendDeactivateEvent()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v0}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    invoke-virtual {v0}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/webview/IWVWebView;

    const-string/jumbo v1, "WV.Event.APP.PageDeactivate"

    const-string/jumbo v2, "{}"

    invoke-static {v0, v1, v2}, Lc8/sH;->postNotificationToJS(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    return-void
.end method

.method public setOnWebViewCreatedListener(Lc8/rHn;)V
    .locals 0
    .param p1, "listener"    # Lc8/rHn;

    .prologue
    .line 179
    iput-object p1, p0, Lc8/sHn;->mOnWebViewCreatedListener:Lc8/rHn;

    .line 180
    return-void
.end method

.method public setShowProgress(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 213
    iget-object v0, p0, Lc8/sHn;->mWrapper:Lc8/TTh;

    iput-boolean p1, v0, Lc8/TTh;->showProgress:Z

    .line 214
    return-void
.end method
