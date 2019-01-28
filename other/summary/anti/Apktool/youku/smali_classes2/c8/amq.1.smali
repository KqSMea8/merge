.class public abstract Lc8/amq;
.super Ljava/lang/Object;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Zlq;
    }
.end annotation


# static fields
.field static final CLOCK_DRIFT_TOLERANCE_NANOS:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v1, "rx.scheduler.drift-tolerance"

    const-wide/16 v2, 0xf

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lc8/amq;->CLOCK_DRIFT_TOLERANCE_NANOS:J

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method


# virtual methods
.method public abstract createWorker()Lc8/Zlq;
.end method

.method public now()J
    .locals 2

    .prologue
    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public when(Lc8/Inq;)Lc8/amq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lc8/amq;",
            ":",
            "Lc8/Pmq;",
            ">(",
            "Lc8/Inq",
            "<",
            "Lc8/Vlq",
            "<",
            "Lc8/Vlq",
            "<",
            "Lc8/Plq;",
            ">;>;",
            "Lc8/Plq;",
            ">;)TS;"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "combine":Lc8/Inq;, "Lrx/functions/Func1<Lrx/Observable<Lrx/Observable<Lrx/Completable;>;>;Lrx/Completable;>;"
    new-instance v0, Lc8/qxq;

    invoke-direct {v0, p1, p0}, Lc8/qxq;-><init>(Lc8/Inq;Lc8/amq;)V

    return-object v0
.end method
