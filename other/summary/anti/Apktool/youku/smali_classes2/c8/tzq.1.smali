.class public abstract Lc8/tzq;
.super Lc8/uzq;
.source "SpscUnboundedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/uzq",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected producerBuffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected producerLookAhead:J

.field protected producerLookAheadStep:I

.field protected producerMask:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    .local p0, "this":Lc8/tzq;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields<TE;>;"
    invoke-direct {p0}, Lc8/uzq;-><init>()V

    return-void
.end method
