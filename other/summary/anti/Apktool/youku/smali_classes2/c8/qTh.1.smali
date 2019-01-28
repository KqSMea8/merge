.class public final Lc8/qTh;
.super Ljava/lang/Object;
.source "WVWebViewService.java"

# interfaces
.implements Lc8/dac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/wTh;->bindWVWebView(Landroid/app/Activity;Landroid/taobao/windvane/webview/WVWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$customWebViewClient:Lc8/vTh;

.field final synthetic val$weakActivity:Ljava/lang/ref/WeakReference;

.field final synthetic val$weakWebView:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Lc8/vTh;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lc8/qTh;->val$weakActivity:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lc8/qTh;->val$weakWebView:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lc8/qTh;->val$customWebViewClient:Lc8/vTh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/Object;)V
    .locals 4
    .param p1, "eventId"    # I
    .param p2, "eventParams"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-static {p0}, Lc8/eac;->unregistListener(Lc8/dac;)V

    .line 63
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 64
    iget-object v0, p0, Lc8/qTh;->val$weakActivity:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lc8/qTh;->val$weakWebView:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lc8/qTh;->val$customWebViewClient:Lc8/vTh;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lc8/wTh;->access$100(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V

    .line 66
    :cond_0
    return-void
.end method
