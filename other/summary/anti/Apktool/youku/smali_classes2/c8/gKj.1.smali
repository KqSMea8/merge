.class public Lc8/gKj;
.super Lc8/SIj;
.source "PayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jKj;->requestDoPayUrl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jKj;

.field final synthetic val$pay_channel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/jKj;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jKj;

    .prologue
    .line 424
    iput-object p1, p0, Lc8/gKj;->this$0:Lc8/jKj;

    iput-object p2, p0, Lc8/gKj;->val$pay_channel:Ljava/lang/String;

    invoke-direct {p0}, Lc8/SIj;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "failReason"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x65

    .line 456
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestDoPayUrl...onFailed.state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",failReason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lc8/gKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$700(Lc8/jKj;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "failed"

    const-string/jumbo v2, "creatOrder"

    const-string/jumbo v3, "2203"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "dianbo"

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 459
    iget-object v0, p0, Lc8/gKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$600(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 463
    :goto_0
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 464
    iget-object v0, p0, Lc8/gKj;->this$0:Lc8/jKj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/jKj;->access$802(Lc8/jKj;Z)Z

    .line 465
    iget-object v0, p0, Lc8/gKj;->this$0:Lc8/jKj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/jKj;->access$902(Lc8/jKj;Lc8/TIj;)Lc8/TIj;

    .line 466
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lc8/gKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$600(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 6
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 450
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestDoPayUrl...onFailed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lc8/gKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$700(Lc8/jKj;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "failed"

    const-string/jumbo v2, "creatOrder"

    const-string/jumbo v3, "2202"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "dianbo"

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public onSuccess(Lc8/TIj;)V
    .locals 8
    .param p1, "httpRequestManager"    # Lc8/TIj;

    .prologue
    .line 427
    invoke-interface {p1}, Lc8/TIj;->getDataString()Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, "dataString":Ljava/lang/String;
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestDoPayUrl...onSuccess...isCancel():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lc8/TIj;->isCancel()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",dataString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 431
    invoke-interface {p1}, Lc8/TIj;->isCancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    new-instance v7, Lc8/KKj;

    invoke-direct {v7, v6}, Lc8/KKj;-><init>(Ljava/lang/String;)V

    .line 433
    .local v7, "mParseJson":Lc8/KKj;
    iget-object v0, p0, Lc8/gKj;->this$0:Lc8/jKj;

    invoke-virtual {v7}, Lc8/KKj;->parseDoPayData()Lc8/HKj;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/jKj;->access$502(Lc8/jKj;Lc8/HKj;)Lc8/HKj;

    .line 434
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestDoPayUrl...mDoPayData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/gKj;->this$0:Lc8/jKj;

    invoke-static {v2}, Lc8/jKj;->access$500(Lc8/jKj;)Lc8/HKj;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lc8/gKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$500(Lc8/jKj;)Lc8/HKj;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lc8/gKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$500(Lc8/jKj;)Lc8/HKj;

    move-result-object v0

    iget-object v1, p0, Lc8/gKj;->val$pay_channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/HKj;->setPay_channel(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lc8/gKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$700(Lc8/jKj;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "success"

    const-string/jumbo v2, "creatOrder"

    const-string/jumbo v3, ""

    iget-object v4, p0, Lc8/gKj;->this$0:Lc8/jKj;

    invoke-static {v4}, Lc8/jKj;->access$500(Lc8/jKj;)Lc8/HKj;

    move-result-object v4

    invoke-virtual {v4}, Lc8/HKj;->getTrade_id()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "dianbo"

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lc8/gKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$600(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 444
    .end local v7    # "mParseJson":Lc8/KKj;
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/gKj;->this$0:Lc8/jKj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/jKj;->access$802(Lc8/jKj;Z)Z

    .line 445
    iget-object v0, p0, Lc8/gKj;->this$0:Lc8/jKj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/jKj;->access$902(Lc8/jKj;Lc8/TIj;)Lc8/TIj;

    .line 446
    return-void

    .line 440
    .restart local v7    # "mParseJson":Lc8/KKj;
    :cond_1
    iget-object v0, p0, Lc8/gKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$700(Lc8/jKj;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "failed"

    const-string/jumbo v2, "creatOrder"

    const-string/jumbo v3, "2201"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "dianbo"

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lc8/gKj;->this$0:Lc8/jKj;

    invoke-static {v0}, Lc8/jKj;->access$600(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
