.class public Lc8/HFb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/IFb;


# static fields
.field public static final ALIPASDK_CLASS_NAME:Ljava/lang/String; = "com.alipay.sdk.app.PayTask"

.field public static final PAY_SUCCESS_CODE:Ljava/lang/String; = "9000"

.field private static volatile a:Lc8/HFb;


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lc8/HFb;->a:Lc8/HFb;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "AlibcAlipay"

    iput-object v0, p0, Lc8/HFb;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lc8/HFb;Ljava/util/ArrayList;)Lcom/alibaba/baichuan/android/trade/model/AliPayResult;
    .locals 1

    invoke-direct {p0, p1}, Lc8/HFb;->a(Ljava/util/ArrayList;)Lcom/alibaba/baichuan/android/trade/model/AliPayResult;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)Lcom/alibaba/baichuan/android/trade/model/AliPayResult;
    .locals 4

    new-instance v0, Lc8/FFb;

    invoke-direct {v0}, Lc8/FFb;-><init>()V

    invoke-virtual {v0, p1}, Lc8/FFb;->a(Ljava/util/List;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v2, "160101"

    if-nez v1, :cond_2

    const-string/jumbo v0, "\u67e5\u8be2\u5931\u8d25"

    :goto_0
    invoke-direct {p0, v2, v0}, Lc8/HFb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "code = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ,errmsg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lc8/FFb;->a(Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)Lcom/alibaba/baichuan/android/trade/model/AliPayResult;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lc8/HFb;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lc8/HFb;->a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lc8/HFb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lc8/HFb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string/jumbo v0, "com.alipay.sdk.app.PayTask"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.app.Activity"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/XHb;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.sdk.app.PayTask"

    const-string/jumbo v2, "pay"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "java.lang.String"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "boolean"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Lc8/XHb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AlibcAlipay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8c03\u7528ApliPaySDK\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v0, 0x329

    const-string/jumbo v1, "\u4f7f\u7528Apliay SDK\u8c03\u7528\u65b9\u6cd5\u5931\u8d25\uff0c\u8bf7\u4e0b\u8f7d\u6700\u65b0\u7684ApliaySDK lib\u5305\u6216\u8005\u4f7f\u7528H5\u65b9\u5f0f\u4ed8\u6b3e"

    invoke-interface {p1, v0, v1}, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;->finish()V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 5

    const-string/jumbo v0, "pay_order_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic a(Lc8/HFb;Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lc8/HFb;->a(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 1

    const-string/jumbo v0, "Pay_Result_Alipay"

    invoke-static {v0}, Lc8/hGb;->sendUseabilitySuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lc8/HFb;)V
    .locals 0

    invoke-direct {p0}, Lc8/HFb;->a()V

    return-void
.end method

.method static synthetic a(Lc8/HFb;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Landroid/webkit/WebView;Lcom/alibaba/baichuan/android/trade/model/AliPayResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lc8/HFb;->a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Landroid/webkit/WebView;Lcom/alibaba/baichuan/android/trade/model/AliPayResult;)V

    return-void
.end method

.method static synthetic a(Lc8/HFb;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lc8/HFb;->a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Ljava/lang/String;Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic a(Lc8/HFb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc8/HFb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Landroid/webkit/WebView;Lcom/alibaba/baichuan/android/trade/model/AliPayResult;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lc8/vFb;->executorService:Lc8/gIb;

    new-instance v1, Lc8/LFb;

    invoke-direct {v1, p0, p3, p1, p2}, Lc8/LFb;-><init>(Lc8/HFb;Lcom/alibaba/baichuan/android/trade/model/AliPayResult;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Lc8/gIb;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 2

    const-string/jumbo v0, "AlibcAlipay"

    const-string/jumbo v1, "alipay\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lc8/vFb;->executorService:Lc8/gIb;

    new-instance v1, Lc8/KFb;

    invoke-direct {v1, p0, p2, p1, p3}, Lc8/KFb;-><init>(Lc8/HFb;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Lc8/gIb;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "Pay_Result_Alipay"

    invoke-static {v0, p2, p1}, Lc8/hGb;->sendUseabilityFailureForOtherErrmsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "trade_no=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"&extern_token=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"&partner=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "PARTNER_TAOBAO_ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "&payPhaseId=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lc8/HFb;
    .locals 2

    sget-object v0, Lc8/HFb;->a:Lc8/HFb;

    if-nez v0, :cond_1

    const-class v1, Lc8/HFb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/HFb;->a:Lc8/HFb;

    if-nez v0, :cond_0

    new-instance v0, Lc8/HFb;

    invoke-direct {v0}, Lc8/HFb;-><init>()V

    sput-object v0, Lc8/HFb;->a:Lc8/HFb;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lc8/HFb;->a:Lc8/HFb;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public isAlipaySDKAvailable()Z
    .locals 2

    :try_start_0
    const-string/jumbo v0, "com.alipay.sdk.app.PayTask"

    invoke-static {v0}, Lc8/HFb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "AlibcAlipay"

    const-string/jumbo v1, "Alipay SDK is not available"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openAlipay(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p0}, Lc8/HFb;->isAlipaySDKAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v0, "alipay_trade_no"

    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "trade_nos"

    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string/jumbo v1, "payPhaseId"

    invoke-virtual {v5, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "pay_phase_id"

    invoke-virtual {v5, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string/jumbo v2, "s_id"

    invoke-virtual {v5, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lc8/HFb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lc8/vFb;->executorService:Lc8/gIb;

    new-instance v0, Lc8/JFb;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lc8/JFb;-><init>(Lc8/HFb;Landroid/webkit/WebView;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v0}, Lc8/gIb;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
