.class public Lc8/OZb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/tac;


# instance fields
.field final synthetic a:Lc8/bac;

.field final synthetic b:Lc8/MZb;

.field final synthetic c:Lc8/NZb;


# direct methods
.method constructor <init>(Lc8/NZb;Lc8/bac;Lc8/MZb;)V
    .locals 0

    iput-object p1, p0, Lc8/OZb;->c:Lc8/NZb;

    iput-object p2, p0, Lc8/OZb;->a:Lc8/bac;

    iput-object p3, p0, Lc8/OZb;->b:Lc8/MZb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V
    .locals 4

    iget-object v0, p0, Lc8/OZb;->a:Lc8/bac;

    iget-object v1, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->jsonData:Ljava/lang/String;

    invoke-interface {v0, v1}, Lc8/bac;->onSuccess(Ljava/lang/Object;)V

    const/16 v0, 0x835

    const-string/jumbo v1, "Page_Baichuan_Want_Cart_Succeed"

    iget-object v2, p0, Lc8/OZb;->b:Lc8/MZb;

    iget-object v2, v2, Lc8/MZb;->mYbhpssParams:Ljava/util/HashMap;

    iget-object v3, p0, Lc8/OZb;->b:Lc8/MZb;

    iget-object v3, v3, Lc8/MZb;->mItemID:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lc8/wac;->sentUserTrack(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    const-string/jumbo v0, "BCPCSDK"

    const-string/jumbo v1, "addCart"

    invoke-static {v0, v1}, Lc8/wac;->sendUseabilitySuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V
    .locals 3

    iget-object v0, p0, Lc8/OZb;->a:Lc8/bac;

    iget-object v1, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    iget-object v2, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lc8/bac;->onError(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/OZb;->c:Lc8/NZb;

    invoke-static {v0, p2}, Lc8/NZb;->a(Lc8/NZb;Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V

    return-void
.end method
