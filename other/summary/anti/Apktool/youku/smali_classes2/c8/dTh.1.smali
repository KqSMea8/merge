.class public Lc8/dTh;
.super Lc8/RD;
.source "WVPayBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bTh;,
        Lc8/cTh;
    }
.end annotation


# static fields
.field public static final PLUGIN_NAME:Ljava/lang/String; = "WVPayBridge"


# instance fields
.field private lastToast:Landroid/widget/Toast;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 435
    return-void
.end method

.method public static synthetic access$000(Lc8/dTh;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/dTh;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lc8/dTh;->callback(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lc8/dTh;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lc8/dTh;

    .prologue
    .line 49
    iget-object v0, p0, Lc8/dTh;->lastToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Lc8/dTh;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lc8/dTh;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 49
    iput-object p1, p0, Lc8/dTh;->lastToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private addItem2Cart(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 10
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 173
    iget-object v4, p0, Lc8/dTh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v4}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 175
    .local v7, "context":Landroid/content/Context;
    instance-of v4, v7, Landroid/app/Activity;

    if-eqz v4, :cond_0

    move-object v0, v7

    .line 176
    check-cast v0, Landroid/app/Activity;

    .line 179
    .local v0, "mActivity":Landroid/app/Activity;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .local v8, "obj":Lorg/json/JSONObject;
    new-instance v6, Lc8/bTh;

    invoke-direct {v6, p0, v8}, Lc8/bTh;-><init>(Lc8/dTh;Lorg/json/JSONObject;)V

    .line 185
    .local v6, "bcParams":Lc8/bTh;
    new-instance v2, Lc8/vHb;

    invoke-direct {v2}, Lc8/vHb;-><init>()V

    .line 186
    .local v2, "showParams":Lc8/vHb;
    iget-object v4, v6, Lc8/bTh;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lc8/vHb;->setTitle(Ljava/lang/String;)V

    .line 187
    new-instance v3, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    iget-object v4, v6, Lc8/bTh;->pid:Ljava/lang/String;

    iget-object v5, v6, Lc8/bTh;->unionId:Ljava/lang/String;

    const-string/jumbo v9, ""

    invoke-direct {v3, v4, v5, v9}, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .local v3, "taokeParams":Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;
    new-instance v1, Lc8/yHb;

    iget-object v4, v6, Lc8/bTh;->openItemId:Ljava/lang/String;

    invoke-direct {v1, v4}, Lc8/yHb;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "addCardPage":Lc8/AHb;
    iget-object v4, v6, Lc8/bTh;->exParams:Ljava/util/Map;

    const-string/jumbo v5, "addItem2CartCallback"

    .line 191
    invoke-direct {p0, v5}, Lc8/dTh;->newAlibcTradeCallback(Ljava/lang/String;)Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    move-result-object v5

    .line 190
    invoke-static/range {v0 .. v5}, Lc8/wFb;->show(Landroid/app/Activity;Lc8/AHb;Lc8/vHb;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    .line 192
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 196
    .end local v0    # "mActivity":Landroid/app/Activity;
    .end local v1    # "addCardPage":Lc8/AHb;
    .end local v2    # "showParams":Lc8/vHb;
    .end local v3    # "taokeParams":Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;
    .end local v6    # "bcParams":Lc8/bTh;
    .end local v8    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 181
    .restart local v0    # "mActivity":Landroid/app/Activity;
    :catch_0
    move-exception v4

    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0

    .line 194
    .end local v0    # "mActivity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0
.end method

.method private addTaoKeItem2Cart(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 10
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 199
    iget-object v4, p0, Lc8/dTh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v4}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 201
    .local v7, "context":Landroid/content/Context;
    instance-of v4, v7, Landroid/app/Activity;

    if-eqz v4, :cond_0

    move-object v0, v7

    .line 202
    check-cast v0, Landroid/app/Activity;

    .line 205
    .local v0, "mActivity":Landroid/app/Activity;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .local v8, "obj":Lorg/json/JSONObject;
    new-instance v6, Lc8/bTh;

    invoke-direct {v6, p0, v8}, Lc8/bTh;-><init>(Lc8/dTh;Lorg/json/JSONObject;)V

    .line 211
    .local v6, "bcParams":Lc8/bTh;
    new-instance v2, Lc8/vHb;

    invoke-direct {v2}, Lc8/vHb;-><init>()V

    .line 212
    .local v2, "showParams":Lc8/vHb;
    iget-object v4, v6, Lc8/bTh;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lc8/vHb;->setTitle(Ljava/lang/String;)V

    .line 213
    new-instance v3, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    iget-object v4, v6, Lc8/bTh;->pid:Ljava/lang/String;

    iget-object v5, v6, Lc8/bTh;->unionId:Ljava/lang/String;

    const-string/jumbo v9, ""

    invoke-direct {v3, v4, v5, v9}, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .local v3, "taokeParams":Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;
    new-instance v1, Lc8/yHb;

    iget-object v4, v6, Lc8/bTh;->openItemId:Ljava/lang/String;

    invoke-direct {v1, v4}, Lc8/yHb;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "addCardPage":Lc8/AHb;
    iget-object v4, v6, Lc8/bTh;->exParams:Ljava/util/Map;

    const-string/jumbo v5, "addTaoKeItem2CartCallback"

    .line 217
    invoke-direct {p0, v5}, Lc8/dTh;->newAlibcTradeCallback(Ljava/lang/String;)Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    move-result-object v5

    .line 216
    invoke-static/range {v0 .. v5}, Lc8/wFb;->show(Landroid/app/Activity;Lc8/AHb;Lc8/vHb;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    .line 218
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 222
    .end local v0    # "mActivity":Landroid/app/Activity;
    .end local v1    # "addCardPage":Lc8/AHb;
    .end local v2    # "showParams":Lc8/vHb;
    .end local v3    # "taokeParams":Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;
    .end local v6    # "bcParams":Lc8/bTh;
    .end local v8    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 207
    .restart local v0    # "mActivity":Landroid/app/Activity;
    :catch_0
    move-exception v4

    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0

    .line 220
    .end local v0    # "mActivity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0
.end method

.method private callback(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-object v1, p0, Lc8/dTh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v1}, Landroid/taobao/windvane/webview/IWVWebView;->getView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 309
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 310
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string/jumbo v1, "desc"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string/jumbo v1, "YKWeb.WVPayBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u767e\u5dddSDK\u8c03\u7528 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lc8/dTh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v1}, Landroid/taobao/windvane/webview/IWVWebView;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-static {v1, p1, v0}, Lc8/HTh;->loadJS(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V

    .line 315
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private getAliCoupon(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 12
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 235
    new-instance v1, Lc8/QZb;

    invoke-direct {v1}, Lc8/QZb;-><init>()V

    .line 238
    .local v1, "couponParams":Lc8/QZb;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .local v6, "obj":Lorg/json/JSONObject;
    const-string/jumbo v9, "supplierId"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v1, Lc8/QZb;->mSupplierId:Ljava/lang/Long;

    .line 244
    const-string/jumbo v9, "uuid"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lc8/QZb;->mUUID:Ljava/lang/String;

    .line 245
    const-string/jumbo v9, "source"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lc8/QZb;->mCouponInstanceSource:I

    .line 246
    const-string/jumbo v9, "asac"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lc8/QZb;->mASAC:Ljava/lang/String;

    .line 247
    const-string/jumbo v9, "ybhpss"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 248
    .local v2, "exParamsJson":Lorg/json/JSONObject;
    new-instance v8, Ljava/util/HashMap;

    const/16 v9, 0xa

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 249
    .local v8, "ybhpss":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {v2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    .local v5, "names":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 252
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 253
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    .end local v2    # "exParamsJson":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "names":Lorg/json/JSONArray;
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v8    # "ybhpss":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    .line 264
    :goto_1
    return-void

    .line 258
    .restart local v2    # "exParamsJson":Lorg/json/JSONObject;
    .restart local v6    # "obj":Lorg/json/JSONObject;
    .restart local v8    # "ybhpss":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v9, "toast"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 259
    .local v7, "showToast":Z
    iput-object v8, v1, Lc8/QZb;->mYbhpssParams:Ljava/util/Map;

    .line 260
    const/4 v9, 0x2

    invoke-static {v9}, Lc8/cac;->getComponentByType(I)Lc8/aac;

    move-result-object v0

    .line 261
    .local v0, "couponComponent":Lc8/aac;
    const-string/jumbo v9, "getAliCouponCallback"

    .line 262
    invoke-direct {p0, v9, v7}, Lc8/dTh;->newAlibcComponentCallback(Ljava/lang/String;Z)Lc8/bac;

    move-result-object v9

    .line 261
    invoke-virtual {v0, v1, v9}, Lc8/aac;->execute(Ljava/lang/Object;Lc8/bac;)V

    .line 263
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto :goto_1
.end method

.method private newAlibcComponentCallback(Ljava/lang/String;Z)Lc8/bac;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "showToast"    # Z

    .prologue
    .line 318
    new-instance v0, Lc8/aTh;

    invoke-direct {v0, p0, p1, p2}, Lc8/aTh;-><init>(Lc8/dTh;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private newAlibcTradeCallback(Ljava/lang/String;)Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 350
    new-instance v0, Lcom/youku/interaction/interfaces/WVPayBridge$2;

    invoke-direct {v0, p0, p1}, Lcom/youku/interaction/interfaces/WVPayBridge$2;-><init>(Lc8/dTh;Ljava/lang/String;)V

    return-object v0
.end method

.method private notifyVipChanged(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 7
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 99
    iget-object v5, p0, Lc8/dTh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v5}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, "context":Landroid/content/Context;
    instance-of v5, v0, Landroid/app/Activity;

    if-eqz v5, :cond_0

    move-object v2, v0

    .line 102
    check-cast v2, Landroid/app/Activity;

    .line 105
    .local v2, "mActivity":Landroid/app/Activity;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .local v3, "obj":Lorg/json/JSONObject;
    const-string/jumbo v5, "vip_type"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 111
    .local v4, "vip_type":I
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.youku.action.H5_PAY"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "vip_type"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 118
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mActivity":Landroid/app/Activity;
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "vip_type":I
    :goto_0
    return-void

    .line 107
    .restart local v2    # "mActivity":Landroid/app/Activity;
    :catch_0
    move-exception v5

    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0

    .line 116
    .end local v2    # "mActivity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0
.end method

.method private oneKeyAddCart(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 13
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 276
    new-instance v1, Lc8/MZb;

    invoke-direct {v1}, Lc8/MZb;-><init>()V

    .line 279
    .local v1, "cartParam":Lc8/MZb;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .local v6, "obj":Lorg/json/JSONObject;
    const-string/jumbo v9, "itemId"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lc8/MZb;->mItemID:Ljava/lang/String;

    .line 285
    const-string/jumbo v9, "tips"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lc8/MZb;->mTips:Ljava/lang/String;

    .line 286
    new-instance v9, Lcom/alibaba/sdk/trade/component/cart/AlibcTkParams;

    const-string/jumbo v10, "pid"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "unionId"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "subPid"

    .line 287
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/alibaba/sdk/trade/component/cart/AlibcTkParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v1, Lc8/MZb;->mTaokeParams:Lcom/alibaba/sdk/trade/component/cart/AlibcTkParams;

    .line 288
    const-string/jumbo v9, "ybhpss"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 289
    .local v2, "exParamsJson":Lorg/json/JSONObject;
    new-instance v8, Ljava/util/HashMap;

    const/16 v9, 0xa

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 290
    .local v8, "ybhpss":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 292
    invoke-virtual {v2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    .local v5, "names":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 293
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 294
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 281
    .end local v2    # "exParamsJson":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "names":Lorg/json/JSONArray;
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v8    # "ybhpss":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    .line 305
    :goto_1
    return-void

    .line 299
    .restart local v2    # "exParamsJson":Lorg/json/JSONObject;
    .restart local v6    # "obj":Lorg/json/JSONObject;
    .restart local v8    # "ybhpss":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v9, "toast"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 300
    .local v7, "showToast":Z
    iput-object v8, v1, Lc8/MZb;->mYbhpssParams:Ljava/util/HashMap;

    .line 301
    const/4 v9, 0x1

    invoke-static {v9}, Lc8/cac;->getComponentByType(I)Lc8/aac;

    move-result-object v0

    .line 302
    .local v0, "cartComponent":Lc8/aac;
    const-string/jumbo v9, "oneKeyAddCartCallback"

    .line 303
    invoke-direct {p0, v9, v7}, Lc8/dTh;->newAlibcComponentCallback(Ljava/lang/String;Z)Lc8/bac;

    move-result-object v9

    .line 302
    invoke-virtual {v0, v1, v9}, Lc8/aac;->execute(Ljava/lang/Object;Lc8/bac;)V

    .line 304
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto :goto_1
.end method

.method private showOrderWithSKU(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 11
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v10, 0x0

    .line 121
    iget-object v4, p0, Lc8/dTh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v4}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 123
    .local v7, "context":Landroid/content/Context;
    instance-of v4, v7, Landroid/app/Activity;

    if-eqz v4, :cond_0

    move-object v0, v7

    .line 124
    check-cast v0, Landroid/app/Activity;

    .line 127
    .local v0, "mActivity":Landroid/app/Activity;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .local v8, "obj":Lorg/json/JSONObject;
    new-instance v6, Lc8/bTh;

    invoke-direct {v6, p0, v8}, Lc8/bTh;-><init>(Lc8/dTh;Lorg/json/JSONObject;)V

    .line 133
    .local v6, "bcParams":Lc8/bTh;
    new-instance v2, Lc8/vHb;

    invoke-direct {v2}, Lc8/vHb;-><init>()V

    .line 134
    .local v2, "showParams":Lc8/vHb;
    iget-object v4, v6, Lc8/bTh;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lc8/vHb;->setTitle(Ljava/lang/String;)V

    .line 135
    new-instance v3, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    iget-object v4, v6, Lc8/bTh;->pid:Ljava/lang/String;

    iget-object v5, v6, Lc8/bTh;->unionId:Ljava/lang/String;

    const-string/jumbo v9, ""

    invoke-direct {v3, v4, v5, v9}, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v3, "taokeParams":Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;
    new-instance v1, Lc8/EHb;

    invoke-direct {v1, v10, v10}, Lc8/EHb;-><init>(IZ)V

    .line 138
    .local v1, "ordersPage":Lc8/AHb;
    iget-object v4, v6, Lc8/bTh;->exParams:Ljava/util/Map;

    const-string/jumbo v5, "showOrderWithSKUCallback"

    .line 139
    invoke-direct {p0, v5}, Lc8/dTh;->newAlibcTradeCallback(Ljava/lang/String;)Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    move-result-object v5

    .line 138
    invoke-static/range {v0 .. v5}, Lc8/wFb;->show(Landroid/app/Activity;Lc8/AHb;Lc8/vHb;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    .line 140
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 144
    .end local v0    # "mActivity":Landroid/app/Activity;
    .end local v1    # "ordersPage":Lc8/AHb;
    .end local v2    # "showParams":Lc8/vHb;
    .end local v3    # "taokeParams":Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;
    .end local v6    # "bcParams":Lc8/bTh;
    .end local v8    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 129
    .restart local v0    # "mActivity":Landroid/app/Activity;
    :catch_0
    move-exception v4

    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0

    .line 142
    .end local v0    # "mActivity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0
.end method

.method private showTaoKeOrderWithSKU(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 11
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v10, 0x0

    .line 147
    iget-object v4, p0, Lc8/dTh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v4}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 149
    .local v7, "context":Landroid/content/Context;
    instance-of v4, v7, Landroid/app/Activity;

    if-eqz v4, :cond_0

    move-object v0, v7

    .line 150
    check-cast v0, Landroid/app/Activity;

    .line 153
    .local v0, "mActivity":Landroid/app/Activity;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .local v8, "obj":Lorg/json/JSONObject;
    new-instance v6, Lc8/bTh;

    invoke-direct {v6, p0, v8}, Lc8/bTh;-><init>(Lc8/dTh;Lorg/json/JSONObject;)V

    .line 159
    .local v6, "bcParams":Lc8/bTh;
    new-instance v2, Lc8/vHb;

    invoke-direct {v2}, Lc8/vHb;-><init>()V

    .line 160
    .local v2, "showParams":Lc8/vHb;
    iget-object v4, v6, Lc8/bTh;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lc8/vHb;->setTitle(Ljava/lang/String;)V

    .line 161
    new-instance v3, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    iget-object v4, v6, Lc8/bTh;->pid:Ljava/lang/String;

    iget-object v5, v6, Lc8/bTh;->unionId:Ljava/lang/String;

    const-string/jumbo v9, ""

    invoke-direct {v3, v4, v5, v9}, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v3, "taokeParams":Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;
    new-instance v1, Lc8/EHb;

    invoke-direct {v1, v10, v10}, Lc8/EHb;-><init>(IZ)V

    .line 164
    .local v1, "ordersPage":Lc8/AHb;
    iget-object v4, v6, Lc8/bTh;->exParams:Ljava/util/Map;

    const-string/jumbo v5, "showTaoKeOrderWithSKUCallback"

    .line 165
    invoke-direct {p0, v5}, Lc8/dTh;->newAlibcTradeCallback(Ljava/lang/String;)Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    move-result-object v5

    .line 164
    invoke-static/range {v0 .. v5}, Lc8/wFb;->show(Landroid/app/Activity;Lc8/AHb;Lc8/vHb;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    .line 166
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 170
    .end local v0    # "mActivity":Landroid/app/Activity;
    .end local v1    # "ordersPage":Lc8/AHb;
    .end local v2    # "showParams":Lc8/vHb;
    .end local v3    # "taokeParams":Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;
    .end local v6    # "bcParams":Lc8/bTh;
    .end local v8    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 155
    .restart local v0    # "mActivity":Landroid/app/Activity;
    :catch_0
    move-exception v4

    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0

    .line 168
    .end local v0    # "mActivity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v0, 0x1

    .line 65
    const-string/jumbo v1, "notifyVipChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-direct {p0, p2, p3}, Lc8/dTh;->notifyVipChanged(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 87
    :goto_0
    return v0

    .line 68
    :cond_0
    const-string/jumbo v1, "showOrderWithSKU"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-direct {p0, p2, p3}, Lc8/dTh;->showOrderWithSKU(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 71
    :cond_1
    const-string/jumbo v1, "showTaoKeOrderWithSKU"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-direct {p0, p2, p3}, Lc8/dTh;->showTaoKeOrderWithSKU(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 74
    :cond_2
    const-string/jumbo v1, "addItem2Cart"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    invoke-direct {p0, p2, p3}, Lc8/dTh;->addItem2Cart(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 77
    :cond_3
    const-string/jumbo v1, "addTaoKeItem2Cart"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    invoke-direct {p0, p2, p3}, Lc8/dTh;->addTaoKeItem2Cart(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 80
    :cond_4
    const-string/jumbo v1, "getAliCoupon"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    invoke-direct {p0, p2, p3}, Lc8/dTh;->getAliCoupon(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 83
    :cond_5
    const-string/jumbo v1, "oneKeyAddCart"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 84
    invoke-direct {p0, p2, p3}, Lc8/dTh;->oneKeyAddCart(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 87
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p3, "paramObj"    # Ljava/lang/Object;

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3}, Lc8/RD;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;)V

    .line 93
    invoke-interface {p2}, Landroid/taobao/windvane/webview/IWVWebView;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 94
    new-instance v1, Lc8/cTh;

    invoke-interface {p2}, Landroid/taobao/windvane/webview/IWVWebView;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-direct {v1, v0}, Lc8/cTh;-><init>(Landroid/webkit/WebView;)V

    iput-object v1, p0, Lc8/dTh;->mHandler:Landroid/os/Handler;

    .line 96
    :cond_0
    return-void
.end method
