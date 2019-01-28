.class public Lc8/mKj;
.super Lc8/SIj;
.source "ZpdPayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oKj;->requestDoPayUrl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oKj;

.field final synthetic val$pay_channel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/oKj;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/oKj;

    .prologue
    .line 244
    iput-object p1, p0, Lc8/mKj;->this$0:Lc8/oKj;

    iput-object p2, p0, Lc8/mKj;->val$pay_channel:Ljava/lang/String;

    invoke-direct {p0}, Lc8/SIj;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "failReason"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x65

    .line 272
    sget-object v0, Lc8/oKj;->TAG:Ljava/lang/String;

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

    .line 273
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 274
    iget-object v0, p0, Lc8/mKj;->this$0:Lc8/oKj;

    invoke-static {v0}, Lc8/oKj;->access$600(Lc8/oKj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 278
    :goto_0
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 279
    iget-object v0, p0, Lc8/mKj;->this$0:Lc8/oKj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/oKj;->access$702(Lc8/oKj;Z)Z

    .line 280
    iget-object v0, p0, Lc8/mKj;->this$0:Lc8/oKj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/oKj;->access$802(Lc8/oKj;Lc8/TIj;)Lc8/TIj;

    .line 281
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lc8/mKj;->this$0:Lc8/oKj;

    invoke-static {v0}, Lc8/oKj;->access$600(Lc8/oKj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 267
    sget-object v0, Lc8/oKj;->TAG:Ljava/lang/String;

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

    .line 268
    return-void
.end method

.method public onSuccess(Lc8/TIj;)V
    .locals 5
    .param p1, "httpRequestManager"    # Lc8/TIj;

    .prologue
    .line 247
    invoke-interface {p1}, Lc8/TIj;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "dataString":Ljava/lang/String;
    sget-object v2, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestDoPayUrl...onSuccess...isCancel():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lc8/TIj;->isCancel()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",dataString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 250
    invoke-interface {p1}, Lc8/TIj;->isCancel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    new-instance v1, Lc8/KKj;

    invoke-direct {v1, v0}, Lc8/KKj;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, "mParseJson":Lc8/KKj;
    iget-object v2, p0, Lc8/mKj;->this$0:Lc8/oKj;

    invoke-virtual {v1}, Lc8/KKj;->parseDoPayZpdData()Lc8/IKj;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/oKj;->access$502(Lc8/oKj;Lc8/IKj;)Lc8/IKj;

    .line 253
    sget-object v2, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestDoPayUrl...mDoPayZpdData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/mKj;->this$0:Lc8/oKj;

    invoke-static {v4}, Lc8/oKj;->access$500(Lc8/oKj;)Lc8/IKj;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v2, p0, Lc8/mKj;->this$0:Lc8/oKj;

    invoke-static {v2}, Lc8/oKj;->access$500(Lc8/oKj;)Lc8/IKj;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lc8/mKj;->this$0:Lc8/oKj;

    invoke-static {v2}, Lc8/oKj;->access$500(Lc8/oKj;)Lc8/IKj;

    move-result-object v2

    iget-object v3, p0, Lc8/mKj;->val$pay_channel:Ljava/lang/String;

    iput-object v3, v2, Lc8/IKj;->pay_channel:Ljava/lang/String;

    .line 256
    iget-object v2, p0, Lc8/mKj;->this$0:Lc8/oKj;

    invoke-static {v2}, Lc8/oKj;->access$600(Lc8/oKj;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    .end local v1    # "mParseJson":Lc8/KKj;
    :cond_0
    :goto_0
    iget-object v2, p0, Lc8/mKj;->this$0:Lc8/oKj;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lc8/oKj;->access$702(Lc8/oKj;Z)Z

    .line 262
    iget-object v2, p0, Lc8/mKj;->this$0:Lc8/oKj;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lc8/oKj;->access$802(Lc8/oKj;Lc8/TIj;)Lc8/TIj;

    .line 263
    return-void

    .line 258
    .restart local v1    # "mParseJson":Lc8/KKj;
    :cond_1
    iget-object v2, p0, Lc8/mKj;->this$0:Lc8/oKj;

    invoke-static {v2}, Lc8/oKj;->access$600(Lc8/oKj;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
