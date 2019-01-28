.class public Lc8/vFb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;
    }
.end annotation


# static fields
.field public static ETICKET_URL:Ljava/lang/String;

.field public static HOME_URL:Ljava/lang/String;

.field public static MINI_SHOUTAO_ITEM_DETAIL_URL:Ljava/lang/String;

.field public static MY_ORDERS_URL:Ljava/lang/String;

.field public static PROMOTION_URL:Ljava/lang/String;

.field public static SHOUTAO_ITEM_DETAIL_URL:Ljava/lang/String;

.field public static SHOW_CART_URL:Ljava/lang/String;

.field public static TB_ITEM_DETAIL_URL:Ljava/lang/String;

.field public static TB_SHOP_URL:Ljava/lang/String;

.field public static TMALL_ITEM_DETAIL_URL:Ljava/lang/String;

.field public static TRADE_APLIPAY_URLS:[Ljava/lang/String;

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field public static volatile context:Landroid/content/Context;

.field public static detailPatterns:[Ljava/lang/String;

.field public static volatile environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

.field public static final executorService:Lc8/gIb;

.field public static firstLevelKeys:Ljava/util/List;

.field public static isDebugMode:Z

.field public static volatile isShowTitleBar:Z

.field public static isVip:Z

.field public static volatile isvCode:Ljava/lang/String;

.field public static nativeOpenPatterns:[Ljava/lang/String;

.field public static sclickPattern:Ljava/lang/String;

.field public static sdkVersion:Ljava/lang/String;

.field public static showErrorInReleaseMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lc8/gIb;->a()Lc8/gIb;

    move-result-object v0

    sput-object v0, Lc8/vFb;->executorService:Lc8/gIb;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "isv_code"

    aput-object v1, v0, v3

    const-string/jumbo v1, "scm"

    aput-object v1, v0, v4

    const-string/jumbo v1, "pvid"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc8/vFb;->firstLevelKeys:Ljava/util/List;

    const-string/jumbo v0, "3.1.2.6"

    sput-object v0, Lc8/vFb;->sdkVersion:Ljava/lang/String;

    sput-boolean v3, Lc8/vFb;->isDebugMode:Z

    sput-boolean v3, Lc8/vFb;->showErrorInReleaseMode:Z

    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;->ONLINE:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    sput-object v0, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    sput-boolean v3, Lc8/vFb;->isVip:Z

    sput-boolean v4, Lc8/vFb;->isShowTitleBar:Z

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "^http(s)?://h5\\.(.*)\\.taobao.com/cm/snap/index\\.html(.*)"

    aput-object v1, v0, v3

    const-string/jumbo v1, "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/core/detail\\.htm(.*)"

    aput-object v1, v0, v4

    const-string/jumbo v1, "^http(s)?://detail\\.(.*)\\.tmall\\.(com|hk)/item\\.htm(.*)"

    aput-object v1, v0, v5

    sput-object v0, Lc8/vFb;->detailPatterns:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "^http(s)?://h5\\.(.*)\\.taobao.com/cm/snap/index\\.html(.*)"

    aput-object v1, v0, v3

    const-string/jumbo v1, "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/core/detail\\.htm(.*)"

    aput-object v1, v0, v4

    const-string/jumbo v1, "^http(s)?://detail\\.(.*)\\.tmall\\.(com|hk)/item\\.htm(.*)"

    aput-object v1, v0, v5

    const-string/jumbo v1, "^http(s)?://shop\\.m\\.taobao\\.com/shop/shop_index\\.htm(.*)"

    aput-object v1, v0, v6

    const-string/jumbo v1, "^http(s)?://s\\.taobao\\.com/(.*)"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "^http(s)?://s\\.click\\.taobao\\.com/(.*)"

    aput-object v2, v0, v1

    sput-object v0, Lc8/vFb;->nativeOpenPatterns:[Ljava/lang/String;

    const-string/jumbo v0, "^http(s)?://s\\.click\\.taobao\\.com/(.*)"

    sput-object v0, Lc8/vFb;->sclickPattern:Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "maliprod.alipay.com/w/trade_pay.do"

    aput-object v1, v0, v3

    const-string/jumbo v1, "maliprod.alipay.com/batch_payment.do"

    aput-object v1, v0, v4

    const-string/jumbo v1, "mclient.alipay.com/w/trade_pay.do"

    aput-object v1, v0, v5

    const-string/jumbo v1, "mclient.alipay.com/batch_payment.do"

    aput-object v1, v0, v6

    sput-object v0, Lc8/vFb;->TRADE_APLIPAY_URLS:[Ljava/lang/String;

    const-string/jumbo v0, "https://h5.m.taobao.com/"

    sput-object v0, Lc8/vFb;->HOME_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc8/vFb;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lc8/bGb;->getInstance()Lc8/bGb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/bGb;->getAppKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/vFb;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lc8/vFb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getUtdid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc8/vFb;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lc8/vFb;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/vFb;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/vFb;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static initData()V
    .locals 0

    invoke-static {}, Lc8/vFb;->updateUrl()V

    return-void
.end method

.method public static isDebuggable()Z
    .locals 1

    sget-boolean v0, Lc8/vFb;->isDebugMode:Z

    return v0
.end method

.method public static setShowErrorInReleaseMode(Z)V
    .locals 0

    sput-boolean p0, Lc8/vFb;->showErrorInReleaseMode:Z

    return-void
.end method

.method public static updateUrl()V
    .locals 3

    sget-object v0, Lc8/BFb;->instance:Lc8/BFb;

    const-string/jumbo v1, "trade.tmallTradeItemUrlHost"

    sget-object v2, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    invoke-virtual {v0, v1, v2}, Lc8/BFb;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/vFb;->TMALL_ITEM_DETAIL_URL:Ljava/lang/String;

    sget-object v0, Lc8/BFb;->instance:Lc8/BFb;

    const-string/jumbo v1, "trade.taobaoTradeItemUrlHost"

    sget-object v2, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    invoke-virtual {v0, v1, v2}, Lc8/BFb;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/vFb;->TB_ITEM_DETAIL_URL:Ljava/lang/String;

    sget-object v0, Lc8/BFb;->instance:Lc8/BFb;

    const-string/jumbo v1, "trade.taobaoMobileTradeItemUrlHost"

    sget-object v2, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    invoke-virtual {v0, v1, v2}, Lc8/BFb;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/vFb;->SHOUTAO_ITEM_DETAIL_URL:Ljava/lang/String;

    sget-object v0, Lc8/BFb;->instance:Lc8/BFb;

    const-string/jumbo v1, "trade.myOrdersUrl"

    sget-object v2, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    invoke-virtual {v0, v1, v2}, Lc8/BFb;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/vFb;->MY_ORDERS_URL:Ljava/lang/String;

    sget-object v0, Lc8/BFb;->instance:Lc8/BFb;

    const-string/jumbo v1, "trade.eTicketDetailUrl"

    sget-object v2, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    invoke-virtual {v0, v1, v2}, Lc8/BFb;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/vFb;->ETICKET_URL:Ljava/lang/String;

    sget-object v0, Lc8/BFb;->instance:Lc8/BFb;

    const-string/jumbo v1, "trade.promotionsUrl"

    sget-object v2, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    invoke-virtual {v0, v1, v2}, Lc8/BFb;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/vFb;->PROMOTION_URL:Ljava/lang/String;

    sget-object v0, Lc8/BFb;->instance:Lc8/BFb;

    const-string/jumbo v1, "trade.shopUrlHost"

    sget-object v2, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    invoke-virtual {v0, v1, v2}, Lc8/BFb;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/vFb;->TB_SHOP_URL:Ljava/lang/String;

    sget-object v0, Lc8/BFb;->instance:Lc8/BFb;

    const-string/jumbo v1, "trade.cartUrl"

    sget-object v2, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    invoke-virtual {v0, v1, v2}, Lc8/BFb;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/vFb;->SHOW_CART_URL:Ljava/lang/String;

    sget-object v0, Lc8/BFb;->instance:Lc8/BFb;

    const-string/jumbo v1, "trade.miniTaobaoItemUrlHost"

    sget-object v2, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    invoke-virtual {v0, v1, v2}, Lc8/BFb;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/vFb;->MINI_SHOUTAO_ITEM_DETAIL_URL:Ljava/lang/String;

    return-void
.end method
