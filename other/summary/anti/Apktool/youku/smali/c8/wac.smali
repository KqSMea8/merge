.class public Lc8/wac;
.super Ljava/lang/Object;


# static fields
.field public static final ERRNO_COMPONENT_CART_CANCEL_AUTH:Ljava/lang/String; = "210131"

.field public static final ERRNO_COMPONENT_CART_CANCEL_LOGIN:Ljava/lang/String; = "210121"

.field public static final ERRNO_COMPONENT_CART_MTOP_FAIL:Ljava/lang/String; = "210151"

.field public static final ERRNO_COMPONENT_CART_PARM:Ljava/lang/String; = "210100"

.field public static final ERRNO_COMPONENT_COUPON_CANCEL_LOGIN:Ljava/lang/String; = "210221"

.field public static final ERRNO_COMPONENT_COUPON_MTOP_FAIL:Ljava/lang/String; = "210251"

.field public static final ERRNO_COMPONENT_COUPON_PARM:Ljava/lang/String; = "210200"

.field public static final ERRNO_COMPONENT_INIT_FAIL:Ljava/lang/String; = "180201"

.field public static final ERRNO_NBSDK_INIT_FAIL:Ljava/lang/String; = "180101"

.field public static final ERRNO_WANT_CART_DISABLE:Ljava/lang/String; = "220142"

.field public static final ERRNO_WANT_CART_NO_PACKEGE:Ljava/lang/String; = "220141"

.field public static final ERRNO_WANT_CART_PARM:Ljava/lang/String; = "220100"

.field public static final ITEMID_KEY_FOR_MTOP:Ljava/lang/String; = "itemId"

.field public static final ITEMID_KEY_FOR_SHENYICANMOU:Ljava/lang/String; = "item_id"

.field public static final ITEMID_KEY_FOR_YBHPSS:Ljava/lang/String; = "item_id"

.field public static final LABEL_KEY_FOR_YBHPSS:Ljava/lang/String; = "bc_label"

.field public static final LABEL_VALUE_FOR_YBHPSS_CART_API:Ljava/lang/String; = "baichuan_cart_api"

.field public static final LABEL_VALUE_FOR_YBHPSS_CART_WANT:Ljava/lang/String; = "baichuan_cart_want"

.field public static final LABEL_VALUE_FOR_YBHPSS_COUPON_API:Ljava/lang/String; = "baichuan_coupon_api"

.field public static final LABEL_VALUE_FOR_YBHPSS_COUPON_WANT:Ljava/lang/String; = "baichuan_coupon_want"

.field public static final MODEL_NAME_COMPONENT:Ljava/lang/String; = "BCPCSDK"

.field public static final MODEL_NAME_WANT:Ljava/lang/String; = "BCWant"

.field public static final MONITOR_POINT_COMPONENT_INIT:Ljava/lang/String; = "PacketContainer_Init"

.field public static final MONITOR_POINT_WANT_CART:Ljava/lang/String; = "addCart"

.field public static final MONITOR_POINT_WANT_COUPON_GET:Ljava/lang/String; = "Coupon_Get"

.field public static final MONITOR_POINT_WANT_SELLER_COUPON_QUERY:Ljava/lang/String; = "Coupon_Seller_Query"

.field public static final MTOP_ERRNO_AUTH_CANCEL:Ljava/lang/String; = "FAIL_SYS_ACCESS_TOKEN_CANCEL"

.field public static final MTOP_ERRNO_LOGIN_CANCEL:Ljava/lang/String; = "FAIL_SYS_LOGIN_CANCEL"

.field public static final UT_CONTROL_NAME_WANTCART_PRESS:Ljava/lang/String; = "Page_Baichuan_Want_Cart_Succeed"

.field public static final UT_CONTROL_NAME_WANT_CART:Ljava/lang/String; = "Page_Baichuan_Want_Cart"

.field public static final UT_CONTROL_NAME_WANT_DISAPPEAR:Ljava/lang/String; = "Page_Baichuan_Want_Disappear"

.field public static final UT_CONTROL_NAME_WANT_PRESS:Ljava/lang/String; = "Page_Baichuan_Want_Pressed"

.field public static final UT_EVENT_ID_ADDCART_CLICK:I = 0x835

.field public static final UT_EVENT_ID_ADDCART_UI:I = 0x899


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string/jumbo v3, "&"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "utf-8"

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AlibcComponentTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6784\u5efaYbhpss\u53c2\u6570\u9519\u8bef\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createYbhpss(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lc8/wac;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    if-eqz p1, :cond_2

    invoke-static {v0, p1}, Lc8/wac;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static preprocessYbhpss(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 4

    if-nez p0, :cond_1

    const-string/jumbo v0, "AlibcComponentTrack"

    const-string/jumbo v1, "params is null when add label"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string/jumbo v0, "ttid"

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cHb;->getWebTTID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "bc_label"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "AlibcComponentTrack"

    const-string/jumbo v1, "label value equal"

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    const-string/jumbo v0, "bc_label"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "AlibcComponentTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removed label value is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "bc_label"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "bc_label"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Lc8/cGb;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static sendUseabilitySuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lc8/cGb;->sendUseabilitySuccess(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static sentUserTrack(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "item_id"

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "item_id"

    invoke-virtual {v6, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v3, "ybhpss"

    invoke-static {p2, v2}, Lc8/wac;->createYbhpss(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v6}, Lc8/cGb;->sendCustomHit(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void

    :cond_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v6, v1

    goto :goto_1
.end method
