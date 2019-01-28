.class public Lc8/XYb;
.super Landroid/taobao/windvane/jsbridge/WVCallBackContext;
.source "InternalDebugger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/YYb;->agentWVPluginMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/YYb;

.field final synthetic val$callmethod:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;


# direct methods
.method constructor <init>(Lc8/YYb;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;)V
    .locals 0
    .param p2, "x0"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lc8/XYb;->this$0:Lc8/YYb;

    iput-object p6, p0, Lc8/XYb;->val$callmethod:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;-><init>(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1, "retString"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lc8/XYb;->val$callmethod:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    invoke-static {v0, p1}, Lcom/alibaba/poplayer/utils/ConsoleLogger;->encodeWindvaneInfo(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/lZb;->Loge(Ljava/lang/String;)V

    .line 148
    invoke-super {p0, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 2
    .param p1, "retString"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lc8/XYb;->val$callmethod:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    invoke-static {v0, p1}, Lcom/alibaba/poplayer/utils/ConsoleLogger;->encodeWindvaneInfo(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc8/lZb;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-super {p0, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    .line 143
    return-void
.end method
