.class public Lcom/taobao/accs/net/InAppConnection$3;
.super Ljava/lang/Object;
.source "InAppConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/net/InAppConnection;->onException(IIZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/net/InAppConnection;

.field final synthetic val$dataId:I

.field final synthetic val$errorId:I

.field final synthetic val$needRetry:Z


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/InAppConnection;IZI)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/taobao/accs/net/InAppConnection$3;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iput p2, p0, Lcom/taobao/accs/net/InAppConnection$3;->val$dataId:I

    iput-boolean p3, p0, Lcom/taobao/accs/net/InAppConnection$3;->val$needRetry:Z

    iput p4, p0, Lcom/taobao/accs/net/InAppConnection$3;->val$errorId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 315
    iget v1, p0, Lcom/taobao/accs/net/InAppConnection$3;->val$dataId:I

    if-lez v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$3;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v1, v1, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget v2, p0, Lcom/taobao/accs/net/InAppConnection$3;->val$dataId:I

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->int2String(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/accs/data/MessageHandler;->removeUnhandledMessage(Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 317
    .local v0, "reqMsg":Lcom/taobao/accs/data/Message;
    if-eqz v0, :cond_1

    .line 318
    iget-boolean v1, p0, Lcom/taobao/accs/net/InAppConnection$3;->val$needRetry:Z

    if-eqz v1, :cond_3

    .line 320
    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$3;->this$0:Lcom/taobao/accs/net/InAppConnection;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2}, Lcom/taobao/accs/net/InAppConnection;->reSend(Lcom/taobao/accs/data/Message;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$3;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v1, v1, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget v2, p0, Lcom/taobao/accs/net/InAppConnection$3;->val$errorId:I

    invoke-virtual {v1, v0, v2}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 323
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 324
    const-string/jumbo v1, "accs"

    const-string/jumbo v2, "resend"

    const-string/jumbo v3, "total_tnet"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 332
    .end local v0    # "reqMsg":Lcom/taobao/accs/data/Message;
    :cond_1
    :goto_0
    iget v1, p0, Lcom/taobao/accs/net/InAppConnection$3;->val$dataId:I

    if-gez v1, :cond_2

    iget-boolean v1, p0, Lcom/taobao/accs/net/InAppConnection$3;->val$needRetry:Z

    if-eqz v1, :cond_2

    .line 333
    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$3;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget v2, p0, Lcom/taobao/accs/net/InAppConnection$3;->val$dataId:I

    invoke-virtual {v1, v2}, Lcom/taobao/accs/net/InAppConnection;->reSendAck(I)V

    .line 335
    :cond_2
    return-void

    .line 327
    .restart local v0    # "reqMsg":Lcom/taobao/accs/data/Message;
    :cond_3
    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$3;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v1, v1, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget v2, p0, Lcom/taobao/accs/net/InAppConnection$3;->val$errorId:I

    invoke-virtual {v1, v0, v2}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    goto :goto_0
.end method
