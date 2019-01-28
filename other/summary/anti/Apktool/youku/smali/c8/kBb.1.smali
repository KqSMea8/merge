.class public Lc8/kBb;
.super Ljava/lang/Object;
.source "UploadMgr.java"

# interfaces
.implements Lc8/XAb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nBb;->startLunchMode()V
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
    .line 242
    iput-object p1, p0, Lc8/kBb;->this$0:Lc8/nBb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadExcuted(J)V
    .locals 5
    .param p1, "count"    # J

    .prologue
    .line 245
    iget-object v0, p0, Lc8/kBb;->this$0:Lc8/nBb;

    invoke-static {v0, p1, p2}, Lc8/nBb;->access$502(Lc8/nBb;J)J

    .line 246
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadMode;->LAUNCH:Lcom/alibaba/analytics/core/sync/UploadMode;

    iget-object v1, p0, Lc8/kBb;->this$0:Lc8/nBb;

    invoke-static {v1}, Lc8/nBb;->access$100(Lc8/nBb;)Lcom/alibaba/analytics/core/sync/UploadMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lc8/kBb;->this$0:Lc8/nBb;

    invoke-static {v0}, Lc8/nBb;->access$500(Lc8/nBb;)J

    move-result-wide v0

    iget-object v2, p0, Lc8/kBb;->this$0:Lc8/nBb;

    invoke-static {v2}, Lc8/nBb;->access$600(Lc8/nBb;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 248
    iget-object v0, p0, Lc8/kBb;->this$0:Lc8/nBb;

    invoke-static {v0}, Lc8/nBb;->access$200(Lc8/nBb;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 251
    :cond_0
    return-void
.end method
