.class public Lc8/jBb;
.super Ljava/lang/Object;
.source "UploadMgr.java"

# interfaces
.implements Lc8/NAb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nBb;->startBatchMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nBb;


# direct methods
.method constructor <init>(Lc8/nBb;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lc8/jBb;->this$0:Lc8/nBb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(JJ)V
    .locals 0
    .param p1, "count"    # J
    .param p3, "dbSize"    # J

    .prologue
    .line 233
    return-void
.end method

.method public onInsert(JJ)V
    .locals 7
    .param p1, "count"    # J
    .param p3, "dbSize"    # J

    .prologue
    .line 222
    const-string/jumbo v0, "BatchMode"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "count"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "dbSize"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lc8/jBb;->this$0:Lc8/nBb;

    invoke-static {v0}, Lc8/nBb;->access$400(Lc8/nBb;)J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadMode;->BATCH:Lcom/alibaba/analytics/core/sync/UploadMode;

    iget-object v1, p0, Lc8/jBb;->this$0:Lc8/nBb;

    invoke-static {v1}, Lc8/nBb;->access$100(Lc8/nBb;)Lcom/alibaba/analytics/core/sync/UploadMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 225
    invoke-static {}, Lc8/gBb;->getInstance()Lc8/gBb;

    move-result-object v0

    iget-object v1, p0, Lc8/jBb;->this$0:Lc8/nBb;

    invoke-static {v1}, Lc8/nBb;->access$000(Lc8/nBb;)Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/gBb;->setAllowedNetworkStatus(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V

    .line 226
    iget-object v0, p0, Lc8/jBb;->this$0:Lc8/nBb;

    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v1

    iget-object v2, p0, Lc8/jBb;->this$0:Lc8/nBb;

    invoke-static {v2}, Lc8/nBb;->access$200(Lc8/nBb;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iget-object v3, p0, Lc8/jBb;->this$0:Lc8/nBb;

    invoke-static {v3}, Lc8/nBb;->access$300(Lc8/nBb;)Lc8/pBb;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/nBb;->access$202(Lc8/nBb;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 228
    :cond_0
    return-void
.end method
