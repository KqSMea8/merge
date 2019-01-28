.class public abstract Lc8/azq;
.super Lc8/czq;
.source "SpmcArrayQueue.java"


# annotations
.annotation build Lc8/xyq;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/czq",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final C_INDEX_OFFSET:J


# instance fields
.field private volatile consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-class v0, Lc8/azq;

    const-string/jumbo v1, "consumerIndex"

    invoke-static {v0, v1}, Lc8/vzq;->addressOf(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lc8/azq;->C_INDEX_OFFSET:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 65
    .local p0, "this":Lc8/azq;, "Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField<TE;>;"
    invoke-direct {p0, p1}, Lc8/czq;-><init>(I)V

    .line 66
    return-void
.end method


# virtual methods
.method protected final casHead(JJ)Z
    .locals 9
    .param p1, "expect"    # J
    .param p3, "newValue"    # J

    .prologue
    .line 73
    .local p0, "this":Lc8/azq;, "Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField<TE;>;"
    sget-object v0, Lc8/vzq;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lc8/azq;->C_INDEX_OFFSET:J

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
    .local p0, "this":Lc8/azq;, "Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField<TE;>;"
    iget-wide v0, p0, Lc8/azq;->consumerIndex:J

    return-wide v0
.end method
