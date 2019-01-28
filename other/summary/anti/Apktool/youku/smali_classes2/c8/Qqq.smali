.class public Lc8/Qqq;
.super Ljava/lang/Object;
.source "OnSubscribeTimerPeriodically.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Rqq;->call(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field counter:J

.field final synthetic this$0:Lc8/Rqq;

.field final synthetic val$child:Lc8/Omq;

.field final synthetic val$worker:Lc8/Zlq;


# direct methods
.method constructor <init>(Lc8/Rqq;Lc8/Omq;Lc8/Zlq;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lc8/Qqq;->this$0:Lc8/Rqq;

    iput-object p2, p0, Lc8/Qqq;->val$child:Lc8/Omq;

    iput-object p3, p0, Lc8/Qqq;->val$worker:Lc8/Zlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 6

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lc8/Qqq;->val$child:Lc8/Omq;

    iget-wide v2, p0, Lc8/Qqq;->counter:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lc8/Qqq;->counter:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Omq;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lc8/Qqq;->val$worker:Lc8/Zlq;

    invoke-virtual {v1}, Lc8/Zlq;->unsubscribe()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    iget-object v1, p0, Lc8/Qqq;->val$child:Lc8/Omq;

    invoke-static {v0, v1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lc8/Qqq;->val$child:Lc8/Omq;

    invoke-static {v0, v2}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    throw v1
.end method
