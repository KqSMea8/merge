.class public Lc8/rHb;
.super Ljava/lang/Object;


# static fields
.field public static final RE_ADDCART_URLS:[Ljava/lang/String;

.field public static final RE_ADD_PARAM_URLS:[Ljava/lang/String;

.field public static final RE_ALIPAY_URLS:[Ljava/lang/String;

.field public static final RE_DETAIL_URLS:[Ljava/lang/String;

.field public static final RE_LOGIN_URLS:[Ljava/lang/String;

.field public static final RE_LOGOUT_URLS:[Ljava/lang/String;

.field public static final RE_SCLICK_URLS:[Ljava/lang/String;

.field public static final RE_SHOP_URLS:[Ljava/lang/String;

.field public static final RE_TBOPEN_URLS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "^http(s)?://login\\.(.*)\\.taobao.com/login\\.htm(.*)$"

    aput-object v1, v0, v3

    const-string/jumbo v1, "^http(s)?://login\\.tmall\\.com(.*)$"

    aput-object v1, v0, v4

    const-string/jumbo v1, "^http(s)?://login.taobao.com/member/login.jhtml(.*)$"

    aput-object v1, v0, v5

    sput-object v0, Lc8/rHb;->RE_LOGIN_URLS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "^http(s)?://login\\.(.*)\\.taobao\\.com/logout(.*)$"

    aput-object v1, v0, v3

    sput-object v0, Lc8/rHb;->RE_LOGOUT_URLS:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "^http(s)?://(maliprod|mclient)\\.alipay\\.com/w/(trade_pay|batch_payment)\\.do(.*)$"

    aput-object v1, v0, v3

    const-string/jumbo v1, "^http(s)?://(mobileclientgw|maliprod)\\.stable\\.alipay\\.net/w/(trade_pay|batch_payment)\\.do(.*)$"

    aput-object v1, v0, v4

    const-string/jumbo v1, "^http(s)?://(maliprod|mclient)\\.alipay\\.com/(trade_pay|batch_payment)\\.do(.*)$"

    aput-object v1, v0, v5

    const-string/jumbo v1, "^http(s)?://(mobileclientgw|maliprod)\\.stable\\.alipay\\.net/(trade_pay|batch_payment)\\.do(.*)$"

    aput-object v1, v0, v6

    sput-object v0, Lc8/rHb;->RE_ALIPAY_URLS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "^tbopen://m.taobao\\.com/tbopen/index\\.htm(.*)$"

    aput-object v1, v0, v3

    sput-object v0, Lc8/rHb;->RE_TBOPEN_URLS:[Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "^http(s)?://h5\\.(.*)\\.taobao\\.com/cm/snap/index\\.html(.*)"

    aput-object v1, v0, v3

    const-string/jumbo v1, "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/base/order\\.htm(.*)"

    aput-object v1, v0, v4

    const-string/jumbo v1, "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/base/cart\\.htm(.*)"

    aput-object v1, v0, v5

    const-string/jumbo v1, "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/base/bag\\.htm(.*)"

    aput-object v1, v0, v6

    const-string/jumbo v1, "^http(s)?://h5\\.(.*)\\.taobao\\.com/mlapp/cart\\.htm(.*)"

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string/jumbo v2, "^http(s)?://h5\\.(.*)\\.taobao\\.com/cart/order\\.htm(.*)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/core/detail\\.htm(.*)"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "^http(s)?://h5\\.(.*)\\.taobao\\.com/mlapp/olist\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "^http(s)?://shop\\.(.*)\\.taobao\\.com/shop/shopIndex\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "^http(s)?://shop\\.(.*)\\.taobao\\.com/shop/shop_index\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "^http(s)?://h5\\.(.*)\\.taobao\\.com/trade/detail\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "^http(s)?://detail\\.(.*)\\.tmall\\.(com|hk)/item\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "^http(s)?://buy\\.(.*)\\.tmall\\.(com|hk)/order/confirmOrderWap\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "^http(s)?://((?!(login|buy|s.click))\\.)(.*)\\.tmall\\.com(.*)$"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "^http(s)?://buy\\.(.*)\\.tmall\\.(com|hk)/order/confirm_order_wap\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "^http(s)?://cart\\.(.*)\\.tmall\\.(com|hk)/cart/myCart\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "^http(s)?://h5\\.(.*)\\.tmall\\.(com|hk)/awp/base/order\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "^http(s)?://h5\\.(.*)\\.tmall\\.(com|hk)/cart/order\\.htm(.*)"

    aput-object v2, v0, v1

    sput-object v0, Lc8/rHb;->RE_ADD_PARAM_URLS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "^http(s)?://h5\\.(.*)\\.taobao\\.com/baichuanWebViewBridge?(.*)addCart=success(.*)$"

    aput-object v1, v0, v3

    sput-object v0, Lc8/rHb;->RE_ADDCART_URLS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "^http(s)?://shop\\.(.*)\\.taobao.com/shop/shop_index.htm(.*)"

    aput-object v1, v0, v3

    const-string/jumbo v1, "^http(s)?://shop\\.(.*)\\.tmall.com/shop/shop_index.htm(.*)"

    aput-object v1, v0, v4

    sput-object v0, Lc8/rHb;->RE_SHOP_URLS:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "^http(s)?://h5\\.(.*)\\.taobao.com/cm/snap/index\\.html(.*)"

    aput-object v1, v0, v3

    const-string/jumbo v1, "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/core/detail\\.htm(.*)"

    aput-object v1, v0, v4

    const-string/jumbo v1, "^http(s)?://detail\\.(.*)\\.tmall\\.(com|hk)/item\\.htm(.*)"

    aput-object v1, v0, v5

    sput-object v0, Lc8/rHb;->RE_DETAIL_URLS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "^http(s)?://s\\.click\\.(taobao|tmall)\\.com/(.*)"

    aput-object v1, v0, v3

    sput-object v0, Lc8/rHb;->RE_SCLICK_URLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
