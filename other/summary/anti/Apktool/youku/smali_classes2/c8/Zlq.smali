.class public abstract Lc8/Zlq;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lc8/Pmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/amq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Worker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public now()J
    .locals 2

    .prologue
    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract schedule(Lc8/hnq;)Lc8/Pmq;
.end method

.method public abstract schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;
.end method

.method public schedulePeriodically(Lc8/hnq;JJLjava/util/concurrent/TimeUnit;)Lc8/Pmq;
    .locals 18
    .param p1, "action"    # Lc8/hnq;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 125
    move-object/from16 v0, p6

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    .line 126
    .local v12, "periodInNanos":J
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p0 .. p0}, Lc8/Zlq;->now()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 127
    .local v6, "firstNowNanos":J
    move-object/from16 v0, p6

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    add-long v8, v6, v16

    .line 129
    .local v8, "firstStartInNanos":J
    new-instance v11, Lc8/UBq;

    invoke-direct {v11}, Lc8/UBq;-><init>()V

    .line 130
    .local v11, "mas":Lc8/UBq;
    new-instance v4, Lc8/Ylq;

    move-object/from16 v5, p0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v13}, Lc8/Ylq;-><init>(Lc8/Zlq;JJLc8/hnq;Lc8/UBq;J)V

    .line 162
    .local v4, "recursiveAction":Lc8/hnq;
    new-instance v14, Lc8/UBq;

    invoke-direct {v14}, Lc8/UBq;-><init>()V

    .line 164
    .local v14, "s":Lc8/UBq;
    invoke-virtual {v11, v14}, Lc8/UBq;->set(Lc8/Pmq;)V

    .line 165
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p6

    invoke-virtual {v0, v4, v1, v2, v3}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    move-result-object v5

    invoke-virtual {v14, v5}, Lc8/UBq;->set(Lc8/Pmq;)V

    .line 166
    return-object v11
.end method
