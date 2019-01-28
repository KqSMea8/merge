.class public Lc8/Eqb;
.super Ljava/lang/Object;
.source "WXDeviceModule.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Fqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Fqb;


# direct methods
.method constructor <init>(Lc8/Fqb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Fqb;

    .prologue
    .line 90
    iput-object p1, p0, Lc8/Eqb;->this$0:Lc8/Fqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 149
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 24
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 92
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Sensor;->getType()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 93
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/Fqb;->orientationValues:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Fqb;->orientationValues:[F

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lc8/Fqb;->access$000(Lc8/Fqb;)Ljava/util/Hashtable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v8

    .line 100
    .local v8, "callbackEnumerations":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/taobao/weex/bridge/JSCallback;>;"
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 101
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/EWf;

    .line 102
    .local v5, "callback":Lc8/EWf;
    if-eqz v5, :cond_1

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lc8/Fqb;->access$000(Lc8/Fqb;)Ljava/util/Hashtable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    .line 107
    .local v9, "interval":Ljava/lang/Double;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 108
    .local v10, "currentTime":J
    const-wide/16 v14, 0x0

    .line 109
    .local v14, "lastTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lc8/Fqb;->access$100(Lc8/Fqb;)Ljava/util/Hashtable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lc8/Fqb;->access$100(Lc8/Fqb;)Ljava/util/Hashtable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 112
    :cond_2
    sub-long v16, v10, v14

    .line 113
    .local v16, "timeInterval":J
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    cmpg-double v19, v20, v22

    if-gez v19, :cond_6

    .line 148
    .end local v5    # "callback":Lc8/EWf;
    .end local v9    # "interval":Ljava/lang/Double;
    .end local v10    # "currentTime":J
    .end local v14    # "lastTime":J
    .end local v16    # "timeInterval":J
    :cond_3
    return-void

    .line 94
    .end local v8    # "callbackEnumerations":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/taobao/weex/bridge/JSCallback;>;"
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Sensor;->getType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 95
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/Fqb;->magneticFieldValues:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Fqb;->magneticFieldValues:[F

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 96
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Sensor;->getType()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 97
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/Fqb;->accelerometerValues:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Fqb;->accelerometerValues:[F

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 116
    .restart local v5    # "callback":Lc8/EWf;
    .restart local v8    # "callbackEnumerations":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/taobao/weex/bridge/JSCallback;>;"
    .restart local v9    # "interval":Ljava/lang/Double;
    .restart local v10    # "currentTime":J
    .restart local v14    # "lastTime":J
    .restart local v16    # "timeInterval":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lc8/Fqb;->access$100(Lc8/Fqb;)Ljava/util/Hashtable;

    move-result-object v19

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 119
    .local v18, "values":[F
    const/16 v19, 0x9

    move/from16 v0, v19

    new-array v4, v0, [F

    .line 120
    .local v4, "R":[F
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/Fqb;->accelerometerValues:[F

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/Fqb;->magneticFieldValues:[F

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 121
    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 123
    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 125
    const/16 v19, 0x0

    aget v19, v18, v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    neg-double v6, v0

    .line 126
    .local v6, "alpha":D
    :goto_2
    const-wide/16 v20, 0x0

    cmpg-double v19, v6, v20

    if-gez v19, :cond_7

    .line 127
    const-wide v20, 0x4076800000000000L    # 360.0

    add-double v6, v6, v20

    goto :goto_2

    .line 130
    :cond_7
    const/16 v19, 0x2

    aget v19, v18, v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    .line 131
    .local v12, "gamma":D
    const-wide v20, 0x4056800000000000L    # 90.0

    cmpl-double v19, v12, v20

    if-lez v19, :cond_a

    .line 132
    const-wide v20, 0x4066800000000000L    # 180.0

    sub-double v12, v12, v20

    .line 138
    :cond_8
    :goto_3
    const-wide/16 v20, 0x0

    cmpl-double v19, v6, v20

    if-nez v19, :cond_9

    const-wide/16 v20, 0x0

    cmpl-double v19, v12, v20

    if-eqz v19, :cond_3

    .line 142
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lc8/Fqb;->access$200(Lc8/Fqb;)Ljava/util/HashMap;

    move-result-object v19

    const-string/jumbo v20, "alpha"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lc8/Fqb;->access$200(Lc8/Fqb;)Ljava/util/HashMap;

    move-result-object v19

    const-string/jumbo v20, "beta"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/Fqb;->orientationValues:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lc8/Fqb;->access$200(Lc8/Fqb;)Ljava/util/HashMap;

    move-result-object v19

    const-string/jumbo v20, "gamma"

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Eqb;->this$0:Lc8/Fqb;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lc8/Fqb;->access$200(Lc8/Fqb;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Lc8/EWf;->invokeAndKeepAlive(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 133
    :cond_a
    const-wide v20, -0x3fa9800000000000L    # -90.0

    cmpg-double v19, v12, v20

    if-gez v19, :cond_8

    .line 134
    const-wide v20, 0x4066800000000000L    # 180.0

    add-double v12, v12, v20

    goto :goto_3
.end method
