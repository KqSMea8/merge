.class public Lc8/iKj;
.super Ljava/lang/Object;
.source "PayManager.java"

# interfaces
.implements Lc8/mGo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jKj;->checkOrderStateByMtop(Ljava/lang/String;)V
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
        "Lcom/youku/paysdk/trade/order/detail/TradeOrderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jKj;

.field final synthetic val$trade_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/jKj;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jKj;

    .prologue
    .line 800
    iput-object p1, p0, Lc8/iKj;->this$0:Lc8/jKj;

    iput-object p2, p0, Lc8/iKj;->val$trade_id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lc8/oGo;Lcom/youku/paysdk/trade/order/detail/TradeOrderResponse;)V
    .locals 6
    .param p1, "vipGlobalResponseModel"    # Lc8/oGo;
    .param p2, "tradeOrderResponse"    # Lcom/youku/paysdk/trade/order/detail/TradeOrderResponse;

    .prologue
    .line 831
    const-string/jumbo v0, "PayManager"

    const-string/jumbo v1, "MtopAlidmeXtopTradeOrderDetailRequest onFailed"

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$100(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$1000(Lc8/jKj;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 834
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$500(Lc8/jKj;)Lc8/HKj;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v4, ""

    .line 835
    .local v4, "trade_id":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$100(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x44e

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 836
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$700(Lc8/jKj;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "failed"

    const-string/jumbo v2, "payResult"

    const-string/jumbo v3, "1104"

    const-string/jumbo v5, ""

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkOrderStateByMtop...1sendMessage:ALIPAY_PAY_QUERY_FAIL,trade_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    .end local v4    # "trade_id":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 834
    :cond_1
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$500(Lc8/jKj;)Lc8/HKj;

    move-result-object v0

    invoke-virtual {v0}, Lc8/HKj;->getTrade_id()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 839
    :cond_2
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$500(Lc8/jKj;)Lc8/HKj;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v4, ""

    .line 840
    .restart local v4    # "trade_id":Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$100(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x44d

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 841
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$700(Lc8/jKj;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "failed"

    const-string/jumbo v2, "payResult"

    const-string/jumbo v3, "1103"

    const-string/jumbo v5, ""

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkOrderStateByMtop...1sendMessage:ALIPAY_PAY_FAIL,trade_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 839
    .end local v4    # "trade_id":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$500(Lc8/jKj;)Lc8/HKj;

    move-result-object v0

    invoke-virtual {v0}, Lc8/HKj;->getTrade_id()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public bridge synthetic onFailed(Lc8/oGo;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 800
    check-cast p2, Lcom/youku/paysdk/trade/order/detail/TradeOrderResponse;

    invoke-virtual {p0, p1, p2}, Lc8/iKj;->onFailed(Lc8/oGo;Lcom/youku/paysdk/trade/order/detail/TradeOrderResponse;)V

    return-void
.end method

.method public onSuccess(Lc8/oGo;Lcom/youku/paysdk/trade/order/detail/TradeOrderResponse;)V
    .locals 6
    .param p1, "vipGlobalResponseModel"    # Lc8/oGo;
    .param p2, "tradeOrderResponse"    # Lcom/youku/paysdk/trade/order/detail/TradeOrderResponse;

    .prologue
    const/4 v2, 0x0

    .line 805
    const-string/jumbo v0, "PayManager"

    const-string/jumbo v1, "MtopAlidmeXtopTradeOrderDetailRequest onSuccess"

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-virtual {p2}, Lcom/youku/paysdk/trade/order/detail/TradeOrderResponse;->getResult()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/youku/paysdk/trade/order/detail/TradeOrderResponse;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 807
    invoke-virtual {p2}, Lcom/youku/paysdk/trade/order/detail/TradeOrderResponse;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;

    invoke-virtual {v0}, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;->getPayOrder()Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 808
    invoke-virtual {p2}, Lcom/youku/paysdk/trade/order/detail/TradeOrderResponse;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;

    invoke-virtual {v0}, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;->getPayOrder()Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->getPayState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "3"

    .line 809
    invoke-virtual {p2}, Lcom/youku/paysdk/trade/order/detail/TradeOrderResponse;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;

    invoke-virtual {v0}, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse;->getPayOrder()Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailResponse$PayOrderBean;->getPayState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$700(Lc8/jKj;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "success"

    const-string/jumbo v2, "payResult"

    const-string/jumbo v3, "0"

    iget-object v4, p0, Lc8/iKj;->val$trade_id:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$100(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x44c

    iget-object v2, p0, Lc8/iKj;->val$trade_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 812
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkOrderStateByMtop...sendMessage:ALIPAY_PAY_SUCCESS tradeOrderResponse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$100(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$1000(Lc8/jKj;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$700(Lc8/jKj;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "failed"

    const-string/jumbo v2, "payResult"

    const-string/jumbo v3, "1102"

    iget-object v4, p0, Lc8/iKj;->val$trade_id:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$100(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x44e

    iget-object v2, p0, Lc8/iKj;->val$trade_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 818
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkOrderStateByMtop...0sendMessage:ALIPAY_PAY_QUERY_FAIL,trade_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/iKj;->val$trade_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 820
    :cond_2
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$700(Lc8/jKj;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "failed"

    const-string/jumbo v2, "payResult"

    const-string/jumbo v3, "1101"

    iget-object v4, p0, Lc8/iKj;->val$trade_id:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lc8/iKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$100(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x44d

    iget-object v2, p0, Lc8/iKj;->val$trade_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 822
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkOrderStateByMtop...0sendMessage:ALIPAY_PAY_FAIL,trade_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/iKj;->val$trade_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public bridge synthetic onSuccess(Lc8/oGo;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 800
    check-cast p2, Lcom/youku/paysdk/trade/order/detail/TradeOrderResponse;

    invoke-virtual {p0, p1, p2}, Lc8/iKj;->onSuccess(Lc8/oGo;Lcom/youku/paysdk/trade/order/detail/TradeOrderResponse;)V

    return-void
.end method
