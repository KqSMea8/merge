.class public abstract Lc8/Syq;
.super Lc8/Uyq;
.source "MpmcArrayQueue.java"


# annotations
.annotation build Lc8/xyq;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Uyq",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final C_INDEX_OFFSET:J


# instance fields
.field private volatile consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-class v0, Lc8/Syq;

    const-string/jumbo v1, "consumerIndex"

    invoke-static {v0, v1}, Lc8/vzq;->addressOf(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lc8/Syq;->C_INDEX_OFFSET:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 65
    .local p0, "this":Lc8/Syq;, "Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField<TE;>;"
    invoke-direct {p0, p1}, Lc8/Uyq;-><init>(I)V

    .line 66
    return-void
.end method


# virtual methods
.method protected final casConsumerIndex(JJ)Z
    .locals 9
    .param p1, "expect"    # J
    .param p3, "newValue"    # J

    .prologue
    .line 73
    .local p0, "this":Lc8/Syq;, "Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField<TE;>;"
    sget-object v0, Lc8/vzq;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lc8/Syq;->C_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method protected final lvConsumerIndex()J
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lc8/Syq;, "Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField<TE;>;"
    iget-wide v0, p0, Lc8/Syq;->consumerIndex:J

    return-wide v0
.end method
