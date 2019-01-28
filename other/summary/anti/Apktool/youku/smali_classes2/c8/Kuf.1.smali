.class public Lc8/Kuf;
.super Ljava/lang/Object;
.source "IncrementalStaging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Juf;
    }
.end annotation


# instance fields
.field private final mInterBitmap:Landroid/graphics/Bitmap;

.field private mNativeConfigOut:J

.field private final mNativeDestructor:Lc8/Juf;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;JLc8/Juf;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "nativeConfigOut"    # J
    .param p4, "destructor"    # Lc8/Juf;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lc8/Kuf;->mInterBitmap:Landroid/graphics/Bitmap;

    .line 19
    iput-wide p2, p0, Lc8/Kuf;->mNativeConfigOut:J

    .line 20
    iput-object p4, p0, Lc8/Kuf;->mNativeDestructor:Lc8/Juf;

    .line 21
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 41
    :try_start_0
    invoke-virtual {p0}, Lc8/Kuf;->release()V

    .line 42
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getInterBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lc8/Kuf;->mInterBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNativeConfigOut()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lc8/Kuf;->mNativeConfigOut:J

    return-wide v0
.end method

.method public declared-synchronized release()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 32
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lc8/Kuf;->mNativeConfigOut:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lc8/Kuf;->mNativeDestructor:Lc8/Juf;

    iget-wide v2, p0, Lc8/Kuf;->mNativeConfigOut:J

    invoke-interface {v0, v2, v3}, Lc8/Juf;->destruct(J)V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/Kuf;->mNativeConfigOut:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
