.class public Lc8/atf;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "OThreadPoolExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/btf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TBThreadPoolExecutor"
.end annotation


# direct methods
.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 35
    const-wide/16 v0, 0x3c

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lc8/atf;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/atf;->allowCoreThreadTimeOut(Z)V

    .line 37
    return-void
.end method
