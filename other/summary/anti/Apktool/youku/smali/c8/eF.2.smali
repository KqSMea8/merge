.class public Lc8/eF;
.super Ljava/lang/Object;
.source "WVMotion.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hF;


# direct methods
.method constructor <init>(Lc8/hF;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lc8/eF;->this$0:Lc8/hF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 415
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/high16 v12, 0x41200000    # 10.0f

    .line 395
    const/16 v5, 0x9

    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-object v5, p0, Lc8/eF;->this$0:Lc8/hF;

    invoke-static {v5}, Lc8/hF;->access$100(Lc8/hF;)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v5, p0, Lc8/eF;->this$0:Lc8/hF;

    invoke-static {v5}, Lc8/hF;->access$200(Lc8/hF;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    .line 399
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 400
    .local v4, "values":[F
    const/4 v5, 0x0

    aget v5, v4, v5

    neg-float v5, v5

    div-float v0, v5, v12

    .line 401
    .local v0, "ax":F
    const/4 v5, 0x1

    aget v5, v4, v5

    neg-float v5, v5

    div-float v1, v5, v12

    .line 402
    .local v1, "ay":F
    const/4 v5, 0x2

    aget v5, v4, v5

    neg-float v5, v5

    div-float v2, v5, v12

    .line 404
    .local v2, "az":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{\"x\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\",\"y\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\",\"z\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "data":Ljava/lang/String;
    iget-object v5, p0, Lc8/eF;->this$0:Lc8/hF;

    invoke-static {v5}, Lc8/hF;->access$300(Lc8/hF;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 406
    iget-object v5, p0, Lc8/eF;->this$0:Lc8/hF;

    invoke-static {v5}, Lc8/hF;->access$300(Lc8/hF;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v5

    const-string/jumbo v6, "motion.gyro"

    invoke-virtual {v5, v6, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :goto_1
    iget-object v5, p0, Lc8/eF;->this$0:Lc8/hF;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lc8/hF;->access$202(Lc8/hF;J)J

    goto :goto_0

    .line 408
    :cond_2
    iget-object v5, p0, Lc8/eF;->this$0:Lc8/hF;

    invoke-static {v5}, Lc8/hF;->access$400(Lc8/hF;)V

    goto :goto_1
.end method
