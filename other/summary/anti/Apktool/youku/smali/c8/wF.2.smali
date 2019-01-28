.class public abstract Lc8/wF;
.super Ljava/lang/Object;
.source "WVUploadService.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mWebView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doUpload(Lc8/GE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;

    .prologue
    .line 26
    iput-object p1, p0, Lc8/wF;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lc8/wF;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 28
    return-void
.end method
