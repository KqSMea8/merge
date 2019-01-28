.class public Lc8/XZb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/YZb;


# instance fields
.field private a:Lc8/QZb;


# direct methods
.method public constructor <init>(Lc8/QZb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/XZb;->a:Lc8/QZb;

    return-void
.end method

.method private b(Lcom/alibaba/sdk/trade/container/b/d;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lc8/XZb;->a:Lc8/QZb;

    iget-object v0, v0, Lc8/QZb;->mYbhpssParams:Ljava/util/Map;

    const-string/jumbo v1, "baichuan_coupon_api"

    invoke-static {v0, v1, v3}, Lc8/wac;->preprocessYbhpss(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    const-string/jumbo v0, "mtop.taobao.coupon.opencoupon.apply"

    iput-object v0, p1, Lcom/alibaba/sdk/trade/container/b/d;->apiName:Ljava/lang/String;

    const-string/jumbo v0, "1.0"

    iput-object v0, p1, Lcom/alibaba/sdk/trade/container/b/d;->apiVersion:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/alibaba/sdk/trade/container/b/d;->needLogin:Z

    iput-boolean v3, p1, Lcom/alibaba/sdk/trade/container/b/d;->needAuth:Z

    iput-boolean v2, p1, Lcom/alibaba/sdk/trade/container/b/d;->isPost:Z

    iput-boolean v2, p1, Lcom/alibaba/sdk/trade/container/b/d;->needWua:Z

    const v0, 0x15f90

    iput v0, p1, Lcom/alibaba/sdk/trade/container/b/d;->timeOut:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p1, Lcom/alibaba/sdk/trade/container/b/d;->requestType:I

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->jsonData:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Coupon_Get"

    return-object v0
.end method

.method public a(Lcom/alibaba/sdk/trade/container/b/d;)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lc8/XZb;->b(Lcom/alibaba/sdk/trade/container/b/d;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "asac"

    iget-object v1, p0, Lc8/XZb;->a:Lc8/QZb;

    iget-object v1, v1, Lc8/QZb;->mASAC:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "supplierId"

    iget-object v1, p0, Lc8/XZb;->a:Lc8/QZb;

    iget-object v1, v1, Lc8/QZb;->mSupplierId:Ljava/lang/Long;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "uuid"

    iget-object v1, p0, Lc8/XZb;->a:Lc8/QZb;

    iget-object v1, v1, Lc8/QZb;->mUUID:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "couponInstanceSource"

    iget-object v1, p0, Lc8/XZb;->a:Lc8/QZb;

    iget v1, v1, Lc8/QZb;->mCouponInstanceSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc8/XZb;->a:Lc8/QZb;

    iget-object v0, v0, Lc8/QZb;->mExtParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/XZb;->a:Lc8/QZb;

    iget-object v0, v0, Lc8/QZb;->mExtParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "extInfo"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    const-string/jumbo v0, "extInfo"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/AIb;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2MapString(Ljava/lang/Object;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    :goto_2
    const-string/jumbo v0, "ybhpss"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ybhpss"

    iget-object v4, p0, Lc8/XZb;->a:Lc8/QZb;

    iget-object v4, v4, Lc8/QZb;->mYbhpssParams:Ljava/util/Map;

    invoke-static {v4, v2}, Lc8/wac;->createYbhpss(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "extInfo"

    invoke-static {v1}, Lc8/nIb;->toJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object v3, p1, Lcom/alibaba/sdk/trade/container/b/d;->paramMap:Ljava/util/Map;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "alibc"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_2
.end method

.method public b()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lc8/XZb;->a:Lc8/QZb;

    iget-object v3, v3, Lc8/QZb;->mSupplierId:Ljava/lang/Long;

    if-nez v3, :cond_1

    const-string/jumbo v0, "SupplierId\u9519\u8bef"

    :goto_0
    if-nez v1, :cond_0

    const-string/jumbo v2, "AlibcGetCoupon"

    invoke-static {v2, v0}, Lc8/vac;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "BCPCSDK"

    const-string/jumbo v3, "Coupon_Get"

    const-string/jumbo v4, "210200"

    invoke-static {v2, v3, v4, v0}, Lc8/wac;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    iget-object v3, p0, Lc8/XZb;->a:Lc8/QZb;

    iget-object v3, v3, Lc8/QZb;->mUUID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v0, "uuid\u4e3anull"

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lc8/XZb;->a:Lc8/QZb;

    iget v3, v3, Lc8/QZb;->mCouponInstanceSource:I

    if-gtz v3, :cond_3

    const-string/jumbo v0, "CouponInstance\u4e3anull"

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lc8/XZb;->a:Lc8/QZb;

    iget-object v3, v3, Lc8/QZb;->mASAC:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v0, "\u5b89\u5168\u7801\u4e3anull"

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method
