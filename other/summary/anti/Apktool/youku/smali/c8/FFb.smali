.class public Lc8/FFb;
.super Lc8/EFb;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc8/EFb;-><init>()V

    const-string/jumbo v0, "mtop.alibaba.baichuan.nbsdk.pay.query"

    iput-object v0, p0, Lc8/FFb;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)Lcom/alibaba/baichuan/android/trade/model/AliPayResult;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->data:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    const-string/jumbo v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->jsonData:Ljava/lang/String;

    invoke-static {v0}, Lc8/nIb;->parseAliPayResult(Ljava/lang/String;)Lcom/alibaba/baichuan/android/trade/model/AliPayResult;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/util/List;)Ljava/util/HashMap;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "orderIdList"

    invoke-static {p1}, Lc8/nIb;->toJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;
    .locals 1

    invoke-direct {p0, p1}, Lc8/FFb;->b(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/FFb;->a(Ljava/util/Map;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;

    move-result-object v0

    return-object v0
.end method
