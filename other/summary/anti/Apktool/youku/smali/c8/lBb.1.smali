.class public Lc8/lBb;
.super Ljava/lang/Object;
.source "UploadMgr.java"

# interfaces
.implements Lc8/XAb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nBb;->startIntervalMode()V
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
    .line 266
    iput-object p1, p0, Lc8/lBb;->this$0:Lc8/nBb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadExcuted(J)V
    .locals 6
    .param p1, "count"    # J

    .prologue
    .line 269
    iget-object v0, p0, Lc8/lBb;->this$0:Lc8/nBb;

    iget-object v1, p0, Lc8/lBb;->this$0:Lc8/nBb;

    invoke-static {v1}, Lc8/nBb;->access$800(Lc8/nBb;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lc8/nBb;->access$702(Lc8/nBb;J)J

    .line 270
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "mCurrentUploadInterval"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lc8/lBb;->this$0:Lc8/nBb;

    invoke-static {v3}, Lc8/nBb;->access$700(Lc8/nBb;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-static {}, Lc8/gBb;->getInstance()Lc8/gBb;

    move-result-object v0

    iget-object v1, p0, Lc8/lBb;->this$0:Lc8/nBb;

    invoke-static {v1}, Lc8/nBb;->access$000(Lc8/nBb;)Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/gBb;->setAllowedNetworkStatus(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V

    .line 272
    iget-object v0, p0, Lc8/lBb;->this$0:Lc8/nBb;

    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v1

    iget-object v2, p0, Lc8/lBb;->this$0:Lc8/nBb;

    invoke-static {v2}, Lc8/nBb;->access$200(Lc8/nBb;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iget-object v3, p0, Lc8/lBb;->this$0:Lc8/nBb;

    invoke-static {v3}, Lc8/nBb;->access$300(Lc8/nBb;)Lc8/pBb;

    move-result-object v3

    iget-object v4, p0, Lc8/lBb;->this$0:Lc8/nBb;

    invoke-static {v4}, Lc8/nBb;->access$700(Lc8/nBb;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/nBb;->access$202(Lc8/nBb;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 273
    return-void
.end method
