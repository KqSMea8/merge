.class public Lc8/rtb;
.super Ljava/lang/Object;
.source "OrientationDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/qtb;
    }
.end annotation


# static fields
.field private static final DEVICE_ORIENTATION_SENSORS_A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ExpressionBinding"

.field private static sSingleton:Lc8/rtb;

.field private static final sSingletonLock:Ljava/lang/Object;


# instance fields
.field private final mActiveSensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private mDeviceOrientationIsActive:Z

.field private mDeviceOrientationIsActiveWithBackupSensors:Z

.field private mDeviceOrientationSensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceRotationMatrix:[F

.field private mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/qtb;",
            ">;"
        }
    .end annotation
.end field

.field private mMagneticFieldVector:[F

.field private mOrientationNotAvailable:Z

.field private final mOrientationSensorSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRotationAngles:[D

.field private mSensorManagerProxy:Lc8/utb;

.field private mThread:Landroid/os/HandlerThread;

.field private mTruncatedRotationVector:[F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/rtb;->sSingletonLock:Ljava/lang/Object;

    .line 61
    new-array v0, v2, [Ljava/lang/Integer;

    const/16 v1, 0xf

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 61
    invoke-static {v0}, Lc8/fub;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lc8/rtb;->DEVICE_ORIENTATION_SENSORS_A:Ljava/util/Set;

    .line 63
    new-array v0, v2, [Ljava/lang/Integer;

    const/16 v1, 0xb

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 63
    invoke-static {v0}, Lc8/fub;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lc8/rtb;->DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;

    .line 66
    new-array v0, v4, [Ljava/lang/Integer;

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 66
    invoke-static {v0}, Lc8/fub;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lc8/rtb;->DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/rtb;->mActiveSensors:Ljava/util/Set;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/rtb;->mListeners:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/rtb;->mAppContext:Landroid/content/Context;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Set;

    const/4 v1, 0x0

    sget-object v2, Lc8/rtb;->DEVICE_ORIENTATION_SENSORS_A:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lc8/rtb;->DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lc8/rtb;->DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;

    aput-object v2, v0, v1

    invoke-static {v0}, Lc8/fub;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lc8/rtb;->mOrientationSensorSets:Ljava/util/List;

    .line 88
    return-void
.end method

.method private static computeDeviceOrientationFromRotationMatrix([F[D)[D
    .locals 9
    .param p0, "matrixR"    # [F
    .param p1, "values"    # [D

    .prologue
    const/4 v5, 0x7

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 297
    array-length v0, p0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-object p1

    .line 299
    :cond_1
    const/16 v0, 0x8

    aget v0, p0, v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 300
    aget v0, p0, v6

    neg-float v0, v0

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 301
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    aput-wide v0, p1, v6

    .line 302
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0x8

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v8

    .line 327
    :goto_1
    aget-wide v0, p1, v7

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 328
    aget-wide v0, p1, v7

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    aput-wide v0, p1, v7

    goto :goto_0

    .line 303
    :cond_2
    const/16 v0, 0x8

    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    .line 304
    aget v0, p0, v6

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 305
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    neg-double v0, v0

    aput-wide v0, p1, v6

    .line 306
    aget-wide v2, p1, v6

    aget-wide v0, p1, v6

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_3

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :goto_2
    add-double/2addr v0, v2

    aput-wide v0, p1, v6

    .line 307
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    const/16 v2, 0x8

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v8

    goto :goto_1

    .line 306
    :cond_3
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    goto :goto_2

    .line 309
    :cond_4
    const/4 v0, 0x6

    aget v0, p0, v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    .line 310
    aget v0, p0, v6

    neg-float v0, v0

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 311
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    aput-wide v0, p1, v6

    .line 312
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 313
    :cond_5
    const/4 v0, 0x6

    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_7

    .line 314
    aget v0, p0, v6

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 315
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    neg-double v0, v0

    aput-wide v0, p1, v6

    .line 316
    aget-wide v2, p1, v6

    aget-wide v0, p1, v6

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_6

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :goto_3
    add-double/2addr v0, v2

    aput-wide v0, p1, v6

    .line 317
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 316
    :cond_6
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    goto :goto_3

    .line 320
    :cond_7
    const/4 v0, 0x3

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 321
    aget v0, p0, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    :goto_4
    aput-wide v0, p1, v6

    .line 322
    const-wide/16 v0, 0x0

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 321
    :cond_8
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_4
.end method

.method private convertRotationVectorToAngles([F[D)V
    .locals 4
    .param p1, "rotationVector"    # [F
    .param p2, "angles"    # [D

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 339
    array-length v1, p1

    if-le v1, v3, :cond_0

    .line 344
    iget-object v1, p0, Lc8/rtb;->mTruncatedRotationVector:[F

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    iget-object v1, p0, Lc8/rtb;->mDeviceRotationMatrix:[F

    iget-object v2, p0, Lc8/rtb;->mTruncatedRotationVector:[F

    invoke-static {v1, v2}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 350
    :goto_0
    iget-object v1, p0, Lc8/rtb;->mDeviceRotationMatrix:[F

    invoke-static {v1, p2}, Lc8/rtb;->computeDeviceOrientationFromRotationMatrix([F[D)[D

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 352
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    aput-wide v2, p2, v0

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lc8/rtb;->mDeviceRotationMatrix:[F

    invoke-static {v1, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    goto :goto_0

    .line 354
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private ensureRotationStructuresAllocated()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lc8/rtb;->mDeviceRotationMatrix:[F

    if-nez v0, :cond_0

    .line 396
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lc8/rtb;->mDeviceRotationMatrix:[F

    .line 398
    :cond_0
    iget-object v0, p0, Lc8/rtb;->mRotationAngles:[D

    if-nez v0, :cond_1

    .line 399
    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Lc8/rtb;->mRotationAngles:[D

    .line 401
    :cond_1
    iget-object v0, p0, Lc8/rtb;->mTruncatedRotationVector:[F

    if-nez v0, :cond_2

    .line 402
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lc8/rtb;->mTruncatedRotationVector:[F

    .line 404
    :cond_2
    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lc8/rtb;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DeviceOrientation"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/rtb;->mThread:Landroid/os/HandlerThread;

    .line 468
    iget-object v0, p0, Lc8/rtb;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 469
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lc8/rtb;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/rtb;->mHandler:Landroid/os/Handler;

    .line 471
    :cond_0
    iget-object v0, p0, Lc8/rtb;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;)Lc8/rtb;
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 91
    sget-object v1, Lc8/rtb;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    sget-object v0, Lc8/rtb;->sSingleton:Lc8/rtb;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lc8/rtb;

    invoke-direct {v0, p0}, Lc8/rtb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/rtb;->sSingleton:Lc8/rtb;

    .line 95
    :cond_0
    sget-object v0, Lc8/rtb;->sSingleton:Lc8/rtb;

    monitor-exit v1

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getOrientationFromGeomagneticVectors([F[F)V
    .locals 8
    .param p1, "acceleration"    # [F
    .param p2, "magnetic"    # [F

    .prologue
    .line 357
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lc8/rtb;->mDeviceRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lc8/rtb;->mDeviceRotationMatrix:[F

    iget-object v1, p0, Lc8/rtb;->mRotationAngles:[D

    invoke-static {v0, v1}, Lc8/rtb;->computeDeviceOrientationFromRotationMatrix([F[D)[D

    .line 365
    iget-object v0, p0, Lc8/rtb;->mRotationAngles:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    iget-object v0, p0, Lc8/rtb;->mRotationAngles:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    .line 366
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    iget-object v0, p0, Lc8/rtb;->mRotationAngles:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    .line 367
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    move-object v1, p0

    .line 365
    invoke-direct/range {v1 .. v7}, Lc8/rtb;->gotOrientation(DDD)V

    goto :goto_0
.end method

.method private getOrientationSensorTypeUsed()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lc8/rtb;->mOrientationNotAvailable:Z

    if-eqz v0, :cond_0

    .line 163
    const-string/jumbo v0, "NOT_AVAILABLE"

    .line 174
    :goto_0
    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Lc8/rtb;->mDeviceOrientationSensors:Ljava/util/Set;

    sget-object v1, Lc8/rtb;->DEVICE_ORIENTATION_SENSORS_A:Ljava/util/Set;

    if-ne v0, v1, :cond_1

    .line 166
    const-string/jumbo v0, "GAME_ROTATION_VECTOR"

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lc8/rtb;->mDeviceOrientationSensors:Ljava/util/Set;

    sget-object v1, Lc8/rtb;->DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;

    if-ne v0, v1, :cond_2

    .line 169
    const-string/jumbo v0, "ROTATION_VECTOR"

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lc8/rtb;->mDeviceOrientationSensors:Ljava/util/Set;

    sget-object v1, Lc8/rtb;->DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;

    if-ne v0, v1, :cond_3

    .line 172
    const-string/jumbo v0, "ACCELEROMETER_MAGNETIC"

    goto :goto_0

    .line 174
    :cond_3
    const-string/jumbo v0, "NOT_AVAILABLE"

    goto :goto_0
.end method

.method private getSensorManagerProxy()Lc8/utb;
    .locals 3

    .prologue
    .line 374
    iget-object v1, p0, Lc8/rtb;->mSensorManagerProxy:Lc8/utb;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lc8/rtb;->mSensorManagerProxy:Lc8/utb;

    .line 384
    :goto_0
    return-object v1

    .line 378
    :cond_0
    iget-object v1, p0, Lc8/rtb;->mAppContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    .line 379
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 381
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_1

    .line 382
    new-instance v1, Lc8/vtb;

    invoke-direct {v1, v0}, Lc8/vtb;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lc8/rtb;->mSensorManagerProxy:Lc8/utb;

    .line 384
    :cond_1
    iget-object v1, p0, Lc8/rtb;->mSensorManagerProxy:Lc8/utb;

    goto :goto_0
.end method

.method private gotOrientation(DDD)V
    .locals 9
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D

    .prologue
    .line 453
    iget-object v2, p0, Lc8/rtb;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 455
    :try_start_0
    iget-object v2, p0, Lc8/rtb;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/qtb;

    .local v1, "listener":Lc8/qtb;
    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .line 456
    invoke-interface/range {v1 .. v7}, Lc8/qtb;->onOrientationChanged(DDD)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    .end local v1    # "listener":Lc8/qtb;
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "ExpressionBinding"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[OrientationDetector] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method private registerForSensorType(II)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "rateInMicroseconds"    # I

    .prologue
    .line 445
    invoke-direct {p0}, Lc8/rtb;->getSensorManagerProxy()Lc8/utb;

    move-result-object v0

    .line 446
    .local v0, "sensorManager":Lc8/utb;
    if-nez v0, :cond_0

    .line 447
    const/4 v1, 0x0

    .line 449
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lc8/rtb;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, p0, p1, p2, v1}, Lc8/utb;->registerListener(Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)Z

    move-result v1

    goto :goto_0
.end method

.method private registerOrientationSensorsWithFallback(I)Z
    .locals 7
    .param p1, "rateInMicroseconds"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 133
    iget-boolean v4, p0, Lc8/rtb;->mOrientationNotAvailable:Z

    if-eqz v4, :cond_0

    .line 158
    :goto_0
    return v2

    .line 134
    :cond_0
    iget-object v4, p0, Lc8/rtb;->mDeviceOrientationSensors:Ljava/util/Set;

    if-eqz v4, :cond_2

    .line 135
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-direct {p0}, Lc8/rtb;->getOrientationSensorTypeUsed()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v2, "ExpressionBinding"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[OrientationDetector] register sensor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lc8/rtb;->mDeviceOrientationSensors:Ljava/util/Set;

    invoke-direct {p0, v2, p1, v3}, Lc8/rtb;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v2

    goto :goto_0

    .line 141
    :cond_2
    invoke-direct {p0}, Lc8/rtb;->ensureRotationStructuresAllocated()V

    .line 143
    iget-object v4, p0, Lc8/rtb;->mOrientationSensorSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 144
    .local v0, "sensors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput-object v0, p0, Lc8/rtb;->mDeviceOrientationSensors:Ljava/util/Set;

    .line 145
    iget-object v5, p0, Lc8/rtb;->mDeviceOrientationSensors:Ljava/util/Set;

    invoke-direct {p0, v5, p1, v3}, Lc8/rtb;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 146
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 147
    invoke-direct {p0}, Lc8/rtb;->getOrientationSensorTypeUsed()Ljava/lang/String;

    move-result-object v1

    .line 148
    .restart local v1    # "type":Ljava/lang/String;
    const-string/jumbo v2, "ExpressionBinding"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[OrientationDetector] register sensor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "type":Ljava/lang/String;
    :cond_4
    move v2, v3

    .line 150
    goto :goto_0

    .line 154
    .end local v0    # "sensors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_5
    iput-boolean v3, p0, Lc8/rtb;->mOrientationNotAvailable:Z

    .line 155
    iput-object v6, p0, Lc8/rtb;->mDeviceOrientationSensors:Ljava/util/Set;

    .line 156
    iput-object v6, p0, Lc8/rtb;->mDeviceRotationMatrix:[F

    .line 157
    iput-object v6, p0, Lc8/rtb;->mRotationAngles:[D

    goto/16 :goto_0
.end method

.method private registerSensors(Ljava/util/Set;IZ)Z
    .locals 6
    .param p2, "rateInMicroseconds"    # I
    .param p3, "failOnMissingSensor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "sensorTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 416
    .local v2, "sensorsToActivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lc8/rtb;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 417
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 432
    :cond_0
    :goto_0
    return v3

    .line 419
    :cond_1
    const/4 v3, 0x0

    .line 420
    .local v3, "success":Z
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 421
    .local v1, "sensorType":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, p2}, Lc8/rtb;->registerForSensorType(II)Z

    move-result v0

    .line 422
    .local v0, "result":Z
    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    .line 424
    invoke-direct {p0, v2}, Lc8/rtb;->unregisterSensors(Ljava/lang/Iterable;)V

    .line 425
    const/4 v3, 0x0

    goto :goto_0

    .line 427
    :cond_3
    if-eqz v0, :cond_2

    .line 428
    iget-object v5, p0, Lc8/rtb;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 429
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private setEventTypeActive(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    .line 389
    iput-boolean p1, p0, Lc8/rtb;->mDeviceOrientationIsActive:Z

    .line 390
    if-eqz p1, :cond_0

    iget-object v0, p0, Lc8/rtb;->mDeviceOrientationSensors:Ljava/util/Set;

    sget-object v1, Lc8/rtb;->DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lc8/rtb;->mDeviceOrientationIsActiveWithBackupSensors:Z

    .line 392
    return-void

    .line 390
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unregisterSensors(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "sensorTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 437
    .local v0, "sensorType":Ljava/lang/Integer;
    iget-object v2, p0, Lc8/rtb;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    invoke-direct {p0}, Lc8/rtb;->getSensorManagerProxy()Lc8/utb;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Lc8/utb;->unregisterListener(Landroid/hardware/SensorEventListener;I)V

    .line 439
    iget-object v2, p0, Lc8/rtb;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 442
    .end local v0    # "sensorType":Ljava/lang/Integer;
    :cond_1
    return-void
.end method


# virtual methods
.method addOrientationChangedListener(Lc8/qtb;)V
    .locals 1
    .param p1, "listener"    # Lc8/qtb;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    iget-object v0, p0, Lc8/rtb;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/rtb;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lc8/rtb;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 212
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 216
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 217
    .local v0, "type":I
    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 219
    .local v8, "values":[F
    sparse-switch v0, :sswitch_data_0

    .line 250
    const-string/jumbo v1, "ExpressionBinding"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected sensor type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 221
    :sswitch_0
    iget-boolean v1, p0, Lc8/rtb;->mDeviceOrientationIsActiveWithBackupSensors:Z

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lc8/rtb;->mMagneticFieldVector:[F

    invoke-direct {p0, v8, v1}, Lc8/rtb;->getOrientationFromGeomagneticVectors([F[F)V

    goto :goto_0

    .line 226
    :sswitch_1
    iget-boolean v1, p0, Lc8/rtb;->mDeviceOrientationIsActive:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/rtb;->mDeviceOrientationSensors:Ljava/util/Set;

    sget-object v2, Lc8/rtb;->DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;

    if-ne v1, v2, :cond_0

    .line 229
    iget-object v1, p0, Lc8/rtb;->mRotationAngles:[D

    invoke-direct {p0, v8, v1}, Lc8/rtb;->convertRotationVectorToAngles([F[D)V

    .line 230
    iget-object v1, p0, Lc8/rtb;->mRotationAngles:[D

    aget-wide v2, v1, v3

    iget-object v1, p0, Lc8/rtb;->mRotationAngles:[D

    aget-wide v4, v1, v4

    iget-object v1, p0, Lc8/rtb;->mRotationAngles:[D

    aget-wide v6, v1, v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lc8/rtb;->gotOrientation(DDD)V

    goto :goto_0

    .line 234
    :sswitch_2
    iget-boolean v1, p0, Lc8/rtb;->mDeviceOrientationIsActive:Z

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lc8/rtb;->mRotationAngles:[D

    invoke-direct {p0, v8, v1}, Lc8/rtb;->convertRotationVectorToAngles([F[D)V

    .line 236
    iget-object v1, p0, Lc8/rtb;->mRotationAngles:[D

    aget-wide v2, v1, v3

    iget-object v1, p0, Lc8/rtb;->mRotationAngles:[D

    aget-wide v4, v1, v4

    iget-object v1, p0, Lc8/rtb;->mRotationAngles:[D

    aget-wide v6, v1, v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lc8/rtb;->gotOrientation(DDD)V

    goto :goto_0

    .line 240
    :sswitch_3
    iget-boolean v1, p0, Lc8/rtb;->mDeviceOrientationIsActiveWithBackupSensors:Z

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lc8/rtb;->mMagneticFieldVector:[F

    if-nez v1, :cond_1

    .line 242
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lc8/rtb;->mMagneticFieldVector:[F

    .line 244
    :cond_1
    iget-object v1, p0, Lc8/rtb;->mMagneticFieldVector:[F

    iget-object v2, p0, Lc8/rtb;->mMagneticFieldVector:[F

    array-length v2, v2

    invoke-static {v8, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0xb -> :sswitch_1
        0xf -> :sswitch_2
    .end sparse-switch
.end method

.method removeOrientationChangedListener(Lc8/qtb;)Z
    .locals 1
    .param p1, "listener"    # Lc8/qtb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 109
    iget-object v0, p0, Lc8/rtb;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 110
    if-nez p1, :cond_0

    .line 111
    iget-object v0, p0, Lc8/rtb;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    .line 114
    :cond_0
    iget-object v0, p0, Lc8/rtb;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start(I)Z
    .locals 3
    .param p1, "rateInMicroseconds"    # I

    .prologue
    .line 186
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const-string/jumbo v1, "ExpressionBinding"

    const-string/jumbo v2, "[OrientationDetector] sensor started"

    invoke-static {v1, v2}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    invoke-direct {p0, p1}, Lc8/rtb;->registerOrientationSensorsWithFallback(I)Z

    move-result v0

    .line 190
    .local v0, "success":Z
    if-eqz v0, :cond_1

    .line 191
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lc8/rtb;->setEventTypeActive(Z)V

    .line 193
    :cond_1
    return v0
.end method

.method stop()V
    .locals 3

    .prologue
    .line 201
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const-string/jumbo v1, "ExpressionBinding"

    const-string/jumbo v2, "[OrientationDetector] sensor stopped"

    invoke-static {v1, v2}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lc8/rtb;->mActiveSensors:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 205
    .local v0, "sensorsToDeactivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0}, Lc8/rtb;->unregisterSensors(Ljava/lang/Iterable;)V

    .line 206
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lc8/rtb;->setEventTypeActive(Z)V

    .line 207
    return-void
.end method
