.class public Lc8/uJ;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tJ;
    }
.end annotation


# static fields
.field public static final MAX_POOL_SIZE:I = 0x80000

.field public static final TAG:Ljava/lang/String; = "awcn.ByteArrayPool"


# instance fields
.field private final byteArrayPool:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lanet/channel/bytes/ByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private reused:J

.field private final std:Lanet/channel/bytes/ByteArray;

.field private total:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lc8/uJ;->byteArrayPool:Ljava/util/TreeSet;

    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Lanet/channel/bytes/ByteArray;->create(I)Lanet/channel/bytes/ByteArray;

    move-result-object v0

    iput-object v0, p0, Lc8/uJ;->std:Lanet/channel/bytes/ByteArray;

    .line 18
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lc8/uJ;->random:Ljava/util/Random;

    .line 20
    iput-wide v2, p0, Lc8/uJ;->total:J

    .line 21
    iput-wide v2, p0, Lc8/uJ;->reused:J

    .line 27
    return-void
.end method

.method public static getInstance()Lc8/uJ;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lc8/tJ;->instance:Lc8/uJ;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized refund(Lanet/channel/bytes/ByteArray;)V
    .locals 8
    .param p1, "byteArray"    # Lanet/channel/bytes/ByteArray;

    .prologue
    .line 32
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v1, p1, Lanet/channel/bytes/ByteArray;->bufferLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v2, 0x80000

    if-lt v1, v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 36
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lc8/uJ;->total:J

    iget v1, p1, Lanet/channel/bytes/ByteArray;->bufferLength:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lc8/uJ;->total:J

    .line 37
    iget-object v1, p0, Lc8/uJ;->byteArrayPool:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 38
    :goto_1
    iget-wide v2, p0, Lc8/uJ;->total:J

    const-wide/32 v4, 0x80000

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 40
    iget-object v1, p0, Lc8/uJ;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    iget-object v1, p0, Lc8/uJ;->byteArrayPool:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/bytes/ByteArray;

    .line 45
    .local v0, "deletedItem":Lanet/channel/bytes/ByteArray;
    :goto_2
    iget-wide v2, p0, Lc8/uJ;->total:J

    iget v1, v0, Lanet/channel/bytes/ByteArray;->bufferLength:I

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lc8/uJ;->total:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 32
    .end local v0    # "deletedItem":Lanet/channel/bytes/ByteArray;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 43
    :cond_2
    :try_start_2
    iget-object v1, p0, Lc8/uJ;->byteArrayPool:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/bytes/ByteArray;

    .restart local v0    # "deletedItem":Lanet/channel/bytes/ByteArray;
    goto :goto_2

    .line 48
    .end local v0    # "deletedItem":Lanet/channel/bytes/ByteArray;
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Lc8/KL;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const-string/jumbo v1, "awcn.ByteArrayPool"

    const-string/jumbo v2, "ByteArray Pool refund"

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "refund"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lanet/channel/bytes/ByteArray;->getBufferLength()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "total"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-wide v6, p0, Lc8/uJ;->total:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized retrieve(I)Lanet/channel/bytes/ByteArray;
    .locals 8
    .param p1, "length"    # I

    .prologue
    .line 54
    monitor-enter p0

    const/high16 v1, 0x80000

    if-lt p1, v1, :cond_1

    .line 55
    :try_start_0
    invoke-static {p1}, Lanet/channel/bytes/ByteArray;->create(I)Lanet/channel/bytes/ByteArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 72
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 57
    :cond_1
    :try_start_1
    iget-object v1, p0, Lc8/uJ;->std:Lanet/channel/bytes/ByteArray;

    iput p1, v1, Lanet/channel/bytes/ByteArray;->bufferLength:I

    .line 58
    iget-object v1, p0, Lc8/uJ;->byteArrayPool:Ljava/util/TreeSet;

    iget-object v2, p0, Lc8/uJ;->std:Lanet/channel/bytes/ByteArray;

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/bytes/ByteArray;

    .line 59
    .local v0, "ret":Lanet/channel/bytes/ByteArray;
    if-nez v0, :cond_2

    .line 60
    invoke-static {p1}, Lanet/channel/bytes/ByteArray;->create(I)Lanet/channel/bytes/ByteArray;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_2
    iget-object v1, v0, Lanet/channel/bytes/ByteArray;->buffer:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 63
    const/4 v1, 0x0

    iput v1, v0, Lanet/channel/bytes/ByteArray;->dataLength:I

    .line 64
    iget-object v1, p0, Lc8/uJ;->byteArrayPool:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 65
    iget-wide v2, p0, Lc8/uJ;->total:J

    iget v1, v0, Lanet/channel/bytes/ByteArray;->bufferLength:I

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lc8/uJ;->total:J

    .line 66
    iget-wide v2, p0, Lc8/uJ;->reused:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lc8/uJ;->reused:J

    .line 67
    const/4 v1, 0x1

    invoke-static {v1}, Lc8/KL;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string/jumbo v1, "awcn.ByteArrayPool"

    const-string/jumbo v2, "ByteArray Pool retrieve"

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "retrieve"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "reused"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-wide v6, p0, Lc8/uJ;->reused:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    .end local v0    # "ret":Lanet/channel/bytes/ByteArray;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public retrieveAndCopy([BI)Lanet/channel/bytes/ByteArray;
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0, p2}, Lc8/uJ;->retrieve(I)Lanet/channel/bytes/ByteArray;

    move-result-object v0

    .line 77
    .local v0, "byteArray":Lanet/channel/bytes/ByteArray;
    iget-object v1, v0, Lanet/channel/bytes/ByteArray;->buffer:[B

    invoke-static {p1, v2, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iput p2, v0, Lanet/channel/bytes/ByteArray;->dataLength:I

    .line 79
    return-object v0
.end method
