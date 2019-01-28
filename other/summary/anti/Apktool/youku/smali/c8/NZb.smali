.class public Lc8/NZb;
.super Lc8/aac;


# static fields
.field public static a:Lc8/NZb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc8/NZb;

    invoke-direct {v0}, Lc8/NZb;-><init>()V

    sput-object v0, Lc8/NZb;->a:Lc8/NZb;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lc8/aac;-><init>()V

    const-string/jumbo v0, "BC_WantAddCart"

    iput-object v0, p0, Lc8/NZb;->b:Ljava/lang/String;

    iget-object v0, p0, Lc8/NZb;->d:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lc8/NZb;Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lc8/NZb;->a(Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V

    return-void
.end method

.method private a(Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V
    .locals 4

    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    const-string/jumbo v1, "FAIL_SYS_LOGIN_CANCEL"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "210121"

    :goto_0
    const-string/jumbo v1, "BCPCSDK"

    const-string/jumbo v2, "addCart"

    iget-object v3, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lc8/wac;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    const-string/jumbo v1, "FAIL_SYS_ACCESS_TOKEN_CANCEL"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "210131"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "210151"

    goto :goto_0
.end method

.method private a(Lc8/MZb;Lc8/bac;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lc8/NZb;->a(Lc8/MZb;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string/jumbo v0, "addcart_error"

    const-string/jumbo v1, "params error"

    invoke-interface {p2, v0, v1}, Lc8/bac;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lc8/NZb;->b(Lc8/MZb;)V

    invoke-static {}, Lc8/qac;->a()Lc8/qac;

    move-result-object v0

    invoke-direct {p0, p1}, Lc8/NZb;->d(Lc8/MZb;)Lcom/alibaba/sdk/trade/container/b/d;

    move-result-object v1

    new-instance v2, Lc8/OZb;

    invoke-direct {v2, p0, p2, p1}, Lc8/OZb;-><init>(Lc8/NZb;Lc8/bac;Lc8/MZb;)V

    invoke-virtual {v0, v1, v2}, Lc8/qac;->a(Lcom/alibaba/sdk/trade/container/b/d;Lc8/tac;)Z

    move-result v0

    goto :goto_0
.end method

.method private d(Lc8/MZb;)Lcom/alibaba/sdk/trade/container/b/d;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p1, Lc8/MZb;->mYbhpssParams:Ljava/util/HashMap;

    const-string/jumbo v1, "baichuan_cart_api"

    invoke-static {v0, v1, v3}, Lc8/wac;->preprocessYbhpss(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    new-instance v0, Lcom/alibaba/sdk/trade/container/b/d;

    invoke-direct {v0}, Lcom/alibaba/sdk/trade/container/b/d;-><init>()V

    const-string/jumbo v1, "mtop.taobao.trade.open.addbag"

    iput-object v1, v0, Lcom/alibaba/sdk/trade/container/b/d;->apiName:Ljava/lang/String;

    const-string/jumbo v1, "3.1"

    iput-object v1, v0, Lcom/alibaba/sdk/trade/container/b/d;->apiVersion:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/alibaba/sdk/trade/container/b/d;->needLogin:Z

    iput-boolean v2, v0, Lcom/alibaba/sdk/trade/container/b/d;->needAuth:Z

    iput-boolean v2, v0, Lcom/alibaba/sdk/trade/container/b/d;->isPost:Z

    iput-boolean v3, v0, Lcom/alibaba/sdk/trade/container/b/d;->needWua:Z

    iget-object v1, p0, Lc8/NZb;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/sdk/trade/container/b/d;->a:Ljava/lang/String;

    const v1, 0x15f90

    iput v1, v0, Lcom/alibaba/sdk/trade/container/b/d;->timeOut:I

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v0, Lcom/alibaba/sdk/trade/container/b/d;->requestType:I

    invoke-virtual {p0, p1}, Lc8/NZb;->c(Lc8/MZb;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/sdk/trade/container/b/d;->paramMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Lc8/MZb;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lc8/MZb;->mItemID:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string/jumbo v0, "itemid\u4e3anull"

    move v2, v3

    :goto_0
    iget-object v5, p1, Lc8/MZb;->mYbhpssParams:Ljava/util/HashMap;

    if-nez v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "| ybhpss\u53c2\u6570\u4e3anull"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "AlibcCart"

    const-string/jumbo v5, "ybhpss\u53c2\u6570\u4e3anull"

    invoke-static {v4, v5}, Lc8/vac;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    :cond_0
    iget-object v5, p1, Lc8/MZb;->mTaokeParams:Lcom/alibaba/sdk/trade/component/cart/AlibcTkParams;

    if-nez v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " | \u6dd8\u5ba2\u53c2\u6570\u4e3anull"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "AlibcCart"

    const-string/jumbo v5, "\u6dd8\u5ba2\u53c2\u6570\u4e3anull"

    invoke-static {v4, v5}, Lc8/vac;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    :cond_1
    const-string/jumbo v3, "AlibcCart"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "BCPCSDK"

    const-string/jumbo v3, "addCart"

    const-string/jumbo v4, "210100"

    invoke-static {v1, v3, v4, v0}, Lc8/wac;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    move-object v0, v1

    move v2, v4

    goto :goto_0
.end method

.method protected b(Lc8/MZb;)V
    .locals 4

    iget-object v0, p1, Lc8/MZb;->mTaokeParams:Lcom/alibaba/sdk/trade/component/cart/AlibcTkParams;

    if-nez v0, :cond_0

    const-string/jumbo v0, "AlibcCart"

    const-string/jumbo v1, "taoke param is null"

    invoke-static {v0, v1}, Lc8/vac;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "itemId"

    iget-object v2, p1, Lc8/MZb;->mItemID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lc8/UGb;->INSTANCE:Lc8/UGb;

    iget-object v2, p1, Lc8/MZb;->mTaokeParams:Lcom/alibaba/sdk/trade/component/cart/AlibcTkParams;

    new-instance v3, Lcom/alibaba/sdk/trade/component/cart/c;

    invoke-direct {v3, p0}, Lcom/alibaba/sdk/trade/component/cart/c;-><init>(Lc8/NZb;)V

    invoke-virtual {v1, v0, v2, v3}, Lc8/UGb;->asyncTaokeTrace(Ljava/util/HashMap;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;)V

    return-void
.end method

.method protected c(Lc8/MZb;)Ljava/util/HashMap;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "itemId"

    iget-object v2, p1, Lc8/MZb;->mItemID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "quantity"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "item_id"

    iget-object v3, p1, Lc8/MZb;->mItemID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "ybhpss"

    iget-object v4, p1, Lc8/MZb;->mYbhpssParams:Ljava/util/HashMap;

    invoke-static {v4, v1}, Lc8/wac;->createYbhpss(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "exParams"

    invoke-static {v2}, Lc8/nIb;->toJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public execute(Ljava/lang/Object;Lc8/bac;)V
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lc8/MZb;

    if-eqz v0, :cond_0

    check-cast p1, Lc8/MZb;

    invoke-direct {p0, p1, p2}, Lc8/NZb;->a(Lc8/MZb;Lc8/bac;)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PARAM_ERROR"

    const-string/jumbo v1, "\u53c2\u6570\u9519\u8bef"

    invoke-interface {p2, v0, v1}, Lc8/bac;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getWantName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "BCWantCart"

    return-object v0
.end method
