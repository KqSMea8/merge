.class public Lc8/Epf;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Fpf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimestampComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lc8/dqf;",
        ">;"
    }
.end annotation


# instance fields
.field private final threshold:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "threshold"    # J

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-wide p1, p0, Lc8/Epf;->threshold:J

    .line 571
    return-void
.end method


# virtual methods
.method public compare(Lc8/dqf;Lc8/dqf;)I
    .locals 10
    .param p1, "e1"    # Lc8/dqf;
    .param p2, "e2"    # Lc8/dqf;

    .prologue
    const-wide/16 v4, 0x0

    .line 575
    invoke-interface {p1}, Lc8/dqf;->getTimestamp()J

    move-result-wide v6

    iget-wide v8, p0, Lc8/Epf;->threshold:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    invoke-interface {p1}, Lc8/dqf;->getTimestamp()J

    move-result-wide v0

    .line 576
    .local v0, "time1":J
    :goto_0
    invoke-interface {p2}, Lc8/dqf;->getTimestamp()J

    move-result-wide v6

    iget-wide v8, p0, Lc8/Epf;->threshold:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    invoke-interface {p2}, Lc8/dqf;->getTimestamp()J

    move-result-wide v2

    .line 577
    .local v2, "time2":J
    :goto_1
    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const/4 v4, -0x1

    :goto_2
    return v4

    .end local v0    # "time1":J
    .end local v2    # "time2":J
    :cond_0
    move-wide v0, v4

    .line 575
    goto :goto_0

    .restart local v0    # "time1":J
    :cond_1
    move-wide v2, v4

    .line 576
    goto :goto_1

    .line 577
    .restart local v2    # "time2":J
    :cond_2
    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 566
    check-cast p1, Lc8/dqf;

    check-cast p2, Lc8/dqf;

    invoke-virtual {p0, p1, p2}, Lc8/Epf;->compare(Lc8/dqf;Lc8/dqf;)I

    move-result v0

    return v0
.end method
