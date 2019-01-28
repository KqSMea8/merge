.class public Lc8/yI;
.super Landroid/widget/LinearLayout;
.source "WVViewController.java"


# instance fields
.field protected isInited:Z

.field protected mContext:Landroid/content/Context;

.field protected mWebView:Landroid/taobao/windvane/webview/WVWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/yI;->isInited:Z

    .line 49
    iput-object p1, p0, Lc8/yI;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/yI;->isInited:Z

    .line 44
    iput-object p1, p0, Lc8/yI;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/yI;->isInited:Z

    .line 39
    iput-object p1, p0, Lc8/yI;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private initView(Landroid/taobao/windvane/webview/ParamsParcelable;)V
    .locals 7
    .param p1, "params"    # Landroid/taobao/windvane/webview/ParamsParcelable;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 64
    invoke-virtual {p0, v6}, Lc8/yI;->setOrientation(I)V

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance p1, Landroid/taobao/windvane/webview/ParamsParcelable;

    .end local p1    # "params":Landroid/taobao/windvane/webview/ParamsParcelable;
    invoke-direct {p1}, Landroid/taobao/windvane/webview/ParamsParcelable;-><init>()V

    .line 69
    .restart local p1    # "params":Landroid/taobao/windvane/webview/ParamsParcelable;
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lc8/yI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 70
    .local v2, "webviewParent":Landroid/widget/RelativeLayout;
    new-instance v3, Landroid/taobao/windvane/webview/WVWebView;

    iget-object v4, p0, Lc8/yI;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/taobao/windvane/webview/WVWebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lc8/yI;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    .line 71
    iget-object v3, p0, Lc8/yI;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    move-object v1, v2

    .line 75
    .local v1, "view":Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v0, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .local v0, "aboveParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 77
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {p0, v1}, Lc8/yI;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0, p1}, Lc8/yI;->initWithParams(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    .line 82
    iput-boolean v6, p0, Lc8/yI;->isInited:Z

    .line 83
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-boolean v0, p0, Lc8/yI;->isInited:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lc8/yI;->removeAllViews()V

    .line 166
    iget-object v0, p0, Lc8/yI;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVWebView;->destroy()V

    .line 167
    iput-object v1, p0, Lc8/yI;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    .line 169
    :cond_0
    iput-object v1, p0, Lc8/yI;->mContext:Landroid/content/Context;

    .line 170
    return-void
.end method

.method public getWebview()Landroid/taobao/windvane/webview/WVWebView;
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lc8/yI;->isInited:Z

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/yI;->initView(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lc8/yI;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    return-object v0
.end method

.method public init(Landroid/taobao/windvane/webview/ParamsParcelable;)V
    .locals 1
    .param p1, "params"    # Landroid/taobao/windvane/webview/ParamsParcelable;

    .prologue
    .line 58
    iget-boolean v0, p0, Lc8/yI;->isInited:Z

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0, p1}, Lc8/yI;->initView(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected initWithParams(Landroid/taobao/windvane/webview/ParamsParcelable;)V
    .locals 3
    .param p1, "params"    # Landroid/taobao/windvane/webview/ParamsParcelable;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/ParamsParcelable;->isNavBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v0, Lc8/mI;

    iget-object v1, p0, Lc8/yI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/yI;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-direct {v0, v1, v2}, Lc8/mI;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 89
    .local v0, "mNaviBar":Lc8/mI;
    invoke-virtual {p0, v0}, Lc8/yI;->addView(Landroid/view/View;)V

    .line 90
    iget-object v1, p0, Lc8/yI;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v1}, Landroid/taobao/windvane/webview/WVWebView;->getWvUIModel()Lc8/xI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/xI;->setNaviBar(Lc8/gI;)V

    .line 93
    .end local v0    # "mNaviBar":Lc8/mI;
    :cond_0
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/ParamsParcelable;->isShowLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lc8/yI;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v1}, Landroid/taobao/windvane/webview/WVWebView;->getWvUIModel()Lc8/xI;

    move-result-object v1

    invoke-virtual {v1}, Lc8/xI;->enableShowLoading()V

    .line 97
    :cond_1
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/ParamsParcelable;->isJsbridgeEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc8/fE;->setEnabled(Z)V

    .line 100
    :cond_2
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-boolean v0, p0, Lc8/yI;->isInited:Z

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/yI;->initView(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lc8/yI;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public loadUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    .line 110
    iget-boolean v0, p0, Lc8/yI;->isInited:Z

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/yI;->initView(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    .line 113
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_2

    .line 114
    :cond_1
    iget-object v0, p0, Lc8/yI;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_2
    iget-object v0, p0, Lc8/yI;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/webview/WVWebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public setErrorView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 128
    iget-boolean v0, p0, Lc8/yI;->isInited:Z

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/yI;->initView(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lc8/yI;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVWebView;->getWvUIModel()Lc8/xI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/xI;->setErrorView(Landroid/view/View;)V

    .line 132
    return-void
.end method

.method public setLoadingView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 135
    iget-boolean v0, p0, Lc8/yI;->isInited:Z

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/yI;->initView(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lc8/yI;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVWebView;->getWvUIModel()Lc8/xI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/xI;->setLoadingView(Landroid/view/View;)V

    .line 139
    return-void
.end method

.method public setNaviBar(Lc8/gI;)V
    .locals 1
    .param p1, "view"    # Lc8/gI;

    .prologue
    .line 142
    iget-boolean v0, p0, Lc8/yI;->isInited:Z

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/yI;->initView(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    .line 145
    :cond_0
    invoke-virtual {p0, p1}, Lc8/yI;->addView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lc8/yI;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVWebView;->getWvUIModel()Lc8/xI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/xI;->setNaviBar(Lc8/gI;)V

    .line 147
    return-void
.end method
