.class public Lcom/taobao/accs/net/SpdyConnection$2;
.super Ljava/lang/Object;
.source "SpdyConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/net/SpdyConnection;->notifyStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/net/SpdyConnection;

.field final synthetic val$sessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/SpdyConnection;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/taobao/accs/net/SpdyConnection$2;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iput-object p2, p0, Lcom/taobao/accs/net/SpdyConnection$2;->val$sessionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection$2;->val$sessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection$2;->val$sessionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$2;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v1}, Lcom/taobao/accs/net/SpdyConnection;->access$300(Lcom/taobao/accs/net/SpdyConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection$2;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v0}, Lcom/taobao/accs/net/SpdyConnection;->access$200(Lcom/taobao/accs/net/SpdyConnection;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection$2;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/accs/net/SpdyConnection;->access$402(Lcom/taobao/accs/net/SpdyConnection;Z)Z

    .line 604
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection$2;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taobao/accs/net/SpdyConnection;->access$502(Lcom/taobao/accs/net/SpdyConnection;Z)Z

    .line 605
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection$2;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-virtual {v0}, Lcom/taobao/accs/net/SpdyConnection;->close()V

    .line 606
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection$2;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v0}, Lcom/taobao/accs/net/SpdyConnection;->access$600(Lcom/taobao/accs/net/SpdyConnection;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v0

    const-string/jumbo v1, "conn timeout"

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 609
    :cond_0
    return-void
.end method
