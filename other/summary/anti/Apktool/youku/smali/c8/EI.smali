.class public Lc8/EI;
.super Ljava/lang/Object;
.source "WVWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/webview/WVWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/webview/WVWebView;


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/webview/WVWebView;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 504
    iput-object p1, p0, Lc8/EI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 507
    iget-object v0, p0, Lc8/EI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-static {v0}, Landroid/taobao/windvane/webview/WVWebView;->access$300(Landroid/taobao/windvane/webview/WVWebView;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/EI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-static {v0}, Landroid/taobao/windvane/webview/WVWebView;->access$300(Landroid/taobao/windvane/webview/WVWebView;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 508
    iget-object v0, p0, Lc8/EI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-static {v0}, Landroid/taobao/windvane/webview/WVWebView;->access$300(Landroid/taobao/windvane/webview/WVWebView;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    :try_start_0
    iget-object v0, p0, Lc8/EI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    iget-object v0, v0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/jH;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Lc8/iH;

    move-result-object v0

    new-instance v1, Lc8/DI;

    invoke-direct {v1, p0}, Lc8/DI;-><init>(Lc8/EI;)V

    invoke-virtual {v0, v1}, Lc8/iH;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v0

    new-instance v1, Lc8/CI;

    invoke-direct {v1, p0}, Lc8/CI;-><init>(Lc8/EI;)V

    invoke-virtual {v0, v1}, Lc8/iH;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v0

    invoke-virtual {v0}, Lc8/iH;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/EI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-static {v0}, Landroid/taobao/windvane/webview/WVWebView;->access$200(Landroid/taobao/windvane/webview/WVWebView;)Lc8/jI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lc8/EI;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-static {v0}, Landroid/taobao/windvane/webview/WVWebView;->access$200(Landroid/taobao/windvane/webview/WVWebView;)Lc8/jI;

    move-result-object v0

    invoke-virtual {v0}, Lc8/jI;->hide()V

    .line 530
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
