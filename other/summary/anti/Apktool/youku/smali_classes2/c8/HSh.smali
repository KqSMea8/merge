.class public Lc8/HSh;
.super Lc8/PSh;
.source "LoadUrlJSBridge.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 47
    invoke-direct {p0}, Lc8/PSh;-><init>()V

    .line 48
    iput-object p1, p0, Lc8/HSh;->mActivity:Landroid/app/Activity;

    .line 49
    iput-object p2, p0, Lc8/HSh;->mWebView:Landroid/webkit/WebView;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lc8/HSh;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lc8/HSh;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/HSh;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lc8/HSh;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lc8/HSh;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/HSh;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getHudongBundle()Landroid/os/Bundle;
    .locals 12

    .prologue
    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v4, "headerBundle":Landroid/os/Bundle;
    iget-object v9, p0, Lc8/HSh;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 103
    .local v8, "wm":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 104
    .local v3, "dwidth":I
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 107
    .local v2, "dheight":I
    new-instance v5, Ljava/util/HashMap;

    const/16 v9, 0xc

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 109
    .local v5, "heanders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v9, "platform"

    const-string/jumbo v10, "10"

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v9, "platform_type"

    const-string/jumbo v10, "102"

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v9, "device"

    const-string/jumbo v10, "2"

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v9, "Sc"

    const-string/jumbo v10, "1"

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
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

    .line 115
    const-string/jumbo v9, "device_sys"

    const-string/jumbo v10, "1"

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :try_start_0
    const-class v9, Lc8/vdn;

    invoke-static {v9}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vdn;

    .line 118
    .local v1, "dataSource":Lc8/vdn;
    if-eqz v1, :cond_0

    .line 119
    const-string/jumbo v9, "userAgent"

    invoke-interface {v1}, Lc8/vdn;->getUserAgent()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string/jumbo v10, "uid"

    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    :goto_0
    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string/jumbo v9, "guid"

    invoke-interface {v1}, Lc8/vdn;->getGUID()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v10, "device_type"

    invoke-interface {v1}, Lc8/vdn;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "2"

    :goto_1
    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v1    # "dataSource":Lc8/vdn;
    :cond_0
    :goto_2
    iget-object v9, p0, Lc8/HSh;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/youku/phone/R$dimen;->detail_card_more_image_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 128
    .local v7, "more_button_width":F
    iget-object v9, p0, Lc8/HSh;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/youku/phone/R$dimen;->detail_card_title_height:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 129
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

    .line 130
    const-string/jumbo v9, "more_button_width"

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v9, "more_button_height"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v9, "youku-header"

    invoke-static {v5}, Lc8/HTh;->generateHeaderParamsStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string/jumbo v9, "KEY_EXTRA_SET_DEVICE_INFO"

    invoke-virtual {v0, v9, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 137
    return-object v0

    .line 120
    .end local v6    # "more_button_height":F
    .end local v7    # "more_button_width":F
    .restart local v1    # "dataSource":Lc8/vdn;
    :cond_1
    :try_start_1
    const-string/jumbo v9, ""

    goto :goto_0

    .line 122
    :cond_2
    const-string/jumbo v9, "1"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v1    # "dataSource":Lc8/vdn;
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method public loadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 55
    new-instance v0, Ljava/util/HashMap;

    const/4 v5, 0x2

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 57
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lc8/HSh;->generateJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 59
    .local v1, "obj":Lorg/json/JSONObject;
    const-string/jumbo v5, "url"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "url":Ljava/lang/String;
    const-string/jumbo v5, "shouldOverride"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 61
    .local v2, "shouldOverrideUrl":Z
    const-string/jumbo v5, "width"

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 62
    const-string/jumbo v5, "height"

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 63
    const-string/jumbo v5, "source"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "source":Ljava/lang/String;
    const-string/jumbo v5, "dst"

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 65
    const-string/jumbo v5, "orientation"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 67
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    const-string/jumbo v5, "error"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :goto_0
    invoke-static {v0}, Lc8/HTh;->generateParamsStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 70
    :cond_0
    const-string/jumbo v5, "error"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v5, p0, Lc8/HSh;->mWebView:Landroid/webkit/WebView;

    new-instance v6, Lc8/GSh;

    invoke-direct {v6, p0, v4, v2, v3}, Lc8/GSh;-><init>(Lc8/HSh;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
