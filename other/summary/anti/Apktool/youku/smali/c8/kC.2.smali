.class public Lc8/kC;
.super Lc8/rH;
.source "WVPageFinishJSRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/lC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WVDevelopToolWebViewClientFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lc8/rH;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Lc8/lC;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/lC;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    instance-of v0, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lc8/lC;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/taobao/windvane/webview/IWVWebView;->evaluateJavascript(Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method
