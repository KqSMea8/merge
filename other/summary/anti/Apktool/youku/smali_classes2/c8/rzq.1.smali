.class public abstract Lc8/rzq;
.super Lc8/qzq;
.source "SpscUnboundedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/qzq",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected consumerIndex:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    .local p0, "this":Lc8/rzq;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerField<TE;>;"
    invoke-direct {p0}, Lc8/qzq;-><init>()V

    return-void
.end method
