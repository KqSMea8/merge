.class public Lc8/juf;
.super Ljava/lang/Object;
.source "DecodeHelper.java"

# interfaces
.implements Lc8/vuf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/iuf;
    }
.end annotation


# static fields
.field private static final THRESHOLD_OF_NO_ASHMEM_FOREVER:I = 0x8

.field private static final THRESHOLD_OF_NO_IN_BITMAP_FOREVER:I = 0x8

.field private static final THRESHOLD_OF_SYSTEM_FOREVER:I = 0x8


# instance fields
.field private bytesPool:Lc8/JNf;

.field public forcedDegrade2NoAshmem:Z

.field public forcedDegrade2NoInBitmap:Z

.field historyOfDegrade2NoAshmem:I

.field historyOfDegrade2NoInBitmap:I

.field historyOfDegrade2System:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method private calculateNewBinary(IZ)I
    .locals 2
    .param p1, "recent"    # I
    .param p2, "success"    # Z

    .prologue
    .line 99
    shl-int/lit8 v1, p1, 0x1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x3ff

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cancelledInOptions(Lc8/ouf;)Z
    .locals 1
    .param p0, "options"    # Lc8/ouf;

    .prologue
    .line 144
    iget-boolean v0, p0, Lc8/ouf;->cancelled:Z

    return v0
.end method

.method private countBinaryBit(I)I
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 94
    shr-int/lit8 v1, p1, 0x1

    const v2, -0x24924925

    and-int/2addr v1, v2

    sub-int v1, p1, v1

    shr-int/lit8 v2, p1, 0x2

    const v3, 0x49249249

    and-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 95
    .local v0, "tmp":I
    shr-int/lit8 v1, v0, 0x3

    add-int/2addr v1, v0

    const v2, -0x38e38e39

    and-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x3f

    return v1
.end method

.method public static getIncrementalStaging(Lc8/ouf;)Lc8/Kuf;
    .locals 1
    .param p0, "options"    # Lc8/ouf;

    .prologue
    .line 156
    iget-object v0, p0, Lc8/ouf;->mIncrementalStaging:Lc8/Kuf;

    return-object v0
.end method

.method public static getLastSampleSizeInOptions(Lc8/ouf;)I
    .locals 1
    .param p0, "options"    # Lc8/ouf;

    .prologue
    .line 148
    iget v0, p0, Lc8/ouf;->lastSampleSize:I

    return v0
.end method

.method public static instance()Lc8/juf;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lc8/iuf;->access$000()Lc8/juf;

    move-result-object v0

    return-object v0
.end method

.method public static resultEnd(Lc8/puf;Lc8/ouf;)Z
    .locals 1
    .param p0, "result"    # Lc8/puf;
    .param p1, "options"    # Lc8/ouf;

    .prologue
    .line 136
    iget-boolean v0, p1, Lc8/ouf;->cancelled:Z

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lc8/juf;->resultOK(Lc8/puf;Lc8/ouf;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resultOK(Lc8/puf;Lc8/ouf;)Z
    .locals 1
    .param p0, "result"    # Lc8/puf;
    .param p1, "options"    # Lc8/ouf;

    .prologue
    .line 130
    iget-boolean v0, p1, Lc8/ouf;->justDecodeBounds:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc8/ouf;->isSizeAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p1, Lc8/ouf;->incrementalDecode:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lc8/ouf;->mIncrementalStaging:Lc8/Kuf;

    if-nez v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    iget-object v0, p0, Lc8/puf;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lc8/puf;->animated:Lc8/ruf;

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setIncrementalStaging(Lc8/ouf;Lc8/Kuf;)V
    .locals 0
    .param p0, "options"    # Lc8/ouf;
    .param p1, "staging"    # Lc8/Kuf;

    .prologue
    .line 160
    iput-object p1, p0, Lc8/ouf;->mIncrementalStaging:Lc8/Kuf;

    .line 161
    return-void
.end method

.method public static setLastSampleSizeInOptions(Lc8/ouf;I)V
    .locals 0
    .param p0, "options"    # Lc8/ouf;
    .param p1, "newSampleSize"    # I

    .prologue
    .line 152
    iput p1, p0, Lc8/ouf;->lastSampleSize:I

    .line 153
    return-void
.end method

.method public static setUponSysOptions(Lc8/ouf;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0
    .param p0, "options"    # Lc8/ouf;
    .param p1, "sysOpts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lc8/ouf;->setUponSysOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 141
    return-void
.end method


# virtual methods
.method public offerBytes(I)[B
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "ret":[B
    iget-object v1, p0, Lc8/juf;->bytesPool:Lc8/JNf;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lc8/juf;->bytesPool:Lc8/JNf;

    invoke-interface {v1, p1}, Lc8/JNf;->offer(I)[B

    move-result-object v0

    .line 111
    :cond_0
    if-nez v0, :cond_1

    .line 112
    new-array v0, p1, [B

    .line 114
    :cond_1
    return-object v0
.end method

.method public declared-synchronized onDegraded2NoAshmem(Z)V
    .locals 6
    .param p1, "success"    # Z

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/juf;->forcedDegrade2NoAshmem:Z

    if-nez v1, :cond_0

    .line 66
    iget v1, p0, Lc8/juf;->historyOfDegrade2NoAshmem:I

    invoke-direct {p0, v1, p1}, Lc8/juf;->calculateNewBinary(IZ)I

    move-result v1

    iput v1, p0, Lc8/juf;->historyOfDegrade2NoAshmem:I

    .line 67
    iget v1, p0, Lc8/juf;->historyOfDegrade2NoAshmem:I

    invoke-direct {p0, v1}, Lc8/juf;->countBinaryBit(I)I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/juf;->forcedDegrade2NoAshmem:Z

    .line 69
    const-string/jumbo v1, "Pexode"

    const-string/jumbo v2, "auto degrading to no ashmem, history=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lc8/juf;->historyOfDegrade2NoAshmem:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lc8/RNf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-static {}, Lc8/nuf;->getForcedDegradationListener()Lc8/luf;

    move-result-object v0

    .local v0, "listener":Lc8/luf;
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Lc8/luf;->onForcedDegrade2NoAshmem()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v0    # "listener":Lc8/luf;
    :cond_0
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDegraded2NoInBitmap(Z)V
    .locals 6
    .param p1, "success"    # Z

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/juf;->forcedDegrade2NoInBitmap:Z

    if-nez v1, :cond_0

    .line 81
    iget v1, p0, Lc8/juf;->historyOfDegrade2NoInBitmap:I

    invoke-direct {p0, v1, p1}, Lc8/juf;->calculateNewBinary(IZ)I

    move-result v1

    iput v1, p0, Lc8/juf;->historyOfDegrade2NoInBitmap:I

    .line 82
    iget v1, p0, Lc8/juf;->historyOfDegrade2NoInBitmap:I

    invoke-direct {p0, v1}, Lc8/juf;->countBinaryBit(I)I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/juf;->forcedDegrade2NoInBitmap:Z

    .line 84
    const-string/jumbo v1, "Pexode"

    const-string/jumbo v2, "auto degrading to no inBitmap, history=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lc8/juf;->historyOfDegrade2NoInBitmap:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lc8/RNf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-static {}, Lc8/nuf;->getForcedDegradationListener()Lc8/luf;

    move-result-object v0

    .local v0, "listener":Lc8/luf;
    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0}, Lc8/luf;->onForcedDegrade2NoInBitmap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v0    # "listener":Lc8/luf;
    :cond_0
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDegraded2System(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/nuf;->isForcedDegrade2System()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    iget v1, p0, Lc8/juf;->historyOfDegrade2System:I

    invoke-direct {p0, v1, p1}, Lc8/juf;->calculateNewBinary(IZ)I

    move-result v1

    iput v1, p0, Lc8/juf;->historyOfDegrade2System:I

    .line 53
    iget v1, p0, Lc8/juf;->historyOfDegrade2System:I

    invoke-direct {p0, v1}, Lc8/juf;->countBinaryBit(I)I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 54
    const/4 v1, 0x1

    invoke-static {v1}, Lc8/nuf;->forceDegrade2System(Z)V

    .line 56
    invoke-static {}, Lc8/nuf;->getForcedDegradationListener()Lc8/luf;

    move-result-object v0

    .local v0, "listener":Lc8/luf;
    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Lc8/luf;->onForcedDegrade2System()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v0    # "listener":Lc8/luf;
    :cond_0
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseBytes([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 118
    iget-object v0, p0, Lc8/juf;->bytesPool:Lc8/JNf;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lc8/juf;->bytesPool:Lc8/JNf;

    invoke-interface {v0, p1}, Lc8/JNf;->release([B)V

    .line 121
    :cond_0
    return-void
.end method

.method setBytesPool(Lc8/JNf;)V
    .locals 0
    .param p1, "pool"    # Lc8/JNf;

    .prologue
    .line 103
    iput-object p1, p0, Lc8/juf;->bytesPool:Lc8/JNf;

    .line 104
    return-void
.end method
