.class public Lcom/taobao/accs/net/SpdyConnection$NetworkThread;
.super Ljava/lang/Thread;
.source "SpdyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/net/SpdyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkThread"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public failTimes:I

.field lastConnectTime:J

.field final synthetic this$0:Lcom/taobao/accs/net/SpdyConnection;


# direct methods
.method public constructor <init>(Lcom/taobao/accs/net/SpdyConnection;Ljava/lang/String;)V
    .locals 1
    .param p2, "threadName"    # Ljava/lang/String;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    .line 708
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    .line 703
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->failTimes:I

    .line 709
    return-void
.end method

.method private tryConnect(Z)V
    .locals 10
    .param p1, "force"    # Z

    .prologue
    const-wide/16 v8, 0x1388

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 712
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v1}, Lcom/taobao/accs/net/SpdyConnection;->access$200(Lcom/taobao/accs/net/SpdyConnection;)I

    move-result v1

    if-eq v1, v4, :cond_7

    .line 713
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget-object v1, v1, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 714
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v3, v3, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Network not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    if-eqz p1, :cond_2

    .line 718
    iput v6, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->failTimes:I

    .line 720
    :cond_2
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v3, v3, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " try connect, force = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failTimes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->failTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v1}, Lcom/taobao/accs/net/SpdyConnection;->access$200(Lcom/taobao/accs/net/SpdyConnection;)I

    move-result v1

    if-eq v1, v4, :cond_3

    iget v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->failTimes:I

    if-lt v1, v5, :cond_3

    .line 723
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v1, v4}, Lcom/taobao/accs/net/SpdyConnection;->access$402(Lcom/taobao/accs/net/SpdyConnection;Z)Z

    .line 724
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v3, v3, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " try connect fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " times"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 726
    :cond_3
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v1}, Lcom/taobao/accs/net/SpdyConnection;->access$200(Lcom/taobao/accs/net/SpdyConnection;)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 727
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v1, v1, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    if-ne v1, v4, :cond_5

    iget v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->failTimes:I

    if-nez v1, :cond_5

    .line 728
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v3, v3, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " try connect in app, no sleep"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    :goto_1
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/taobao/accs/net/SpdyConnection;->access$702(Lcom/taobao/accs/net/SpdyConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 741
    iget v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->failTimes:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 742
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v1}, Lcom/taobao/accs/net/SpdyConnection;->access$800(Lcom/taobao/accs/net/SpdyConnection;)Lcom/taobao/accs/net/HttpDnsProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-virtual {v2}, Lcom/taobao/accs/net/SpdyConnection;->getChannelHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/accs/net/HttpDnsProvider;->forceUpdateStrategy(Ljava/lang/String;)V

    .line 745
    :cond_4
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/taobao/accs/net/SpdyConnection;->access$900(Lcom/taobao/accs/net/SpdyConnection;Ljava/lang/String;)V

    .line 747
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v1}, Lcom/taobao/accs/net/SpdyConnection;->access$600(Lcom/taobao/accs/net/SpdyConnection;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v1

    iget v2, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->failTimes:I

    invoke-virtual {v1, v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setRetryTimes(I)V

    .line 748
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v1}, Lcom/taobao/accs/net/SpdyConnection;->access$200(Lcom/taobao/accs/net/SpdyConnection;)I

    move-result v1

    if-eq v1, v4, :cond_6

    .line 749
    iget v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->failTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->failTimes:I

    .line 750
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v3, v3, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " try connect fail, ready for reconnect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    invoke-direct {p0, v6}, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->tryConnect(Z)V

    goto/16 :goto_0

    .line 730
    :cond_5
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v3, v3, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " try connect, need sleep"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 753
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->lastConnectTime:J

    goto/16 :goto_0

    .line 756
    :cond_7
    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v1}, Lcom/taobao/accs/net/SpdyConnection;->access$200(Lcom/taobao/accs/net/SpdyConnection;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->lastConnectTime:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    .line 758
    iput v6, p0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->failTimes:I

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v4, v4, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " NetworkThread run"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    const/16 v16, 0x0

    .line 766
    .local v16, "message":Lcom/taobao/accs/data/Message;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->failTimes:I

    .line 767
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$1000(Lcom/taobao/accs/net/SpdyConnection;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "ready to get message"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 770
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 772
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "no message, wait"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "try get message"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/taobao/accs/data/Message;

    move-object/from16 v16, v0

    .line 783
    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 784
    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onTakeFromQueue()V

    .line 787
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$1000(Lcom/taobao/accs/net/SpdyConnection;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 791
    if-eqz v16, :cond_0

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "send message not null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 794
    const/16 v18, 0x1

    .line 800
    .local v18, "sendSucc":Z
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v20

    .line 801
    .local v20, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v4, v4, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " send:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v20 .. v20}, Lcom/taobao/accs/data/Message$MsgType;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v4}, Lcom/taobao/accs/net/SpdyConnection;->access$200(Lcom/taobao/accs/net/SpdyConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_14

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v2, v2, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "INAPP ping, skip"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 875
    if-nez v18, :cond_8

    .line 877
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-virtual {v2}, Lcom/taobao/accs/net/SpdyConnection;->close()V

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$600(Lcom/taobao/accs/net/SpdyConnection;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$600(Lcom/taobao/accs/net/SpdyConnection;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v2

    const-string/jumbo v3, "send fail"

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 881
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 882
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .local v15, "i":I
    :goto_1
    if-ltz v15, :cond_7

    .line 883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/taobao/accs/data/Message;

    .line 884
    .local v17, "msg":Lcom/taobao/accs/data/Message;
    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x64

    if-eq v2, v4, :cond_4

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xc9

    if-ne v2, v4, :cond_5

    .line 886
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget-object v2, v2, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const/4 v4, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 882
    :cond_5
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 774
    .end local v15    # "i":I
    .end local v17    # "msg":Lcom/taobao/accs/data/Message;
    .end local v18    # "sendSucc":Z
    .end local v20    # "type":I
    :catch_0
    move-exception v14

    .line 775
    .local v14, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 776
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 906
    .end local v14    # "e":Ljava/lang/InterruptedException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-virtual {v2}, Lcom/taobao/accs/net/SpdyConnection;->close()V

    .line 907
    return-void

    .line 787
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v2

    .line 890
    .restart local v15    # "i":I
    .restart local v18    # "sendSucc":Z
    .restart local v20    # "type":I
    :cond_7
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v5, v5, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " network disconnected, wait"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 892
    monitor-exit v3

    goto/16 :goto_0

    .end local v15    # "i":I
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    .line 899
    :catch_1
    move-exception v19

    .line 900
    .local v19, "t":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, " run finally error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 894
    .end local v19    # "t":Ljava/lang/Throwable;
    :cond_8
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "send succ, remove it"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    .line 896
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 897
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v2
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    .line 808
    :cond_9
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v4}, Lcom/taobao/accs/net/SpdyConnection;->access$1100(Lcom/taobao/accs/net/SpdyConnection;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget-object v4, v4, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/net/HeartbeatManager;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/net/HeartbeatManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/accs/net/HeartbeatManager;->getInterval()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/taobao/accs/data/Message;->force:Z

    if-eqz v2, :cond_10

    .line 809
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ms:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v6}, Lcom/taobao/accs/net/SpdyConnection;->access$1100(Lcom/taobao/accs/net/SpdyConnection;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " force:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/taobao/accs/data/Message;->force:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->tryConnect(Z)V

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$1200(Lcom/taobao/accs/net/SpdyConnection;)Lorg/android/spdy/SpdySession;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$200(Lcom/taobao/accs/net/SpdyConnection;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v4}, Lcom/taobao/accs/net/SpdyConnection;->access$1100(Lcom/taobao/accs/net/SpdyConnection;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget-object v4, v4, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/net/HeartbeatManager;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/net/HeartbeatManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/accs/net/HeartbeatManager;->getInterval()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_b

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v4, v4, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " onSendPing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget-object v2, v2, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    invoke-virtual {v2}, Lcom/taobao/accs/data/MessageHandler;->onSendPing()V

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$1200(Lcom/taobao/accs/net/SpdyConnection;)Lorg/android/spdy/SpdySession;

    move-result-object v2

    invoke-virtual {v2}, Lorg/android/spdy/SpdySession;->submitPing()I

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$600(Lcom/taobao/accs/net/SpdyConnection;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onSendPing()V

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/net/SpdyConnection;->access$1102(Lcom/taobao/accs/net/SpdyConnection;J)J

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/net/SpdyConnection;->access$1302(Lcom/taobao/accs/net/SpdyConnection;J)J

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-virtual {v2}, Lcom/taobao/accs/net/SpdyConnection;->setPingTimeOut()V

    .line 866
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/taobao/accs/net/SpdyConnection;->access$1400(Lcom/taobao/accs/net/SpdyConnection;Z)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 875
    if-nez v18, :cond_20

    .line 877
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-virtual {v2}, Lcom/taobao/accs/net/SpdyConnection;->close()V

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$600(Lcom/taobao/accs/net/SpdyConnection;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$600(Lcom/taobao/accs/net/SpdyConnection;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v2

    const-string/jumbo v3, "send fail"

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 881
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3

    .line 882
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .restart local v15    # "i":I
    :goto_3
    if-ltz v15, :cond_1f

    .line 883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/taobao/accs/data/Message;

    .line 884
    .restart local v17    # "msg":Lcom/taobao/accs/data/Message;
    if-eqz v17, :cond_e

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x64

    if-eq v2, v4, :cond_d

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xc9

    if-ne v2, v4, :cond_e

    .line 886
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget-object v2, v2, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const/4 v4, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 882
    :cond_e
    add-int/lit8 v15, v15, -0x1

    goto :goto_3

    .line 823
    .end local v15    # "i":I
    .end local v17    # "msg":Lcom/taobao/accs/data/Message;
    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 826
    :cond_10
    const/4 v2, 0x0

    :try_start_10
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->tryConnect(Z)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto/16 :goto_2

    .line 868
    .end local v20    # "type":I
    :catch_2
    move-exception v14

    .line 870
    .local v14, "e":Ljava/lang/Throwable;
    :try_start_11
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "send_fail"

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    const-string/jumbo v5, "1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v8, v8, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "service connection run"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v14, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 875
    if-nez v18, :cond_22

    .line 877
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-virtual {v2}, Lcom/taobao/accs/net/SpdyConnection;->close()V

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$600(Lcom/taobao/accs/net/SpdyConnection;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$600(Lcom/taobao/accs/net/SpdyConnection;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v2

    const-string/jumbo v3, "send fail"

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 881
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4

    .line 882
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .restart local v15    # "i":I
    :goto_4
    if-ltz v15, :cond_21

    .line 883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/taobao/accs/data/Message;

    .line 884
    .restart local v17    # "msg":Lcom/taobao/accs/data/Message;
    if-eqz v17, :cond_13

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v2, :cond_13

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x64

    if-eq v2, v4, :cond_12

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xc9

    if-ne v2, v4, :cond_13

    .line 886
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget-object v2, v2, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const/4 v4, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 882
    :cond_13
    add-int/lit8 v15, v15, -0x1

    goto :goto_4

    .line 829
    .end local v14    # "e":Ljava/lang/Throwable;
    .end local v15    # "i":I
    .end local v17    # "msg":Lcom/taobao/accs/data/Message;
    .restart local v20    # "type":I
    :cond_14
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_1e

    .line 830
    const/4 v2, 0x1

    :try_start_14
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->tryConnect(Z)V

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$200(Lcom/taobao/accs/net/SpdyConnection;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$1200(Lcom/taobao/accs/net/SpdyConnection;)Lorg/android/spdy/SpdySession;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget-object v2, v2, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v3, v3, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/taobao/accs/data/Message;->build(Landroid/content/Context;I)[B

    move-result-object v7

    .line 833
    .local v7, "data":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/taobao/accs/data/Message;->setSendTime(J)V

    .line 834
    array-length v2, v7

    const/16 v3, 0x4000

    if-le v2, v3, :cond_18

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x66

    if-eq v2, v3, :cond_18

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget-object v2, v2, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const/4 v3, -0x4

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto/16 :goto_2

    .line 874
    .end local v7    # "data":[B
    .end local v20    # "type":I
    :catchall_3
    move-exception v2

    .line 875
    if-nez v18, :cond_24

    .line 877
    :try_start_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-virtual {v3}, Lcom/taobao/accs/net/SpdyConnection;->close()V

    .line 878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v3}, Lcom/taobao/accs/net/SpdyConnection;->access$600(Lcom/taobao/accs/net/SpdyConnection;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v3}, Lcom/taobao/accs/net/SpdyConnection;->access$600(Lcom/taobao/accs/net/SpdyConnection;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v3

    const-string/jumbo v4, "send fail"

    invoke-virtual {v3, v4}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 881
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v3}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_5

    .line 882
    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v3}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v15, v3, -0x1

    .restart local v15    # "i":I
    :goto_5
    if-ltz v15, :cond_23

    .line 883
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v3}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/taobao/accs/data/Message;

    .line 884
    .restart local v17    # "msg":Lcom/taobao/accs/data/Message;
    if-eqz v17, :cond_17

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v3, :cond_17

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0x64

    if-eq v3, v5, :cond_16

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0xc9

    if-ne v3, v5, :cond_17

    .line 886
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget-object v3, v3, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const/4 v5, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v5}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 887
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v3}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 882
    :cond_17
    add-int/lit8 v15, v15, -0x1

    goto :goto_5

    .line 838
    .end local v15    # "i":I
    .end local v17    # "msg":Lcom/taobao/accs/data/Message;
    .restart local v7    # "data":[B
    .restart local v20    # "type":I
    :cond_18
    :try_start_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$1200(Lcom/taobao/accs/net/SpdyConnection;)Lorg/android/spdy/SpdySession;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getIntDataId()I

    move-result v3

    const/16 v4, 0xc8

    const/4 v5, 0x0

    if-nez v7, :cond_1b

    const/4 v6, 0x0

    :goto_6
    invoke-virtual/range {v2 .. v7}, Lorg/android/spdy/SpdySession;->sendCustomControlFrame(IIII[B)I

    .line 839
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v4, v4, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " send data len"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x5

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-nez v7, :cond_1c

    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    const-string/jumbo v6, "dataId"

    aput-object v6, v5, v2

    const/4 v2, 0x2

    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-string/jumbo v6, "utdid"

    aput-object v6, v5, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget-object v6, v6, Lcom/taobao/accs/net/SpdyConnection;->mUtdid:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget-object v2, v2, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/taobao/accs/data/MessageHandler;->onSend(Lcom/taobao/accs/data/Message;)V

    .line 845
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/taobao/accs/data/Message;->isAck:Z

    if-eqz v2, :cond_19

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v4, v4, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sendCFrame end ack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "dataId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getIntDataId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget-object v2, v2, Lcom/taobao/accs/net/SpdyConnection;->mAckMessage:Ljava/util/LinkedHashMap;

    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getIntDataId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :cond_19
    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 851
    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSendData()V

    .line 853
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/taobao/accs/data/Message;->timeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/taobao/accs/net/SpdyConnection;->setTimeOut(Ljava/lang/String;J)V

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget-object v2, v2, Lcom/taobao/accs/net/SpdyConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    new-instance v8, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-static {}, Lc8/TI;->isAppBackground()Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-virtual {v3}, Lcom/taobao/accs/net/SpdyConnection;->getChannelHost()Ljava/lang/String;

    move-result-object v11

    array-length v3, v7

    int-to-long v12, v3

    invoke-direct/range {v8 .. v13}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-virtual {v2, v8}, Lcom/taobao/accs/data/MessageHandler;->addTrafficsInfo(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;)V

    goto/16 :goto_2

    .line 838
    :cond_1b
    array-length v6, v7

    goto/16 :goto_6

    .line 839
    :cond_1c
    array-length v2, v7

    goto/16 :goto_7

    .line 859
    .end local v7    # "data":[B
    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 862
    :cond_1e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->tryConnect(Z)V

    .line 863
    const/16 v18, 0x1

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v4, v4, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " skip msg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto/16 :goto_2

    .line 890
    .restart local v15    # "i":I
    :cond_1f
    :try_start_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v5, v5, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " network disconnected, wait"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 892
    monitor-exit v3

    goto/16 :goto_0

    .end local v15    # "i":I
    :catchall_4
    move-exception v2

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :try_start_19
    throw v2
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_3

    .line 899
    :catch_3
    move-exception v19

    .line 900
    .restart local v19    # "t":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, " run finally error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 894
    .end local v19    # "t":Ljava/lang/Throwable;
    :cond_20
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "send succ, remove it"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_3

    .line 896
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 897
    monitor-exit v3

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    :try_start_1c
    throw v2
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_3

    .line 890
    .end local v20    # "type":I
    .restart local v14    # "e":Ljava/lang/Throwable;
    .restart local v15    # "i":I
    :cond_21
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v5, v5, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " network disconnected, wait"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 892
    monitor-exit v3

    goto/16 :goto_0

    .end local v15    # "i":I
    :catchall_6
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    :try_start_1e
    throw v2
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_4

    .line 899
    :catch_4
    move-exception v19

    .line 900
    .restart local v19    # "t":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, " run finally error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 894
    .end local v19    # "t":Ljava/lang/Throwable;
    :cond_22
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "send succ, remove it"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_4

    .line 896
    :try_start_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v2}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 897
    monitor-exit v3

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    :try_start_21
    throw v2
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_4

    .line 890
    .end local v14    # "e":Ljava/lang/Throwable;
    .restart local v15    # "i":I
    :cond_23
    :try_start_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget v6, v6, Lcom/taobao/accs/net/SpdyConnection;->mConnectionType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " network disconnected, wait"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v3}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 892
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    .line 901
    .end local v15    # "i":I
    :goto_8
    throw v2

    .line 892
    :catchall_8
    move-exception v3

    :try_start_23
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    :try_start_24
    throw v3
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_5

    .line 899
    :catch_5
    move-exception v19

    .line 900
    .restart local v19    # "t":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, " run finally error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_8

    .line 894
    .end local v19    # "t":Ljava/lang/Throwable;
    :cond_24
    :try_start_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "send succ, remove it"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v3}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_5

    .line 896
    :try_start_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/net/SpdyConnection$NetworkThread;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-static {v3}, Lcom/taobao/accs/net/SpdyConnection;->access$000(Lcom/taobao/accs/net/SpdyConnection;)Ljava/util/LinkedList;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 897
    monitor-exit v4

    goto :goto_8

    :catchall_9
    move-exception v3

    monitor-exit v4
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_9

    :try_start_27
    throw v3
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_5
.end method
