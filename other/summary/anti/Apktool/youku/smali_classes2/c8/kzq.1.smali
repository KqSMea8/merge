.class public abstract Lc8/kzq;
.super Lc8/izq;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/izq",
        "<TE;>;"
    }
.end annotation


# instance fields
.field p10:J

.field p11:J

.field p12:J

.field p13:J

.field p14:J

.field p15:J

.field p16:J

.field p30:J

.field p31:J

.field p32:J

.field p33:J

.field p34:J

.field p35:J

.field p36:J

.field p37:J


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 36
    .local p0, "this":Lc8/kzq;, "Lrx/internal/util/unsafe/SpscArrayQueueL1Pad<TE;>;"
    invoke-direct {p0, p1}, Lc8/izq;-><init>(I)V

    .line 37
    return-void
.end method
