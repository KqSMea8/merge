.class public Lc8/aLj;
.super Ljava/lang/Object;
.source "StepCountModeDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupportStepCountSensor(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/16 v5, 0x13

    .line 25
    const/4 v3, 0x0

    .line 26
    .local v3, "result":Z
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_1

    .line 29
    :try_start_0
    const-string/jumbo v4, "sensor"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 30
    .local v2, "mSensorManager":Landroid/hardware/SensorManager;
    if-eqz v2, :cond_1

    .line 31
    const/16 v4, 0x13

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    .local v0, "countSensor":Landroid/hardware/Sensor;
    const/4 v1, 0x0

    .line 34
    .local v1, "detectorSensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 40
    .end local v0    # "countSensor":Landroid/hardware/Sensor;
    .end local v1    # "detectorSensor":Landroid/hardware/Sensor;
    .end local v2    # "mSensorManager":Landroid/hardware/SensorManager;
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportStepCountSensor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    return v3

    .line 34
    .restart local v0    # "countSensor":Landroid/hardware/Sensor;
    .restart local v1    # "detectorSensor":Landroid/hardware/Sensor;
    .restart local v2    # "mSensorManager":Landroid/hardware/SensorManager;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .end local v0    # "countSensor":Landroid/hardware/Sensor;
    .end local v1    # "detectorSensor":Landroid/hardware/Sensor;
    .end local v2    # "mSensorManager":Landroid/hardware/SensorManager;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
