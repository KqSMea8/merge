.class public Lc8/ZZb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/YZb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->data:Ljava/util/Map;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Coupon_Seller_Query"

    return-object v0
.end method

.method public a(Lcom/alibaba/sdk/trade/container/b/d;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "mtop.taobao.coupon.opencoupon.seller.query"

    iput-object v0, p1, Lcom/alibaba/sdk/trade/container/b/d;->apiName:Ljava/lang/String;

    const-string/jumbo v0, "1.0"

    iput-object v0, p1, Lcom/alibaba/sdk/trade/container/b/d;->apiVersion:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/alibaba/sdk/trade/container/b/d;->needLogin:Z

    iput-boolean v1, p1, Lcom/alibaba/sdk/trade/container/b/d;->needAuth:Z

    iput-boolean v2, p1, Lcom/alibaba/sdk/trade/container/b/d;->isPost:Z

    iput-boolean v1, p1, Lcom/alibaba/sdk/trade/container/b/d;->needWua:Z

    const v0, 0x15f90

    iput v0, p1, Lcom/alibaba/sdk/trade/container/b/d;->timeOut:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p1, Lcom/alibaba/sdk/trade/container/b/d;->requestType:I

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
