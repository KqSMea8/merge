.class public Lc8/wFb;
.super Ljava/lang/Object;


# static fields
.field public static final ALI_URL:Ljava/lang/String; = "^(?:https?):\\/\\/(([^/\\?#]+\\.)*((taobao|tmall|juhuasuan|xiami|amap|taobaocdn|alipay|etao|alibaba|aliyun|alimama|weibo|tanx|laiwang|alicdn|mmstat|yunos|alibaba-inc|alitrip|aliloan|kanbox|wirlesshare|dingtalk|alimei|cnzz|kuaidadi|autonavi|m\\.yintai|polyinno|spdyidea|h5util|h5tool|5945i|miaostreet|1688|cainiao|taohua|m\\.dfkhgj|m\\.edcdfg|liangxinyao|taopiaopiao)\\.com|(tb|tbcdn|weibo|mashort|mybank|ba\\.ugame\\.uc|game\\.uc)\\.cn|(fastidea|juzone)\\.(me|cc)|lwurl\\.to|(taobao|alipay|cnzz)\\.net|tdd\\.la|yao\\.95095\\.com|(tmall|alipay)\\.hk|ahd\\.so|atb\\.so|mshare\\.cc|juhs\\.me|xianyu\\.mobi)([\\?|#|/].*)?)$"

.field public static final SHOW_FAILURE:I = -0x1

.field public static final SHOW_H5:I = 0x1

.field public static final SHOW_NATIVE:I

.field private static a:Lc8/vHb;

.field private static b:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

.field private static c:Ljava/util/Map;

.field private static d:Ljava/util/Map;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lc8/wFb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/wFb;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lc8/wFb;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Ljava/lang/String;Lc8/AHb;Lcom/alibaba/baichuan/android/trade/b/a;Z)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lc8/wFb;->b(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Ljava/lang/String;Lc8/AHb;Lcom/alibaba/baichuan/android/trade/b/a;Z)V

    return-void
.end method

.method private static a(Lc8/AHb;)V
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lc8/wFb;->e:Ljava/lang/String;

    const-string/jumbo v1, "sendUsabilityFailure"

    const-string/jumbo v2, "tradePage is null!"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lc8/wFb;->e:Ljava/lang/String;

    const-string/jumbo v1, "tradePage is null"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lc8/wFb;->a:Lc8/vHb;

    invoke-virtual {p0, v0}, Lc8/AHb;->isNativeOpen(Lc8/vHb;)Z

    move-result v0

    invoke-virtual {p0}, Lc8/AHb;->getUsabilityPageType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "_Native"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/hGb;->sendUseabilitySuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "_H5"

    goto :goto_1
.end method

.method private static a(Lc8/AHb;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lc8/wFb;->e:Ljava/lang/String;

    const-string/jumbo v1, "sendUsabilityFailure"

    const-string/jumbo v2, "tradePage is null!"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lc8/wFb;->e:Ljava/lang/String;

    const-string/jumbo v1, "tradePage is null"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lc8/wFb;->a:Lc8/vHb;

    invoke-virtual {p0, v0}, Lc8/AHb;->isNativeOpen(Lc8/vHb;)Z

    move-result v0

    invoke-virtual {p0}, Lc8/AHb;->getUsabilityPageType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "_Native"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/hGb;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "_H5"

    goto :goto_1
.end method

.method private static a(Lc8/AHb;Ljava/util/Map;)V
    .locals 4

    invoke-virtual {p0}, Lc8/AHb;->getApi()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "appkey"

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v2, "taokeParam"

    sget-object v0, Lc8/wFb;->b:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    if-nez v0, :cond_2

    const-string/jumbo v0, "{}"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v0

    invoke-virtual {p0}, Lc8/AHb;->getApi()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3, v1}, Lc8/cGb;->sendCustomHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lc8/wFb;->b:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "isv_code"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "isv_code"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lc8/vFb;->isvCode:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lc8/vFb;->isvCode:Ljava/lang/String;

    goto :goto_0
.end method

.method private static b(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Ljava/lang/String;Lc8/AHb;Lcom/alibaba/baichuan/android/trade/b/a;Z)V
    .locals 11

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "trade_taokeParam"

    sget-object v2, Lc8/wFb;->b:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ui_contextParams"

    sget-object v2, Lc8/wFb;->d:Ljava/util/Map;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "show_by_h5"

    sget-object v1, Lc8/wFb;->a:Lc8/vHb;

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lc8/AHb;->isNativeOpen(Lc8/vHb;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "backLoginFail"

    invoke-virtual/range {p5 .. p5}, Lc8/AHb;->isBackWhenLoginFail()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "u_label"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lc8/AHb;->getUsabilityPageType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_H5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lc8/wFb;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "h5\u6253\u5f00\uff0c\u4e0a\u4e0b\u6587\u53c2\u6570\u4e3aparams="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "urlLoadTime"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/android/trade/b/a;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    sget-object v1, Lc8/vFb;->executorService:Lc8/gIb;

    if-eqz v1, :cond_1

    sget-object v1, Lc8/wFb;->e:Ljava/lang/String;

    const-string/jumbo v2, "\u4f7f\u7528\u7b2c\u4e09\u65b9webview\u6253\u5f00"

    invoke-static {v1, v2}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lc8/TGb;->INSTANCE:Lc8/TGb;

    invoke-virtual/range {p5 .. p5}, Lc8/AHb;->getAdditionalHttpHeaders()Ljava/util/Map;

    move-result-object v9

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v8, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lc8/TGb;->show(Landroid/app/Activity;Ljava/lang/String;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/b/a;Ljava/util/Map;Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lc8/wFb;->e:Ljava/lang/String;

    const-string/jumbo v2, "\u4f7f\u7528Trade\u7684webview\u6253\u5f00"

    invoke-static {v1, v2}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lc8/TGb;->INSTANCE:Lc8/TGb;

    check-cast v7, Ljava/io/Serializable;

    move-object/from16 v0, p6

    invoke-virtual {v1, p0, p4, v7, v0}, Lc8/TGb;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/io/Serializable;Lcom/alibaba/baichuan/android/trade/b/a;)V

    goto :goto_1
.end method

.method public static getMAH5QueryUrl(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lc8/ZFb;->getMAH5QueryUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAliUrl(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "^(?:https?):\\/\\/(([^/\\?#]+\\.)*((taobao|tmall|juhuasuan|xiami|amap|taobaocdn|alipay|etao|alibaba|aliyun|alimama|weibo|tanx|laiwang|alicdn|mmstat|yunos|alibaba-inc|alitrip|aliloan|kanbox|wirlesshare|dingtalk|alimei|cnzz|kuaidadi|autonavi|m\\.yintai|polyinno|spdyidea|h5util|h5tool|5945i|miaostreet|1688|cainiao|taohua|m\\.dfkhgj|m\\.edcdfg|liangxinyao|taopiaopiao)\\.com|(tb|tbcdn|weibo|mashort|mybank|ba\\.ugame\\.uc|game\\.uc)\\.cn|(fastidea|juzone)\\.(me|cc)|lwurl\\.to|(taobao|alipay|cnzz)\\.net|tdd\\.la|yao\\.95095\\.com|(tmall|alipay)\\.hk|ahd\\.so|atb\\.so|mshare\\.cc|juhs\\.me|xianyu\\.mobi)([\\?|#|/].*)?)$"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "^(?:https?):\\/\\/(([^/\\?#]+\\.)*((taobao|tmall|juhuasuan|xiami|amap|taobaocdn|alipay|etao|alibaba|aliyun|alimama|weibo|tanx|laiwang|alicdn|mmstat|yunos|alibaba-inc|alitrip|aliloan|kanbox|wirlesshare|dingtalk|alimei|cnzz|kuaidadi|autonavi|m\\.yintai|polyinno|spdyidea|h5util|h5tool|5945i|miaostreet|1688|cainiao|taohua|m\\.dfkhgj|m\\.edcdfg|liangxinyao|taopiaopiao)\\.com|(tb|tbcdn|weibo|mashort|mybank|ba\\.ugame\\.uc|game\\.uc)\\.cn|(fastidea|juzone)\\.(me|cc)|lwurl\\.to|(taobao|alipay|cnzz)\\.net|tdd\\.la|yao\\.95095\\.com|(tmall|alipay)\\.hk|ahd\\.so|atb\\.so|mshare\\.cc|juhs\\.me|xianyu\\.mobi)([\\?|#|/].*)?)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static show(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lc8/AHb;Lc8/vHb;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I
    .locals 10

    sget-object v2, Lc8/wFb;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AlibcTrade.show(): AlibcPage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p4, :cond_0

    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " taoke.pid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p6, :cond_1

    const-string/jumbo v1, "null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " activity:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p0, :cond_2

    const-string/jumbo v1, "null"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lc8/xFb;->initResult:Lc8/wHb;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lc8/wHb;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u521d\u59cb\u5316\u5931\u8d25, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lc8/wHb;->errorMessage:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-static {v0, v2, v1}, Lc8/YHb;->a(Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;ILjava/lang/String;)V

    const/4 v1, -0x1

    :goto_3
    return v1

    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p6

    iget-object v1, v0, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;->pid:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    sget-object v1, Lc8/xFb;->initState:Lc8/xHb;

    invoke-virtual {v1}, Lc8/xHb;->isInitializing()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x3ea

    const-string/jumbo v2, "\u521d\u59cb\u5316\u672a\u5b8c\u6210,\u8bf7\u7a0d\u540e!"

    move-object/from16 v0, p8

    invoke-static {v0, v1, v2}, Lc8/YHb;->a(Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;ILjava/lang/String;)V

    const/4 v1, -0x1

    goto :goto_3

    :cond_4
    sput-object p5, Lc8/wFb;->a:Lc8/vHb;

    if-nez p5, :cond_5

    new-instance v1, Lc8/vHb;

    invoke-direct {v1}, Lc8/vHb;-><init>()V

    sput-object v1, Lc8/wFb;->a:Lc8/vHb;

    :cond_5
    new-instance v7, Lcom/alibaba/baichuan/android/trade/b/a;

    sget-object v1, Lc8/wFb;->a:Lc8/vHb;

    invoke-direct {v7, p4, v1}, Lcom/alibaba/baichuan/android/trade/b/a;-><init>(Lc8/AHb;Lc8/vHb;)V

    const-string/jumbo v1, "allTime"

    invoke-virtual {v7, v1}, Lcom/alibaba/baichuan/android/trade/b/a;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "analysisTime"

    invoke-virtual {v7, v1}, Lcom/alibaba/baichuan/android/trade/b/a;->a(Ljava/lang/String;)V

    move-object/from16 v0, p8

    invoke-static {p4, p0, v7, v0}, Lc8/QHb;->checkParams(Lc8/AHb;Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/b/a;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lc8/wFb;->e:Ljava/lang/String;

    const-string/jumbo v2, "page\u68c0\u6d4b\u53c2\u6570\u51fa\u9519\uff0c\u6d41\u7a0b\u4e2d\u6b62"

    invoke-static {v1, v2}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_6

    new-instance p4, Lc8/AHb;

    invoke-direct {p4}, Lc8/AHb;-><init>()V

    :cond_6
    const-string/jumbo v1, "\u53c2\u6570\u4e0d\u5408\u6cd5"

    invoke-static {p4, v1}, Lc8/wFb;->a(Lc8/AHb;Ljava/lang/String;)V

    const/4 v1, -0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p5}, Lc8/vHb;->isShowTitleBar()Z

    move-result v1

    sput-boolean v1, Lc8/vFb;->isShowTitleBar:Z

    invoke-static/range {p7 .. p7}, Lc8/wFb;->a(Ljava/util/Map;)V

    sput-object p7, Lc8/wFb;->c:Ljava/util/Map;

    invoke-static/range {p7 .. p7}, Lc8/QHb;->createUrlParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lc8/wFb;->d:Ljava/util/Map;

    sget-object v1, Lc8/wFb;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url \u53c2\u6570\u4e3a mUrlParams="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/wFb;->d:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p8

    iput-object v0, v7, Lcom/alibaba/baichuan/android/trade/b/a;->e:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    sput-object p6, Lc8/wFb;->b:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    if-nez p6, :cond_8

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cHb;->getNBTTradeTaokeParams()Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cHb;->getTaokeParams()Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    move-result-object v1

    sput-object v1, Lc8/wFb;->b:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    sget-object v1, Lc8/wFb;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u4f7f\u7528\u5168\u5c40\u6dd8\u5ba2\u53c2\u6570,taokeParams="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    sget-object v1, Lc8/wFb;->a:Lc8/vHb;

    invoke-virtual {p4, v1}, Lc8/AHb;->isNativeOpen(Lc8/vHb;)Z

    move-result v1

    invoke-static {}, Lc8/MFb;->getInstance()Lc8/MFb;

    sget-object v2, Lc8/wFb;->a:Lc8/vHb;

    invoke-virtual {v2}, Lc8/vHb;->getClientType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/MFb;->isApplinkSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v1, Lc8/wFb;->e:Ljava/lang/String;

    const-string/jumbo v2, "\u4e0d\u652f\u6301applink\uff0c\u901a\u8fc7H5\u6253\u5f00"

    invoke-static {v1, v2}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_9
    const-string/jumbo v2, "analysisTime"

    invoke-virtual {v7, v2}, Lcom/alibaba/baichuan/android/trade/b/a;->b(Ljava/lang/String;)V

    if-eqz v1, :cond_b

    sget-object v1, Lc8/wFb;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u901a\u8fc7native\u6253\u5f00\uff0c\u6253\u5f00\u53c2\u6570\u4e3ataokeparamers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/wFb;->b:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " showparamers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/wFb;->a:Lc8/vHb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " urlParamers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/wFb;->d:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "goTaobaoTime"

    invoke-virtual {v7, v1}, Lcom/alibaba/baichuan/android/trade/b/a;->a(Ljava/lang/String;)V

    sget-object v1, Lc8/wFb;->b:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    sget-object v2, Lc8/wFb;->a:Lc8/vHb;

    sget-object v3, Lc8/wFb;->d:Ljava/util/Map;

    invoke-virtual {p4, v1, v2, v3, p0}, Lc8/AHb;->tryNativeJump(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Lc8/vHb;Ljava/util/Map;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lc8/wFb;->e:Ljava/lang/String;

    const-string/jumbo v2, "\u901a\u8fc7applink\u6253\u5f00\u624b\u6dd8\u6210\u529f"

    invoke-static {v1, v2}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "goTaobaoTime"

    invoke-virtual {v7, v1}, Lcom/alibaba/baichuan/android/trade/b/a;->b(Ljava/lang/String;)V

    const-string/jumbo v1, "allTime"

    invoke-virtual {v7, v1}, Lcom/alibaba/baichuan/android/trade/b/a;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/alibaba/baichuan/android/trade/b/a;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;

    invoke-static {v1}, Lc8/hGb;->sendPerfomancePoint(Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;)V

    sget-object v1, Lc8/wFb;->d:Ljava/util/Map;

    invoke-static {p4, v1}, Lc8/wFb;->a(Lc8/AHb;Ljava/util/Map;)V

    invoke-static {p4}, Lc8/wFb;->a(Lc8/AHb;)V

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v1, "applink\u8c03\u7528\u5931\u8d25"

    invoke-static {p4, v1}, Lc8/wFb;->a(Lc8/AHb;Ljava/lang/String;)V

    invoke-virtual {v7, p4}, Lcom/alibaba/baichuan/android/trade/b/a;->a(Lc8/AHb;)V

    :cond_b
    sget-object v1, Lc8/wFb;->b:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    invoke-virtual {p4, v1}, Lc8/AHb;->needTaoke(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lc8/wFb;->e:Ljava/lang/String;

    const-string/jumbo v2, "\u8fdb\u884c\u6dd8\u5ba2\u6253\u70b9"

    invoke-static {v1, v2}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lc8/wFb;->b:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    new-instance v1, Lc8/GFb;

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lc8/GFb;-><init>(Lc8/AHb;Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lcom/alibaba/baichuan/android/trade/b/a;Lc8/vHb;)V

    invoke-virtual {p4, v9, v7, v1}, Lc8/AHb;->taokeTraceAndGenUrl(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Lcom/alibaba/baichuan/android/trade/b/a;Lc8/SGb;)V

    :goto_4
    sget-object v1, Lc8/wFb;->d:Ljava/util/Map;

    invoke-static {p4, v1}, Lc8/wFb;->a(Lc8/AHb;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_3

    :cond_c
    sget-object v1, Lc8/wFb;->d:Ljava/util/Map;

    invoke-virtual {p4, v1, v7}, Lc8/AHb;->getAddParamsUrl(Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/b/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5}, Lc8/vHb;->isProxyWebview()Z

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v8}, Lc8/wFb;->b(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Ljava/lang/String;Lc8/AHb;Lcom/alibaba/baichuan/android/trade/b/a;Z)V

    goto :goto_4
.end method

.method public static show(Landroid/app/Activity;Lc8/AHb;Lc8/vHb;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I
    .locals 9

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Lc8/wFb;->show(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lc8/AHb;Lc8/vHb;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    move-result v0

    return v0
.end method
