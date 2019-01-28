.class public abstract Lc8/RD;
.super Ljava/lang/Object;
.source "WVApiPlugin.java"


# static fields
.field public static final REQUEST_MULTI_PICK_PHOTO:I = 0xfa3

.field public static final REQUEST_PICK_PHONE:I = 0xfa3

.field public static final REQUEST_PICK_PHOTO:I = 0xfa2

.field public static final REQUEST_TAKE_PHOTO:I = 0xfa1


# instance fields
.field protected isAlive:Z

.field protected mContext:Landroid/content/Context;

.field protected mWebView:Landroid/taobao/windvane/webview/IWVWebView;

.field protected paramObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/RD;->isAlive:Z

    .line 41
    return-void
.end method


# virtual methods
.method public abstract execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/RD;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p3, "paramObj"    # Ljava/lang/Object;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/RD;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lc8/RD;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 55
    iput-object p3, p0, Lc8/RD;->paramObj:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/WVWebView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Landroid/taobao/windvane/webview/WVWebView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/RD;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/RD;->isAlive:Z

    .line 74
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/RD;->isAlive:Z

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/RD;->isAlive:Z

    .line 82
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 88
    return-void
.end method
