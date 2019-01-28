.class public Lc8/yC;
.super Ljava/lang/Object;
.source "WVACCS.java"

# interfaces
.implements Lc8/pH;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACCSWVEventListener"
.end annotation


# instance fields
.field private webview:Ljava/lang/ref/WeakReference;
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
    .param p1, "view"    # Landroid/taobao/windvane/webview/IWVWebView;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/yC;->webview:Ljava/lang/ref/WeakReference;

    .line 38
    return-void
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 8
    .param p1, "eventId"    # I
    .param p2, "context"    # Landroid/taobao/windvane/service/WVEventContext;
    .param p3, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 42
    iget-object v5, p0, Lc8/yC;->webview:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/webview/IWVWebView;

    .line 43
    .local v1, "mWebView":Landroid/taobao/windvane/webview/IWVWebView;
    if-nez v1, :cond_1

    .line 44
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 45
    const-string/jumbo v5, "ACCS"

    const-string/jumbo v6, "webview is recycled"

    invoke-static {v5, v6}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    :goto_0
    return-object v7

    .line 49
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 51
    :pswitch_0
    const/4 v5, 0x0

    aget-object v4, p3, v5

    check-cast v4, Ljava/lang/String;

    .line 52
    .local v4, "serviceId":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, p3, v5

    check-cast v5, [B

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 54
    .local v3, "resultData":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v2, "object":Lorg/json/JSONObject;
    const-string/jumbo v5, "serviceId"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v5, "resultData"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "data":Ljava/lang/String;
    const-string/jumbo v5, "WV.Event.ACCS.OnData"

    invoke-interface {v1, v5, v0}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    const-string/jumbo v5, "ACCS"

    invoke-static {v5, v0}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 66
    .end local v3    # "resultData":Ljava/lang/String;
    .end local v4    # "serviceId":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v5, "WV.Event.ACCS.OnConnected"

    const-string/jumbo v6, "{}"

    invoke-interface {v1, v5, v6}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    const-string/jumbo v5, "ACCS"

    const-string/jumbo v6, "ACCS connect"

    invoke-static {v5, v6}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_2
    const-string/jumbo v5, "WV.Event.ACCS.OnDisConnected"

    const-string/jumbo v6, "{}"

    invoke-interface {v1, v5, v6}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    const-string/jumbo v5, "ACCS"

    const-string/jumbo v6, "ACCS disconnect"

    invoke-static {v5, v6}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
