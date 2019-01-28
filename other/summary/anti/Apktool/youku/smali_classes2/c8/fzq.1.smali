.class public abstract Lc8/fzq;
.super Lc8/bzq;
.source "SpmcArrayQueue.java"


# annotations
.annotation build Lc8/xyq;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/bzq",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final P_INDEX_OFFSET:J


# instance fields
.field private volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lc8/fzq;

    const-string/jumbo v1, "producerIndex"

    invoke-static {v0, v1}, Lc8/vzq;->addressOf(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lc8/fzq;->P_INDEX_OFFSET:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 46
    .local p0, "this":Lc8/fzq;, "Lrx/internal/util/unsafe/SpmcArrayQueueProducerField<TE;>;"
    invoke-direct {p0, p1}, Lc8/bzq;-><init>(I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected final lvProducerIndex()J
    .locals 2

    .prologue
    .line 38
    .local p0, "this":Lc8/fzq;, "Lrx/internal/util/unsafe/SpmcArrayQueueProducerField<TE;>;"
    iget-wide v0, p0, Lc8/fzq;->producerIndex:J

    return-wide v0
.end method

.method protected final soTail(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    .line 42
    .local p0, "this":Lc8/fzq;, "Lrx/internal/util/unsafe/SpmcArrayQueueProducerField<TE;>;"
    sget-object v0, Lc8/vzq;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lc8/fzq;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 43
    return-void
.end method
