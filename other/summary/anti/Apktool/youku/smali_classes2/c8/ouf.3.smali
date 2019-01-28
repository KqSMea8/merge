.class public Lc8/ouf;
.super Ljava/lang/Object;
.source "PexodeOptions.java"


# static fields
.field public static final CONFIG:Landroid/graphics/Bitmap$Config;

.field static sEnabledCancellability:Z


# instance fields
.field public allowDegrade2NoAshmem:Z

.field public allowDegrade2NoInBitmap:Z

.field public allowDegrade2System:Z

.field volatile cancelled:Z

.field private volatile cancelledPtr:J

.field public enableAshmem:Z

.field public forceStaticIfAnimation:Z

.field public inBitmap:Landroid/graphics/Bitmap;

.field public incrementalDecode:Z

.field public justDecodeBounds:Z

.field lastSampleSize:I

.field mIncrementalStaging:Lc8/Kuf;

.field public outAlpha:Z

.field public outHeight:I

.field public outMimeType:Lc8/Yuf;

.field public outPadding:Landroid/graphics/Rect;

.field public outWidth:I

.field public resourceValue:Landroid/util/TypedValue;

.field public sampleSize:I

.field public tempHeaderBuffer:[B

.field private uponSysOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lc8/ouf;->CONFIG:Landroid/graphics/Bitmap$Config;

    .line 99
    const/4 v0, 0x1

    sput-boolean v0, Lc8/ouf;->sEnabledCancellability:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v0, p0, Lc8/ouf;->outWidth:I

    .line 84
    iput v0, p0, Lc8/ouf;->outHeight:I

    return-void
.end method

.method private native nativeRequestCancel(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lc8/ouf;->tempHeaderBuffer:[B

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v0

    iget-object v1, p0, Lc8/ouf;->tempHeaderBuffer:[B

    invoke-virtual {v0, v1}, Lc8/juf;->releaseBytes([B)V

    .line 149
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isSizeAvailable()Z
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lc8/ouf;->outWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lc8/ouf;->outHeight:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized requestCancel()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    .line 114
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lc8/ouf;->sEnabledCancellability:Z

    if-eqz v1, :cond_2

    .line 115
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/ouf;->cancelled:Z

    .line 116
    iget-object v1, p0, Lc8/ouf;->uponSysOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lc8/ouf;->uponSysOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_0
    monitor-exit p0

    return v0

    .line 122
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lc8/ouf;->cancelledPtr:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 123
    iget-wide v2, p0, Lc8/ouf;->cancelledPtr:J

    invoke-direct {p0, v2, v3}, Lc8/ouf;->nativeRequestCancel(J)V

    .line 124
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lc8/ouf;->cancelledPtr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :cond_1
    :try_start_2
    iget-object v0, p0, Lc8/ouf;->mIncrementalStaging:Lc8/Kuf;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lc8/ouf;->mIncrementalStaging:Lc8/Kuf;

    invoke-virtual {v0}, Lc8/Kuf;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized setUponSysOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lc8/ouf;->uponSysOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
