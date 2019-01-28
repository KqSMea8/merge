.class public Lcom/taobao/accs/net/BaseConnection$3;
.super Ljava/lang/Object;
.source "BaseConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/net/BaseConnection;->setTimeOut(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/net/BaseConnection;

.field final synthetic val$dataId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/BaseConnection;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/taobao/accs/net/BaseConnection$3;->this$0:Lcom/taobao/accs/net/BaseConnection;

    iput-object p2, p0, Lcom/taobao/accs/net/BaseConnection$3;->val$dataId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 245
    iget-object v1, p0, Lcom/taobao/accs/net/BaseConnection$3;->this$0:Lcom/taobao/accs/net/BaseConnection;

    iget-object v1, v1, Lcom/taobao/accs/net/BaseConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection$3;->val$dataId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/accs/data/MessageHandler;->removeUnhandledMessage(Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 246
    .local v0, "reqMessage":Lcom/taobao/accs/data/Message;
    if-eqz v0, :cond_0

    .line 247
    iget-object v1, p0, Lcom/taobao/accs/net/BaseConnection$3;->this$0:Lcom/taobao/accs/net/BaseConnection;

    iget-object v1, v1, Lcom/taobao/accs/net/BaseConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const/16 v2, -0x9

    invoke-virtual {v1, v0, v2}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 248
    iget-object v1, p0, Lcom/taobao/accs/net/BaseConnection$3;->this$0:Lcom/taobao/accs/net/BaseConnection;

    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection$3;->val$dataId:Ljava/lang/String;

    const-string/jumbo v3, "receive data time out"

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/net/BaseConnection;->onTimeOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/taobao/accs/net/BaseConnection$3;->this$0:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v1}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/taobao/accs/net/BaseConnection$3;->this$0:Lcom/taobao/accs/net/BaseConnection;

    iget v3, v3, Lcom/taobao/accs/net/BaseConnection;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "receive data time out! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_0
    return-void
.end method
