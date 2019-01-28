.class public Lc8/USh;
.super Lc8/RD;
.source "WVActionJSBridge.java"


# static fields
.field public static final PLUGIN_NAME:Ljava/lang/String; = "WVActionJSBridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method

.method private closeActivity(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 5
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 27
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .local v1, "jsObj":Lorg/json/JSONObject;
    iget-object v3, p0, Lc8/USh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v3}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    .local v0, "context":Landroid/content/Context;
    instance-of v3, v0, Lc8/FSh;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 35
    check-cast v2, Landroid/app/Activity;

    .line 36
    .local v2, "mActivity":Landroid/app/Activity;
    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    .line 37
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 38
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 42
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "jsObj":Lorg/json/JSONObject;
    .end local v2    # "mActivity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v3

    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0

    .line 40
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "jsObj":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 17
    const-string/jumbo v0, "closeActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-direct {p0, p2, p3}, Lc8/USh;->closeActivity(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 19
    const/4 v0, 0x1

    .line 21
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
