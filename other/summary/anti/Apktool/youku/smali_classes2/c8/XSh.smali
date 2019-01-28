.class public Lc8/XSh;
.super Lc8/RD;
.source "WVLoadBridge.java"


# static fields
.field public static final PLUGIN_NAME:Ljava/lang/String; = "WVLoadBridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method

.method private getHudongBundle()Landroid/os/Bundle;
    .locals 12

    .prologue
    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v4, "headerBundle":Landroid/os/Bundle;
    iget-object v9, p0, Lc8/XSh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v9}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 100
    .local v8, "wm":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 101
    .local v3, "dwidth":I
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 104
    .local v2, "dheight":I
    new-instance v5, Ljava/util/HashMap;

    const/16 v9, 0xc

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 106
    .local v5, "heanders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v9, "platform"

    const-string/jumbo v10, "10"

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v9, "platform_type"

    const-string/jumbo v10, "102"

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v9, "device"

    const-string/jumbo v10, "2"

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string/jumbo v9, "Sc"

    const-string/jumbo v10, "1"

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v9, "resolution"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v9, "device_sys"

    const-string/jumbo v10, "1"

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :try_start_0
    const-class v9, Lc8/vdn;

    invoke-static {v9}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vdn;

    .line 115
    .local v1, "dataSource":Lc8/vdn;
    const-string/jumbo v9, "userAgent"

    invoke-interface {v1}, Lc8/vdn;->getUserAgent()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v10, "uid"

    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    :goto_0
    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string/jumbo v9, "guid"

    invoke-interface {v1}, Lc8/vdn;->getGUID()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v10, "device_type"

    invoke-interface {v1}, Lc8/vdn;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "2"

    :goto_1
    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1    # "dataSource":Lc8/vdn;
    :goto_2
    iget-object v9, p0, Lc8/XSh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v9}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/youku/phone/R$dimen;->detail_card_more_image_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 124
    .local v7, "more_button_width":F
    iget-object v9, p0, Lc8/XSh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v9}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/youku/phone/R$dimen;->detail_card_title_height:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 126
    .local v6, "more_button_height":F
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ">>>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    const-string/jumbo v9, "more_button_width"

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string/jumbo v9, "more_button_height"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string/jumbo v9, "youku-header"

    invoke-static {v5}, Lc8/HTh;->generateHeaderParamsStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v9, "KEY_EXTRA_SET_DEVICE_INFO"

    invoke-virtual {v0, v9, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 134
    return-object v0

    .line 116
    .end local v6    # "more_button_height":F
    .end local v7    # "more_button_width":F
    .restart local v1    # "dataSource":Lc8/vdn;
    :cond_0
    :try_start_1
    const-string/jumbo v9, ""

    goto :goto_0

    .line 118
    :cond_1
    const-string/jumbo v9, "1"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v1    # "dataSource":Lc8/vdn;
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method private loadUrl(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 10
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v9, -0x1

    .line 56
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .local v2, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v8, "url"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, "url":Ljava/lang/String;
    const-string/jumbo v8, "shouldOverride"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 63
    .local v4, "shouldOverrideUrl":Z
    const-string/jumbo v8, "width"

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 64
    const-string/jumbo v8, "height"

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 65
    const-string/jumbo v8, "source"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "source":Ljava/lang/String;
    const-string/jumbo v8, "dst"

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 67
    const-string/jumbo v8, "orientation"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 69
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 70
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 71
    .local v3, "result":Lc8/kE;
    const-string/jumbo v8, "error"

    const-string/jumbo v9, "1"

    invoke-virtual {v3, v8, v9}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 73
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 74
    iget-object v8, p0, Lc8/XSh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v8}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 75
    .local v1, "context":Landroid/content/Context;
    if-eqz v4, :cond_0

    .line 76
    const-string/jumbo v8, "YKWeb.WVLoadBridge"

    const-string/jumbo v9, "\u5728\u5f53\u524dWebView\u52a0\u8f7durl"

    invoke-static {v8, v9}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v8, p0, Lc8/XSh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v8, v7}, Landroid/taobao/windvane/webview/IWVWebView;->loadUrl(Ljava/lang/String;)V

    .line 85
    :goto_0
    invoke-virtual {p2, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 89
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    .end local v3    # "result":Lc8/kE;
    .end local v4    # "shouldOverrideUrl":Z
    .end local v5    # "source":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "url":Ljava/lang/String;
    :goto_1
    return-void

    .line 58
    :catch_0
    move-exception v8

    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_1

    .line 79
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "jsObj":Lorg/json/JSONObject;
    .restart local v3    # "result":Lc8/kE;
    .restart local v4    # "shouldOverrideUrl":Z
    .restart local v5    # "source":Ljava/lang/String;
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "hudong"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 81
    invoke-direct {p0}, Lc8/XSh;->getHudongBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 83
    :cond_1
    invoke-static {v1, v7, v0}, Lc8/HTh;->launchInteractionWebView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 87
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "result":Lc8/kE;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 46
    const-string/jumbo v0, "loadUrl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0, p2, p3}, Lc8/XSh;->loadUrl(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 48
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
