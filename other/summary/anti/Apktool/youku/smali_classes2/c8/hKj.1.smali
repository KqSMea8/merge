.class public Lc8/hKj;
.super Ljava/lang/Object;
.source "PayManager.java"

# interfaces
.implements Lc8/mGo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jKj;->creatOrderByMtop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/mGo",
        "<",
        "Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jKj;

.field final synthetic val$orderCreateRequest:Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;

.field final synthetic val$order_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/jKj;Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jKj;

    .prologue
    .line 493
    iput-object p1, p0, Lc8/hKj;->this$0:Lc8/jKj;

    iput-object p2, p0, Lc8/hKj;->val$orderCreateRequest:Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;

    iput-object p3, p0, Lc8/hKj;->val$order_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lc8/oGo;Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;)V
    .locals 8
    .param p1, "vipGlobalResponseModel"    # Lc8/oGo;
    .param p2, "orderCreateResponse"    # Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;

    .prologue
    .line 525
    const-string/jumbo v0, "VIPTest"

    const-string/jumbo v1, "onFailed"

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string/jumbo v0, "PayManager"

    const-string/jumbo v1, "MtopAlidmeXtopTradeOrderCreateRequest onFailed"

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 528
    iget-object v0, p0, Lc8/hKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$700(Lc8/jKj;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "failed"

    const-string/jumbo v2, "creatOrder"

    const-string/jumbo v3, "1204"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "vip"

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const/4 v6, 0x0

    .line 530
    .local v6, "isErrorHandled":Z
    if-eqz p1, :cond_0

    .line 531
    invoke-virtual {p1}, Lc8/oGo;->isErrorHandled()Z

    move-result v6

    .line 533
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 534
    .local v7, "msg":Landroid/os/Message;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 535
    const/16 v0, 0x65

    iput v0, v7, Landroid/os/Message;->what:I

    .line 536
    iget-object v0, p0, Lc8/hKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$600(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 537
    return-void
.end method

.method public bridge synthetic onFailed(Lc8/oGo;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 493
    check-cast p2, Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;

    invoke-virtual {p0, p1, p2}, Lc8/hKj;->onFailed(Lc8/oGo;Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;)V

    return-void
.end method

.method public onSuccess(Lc8/oGo;Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;)V
    .locals 6
    .param p1, "vipGlobalResponseModel"    # Lc8/oGo;
    .param p2, "orderCreateResponse"    # Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;

    .prologue
    .line 498
    const-string/jumbo v0, "VIPTest"

    const-string/jumbo v1, "onSuccess"

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string/jumbo v0, "PayManager"

    const-string/jumbo v1, "MtopAlidmeXtopTradeOrderCreateRequest onSuccess"

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 501
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 502
    :cond_0
    iget-object v0, p0, Lc8/hKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$600(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 503
    iget-object v0, p0, Lc8/hKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$700(Lc8/jKj;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "failed"

    const-string/jumbo v2, "creatOrder"

    const-string/jumbo v3, "1205"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "vip"

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :goto_0
    return-void

    .line 506
    :cond_1
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "orderCreateResponse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lc8/hKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$500(Lc8/jKj;)Lc8/HKj;

    move-result-object v0

    if-nez v0, :cond_2

    .line 508
    iget-object v0, p0, Lc8/hKj;->this$0:Lc8/jKj;

    new-instance v1, Lc8/HKj;

    invoke-direct {v1}, Lc8/HKj;-><init>()V

    invoke-static {v0, v1}, Lc8/jKj;->access$502(Lc8/jKj;Lc8/HKj;)Lc8/HKj;

    .line 510
    :cond_2
    iget-object v0, p0, Lc8/hKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$500(Lc8/jKj;)Lc8/HKj;

    move-result-object v0

    invoke-virtual {p2}, Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;->getPayChannelResponse()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/HKj;->setChannel_params(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lc8/hKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$500(Lc8/jKj;)Lc8/HKj;

    move-result-object v0

    invoke-virtual {p2}, Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/HKj;->setTrade_id(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lc8/hKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$500(Lc8/jKj;)Lc8/HKj;

    move-result-object v0

    iget-object v1, p0, Lc8/hKj;->val$orderCreateRequest:Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;

    invoke-virtual {v1}, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->getPayChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/HKj;->setPay_channel(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lc8/hKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$500(Lc8/jKj;)Lc8/HKj;

    move-result-object v0

    iget-object v1, p0, Lc8/hKj;->val$order_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/HKj;->setOrder_type(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lc8/hKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$500(Lc8/jKj;)Lc8/HKj;

    move-result-object v1

    iget-object v0, p0, Lc8/hKj;->val$orderCreateRequest:Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;

    invoke-virtual {v0}, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->getProducts()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/paysdk/trade/order/create/Product;

    invoke-virtual {v0}, Lcom/youku/paysdk/trade/order/create/Product;->getCycleBuyType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lc8/HKj;->setCycleBuyType(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lc8/hKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$500(Lc8/jKj;)Lc8/HKj;

    move-result-object v0

    invoke-virtual {p2}, Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;->getPayUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/HKj;->setPayUrl(Ljava/lang/String;)V

    .line 517
    const-string/jumbo v0, "PayManager"

    const-string/jumbo v1, "go third sdk pay"

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lc8/hKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$700(Lc8/jKj;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "success"

    const-string/jumbo v2, "creatOrder"

    const-string/jumbo v3, ""

    iget-object v4, p0, Lc8/hKj;->this$0:Lc8/jKj;

    invoke-static {v4}, Lc8/jKj;->access$500(Lc8/jKj;)Lc8/HKj;

    move-result-object v4

    invoke-virtual {v4}, Lc8/HKj;->getTrade_id()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vip"

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lc8/hKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$600(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public bridge synthetic onSuccess(Lc8/oGo;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 493
    check-cast p2, Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;

    invoke-virtual {p0, p1, p2}, Lc8/hKj;->onSuccess(Lc8/oGo;Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;)V

    return-void
.end method
