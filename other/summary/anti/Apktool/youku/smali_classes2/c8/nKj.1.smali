.class public Lc8/nKj;
.super Lc8/SIj;
.source "ZpdPayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oKj;->requestTradeUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oKj;


# direct methods
.method constructor <init>(Lc8/oKj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/oKj;

    .prologue
    .line 378
    iput-object p1, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-direct {p0}, Lc8/SIj;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 413
    sget-object v1, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestTradeUrl...onFailed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",isPayOk:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v3}, Lc8/oKj;->access$1000(Lc8/oKj;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-static {p1}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 416
    iget-object v1, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v1}, Lc8/oKj;->access$900(Lc8/oKj;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v1}, Lc8/oKj;->access$1000(Lc8/oKj;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    iget-object v1, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v1}, Lc8/oKj;->access$500(Lc8/oKj;)Lc8/IKj;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v0, ""

    .line 419
    .local v0, "order_id":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v1}, Lc8/oKj;->access$900(Lc8/oKj;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x44e

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 420
    sget-object v1, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestTradeUrl...1sendMessage:ALIPAY_PAY_QUERY_FAIL,order_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local v0    # "order_id":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v1, p0, Lc8/nKj;->this$0:Lc8/oKj;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/oKj;->access$1102(Lc8/oKj;Z)Z

    .line 428
    iget-object v1, p0, Lc8/nKj;->this$0:Lc8/oKj;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/oKj;->access$1202(Lc8/oKj;Lc8/TIj;)Lc8/TIj;

    .line 429
    return-void

    .line 418
    :cond_1
    iget-object v1, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v1}, Lc8/oKj;->access$500(Lc8/oKj;)Lc8/IKj;

    move-result-object v1

    iget-object v0, v1, Lc8/IKj;->order_id:Ljava/lang/String;

    goto :goto_0

    .line 422
    :cond_2
    iget-object v1, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v1}, Lc8/oKj;->access$500(Lc8/oKj;)Lc8/IKj;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v0, ""

    .line 423
    .restart local v0    # "order_id":Ljava/lang/String;
    :goto_2
    iget-object v1, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v1}, Lc8/oKj;->access$900(Lc8/oKj;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x44d

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 424
    sget-object v1, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestTradeUrl...1sendMessage:ALIPAY_PAY_FAIL,order_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 422
    .end local v0    # "order_id":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v1}, Lc8/oKj;->access$500(Lc8/oKj;)Lc8/IKj;

    move-result-object v1

    iget-object v0, v1, Lc8/IKj;->order_id:Ljava/lang/String;

    goto :goto_2
.end method

.method public onSuccess(Lc8/TIj;)V
    .locals 7
    .param p1, "httpRequestManager"    # Lc8/TIj;

    .prologue
    .line 381
    invoke-interface {p1}, Lc8/TIj;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "dataString":Ljava/lang/String;
    sget-object v4, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestTradeUrl...onSuccess...isCancel():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lc8/TIj;->isCancel()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",dataString:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 384
    invoke-interface {p1}, Lc8/TIj;->isCancel()Z

    move-result v4

    if-nez v4, :cond_0

    .line 385
    new-instance v1, Lc8/KKj;

    invoke-direct {v1, v0}, Lc8/KKj;-><init>(Ljava/lang/String;)V

    .line 386
    .local v1, "mParseJson":Lc8/KKj;
    invoke-virtual {v1}, Lc8/KKj;->parseZpdTradeInfo()Lc8/JKj;

    move-result-object v2

    .line 387
    .local v2, "mZpdTradeInfo":Lc8/JKj;
    sget-object v4, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestTradeUrl...mZpdTradeInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    if-eqz v2, :cond_1

    const/4 v4, 0x1

    iget v5, v2, Lc8/JKj;->status:I

    if-ne v4, v5, :cond_1

    .line 389
    iget-object v4, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v4}, Lc8/oKj;->access$900(Lc8/oKj;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 390
    iget-object v4, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v4}, Lc8/oKj;->access$900(Lc8/oKj;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x44c

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 391
    sget-object v4, Lc8/oKj;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "requestTradeUrl...sendMessage:ALIPAY_PAY_SUCCESS"

    invoke-static {v4, v5}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v1    # "mParseJson":Lc8/KKj;
    .end local v2    # "mZpdTradeInfo":Lc8/JKj;
    :cond_0
    :goto_0
    iget-object v4, p0, Lc8/nKj;->this$0:Lc8/oKj;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lc8/oKj;->access$1102(Lc8/oKj;Z)Z

    .line 408
    iget-object v4, p0, Lc8/nKj;->this$0:Lc8/oKj;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lc8/oKj;->access$1202(Lc8/oKj;Lc8/TIj;)Lc8/TIj;

    .line 409
    return-void

    .line 394
    .restart local v1    # "mParseJson":Lc8/KKj;
    .restart local v2    # "mZpdTradeInfo":Lc8/JKj;
    :cond_1
    iget-object v4, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v4}, Lc8/oKj;->access$900(Lc8/oKj;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 395
    iget-object v4, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v4}, Lc8/oKj;->access$1000(Lc8/oKj;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 396
    iget-object v4, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v4}, Lc8/oKj;->access$500(Lc8/oKj;)Lc8/IKj;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v3, ""

    .line 397
    .local v3, "order_id":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v4}, Lc8/oKj;->access$900(Lc8/oKj;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x44e

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 398
    sget-object v4, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestTradeUrl...0sendMessage:ALIPAY_PAY_QUERY_FAIL,order_id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 396
    .end local v3    # "order_id":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v4}, Lc8/oKj;->access$500(Lc8/oKj;)Lc8/IKj;

    move-result-object v4

    iget-object v3, v4, Lc8/IKj;->order_id:Ljava/lang/String;

    goto :goto_1

    .line 400
    :cond_3
    iget-object v4, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v4}, Lc8/oKj;->access$500(Lc8/oKj;)Lc8/IKj;

    move-result-object v4

    if-nez v4, :cond_4

    const-string/jumbo v3, ""

    .line 401
    .restart local v3    # "order_id":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v4}, Lc8/oKj;->access$900(Lc8/oKj;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x44d

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 402
    sget-object v4, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestTradeUrl...0sendMessage:ALIPAY_PAY_FAIL,order_id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 400
    .end local v3    # "order_id":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lc8/nKj;->this$0:Lc8/oKj;

    invoke-static {v4}, Lc8/oKj;->access$500(Lc8/oKj;)Lc8/IKj;

    move-result-object v4

    iget-object v3, v4, Lc8/IKj;->order_id:Ljava/lang/String;

    goto :goto_2
.end method
