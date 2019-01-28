.class public Lc8/WZb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/tac;


# instance fields
.field final synthetic a:Lc8/bac;

.field final synthetic b:Lc8/PZb;

.field final synthetic c:Lc8/VZb;


# direct methods
.method constructor <init>(Lc8/VZb;Lc8/bac;Lc8/PZb;)V
    .locals 0

    iput-object p1, p0, Lc8/WZb;->c:Lc8/VZb;

    iput-object p2, p0, Lc8/WZb;->a:Lc8/bac;

    iput-object p3, p0, Lc8/WZb;->b:Lc8/PZb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V
    .locals 2

    const-string/jumbo v0, "AlibcCoupon"

    const-string/jumbo v1, "success."

    invoke-static {v0, v1}, Lc8/vac;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/WZb;->a:Lc8/bac;

    iget-object v1, p0, Lc8/WZb;->b:Lc8/PZb;

    invoke-interface {v1}, Lc8/PZb;->getCoupon()Lc8/YZb;

    move-result-object v1

    invoke-interface {v1, p2}, Lc8/YZb;->a(Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/bac;->onSuccess(Ljava/lang/Object;)V

    const-string/jumbo v0, "BCPCSDK"

    iget-object v1, p0, Lc8/WZb;->b:Lc8/PZb;

    invoke-interface {v1}, Lc8/PZb;->getCoupon()Lc8/YZb;

    move-result-object v1

    invoke-interface {v1}, Lc8/YZb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/wac;->sendUseabilitySuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V
    .locals 3

    const-string/jumbo v0, "AlibcCoupon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fail, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vac;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/WZb;->a:Lc8/bac;

    iget-object v1, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    iget-object v2, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lc8/bac;->onError(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/WZb;->c:Lc8/VZb;

    iget-object v1, p0, Lc8/WZb;->b:Lc8/PZb;

    invoke-interface {v1}, Lc8/PZb;->getCoupon()Lc8/YZb;

    move-result-object v1

    invoke-interface {v1}, Lc8/YZb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lc8/VZb;->a(Lc8/VZb;Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;Ljava/lang/String;)V

    return-void
.end method
