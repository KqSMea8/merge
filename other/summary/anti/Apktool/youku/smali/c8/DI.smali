.class public Lc8/DI;
.super Ljava/lang/Object;
.source "WVWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/EI;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/EI;


# direct methods
.method constructor <init>(Lc8/EI;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lc8/DI;->this$1:Lc8/EI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Lc8/DI;->this$1:Lc8/EI;

    iget-object v0, v0, Lc8/EI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    iget-object v0, v0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lc8/DI;->this$1:Lc8/EI;

    iget-object v1, v1, Lc8/EI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-static {v1}, Landroid/taobao/windvane/webview/WVWebView;->access$100(Landroid/taobao/windvane/webview/WVWebView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/DI;->this$1:Lc8/EI;

    iget-object v2, v2, Lc8/EI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    iget-object v2, v2, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lc8/SH;->saveImageToDCIM(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 515
    return-void
.end method
