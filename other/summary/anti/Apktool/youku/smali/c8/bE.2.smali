.class public Lc8/bE;
.super Ljava/lang/Object;
.source "WVCallBackContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 184
    iput-object p1, p0, Lc8/bE;->this$0:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 187
    invoke-static {}, Lc8/YF;->getJsBridgeMonitor()Lc8/IF;

    move-result-object v0

    iget-object v1, p0, Lc8/bE;->this$0:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-static {v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->access$000(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/bE;->this$0:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-static {v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->access$100(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/bE;->this$0:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-static {v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->access$200(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v3

    invoke-interface {v3}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "HY_FAILED"

    invoke-interface {v0, v1, v2, v3, v4}, Lc8/IF;->didCallBackAtURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method
