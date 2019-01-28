.class public abstract Lc8/Vyq;
.super Lc8/Tyq;
.source "MpmcArrayQueue.java"


# annotations
.annotation build Lc8/xyq;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Tyq",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final P_INDEX_OFFSET:J


# instance fields
.field private volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lc8/Vyq;

    const-string/jumbo v1, "producerIndex"

    invoke-static {v0, v1}, Lc8/vzq;->addressOf(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lc8/Vyq;->P_INDEX_OFFSET:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 38
    .local p0, "this":Lc8/Vyq;, "Lrx/internal/util/unsafe/MpmcArrayQueueProducerField<TE;>;"
    invoke-direct {p0, p1}, Lc8/Tyq;-><init>(I)V

    .line 39
    return-void
.end method


# virtual methods
.method protected final casProducerIndex(JJ)Z
    .locals 9
    .param p1, "expect"    # J
    .param p3, "newValue"    # J

    .prologue
    .line 46
    .local p0, "this":Lc8/Vyq;, "Lrx/internal/util/unsafe/MpmcArrayQueueProducerField<TE;>;"
    sget-object v0, Lc8/vzq;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lc8/Vyq;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method protected final lvProducerIndex()J
    .locals 2

    .prologue
    .line 42
    .local p0, "this":Lc8/Vyq;, "Lrx/internal/util/unsafe/MpmcArrayQueueProducerField<TE;>;"
    iget-wide v0, p0, Lc8/Vyq;->producerIndex:J

    return-wide v0
.end method
