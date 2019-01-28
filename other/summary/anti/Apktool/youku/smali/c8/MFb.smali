.class public Lc8/MFb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/NFb;


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile d:Lc8/MFb;


# instance fields
.field private b:Lc8/Oef;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lc8/MFb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/MFb;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lc8/MFb;->d:Lc8/MFb;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lc8/Oef;->getInstance()Lc8/Oef;

    move-result-object v0

    iput-object v0, p0, Lc8/MFb;->b:Lc8/Oef;

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)Lc8/yff;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v1, "shopId"

    invoke-virtual {p0, p1, v1}, Lc8/MFb;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Lc8/Bff;

    invoke-direct {v2, v1}, Lc8/Bff;-><init>(Ljava/lang/String;)V

    :goto_2
    if-eqz v2, :cond_0

    const-string/jumbo v0, "backURL"

    invoke-virtual {p0, p1, v0}, Lc8/MFb;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v2, v0}, Lc8/yff;->setBackUrl(Ljava/lang/String;)Lc8/yff;

    :goto_3
    const-string/jumbo v0, "e"

    invoke-virtual {p0, p1, v0}, Lc8/MFb;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2, v0}, Lc8/yff;->setE(Ljava/lang/String;)Lc8/yff;

    :cond_3
    const-string/jumbo v0, "sign"

    invoke-virtual {p0, p1, v0}, Lc8/MFb;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v2, v0}, Lc8/yff;->setSign(Ljava/lang/String;)Lc8/yff;

    :cond_4
    const-string/jumbo v0, "type"

    invoke-virtual {p0, p1, v0}, Lc8/MFb;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v2, v0}, Lc8/yff;->setType(Ljava/lang/String;)Lc8/yff;

    :cond_5
    const-string/jumbo v0, "addParams"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    instance-of v0, v1, Ljava/util/HashMap;

    if-eqz v0, :cond_a

    move-object v0, v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_a

    check-cast v1, Ljava/util/HashMap;

    :goto_4
    const-string/jumbo v0, "ybhpss"

    invoke-virtual {p0, p1, v0}, Lc8/MFb;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "ybhpss"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v2, v1}, Lc8/yff;->addExtraParams(Ljava/util/HashMap;)Lc8/yff;

    const-string/jumbo v0, "TBAuth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "jsonParams"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    instance-of v0, v1, Lorg/json/JSONObject;

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_7

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lc8/yff;->setParams(Lorg/json/JSONObject;)V

    :cond_7
    const-string/jumbo v0, "appType"

    invoke-virtual {p0, p1, v0}, Lc8/MFb;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v2, v0}, Lc8/yff;->setAppType(Ljava/lang/String;)Lc8/yff;

    :cond_8
    move-object v0, v2

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v2, "SHOP"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v2, "DETAIL"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v2, "TBURI"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto/16 :goto_1

    :pswitch_1
    const-string/jumbo v1, "itemId"

    invoke-virtual {p0, p1, v1}, Lc8/MFb;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Lc8/zff;

    invoke-direct {v2, v1}, Lc8/zff;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    const-string/jumbo v1, "url"

    invoke-virtual {p0, p1, v1}, Lc8/MFb;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Lc8/Cff;

    invoke-direct {v2, v1}, Lc8/Cff;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v0, "alisdk://"

    invoke-virtual {v2, v0}, Lc8/yff;->setBackUrl(Ljava/lang/String;)Lc8/yff;

    goto/16 :goto_3

    :cond_a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_4

    :cond_b
    move-object v2, v0

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x26d2f6 -> :sswitch_0
        0x4bf001e -> :sswitch_2
        0x77fd0c51 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;Z)V
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

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
    const-string/jumbo v2, "ybhpss"

    const-string/jumbo v0, "trade"

    const-string/jumbo v3, "ybhpss"

    invoke-static {v0, v3}, Lc8/bIb;->getGroupProperity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "param"

    const-string/jumbo v2, "param"

    invoke-static {v2, p1}, Lc8/nIb;->objectToJson(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "from"

    const-string/jumbo v2, "nbsdk"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "isSuccess"

    if-eqz p2, :cond_1

    const-string/jumbo v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v0

    sget-object v2, Lc8/sHb;->E_SHOW_APPLINK:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3, v1}, Lc8/cGb;->sendCustomHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public static getInstance()Lc8/MFb;
    .locals 2

    sget-object v0, Lc8/MFb;->d:Lc8/MFb;

    if-nez v0, :cond_1

    const-class v1, Lc8/MFb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/MFb;->d:Lc8/MFb;

    if-nez v0, :cond_0

    new-instance v0, Lc8/MFb;

    invoke-direct {v0}, Lc8/MFb;-><init>()V

    sput-object v0, Lc8/MFb;->d:Lc8/MFb;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lc8/MFb;->d:Lc8/MFb;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isApplinkSupported(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lc8/vFb;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lc8/Eff;->isSupportAppLinkSDK(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AliTradeApplinkServiceImp"

    const-string/jumbo v1, "\u5bf9\u4e0d\u8d77\uff0c\u8bf7\u4f7f\u7528\u6700\u65b0\u7248\u7684\u624b\u673a\u6dd8\u5b9d"

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initApplink()V
    .locals 5

    iget-boolean v0, p0, Lc8/MFb;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Lc8/Nef;

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "backurl"

    const-string/jumbo v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/Nef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc8/vFb;->getUtdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Nef;->setUtdid(Ljava/lang/String;)Lc8/Nef;

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cHb;->getWebTTID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Nef;->setTTID(Ljava/lang/String;)Lc8/Nef;

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v1

    iget-object v1, v1, Lc8/cHb;->taobaoNativeSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/Nef;->setSource(Ljava/lang/String;)Lc8/Nef;

    iget-object v1, p0, Lc8/MFb;->b:Lc8/Oef;

    sget-object v2, Lc8/vFb;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lc8/Oef;->init(Landroid/content/Context;Lc8/Nef;)Lc8/Oef;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/MFb;->c:Z

    :cond_0
    return-void
.end method

.method public jumpDetail(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 5

    const/4 v2, 0x0

    sget-object v0, Lc8/MFb;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8c03\u7528applink jumpdetail\u65b9\u6cd5,\u4f20\u5165\u53c2\u6570\u4e3a:params="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, Lc8/MFb;->initApplink()V

    const-string/jumbo v0, "DETAIL"

    invoke-direct {p0, p2, v0}, Lc8/MFb;->a(Ljava/util/Map;Ljava/lang/String;)Lc8/yff;

    move-result-object v0

    check-cast v0, Lc8/zff;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lc8/MFb;->b:Lc8/Oef;

    invoke-virtual {v3, p1, v0}, Lc8/Oef;->jumpDetail(Landroid/content/Context;Lc8/zff;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    invoke-direct {p0, p2, v0}, Lc8/MFb;->a(Ljava/lang/Object;Z)V

    const-string/jumbo v2, "AliTradeApplinkServiceImp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Applink\u8abf\u7528jumpDetail"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string/jumbo v1, "\u6210\u529f"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AliTradeApplinkServiceImp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Applink\u8abf\u7528jumpDetail\u5931\u8d25\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "\u5931\u8d25"

    goto :goto_1
.end method

.method public jumpShop(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 5

    const/4 v2, 0x0

    sget-object v0, Lc8/MFb;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8c03\u7528applink jumpshop\u65b9\u6cd5,\u4f20\u5165\u53c2\u6570\u4e3a:params="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, Lc8/MFb;->initApplink()V

    const-string/jumbo v0, "SHOP"

    invoke-direct {p0, p2, v0}, Lc8/MFb;->a(Ljava/util/Map;Ljava/lang/String;)Lc8/yff;

    move-result-object v0

    check-cast v0, Lc8/Bff;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lc8/MFb;->b:Lc8/Oef;

    invoke-virtual {v3, p1, v0}, Lc8/Oef;->jumpShop(Landroid/content/Context;Lc8/Bff;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    invoke-direct {p0, p2, v0}, Lc8/MFb;->a(Ljava/lang/Object;Z)V

    const-string/jumbo v2, "AliTradeApplinkServiceImp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Applink\u8abf\u7528jumpShop"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string/jumbo v1, "\u6210\u529f"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AliTradeApplinkServiceImp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Applink\u8abf\u7528jumpShop\u5931\u8d25\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "\u5931\u8d25"

    goto :goto_1
.end method

.method public jumpTBURI(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 5

    sget-object v0, Lc8/MFb;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8c03\u7528applink jumpuri\u65b9\u6cd5,\u4f20\u5165\u53c2\u6570\u4e3a:params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lc8/MFb;->initApplink()V

    const-string/jumbo v0, "TBURI"

    invoke-direct {p0, p2, v0}, Lc8/MFb;->a(Ljava/util/Map;Ljava/lang/String;)Lc8/yff;

    move-result-object v0

    check-cast v0, Lc8/Cff;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lc8/MFb;->b:Lc8/Oef;

    invoke-virtual {v2, p1, v0}, Lc8/Oef;->jumpTBURI(Landroid/content/Context;Lc8/Cff;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    :goto_1
    invoke-direct {p0, p2, v1}, Lc8/MFb;->a(Ljava/lang/Object;Z)V

    const-string/jumbo v2, "AliTradeApplinkServiceImp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Applink\u8abf\u7528jumpTBURI"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_0

    const-string/jumbo v0, "\u6210\u529f"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AliTradeApplinkServiceImp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Applink\u8abf\u7528jumpTBURI\u5931\u8d25\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "\u5931\u8d25"

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setOpenParam(Ljava/util/Map;)V
    .locals 3

    invoke-virtual {p0}, Lc8/MFb;->initApplink()V

    iget-object v0, p0, Lc8/MFb;->b:Lc8/Oef;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    iget-object v0, p0, Lc8/MFb;->b:Lc8/Oef;

    iget-object v1, v0, Lc8/Oef;->sOpenParam:Lc8/Nef;

    if-eqz v1, :cond_5

    const-string/jumbo v0, "backURL"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lc8/Nef;->mBackUrl:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "pid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v0, v1, Lc8/Nef;->mPid:Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "tag"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v0, v1, Lc8/Nef;->mTag:Ljava/lang/String;

    :cond_2
    const-string/jumbo v0, "TTID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v0, v1, Lc8/Nef;->mTtid:Ljava/lang/String;

    :cond_3
    const-string/jumbo v0, "source"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iput-object v0, v1, Lc8/Nef;->mSource:Ljava/lang/String;

    :cond_4
    const-string/jumbo v0, "utdid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iput-object v0, v1, Lc8/Nef;->mUtdid:Ljava/lang/String;

    :cond_5
    return-void
.end method
