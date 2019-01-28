.class public Lc8/MTh;
.super Ljava/lang/Object;
.source "WebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/interaction/views/WebViewWrapper$2;->onFailure(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/interaction/views/WebViewWrapper$2;

.field final synthetic val$loadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/interaction/views/WebViewWrapper$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/youku/interaction/views/WebViewWrapper$2;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 536
    iput-object p1, p0, Lc8/MTh;->this$1:Lcom/youku/interaction/views/WebViewWrapper$2;

    iput-object p2, p0, Lc8/MTh;->val$loadUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lc8/MTh;->this$1:Lcom/youku/interaction/views/WebViewWrapper$2;

    iget-object v0, v0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v0}, Lc8/TTh;->access$600(Lc8/TTh;)Landroid/taobao/windvane/webview/WVWebView;

    move-result-object v0

    iget-object v1, p0, Lc8/MTh;->val$loadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V

    .line 540
    return-void
.end method
