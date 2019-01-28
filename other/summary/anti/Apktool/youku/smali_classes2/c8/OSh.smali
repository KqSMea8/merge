.class public Lc8/OSh;
.super Lc8/PSh;
.source "PayJSBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/MSh;,
        Lc8/NSh;
    }
.end annotation


# instance fields
.field private lastToast:Landroid/widget/Toast;

.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 49
    invoke-direct {p0}, Lc8/PSh;-><init>()V

    .line 50
    iput-object p1, p0, Lc8/OSh;->mActivity:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lc8/OSh;->mWebView:Landroid/webkit/WebView;

    .line 52
    new-instance v0, Lc8/NSh;

    iget-object v1, p0, Lc8/OSh;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lc8/NSh;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lc8/OSh;->mHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method public static synthetic access$000(Lc8/OSh;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/OSh;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lc8/OSh;->callback(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lc8/OSh;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lc8/OSh;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/OSh;->lastToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Lc8/OSh;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lc8/OSh;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 42
    iput-object p1, p0, Lc8/OSh;->lastToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private callback(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    .line 215
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 216
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string/jumbo v1, "desc"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string/jumbo v1, "YKWeb.YoukuJSBridge"

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

    .line 219
    iget-object v1, p0, Lc8/OSh;->mWebView:Landroid/webkit/WebView;

    invoke-static {v1, p1, v0}, Lc8/HTh;->loadJS(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V

    .line 220
    return-void
.end method

.method private newAlibcComponentCallback(Ljava/lang/String;Z)Lc8/bac;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "showToast"    # Z

    .prologue
    .line 223
    new-instance v0, Lc8/LSh;

    invoke-direct {v0, p0, p1, p2}, Lc8/LSh;-><init>(Lc8/OSh;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private newAlibcTradeCallback(Ljava/lang/String;)Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 255
    new-instance v0, Lcom/youku/interaction/interfaces/PayJSBridge$2;

    invoke-direct {v0, p0, p1}, Lcom/youku/interaction/interfaces/PayJSBridge$2;-><init>(Lc8/OSh;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addItem2Cart(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v6, Lc8/MSh;

    invoke-virtual {p0, p1}, Lc8/OSh;->generateJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lc8/MSh;-><init>(Lc8/OSh;Lorg/json/JSONObject;)V

    .line 118
    .local v6, "bcParams":Lc8/MSh;
    new-instance v2, Lc8/vHb;

    invoke-direct {v2}, Lc8/vHb;-><init>()V

    .line 119
    .local v2, "showParams":Lc8/vHb;
    iget-object v0, v6, Lc8/MSh;->title:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lc8/vHb;->setTitle(Ljava/lang/String;)V

    .line 120
    new-instance v3, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    iget-object v0, v6, Lc8/MSh;->pid:Ljava/lang/String;

    iget-object v4, v6, Lc8/MSh;->unionId:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-direct {v3, v0, v4, v5}, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .local v3, "taokeParams":Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;
    new-instance v1, Lc8/yHb;

    iget-object v0, v6, Lc8/MSh;->openItemId:Ljava/lang/String;

    invoke-direct {v1, v0}, Lc8/yHb;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "addCardPage":Lc8/AHb;
    iget-object v0, p0, Lc8/OSh;->mActivity:Landroid/app/Activity;

    iget-object v4, v6, Lc8/MSh;->exParams:Ljava/util/Map;

    const-string/jumbo v5, "addItem2CartCallback"

    .line 124
    invoke-direct {p0, v5}, Lc8/OSh;->newAlibcTradeCallback(Ljava/lang/String;)Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    move-result-object v5

    .line 123
    invoke-static/range {v0 .. v5}, Lc8/wFb;->show(Landroid/app/Activity;Lc8/AHb;Lc8/vHb;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    .line 125
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public addTaoKeItem2Cart(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v6, Lc8/MSh;

    invoke-virtual {p0, p1}, Lc8/OSh;->generateJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lc8/MSh;-><init>(Lc8/OSh;Lorg/json/JSONObject;)V

    .line 131
    .local v6, "bcParams":Lc8/MSh;
    new-instance v2, Lc8/vHb;

    invoke-direct {v2}, Lc8/vHb;-><init>()V

    .line 132
    .local v2, "showParams":Lc8/vHb;
    iget-object v0, v6, Lc8/MSh;->title:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lc8/vHb;->setTitle(Ljava/lang/String;)V

    .line 133
    new-instance v3, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    iget-object v0, v6, Lc8/MSh;->pid:Ljava/lang/String;

    iget-object v4, v6, Lc8/MSh;->unionId:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-direct {v3, v0, v4, v5}, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v3, "taokeParams":Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;
    new-instance v1, Lc8/yHb;

    iget-object v0, v6, Lc8/MSh;->openItemId:Ljava/lang/String;

    invoke-direct {v1, v0}, Lc8/yHb;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, "addCardPage":Lc8/AHb;
    iget-object v0, p0, Lc8/OSh;->mActivity:Landroid/app/Activity;

    iget-object v4, v6, Lc8/MSh;->exParams:Ljava/util/Map;

    const-string/jumbo v5, "addTaoKeItem2CartCallback"

    .line 137
    invoke-direct {p0, v5}, Lc8/OSh;->newAlibcTradeCallback(Ljava/lang/String;)Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    move-result-object v5

    .line 136
    invoke-static/range {v0 .. v5}, Lc8/wFb;->show(Landroid/app/Activity;Lc8/AHb;Lc8/vHb;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    .line 138
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public doPay(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lc8/OSh;->generateJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 58
    .local v9, "obj":Lorg/json/JSONObject;
    const-string/jumbo v0, "pay_channel"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "pay_channel":Ljava/lang/String;
    const-string/jumbo v0, "salePrice"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "salePrice":Ljava/lang/String;
    const-string/jumbo v0, "order_type"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "order_type":Ljava/lang/String;
    const-string/jumbo v0, "vip_id"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "vip_id":Ljava/lang/String;
    const-string/jumbo v0, "periods"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 65
    .local v5, "periods":I
    const-string/jumbo v0, "app_productid"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, "app_productid":Ljava/lang/String;
    const-string/jumbo v0, "spm_id"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "url_spm_id"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "pre_r_object_id"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lc8/jKj;->getInstance()Lc8/jKj;

    move-result-object v0

    iget-object v1, p0, Lc8/OSh;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lc8/OSh;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v7}, Lc8/jKj;->doPay(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lc8/PSh;->doPay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAliCoupon(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v1, Lc8/QZb;

    invoke-direct {v1}, Lc8/QZb;-><init>()V

    .line 154
    .local v1, "couponParams":Lc8/QZb;
    invoke-virtual {p0, p1}, Lc8/OSh;->generateJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 155
    .local v6, "obj":Lorg/json/JSONObject;
    const-string/jumbo v9, "supplierId"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v1, Lc8/QZb;->mSupplierId:Ljava/lang/Long;

    .line 156
    const-string/jumbo v9, "uuid"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lc8/QZb;->mUUID:Ljava/lang/String;

    .line 157
    const-string/jumbo v9, "source"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lc8/QZb;->mCouponInstanceSource:I

    .line 158
    const-string/jumbo v9, "asac"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lc8/QZb;->mASAC:Ljava/lang/String;

    .line 159
    const-string/jumbo v9, "ybhpss"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 160
    .local v2, "exParamsJson":Lorg/json/JSONObject;
    new-instance v8, Ljava/util/HashMap;

    const/16 v9, 0xa

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 161
    .local v8, "ybhpss":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {v2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    .local v5, "names":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 164
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 165
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    .end local v3    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "names":Lorg/json/JSONArray;
    :cond_0
    const-string/jumbo v9, "toast"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 171
    .local v7, "showToast":Z
    iput-object v8, v1, Lc8/QZb;->mYbhpssParams:Ljava/util/Map;

    .line 172
    const/4 v9, 0x2

    invoke-static {v9}, Lc8/cac;->getComponentByType(I)Lc8/aac;

    move-result-object v0

    .line 173
    .local v0, "couponComponent":Lc8/aac;
    const-string/jumbo v9, "getAliCouponCallback"

    .line 174
    invoke-direct {p0, v9, v7}, Lc8/OSh;->newAlibcComponentCallback(Ljava/lang/String;Z)Lc8/bac;

    move-result-object v9

    .line 173
    invoke-virtual {v0, v1, v9}, Lc8/aac;->execute(Ljava/lang/Object;Lc8/bac;)V

    .line 175
    const-string/jumbo v9, "{}"

    return-object v9
.end method

.method public notifyVipChanged(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lc8/OSh;->generateJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 80
    .local v1, "obj":Lorg/json/JSONObject;
    const-string/jumbo v3, "vip_type"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 82
    .local v2, "vip_type":I
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.H5_PAY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "vip_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    iget-object v3, p0, Lc8/OSh;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    invoke-super {p0, p1}, Lc8/PSh;->notifyVipChanged(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public oneKeyAddCart(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v1, Lc8/MZb;

    invoke-direct {v1}, Lc8/MZb;-><init>()V

    .line 190
    .local v1, "cartParam":Lc8/MZb;
    invoke-virtual {p0, p1}, Lc8/OSh;->generateJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 191
    .local v6, "obj":Lorg/json/JSONObject;
    const-string/jumbo v9, "itemId"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lc8/MZb;->mItemID:Ljava/lang/String;

    .line 192
    const-string/jumbo v9, "tips"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lc8/MZb;->mTips:Ljava/lang/String;

    .line 193
    new-instance v9, Lcom/alibaba/sdk/trade/component/cart/AlibcTkParams;

    const-string/jumbo v10, "pid"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "unionId"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "subPid"

    .line 194
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/alibaba/sdk/trade/component/cart/AlibcTkParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v1, Lc8/MZb;->mTaokeParams:Lcom/alibaba/sdk/trade/component/cart/AlibcTkParams;

    .line 195
    const-string/jumbo v9, "ybhpss"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 196
    .local v2, "exParamsJson":Lorg/json/JSONObject;
    new-instance v8, Ljava/util/HashMap;

    const/16 v9, 0xa

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 197
    .local v8, "ybhpss":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {v2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    .local v5, "names":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 200
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 201
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    .end local v3    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "names":Lorg/json/JSONArray;
    :cond_0
    const-string/jumbo v9, "toast"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 207
    .local v7, "showToast":Z
    iput-object v8, v1, Lc8/MZb;->mYbhpssParams:Ljava/util/HashMap;

    .line 208
    const/4 v9, 0x1

    invoke-static {v9}, Lc8/cac;->getComponentByType(I)Lc8/aac;

    move-result-object v0

    .line 209
    .local v0, "cartComponent":Lc8/aac;
    const-string/jumbo v9, "oneKeyAddCartCallback"

    .line 210
    invoke-direct {p0, v9, v7}, Lc8/OSh;->newAlibcComponentCallback(Ljava/lang/String;Z)Lc8/bac;

    move-result-object v9

    .line 209
    invoke-virtual {v0, v1, v9}, Lc8/aac;->execute(Ljava/lang/Object;Lc8/bac;)V

    .line 211
    const-string/jumbo v9, "{}"

    return-object v9
.end method

.method public showOrderWithSKU(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 91
    new-instance v6, Lc8/MSh;

    invoke-virtual {p0, p1}, Lc8/OSh;->generateJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lc8/MSh;-><init>(Lc8/OSh;Lorg/json/JSONObject;)V

    .line 92
    .local v6, "bcParams":Lc8/MSh;
    new-instance v2, Lc8/vHb;

    invoke-direct {v2}, Lc8/vHb;-><init>()V

    .line 93
    .local v2, "showParams":Lc8/vHb;
    iget-object v0, v6, Lc8/MSh;->title:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lc8/vHb;->setTitle(Ljava/lang/String;)V

    .line 94
    new-instance v3, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    iget-object v0, v6, Lc8/MSh;->pid:Ljava/lang/String;

    iget-object v4, v6, Lc8/MSh;->unionId:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-direct {v3, v0, v4, v5}, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .local v3, "taokeParams":Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;
    new-instance v1, Lc8/EHb;

    invoke-direct {v1, v7, v7}, Lc8/EHb;-><init>(IZ)V

    .line 97
    .local v1, "ordersPage":Lc8/AHb;
    iget-object v0, p0, Lc8/OSh;->mActivity:Landroid/app/Activity;

    iget-object v4, v6, Lc8/MSh;->exParams:Ljava/util/Map;

    const-string/jumbo v5, "showOrderWithSKUCallback"

    .line 98
    invoke-direct {p0, v5}, Lc8/OSh;->newAlibcTradeCallback(Ljava/lang/String;)Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    move-result-object v5

    .line 97
    invoke-static/range {v0 .. v5}, Lc8/wFb;->show(Landroid/app/Activity;Lc8/AHb;Lc8/vHb;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    .line 99
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public showTaoKeOrderWithSKU(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 104
    new-instance v6, Lc8/MSh;

    invoke-virtual {p0, p1}, Lc8/OSh;->generateJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lc8/MSh;-><init>(Lc8/OSh;Lorg/json/JSONObject;)V

    .line 105
    .local v6, "bcParams":Lc8/MSh;
    new-instance v2, Lc8/vHb;

    invoke-direct {v2}, Lc8/vHb;-><init>()V

    .line 106
    .local v2, "showParams":Lc8/vHb;
    iget-object v0, v6, Lc8/MSh;->title:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lc8/vHb;->setTitle(Ljava/lang/String;)V

    .line 107
    new-instance v3, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    iget-object v0, v6, Lc8/MSh;->pid:Ljava/lang/String;

    iget-object v4, v6, Lc8/MSh;->unionId:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-direct {v3, v0, v4, v5}, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .local v3, "taokeParams":Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;
    new-instance v1, Lc8/EHb;

    invoke-direct {v1, v7, v7}, Lc8/EHb;-><init>(IZ)V

    .line 110
    .local v1, "ordersPage":Lc8/AHb;
    iget-object v0, p0, Lc8/OSh;->mActivity:Landroid/app/Activity;

    iget-object v4, v6, Lc8/MSh;->exParams:Ljava/util/Map;

    const-string/jumbo v5, "showTaoKeOrderWithSKUCallback"

    .line 111
    invoke-direct {p0, v5}, Lc8/OSh;->newAlibcTradeCallback(Ljava/lang/String;)Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    move-result-object v5

    .line 110
    invoke-static/range {v0 .. v5}, Lc8/wFb;->show(Landroid/app/Activity;Lc8/AHb;Lc8/vHb;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    .line 112
    const-string/jumbo v0, "{}"

    return-object v0
.end method
