.class public Lc8/CF;
.super Ljava/lang/Object;
.source "WVJsPatchListener.java"

# interfaces
.implements Lc8/pH;


# instance fields
.field private webviewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/taobao/windvane/webview/IWVWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 1
    .param p1, "webview"    # Landroid/taobao/windvane/webview/IWVWebView;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/CF;->webviewReference:Ljava/lang/ref/WeakReference;

    .line 21
    return-void
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 5
    .param p1, "eventId"    # I
    .param p2, "eventContext"    # Landroid/taobao/windvane/service/WVEventContext;
    .param p3, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 25
    sparse-switch p1, :sswitch_data_0

    .line 61
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 27
    :sswitch_0
    iget-object v3, p0, Lc8/CF;->webviewReference:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 28
    iget-object v3, p0, Lc8/CF;->webviewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/webview/IWVWebView;

    .line 29
    .local v2, "reference":Landroid/taobao/windvane/webview/IWVWebView;
    if-eqz v2, :cond_1

    .line 31
    const/4 v3, 0x0

    :try_start_0
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    .line 32
    .local v1, "eventName":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/String;

    .line 33
    .local v0, "data":Ljava/lang/String;
    invoke-interface {v2, v1, v0}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "eventName":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 37
    :cond_1
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    const-string/jumbo v3, "WVJsPatchListener"

    const-string/jumbo v4, "WVJsPatchListener is free"

    invoke-static {v3, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    .end local v2    # "reference":Landroid/taobao/windvane/webview/IWVWebView;
    :sswitch_1
    iget-object v3, p0, Lc8/CF;->webviewReference:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 45
    iget-object v3, p0, Lc8/CF;->webviewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/webview/IWVWebView;

    .line 46
    .restart local v2    # "reference":Landroid/taobao/windvane/webview/IWVWebView;
    if-eqz v2, :cond_2

    .line 48
    :try_start_1
    const-string/jumbo v3, "WV.Event.APP.TakeScreenshot"

    const-string/jumbo v4, "{}"

    invoke-interface {v2, v3, v4}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 50
    :catch_1
    move-exception v3

    goto :goto_0

    .line 52
    :cond_2
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    const-string/jumbo v3, "WVJsPatchListener"

    const-string/jumbo v4, "WVJsPatchListener is free"

    invoke-static {v3, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    nop

    :sswitch_data_0
    .sparse-switch
        0xbbe -> :sswitch_0
        0xbc6 -> :sswitch_1
    .end sparse-switch
.end method
