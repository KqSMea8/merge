.class public final Lc8/Xwq;
.super Lc8/jxq;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ywq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PoolWorker"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lc8/jxq;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 198
    return-void
.end method
