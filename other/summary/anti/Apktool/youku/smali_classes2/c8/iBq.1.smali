.class public final Lc8/iBq;
.super Ljava/lang/Object;
.source "TestScheduler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nBq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompareActionsByTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lc8/mBq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lc8/mBq;Lc8/mBq;)I
    .locals 8
    .param p1, "action1"    # Lc8/mBq;
    .param p2, "action2"    # Lc8/mBq;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 64
    iget-wide v4, p1, Lc8/mBq;->time:J

    iget-wide v6, p2, Lc8/mBq;->time:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 65
    invoke-static {p1}, Lc8/mBq;->access$000(Lc8/mBq;)J

    move-result-wide v4

    invoke-static {p2}, Lc8/mBq;->access$000(Lc8/mBq;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    invoke-static {p1}, Lc8/mBq;->access$000(Lc8/mBq;)J

    move-result-wide v4

    invoke-static {p2}, Lc8/mBq;->access$000(Lc8/mBq;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 67
    :cond_3
    iget-wide v4, p1, Lc8/mBq;->time:J

    iget-wide v6, p2, Lc8/mBq;->time:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    iget-wide v4, p1, Lc8/mBq;->time:J

    iget-wide v6, p2, Lc8/mBq;->time:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p1, Lc8/mBq;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lc8/mBq;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/iBq;->compare(Lc8/mBq;Lc8/mBq;)I

    move-result v0

    return v0
.end method
