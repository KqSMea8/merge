.class public Lc8/rE;
.super Ljava/lang/Object;
.source "ShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/qE;
    }
.end annotation


# static fields
.field private static final SPEED_THRESHOLD:I = 0xa


# instance fields
.field protected TIME_INTERVAL_THRESHOLD:J

.field private mContext:Landroid/content/Context;

.field private mLastUpdateTime:J

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShakeListener:Lc8/qE;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lc8/rE;->TIME_INTERVAL_THRESHOLD:J

    .line 37
    iput-object p1, p0, Lc8/rE;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Lc8/rE;->start()V

    .line 39
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 122
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 86
    iget-object v12, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v12}, Landroid/hardware/Sensor;->getType()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    .local v0, "currentTime":J
    iget-wide v12, p0, Lc8/rE;->mLastUpdateTime:J

    sub-long v8, v0, v12

    .line 94
    .local v8, "timeInterval":J
    iget-wide v12, p0, Lc8/rE;->TIME_INTERVAL_THRESHOLD:J

    cmp-long v12, v8, v12

    if-ltz v12, :cond_0

    .line 98
    iget-object v12, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x0

    aget v5, v12, v13

    .line 99
    .local v5, "x":F
    iget-object v12, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x1

    aget v10, v12, v13

    .line 100
    .local v10, "y":F
    iget-object v12, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x2

    aget v11, v12, v13

    .line 103
    .local v11, "z":F
    iget v12, p0, Lc8/rE;->mLastX:F

    sub-float v2, v5, v12

    .line 104
    .local v2, "deltaX":F
    iget v12, p0, Lc8/rE;->mLastY:F

    sub-float v3, v10, v12

    .line 105
    .local v3, "deltaY":F
    iget v12, p0, Lc8/rE;->mLastZ:F

    sub-float v4, v11, v12

    .line 106
    .local v4, "deltaZ":F
    mul-float v12, v2, v2

    mul-float v13, v3, v3

    add-float/2addr v12, v13

    mul-float v13, v4, v4

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 107
    .local v6, "speed":D
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    cmpl-double v12, v6, v12

    if-lez v12, :cond_2

    .line 108
    iget-object v12, p0, Lc8/rE;->mShakeListener:Lc8/qE;

    if-eqz v12, :cond_2

    .line 109
    iget-object v12, p0, Lc8/rE;->mShakeListener:Lc8/qE;

    if-eqz v12, :cond_2

    iget v12, p0, Lc8/rE;->mLastX:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    iget v12, p0, Lc8/rE;->mLastY:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    iget v12, p0, Lc8/rE;->mLastZ:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 110
    iget-object v12, p0, Lc8/rE;->mShakeListener:Lc8/qE;

    invoke-interface {v12}, Lc8/qE;->onShake()V

    .line 114
    :cond_2
    iput-wide v0, p0, Lc8/rE;->mLastUpdateTime:J

    .line 115
    iput v5, p0, Lc8/rE;->mLastX:F

    .line 116
    iput v10, p0, Lc8/rE;->mLastY:F

    .line 117
    iput v11, p0, Lc8/rE;->mLastZ:F

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lc8/rE;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lc8/rE;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 64
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 67
    iget-object v1, p0, Lc8/rE;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lc8/rE;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lc8/rE;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 70
    .local v0, "supported":Z
    if-nez v0, :cond_0

    .line 71
    iget-object v1, p0, Lc8/rE;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 72
    const-string/jumbo v1, "ShakeListener"

    const-string/jumbo v2, "start: Accelerometer not supported"

    invoke-static {v1, v2}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v0    # "supported":Z
    :cond_0
    return-void
.end method

.method public setOnShakeListener(Lc8/qE;)V
    .locals 0
    .param p1, "listener"    # Lc8/qE;

    .prologue
    .line 42
    iput-object p1, p0, Lc8/rE;->mShakeListener:Lc8/qE;

    .line 43
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 46
    iget-object v1, p0, Lc8/rE;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lc8/rE;->mSensorManager:Landroid/hardware/SensorManager;

    .line 47
    iget-object v1, p0, Lc8/rE;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_1

    .line 48
    const-string/jumbo v1, "ShakeListener"

    const-string/jumbo v2, "start: Sensors not supported"

    invoke-static {v1, v2}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v1, p0, Lc8/rE;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lc8/rE;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 54
    .local v0, "supported":Z
    if-nez v0, :cond_0

    .line 55
    iget-object v1, p0, Lc8/rE;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 56
    const-string/jumbo v1, "ShakeListener"

    const-string/jumbo v2, "start: Accelerometer not supported"

    invoke-static {v1, v2}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lc8/rE;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lc8/rE;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/rE;->mSensorManager:Landroid/hardware/SensorManager;

    .line 82
    :cond_0
    return-void
.end method
