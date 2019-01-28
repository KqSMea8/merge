.class public Lc8/yTh;
.super Ljava/lang/Object;
.source "WebViewService.java"

# interfaces
.implements Lc8/dac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ETh;->bindWebView(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ETh;

.field final synthetic val$chromeClient:Landroid/webkit/WebChromeClient;

.field final synthetic val$customWebViewClient:Lc8/DTh;

.field final synthetic val$weakActivity:Ljava/lang/ref/WeakReference;

.field final synthetic val$weakWebView:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lc8/ETh;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Lc8/DTh;Landroid/webkit/WebChromeClient;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ETh;

    .prologue
    .line 113
    iput-object p1, p0, Lc8/yTh;->this$0:Lc8/ETh;

    iput-object p2, p0, Lc8/yTh;->val$weakActivity:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lc8/yTh;->val$weakWebView:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lc8/yTh;->val$customWebViewClient:Lc8/DTh;

    iput-object p5, p0, Lc8/yTh;->val$chromeClient:Landroid/webkit/WebChromeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/Object;)V
    .locals 5
    .param p1, "eventId"    # I
    .param p2, "eventParams"    # Ljava/lang/Object;

    .prologue
    .line 115
    invoke-static {p0}, Lc8/eac;->unregistListener(Lc8/dac;)V

    .line 116
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 117
    iget-object v0, p0, Lc8/yTh;->this$0:Lc8/ETh;

    iget-object v1, p0, Lc8/yTh;->val$weakActivity:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lc8/yTh;->val$weakWebView:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lc8/yTh;->val$customWebViewClient:Lc8/DTh;

    iget-object v4, p0, Lc8/yTh;->val$chromeClient:Landroid/webkit/WebChromeClient;

    invoke-static {v0, v1, v2, v3, v4}, Lc8/ETh;->access$000(Lc8/ETh;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V

    .line 119
    :cond_0
    return-void
.end method
