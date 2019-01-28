.class public Lc8/iBb;
.super Ljava/lang/Object;
.source "UploadMgr.java"

# interfaces
.implements Lc8/NAb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nBb;->startRealTimeMode()V
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
    .line 195
    iput-object p1, p0, Lc8/iBb;->this$0:Lc8/nBb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(JJ)V
    .locals 0
    .param p1, "count"    # J
    .param p3, "dbSize"    # J

    .prologue
    .line 207
    return-void
.end method

.method public onInsert(JJ)V
    .locals 7
    .param p1, "count"    # J
    .param p3, "dbSize"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 199
    const-string/jumbo v0, "RealTimeMode"

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

    .line 200
    cmp-long v0, p1, v4

    if-lez v0, :cond_0

    cmp-long v0, p3, v4

    if-lez v0, :cond_0

    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadMode;->REALTIME:Lcom/alibaba/analytics/core/sync/UploadMode;

    iget-object v1, p0, Lc8/iBb;->this$0:Lc8/nBb;

    invoke-static {v1}, Lc8/nBb;->access$100(Lc8/nBb;)Lcom/alibaba/analytics/core/sync/UploadMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lc8/iBb;->this$0:Lc8/nBb;

    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lc8/iBb;->this$0:Lc8/nBb;

    invoke-static {v3}, Lc8/nBb;->access$300(Lc8/nBb;)Lc8/pBb;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/nBb;->access$202(Lc8/nBb;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 203
    :cond_0
    return-void
.end method
