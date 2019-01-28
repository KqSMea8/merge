.class public Lc8/fF;
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
    .line 418
    iput-object p1, p0, Lc8/fF;->this$0:Lc8/hF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 442
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 421
    const/4 v5, 0x4

    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v5, p0, Lc8/fF;->this$0:Lc8/hF;

    invoke-static {v5}, Lc8/hF;->access$500(Lc8/hF;)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v5, p0, Lc8/fF;->this$0:Lc8/hF;

    invoke-static {v5}, Lc8/hF;->access$600(Lc8/hF;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    .line 426
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 427
    .local v4, "values":[F
    const/4 v5, 0x0

    aget v0, v4, v5

    .line 428
    .local v0, "alpha":F
    const/4 v5, 0x1

    aget v1, v4, v5

    .line 429
    .local v1, "beta":F
    const/4 v5, 0x2

    aget v3, v4, v5

    .line 431
    .local v3, "gama":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{\"alpha\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\",\"beta\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\",\"gama\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "data":Ljava/lang/String;
    iget-object v5, p0, Lc8/fF;->this$0:Lc8/hF;

    invoke-static {v5}, Lc8/hF;->access$300(Lc8/hF;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 433
    iget-object v5, p0, Lc8/fF;->this$0:Lc8/hF;

    invoke-static {v5}, Lc8/hF;->access$300(Lc8/hF;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v5

    const-string/jumbo v6, "WV.Event.Motion.RotationRate"

    invoke-virtual {v5, v6, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :goto_1
    iget-object v5, p0, Lc8/fF;->this$0:Lc8/hF;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lc8/hF;->access$602(Lc8/hF;J)J

    goto :goto_0

    .line 435
    :cond_2
    iget-object v5, p0, Lc8/fF;->this$0:Lc8/hF;

    invoke-static {v5}, Lc8/hF;->access$700(Lc8/hF;)V

    goto :goto_1
.end method
