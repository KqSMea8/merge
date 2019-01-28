.class public Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorThreadPool$1;
.super Ljava/util/ArrayList;
.source "MonitorThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/cJf;->putMonitorRecordTask(JLc8/UIf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lc8/UIf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/cJf;

.field final synthetic val$info:Lc8/UIf;

.field final synthetic val$time:J


# direct methods
.method public constructor <init>(Lc8/cJf;Lc8/UIf;J)V
    .locals 7
    .param p1, "this$0"    # Lc8/cJf;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 85
    iput-object p1, p0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorThreadPool$1;->this$0:Lc8/cJf;

    iput-object p2, p0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorThreadPool$1;->val$info:Lc8/UIf;

    iput-wide p3, p0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorThreadPool$1;->val$time:J

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object v0, p0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorThreadPool$1;->val$info:Lc8/UIf;

    invoke-virtual {p0, v0}, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorThreadPool$1;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lc8/cJf;->TAG:Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "putMonitorRecordTask, id="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorThreadPool$1;->val$info:Lc8/UIf;

    iget-object v3, v3, Lc8/UIf;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "source="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorThreadPool$1;->val$info:Lc8/UIf;

    iget v3, v3, Lc8/UIf;->source:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "code="

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorThreadPool$1;->val$info:Lc8/UIf;

    iget v3, v3, Lc8/UIf;->code:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "type="

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorThreadPool$1;->val$info:Lc8/UIf;

    iget v3, v3, Lc8/UIf;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "tag="

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorThreadPool$1;->val$info:Lc8/UIf;

    iget-object v3, v3, Lc8/UIf;->taskId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "time="

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-wide v4, p0, Lcom/taobao/tao/messagekit/base/monitor/monitorthread/MonitorThreadPool$1;->val$time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return-void
.end method
