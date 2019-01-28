.class public abstract Lc8/nzq;
.super Lc8/kzq;
.source "SpscArrayQueue.java"


# annotations
.annotation build Lc8/xyq;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/kzq",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final P_INDEX_OFFSET:J


# instance fields
.field protected producerIndex:J

.field protected producerLookAhead:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lc8/nzq;

    const-string/jumbo v1, "producerIndex"

    invoke-static {v0, v1}, Lc8/vzq;->addressOf(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lc8/nzq;->P_INDEX_OFFSET:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 47
    .local p0, "this":Lc8/nzq;, "Lrx/internal/util/unsafe/SpscArrayQueueProducerFields<TE;>;"
    invoke-direct {p0, p1}, Lc8/kzq;-><init>(I)V

    .line 48
    return-void
.end method
