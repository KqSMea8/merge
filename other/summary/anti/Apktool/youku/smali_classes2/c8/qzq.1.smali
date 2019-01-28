.class public abstract Lc8/qzq;
.super Lc8/szq;
.source "SpscUnboundedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/szq",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected consumerBuffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected consumerMask:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lc8/qzq;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerColdField<TE;>;"
    invoke-direct {p0}, Lc8/szq;-><init>()V

    return-void
.end method
