.class public Landroid/taobao/windvane/service/WVEventContext;
.super Ljava/lang/Object;
.source "WVEventContext.java"


# instance fields
.field public context:Landroid/content/Context;

.field public url:Ljava/lang/String;

.field public webView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 20
    iput-object v0, p0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Landroid/taobao/windvane/service/WVEventContext;->context:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 20
    iput-object v0, p0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Landroid/taobao/windvane/service/WVEventContext;->context:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 28
    iput-object p2, p0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    .line 29
    return-void
.end method
