.class public Lc8/BFb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/AFb;
    }
.end annotation


# static fields
.field public static final URL_CONFIG:Ljava/lang/String; = "{\n    \"Release\": {\n        \"trade.tmallTradeItemUrlHost\": \"https://detail.m.tmall.com/item.htm\",\n        \"trade.taobaoTradeItemUrlHost\": \"https://h5.m.taobao.com/cm/snap/index.html\",\n        \"trade.taobaoMobileTradeItemUrlHost\": \"https://h5.m.taobao.com/awp/core/detail.htm\",\n        \"trade.miniTaobaoItemUrlHost\": \"https://h5.m.taobao.com/trade/detail.html\",\n        \"trade.myCardCouponsUrl\": \"https://h5.m.taobao.com/vip/portal.html\",\n        \"trade.myOrdersUrl\": \"https://h5.m.taobao.com/mlapp/olist.html\",\n        \"trade.eTicketDetailUrl\": \"https://bendi.m.taobao.com/coupon/q/eticket_detail.htm?isArchive=false\",\n        \"trade.promotionsUrl\": \"https://ff.win.taobao.com?des=promotions&cc=tae\",\n        \"trade.shopUrlHost\": \"https://shop.m.taobao.com/shop/shop_index.htm\",\n        \"trade.cartUrl\": \"https://h5.m.taobao.com/mlapp/cart.html\"\n    },\n    \"PreRelease\": {\n        \"trade.promotionsUrl\": \"http://ff.win.taobao.com?des=promotions&cc=tae\"\n    },\n    \"Daily\": {\n        \"trade.promotionsUrl\": \"http://ff.win.daily.taobao.net?des=promotions&cc=tae\"\n    }\n}"

.field public static final instance:Lc8/BFb;


# instance fields
.field public TAG:Ljava/lang/String;

.field a:Ljava/util/Map;

.field b:Ljava/util/Map;

.field c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc8/BFb;

    invoke-direct {v0}, Lc8/BFb;-><init>()V

    sput-object v0, Lc8/BFb;->instance:Lc8/BFb;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "AlibcUrlCenter"

    iput-object v0, p0, Lc8/BFb;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lc8/BFb;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "{\n    \"Release\": {\n        \"trade.tmallTradeItemUrlHost\": \"https://detail.m.tmall.com/item.htm\",\n        \"trade.taobaoTradeItemUrlHost\": \"https://h5.m.taobao.com/cm/snap/index.html\",\n        \"trade.taobaoMobileTradeItemUrlHost\": \"https://h5.m.taobao.com/awp/core/detail.htm\",\n        \"trade.miniTaobaoItemUrlHost\": \"https://h5.m.taobao.com/trade/detail.html\",\n        \"trade.myCardCouponsUrl\": \"https://h5.m.taobao.com/vip/portal.html\",\n        \"trade.myOrdersUrl\": \"https://h5.m.taobao.com/mlapp/olist.html\",\n        \"trade.eTicketDetailUrl\": \"https://bendi.m.taobao.com/coupon/q/eticket_detail.htm?isArchive=false\",\n        \"trade.promotionsUrl\": \"https://ff.win.taobao.com?des=promotions&cc=tae\",\n        \"trade.shopUrlHost\": \"https://shop.m.taobao.com/shop/shop_index.htm\",\n        \"trade.cartUrl\": \"https://h5.m.taobao.com/mlapp/cart.html\"\n    },\n    \"PreRelease\": {\n        \"trade.promotionsUrl\": \"http://ff.win.taobao.com?des=promotions&cc=tae\"\n    },\n    \"Daily\": {\n        \"trade.promotionsUrl\": \"http://ff.win.daily.taobao.net?des=promotions&cc=tae\"\n    }\n}"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "Release"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "PreRelease"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "Daily"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0}, Lc8/nIb;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc8/BFb;->a:Ljava/util/Map;

    invoke-static {v2}, Lc8/nIb;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc8/BFb;->b:Ljava/util/Map;

    invoke-static {v1}, Lc8/nIb;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc8/BFb;->c:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/BFb;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "URLCenter\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getValue(Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lc8/AFb;->a:[I

    invoke-virtual {p2}, Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lc8/BFb;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lc8/BFb;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/BFb;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ".m.taobao.com"

    const-string/jumbo v3, ".wapa.taobao.com"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "https://"

    const-string/jumbo v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lc8/BFb;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/BFb;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_2
    if-nez v0, :cond_4

    :goto_3
    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, ".m.taobao.com"

    const-string/jumbo v3, ".waptest.taobao.com"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "https://"

    const-string/jumbo v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
