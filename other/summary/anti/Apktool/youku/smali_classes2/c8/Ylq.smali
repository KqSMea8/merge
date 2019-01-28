.class public Lc8/Ylq;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Zlq;->schedulePeriodically(Lc8/hnq;JJLjava/util/concurrent/TimeUnit;)Lc8/Pmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field count:J

.field lastNowNanos:J

.field startInNanos:J

.field final synthetic this$0:Lc8/Zlq;

.field final synthetic val$action:Lc8/hnq;

.field final synthetic val$firstNowNanos:J

.field final synthetic val$firstStartInNanos:J

.field final synthetic val$mas:Lc8/UBq;

.field final synthetic val$periodInNanos:J


# direct methods
.method constructor <init>(Lc8/Zlq;JJLc8/hnq;Lc8/UBq;J)V
    .locals 2

    .prologue
    .line 130
    iput-object p1, p0, Lc8/Ylq;->this$0:Lc8/Zlq;

    iput-wide p2, p0, Lc8/Ylq;->val$firstNowNanos:J

    iput-wide p4, p0, Lc8/Ylq;->val$firstStartInNanos:J

    iput-object p6, p0, Lc8/Ylq;->val$action:Lc8/hnq;

    iput-object p7, p0, Lc8/Ylq;->val$mas:Lc8/UBq;

    iput-wide p8, p0, Lc8/Ylq;->val$periodInNanos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iget-wide v0, p0, Lc8/Ylq;->val$firstNowNanos:J

    iput-wide v0, p0, Lc8/Ylq;->lastNowNanos:J

    .line 133
    iget-wide v0, p0, Lc8/Ylq;->val$firstStartInNanos:J

    iput-wide v0, p0, Lc8/Ylq;->startInNanos:J

    return-void
.end method


# virtual methods
.method public call()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    .line 136
    iget-object v6, p0, Lc8/Ylq;->val$action:Lc8/hnq;

    invoke-interface {v6}, Lc8/hnq;->call()V

    .line 138
    iget-object v6, p0, Lc8/Ylq;->val$mas:Lc8/UBq;

    invoke-virtual {v6}, Lc8/UBq;->isUnsubscribed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 142
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lc8/Ylq;->this$0:Lc8/Zlq;

    invoke-virtual {v7}, Lc8/Zlq;->now()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 144
    .local v4, "nowNanos":J
    sget-wide v6, Lc8/amq;->CLOCK_DRIFT_TOLERANCE_NANOS:J

    add-long/2addr v6, v4

    iget-wide v8, p0, Lc8/Ylq;->lastNowNanos:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    iget-wide v6, p0, Lc8/Ylq;->lastNowNanos:J

    iget-wide v8, p0, Lc8/Ylq;->val$periodInNanos:J

    add-long/2addr v6, v8

    sget-wide v8, Lc8/amq;->CLOCK_DRIFT_TOLERANCE_NANOS:J

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 146
    :cond_0
    iget-wide v6, p0, Lc8/Ylq;->val$periodInNanos:J

    add-long v2, v4, v6

    .line 151
    .local v2, "nextTick":J
    iget-wide v6, p0, Lc8/Ylq;->val$periodInNanos:J

    iget-wide v8, p0, Lc8/Ylq;->count:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lc8/Ylq;->count:J

    mul-long/2addr v6, v8

    sub-long v6, v2, v6

    iput-wide v6, p0, Lc8/Ylq;->startInNanos:J

    .line 155
    :goto_0
    iput-wide v4, p0, Lc8/Ylq;->lastNowNanos:J

    .line 157
    sub-long v0, v2, v4

    .line 158
    .local v0, "delay":J
    iget-object v6, p0, Lc8/Ylq;->val$mas:Lc8/UBq;

    iget-object v7, p0, Lc8/Ylq;->this$0:Lc8/Zlq;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, p0, v0, v1, v8}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/UBq;->set(Lc8/Pmq;)V

    .line 160
    .end local v0    # "delay":J
    .end local v2    # "nextTick":J
    .end local v4    # "nowNanos":J
    :cond_1
    return-void

    .line 153
    .restart local v4    # "nowNanos":J
    :cond_2
    iget-wide v6, p0, Lc8/Ylq;->startInNanos:J

    iget-wide v8, p0, Lc8/Ylq;->count:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lc8/Ylq;->count:J

    iget-wide v10, p0, Lc8/Ylq;->val$periodInNanos:J

    mul-long/2addr v8, v10

    add-long v2, v6, v8

    .restart local v2    # "nextTick":J
    goto :goto_0
.end method
