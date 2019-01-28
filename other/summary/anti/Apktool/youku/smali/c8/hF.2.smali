.class public Lc8/hF;
.super Lc8/RD;
.source "WVMotion.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/gF;
    }
.end annotation


# static fields
.field private static final SHAKE_STOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WVMotion"


# instance fields
.field private blowSensor:Lc8/nE;

.field private currentTime:J

.field private currentTime2:J

.field private frequency:J

.field private frequency2:J

.field private handler:Landroid/os/Handler;

.field private mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field protected mSensorListener:Landroid/hardware/SensorEventListener;

.field protected mSensorListener2:Landroid/hardware/SensorEventListener;

.field private mShakeListener:Lc8/rE;

.field private sm:Landroid/hardware/SensorManager;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 63
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 51
    iput-object v2, p0, Lc8/hF;->mShakeListener:Lc8/rE;

    .line 54
    iput-object v2, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    .line 55
    iput-wide v0, p0, Lc8/hF;->currentTime:J

    .line 56
    iput-wide v0, p0, Lc8/hF;->currentTime2:J

    .line 57
    iput-wide v0, p0, Lc8/hF;->frequency:J

    .line 58
    iput-wide v0, p0, Lc8/hF;->frequency2:J

    .line 60
    iput-object v2, p0, Lc8/hF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 392
    new-instance v0, Lc8/eF;

    invoke-direct {v0, p0}, Lc8/eF;-><init>(Lc8/hF;)V

    iput-object v0, p0, Lc8/hF;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 418
    new-instance v0, Lc8/fF;

    invoke-direct {v0, p0}, Lc8/fF;-><init>(Lc8/hF;)V

    iput-object v0, p0, Lc8/hF;->mSensorListener2:Landroid/hardware/SensorEventListener;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/hF;->handler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lc8/hF;)Z
    .locals 1
    .param p0, "x0"    # Lc8/hF;

    .prologue
    .line 46
    iget-boolean v0, p0, Lc8/hF;->isAlive:Z

    return v0
.end method

.method static synthetic access$100(Lc8/hF;)J
    .locals 2
    .param p0, "x0"    # Lc8/hF;

    .prologue
    .line 46
    iget-wide v0, p0, Lc8/hF;->frequency:J

    return-wide v0
.end method

.method static synthetic access$200(Lc8/hF;)J
    .locals 2
    .param p0, "x0"    # Lc8/hF;

    .prologue
    .line 46
    iget-wide v0, p0, Lc8/hF;->currentTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lc8/hF;J)J
    .locals 1
    .param p0, "x0"    # Lc8/hF;
    .param p1, "x1"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lc8/hF;->currentTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lc8/hF;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 1
    .param p0, "x0"    # Lc8/hF;

    .prologue
    .line 46
    iget-object v0, p0, Lc8/hF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object v0
.end method

.method static synthetic access$400(Lc8/hF;)V
    .locals 0
    .param p0, "x0"    # Lc8/hF;

    .prologue
    .line 46
    invoke-direct {p0}, Lc8/hF;->stopListenGyro()V

    return-void
.end method

.method static synthetic access$500(Lc8/hF;)J
    .locals 2
    .param p0, "x0"    # Lc8/hF;

    .prologue
    .line 46
    iget-wide v0, p0, Lc8/hF;->frequency2:J

    return-wide v0
.end method

.method static synthetic access$600(Lc8/hF;)J
    .locals 2
    .param p0, "x0"    # Lc8/hF;

    .prologue
    .line 46
    iget-wide v0, p0, Lc8/hF;->currentTime2:J

    return-wide v0
.end method

.method static synthetic access$602(Lc8/hF;J)J
    .locals 1
    .param p0, "x0"    # Lc8/hF;
    .param p1, "x1"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lc8/hF;->currentTime2:J

    return-wide p1
.end method

.method static synthetic access$700(Lc8/hF;)V
    .locals 0
    .param p0, "x0"    # Lc8/hF;

    .prologue
    .line 46
    invoke-direct {p0}, Lc8/hF;->stopListenRota()V

    return-void
.end method

.method private stopListenGyro()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lc8/hF;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lc8/hF;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    .line 211
    :cond_1
    return-void
.end method

.method private stopListenRota()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lc8/hF;->mSensorListener2:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lc8/hF;->mSensorListener2:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 216
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    .line 218
    :cond_1
    return-void
.end method

.method private stopShake()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lc8/hF;->mShakeListener:Lc8/rE;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lc8/hF;->mShakeListener:Lc8/rE;

    invoke-virtual {v0}, Lc8/rE;->stop()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/hF;->mShakeListener:Lc8/rE;

    .line 225
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 69
    const-string/jumbo v2, "listeningShake"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {p0, p3, p2}, Lc8/hF;->listeningShake(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    :goto_0
    move v0, v1

    .line 100
    :cond_0
    return v0

    .line 71
    :cond_1
    const-string/jumbo v2, "vibrate"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {p0, p3, p2}, Lc8/hF;->vibrate(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    const-string/jumbo v2, "listenBlow"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    :try_start_0
    iget-object v0, p0, Lc8/hF;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.RECORD_AUDIO"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lc8/jH;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Lc8/iH;

    move-result-object v0

    new-instance v2, Lc8/dF;

    invoke-direct {v2, p0, p3, p2}, Lc8/dF;-><init>(Lc8/hF;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lc8/iH;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v0

    new-instance v2, Lc8/cF;

    invoke-direct {v2, p0, p3}, Lc8/cF;-><init>(Lc8/hF;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-virtual {v0, v2}, Lc8/iH;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v0

    invoke-virtual {v0}, Lc8/iH;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0

    .line 91
    :cond_3
    const-string/jumbo v2, "stopListenBlow"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    invoke-virtual {p0, p3, p2}, Lc8/hF;->stopListenBlow(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_4
    const-string/jumbo v2, "listenGyro"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 94
    invoke-virtual {p0, p3, p2}, Lc8/hF;->listenGyro(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_5
    const-string/jumbo v2, "listenRotationRate"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {p0, p3, p2}, Lc8/hF;->listenRotationRate(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 155
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 176
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 157
    :sswitch_0
    invoke-direct {p0}, Lc8/hF;->stopShake()V

    .line 158
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    invoke-virtual {v1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    :cond_0
    move v1, v2

    .line 161
    goto :goto_0

    .line 164
    :sswitch_1
    iget-boolean v1, p0, Lc8/hF;->isAlive:Z

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 165
    :cond_1
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 166
    .local v0, "result":Lc8/kE;
    invoke-virtual {v0}, Lc8/kE;->setSuccess()V

    .line 167
    const-string/jumbo v1, "pass"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v1, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lc8/hF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/hF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    const-string/jumbo v3, "motion.blow"

    invoke-virtual {v0}, Lc8/kE;->toJsonString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v1, v2

    .line 169
    goto :goto_0

    .line 172
    .end local v0    # "result":Lc8/kE;
    :sswitch_2
    iget-object v1, p0, Lc8/hF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc8/hF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    invoke-virtual {v1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    :cond_3
    move v1, v2

    .line 173
    goto :goto_0

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x1005 -> :sswitch_1
        0x1006 -> :sswitch_2
    .end sparse-switch
.end method

.method public declared-synchronized listenBlow(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-string/jumbo v0, "WVMotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listenBlow: start. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    iput-object p1, p0, Lc8/hF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 313
    iget-object v0, p0, Lc8/hF;->blowSensor:Lc8/nE;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lc8/hF;->blowSensor:Lc8/nE;

    invoke-virtual {v0}, Lc8/nE;->stop()V

    .line 316
    :cond_1
    new-instance v0, Lc8/nE;

    iget-object v1, p0, Lc8/hF;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lc8/nE;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lc8/hF;->blowSensor:Lc8/nE;

    .line 317
    iget-object v0, p0, Lc8/hF;->blowSensor:Lc8/nE;

    invoke-virtual {v0}, Lc8/nE;->start()V

    .line 319
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listenGyro(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    const-string/jumbo v3, "WVMotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listenGyro:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    .local v2, "result":Lc8/kE;
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "frequency"

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p0, Lc8/hF;->frequency:J

    .line 370
    const-string/jumbo v3, "on"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 378
    .local v1, "on":Z
    :try_start_2
    iput-object p1, p0, Lc8/hF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 379
    iget-object v3, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    if-nez v3, :cond_1

    iget-object v3, p0, Lc8/hF;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    .line 380
    :cond_1
    if-eqz v1, :cond_2

    .line 381
    iget-object v3, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lc8/hF;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lc8/hF;->currentTime:J

    .line 389
    :goto_0
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    .end local v0    # "jsObj":Lorg/json/JSONObject;
    .end local v1    # "on":Z
    :goto_1
    monitor-exit p0

    return-void

    .line 372
    :catch_0
    move-exception v3

    :try_start_3
    const-string/jumbo v3, "WVMotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate: param parse to JSON error, param="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string/jumbo v3, "HY_PARAM_ERR"

    invoke-virtual {v2, v3}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 361
    .end local v2    # "result":Lc8/kE;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 386
    .restart local v0    # "jsObj":Lorg/json/JSONObject;
    .restart local v1    # "on":Z
    .restart local v2    # "result":Lc8/kE;
    :cond_2
    :try_start_4
    invoke-direct {p0}, Lc8/hF;->stopListenGyro()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized listenRotationRate(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    const-string/jumbo v3, "WVMotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listenRotationRate:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    .local v2, "result":Lc8/kE;
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "frequency"

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p0, Lc8/hF;->frequency2:J

    .line 335
    const-string/jumbo v3, "on"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 343
    .local v1, "on":Z
    :try_start_2
    iput-object p1, p0, Lc8/hF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 344
    iget-object v3, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    if-nez v3, :cond_1

    iget-object v3, p0, Lc8/hF;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    .line 345
    :cond_1
    if-eqz v1, :cond_2

    .line 346
    iget-object v3, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lc8/hF;->mSensorListener2:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lc8/hF;->currentTime:J

    .line 354
    :goto_0
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    .end local v0    # "jsObj":Lorg/json/JSONObject;
    .end local v1    # "on":Z
    :goto_1
    monitor-exit p0

    return-void

    .line 337
    :catch_0
    move-exception v3

    :try_start_3
    const-string/jumbo v3, "WVMotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate: param parse to JSON error, param="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string/jumbo v3, "HY_PARAM_ERR"

    invoke-virtual {v2, v3}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 326
    .end local v2    # "result":Lc8/kE;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 351
    .restart local v0    # "jsObj":Lorg/json/JSONObject;
    .restart local v1    # "on":Z
    .restart local v2    # "result":Lc8/kE;
    :cond_2
    :try_start_4
    invoke-direct {p0}, Lc8/hF;->stopListenRota()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized listeningShake(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 10
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    new-instance v6, Lc8/kE;

    invoke-direct {v6}, Lc8/kE;-><init>()V

    .line 108
    .local v6, "result":Lc8/kE;
    const/4 v5, 0x0

    .line 109
    .local v5, "on":Z
    const-wide/16 v0, 0x1f4

    .line 110
    .local v0, "frequency":J
    const/4 v2, 0x0

    .line 111
    .local v2, "isFail":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 113
    :try_start_1
    const-string/jumbo v7, "utf-8"

    invoke-static {p2, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    .line 119
    :goto_0
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    .local v3, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v7, "on"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 121
    const-string/jumbo v7, "frequency"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    .line 129
    .end local v3    # "jsObj":Lorg/json/JSONObject;
    :cond_0
    if-eqz v2, :cond_3

    .line 130
    :try_start_3
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 131
    const-string/jumbo v7, "WVMotion"

    const-string/jumbo v8, "listeningShake: isFail"

    invoke-static {v7, v8}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_1
    invoke-virtual {p1, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 115
    :catch_0
    move-exception v7

    :try_start_4
    const-string/jumbo v7, "WVMotion"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "listeningShake: param decode error, param="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v2, 0x1

    goto :goto_0

    .line 123
    :catch_1
    move-exception v7

    const-string/jumbo v7, "WVMotion"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "listeningShake: param parse to JSON error, param="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v7, "HY_PARAM_ERR"

    invoke-virtual {v6, v7}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 107
    .end local v0    # "frequency":J
    .end local v2    # "isFail":Z
    .end local v5    # "on":Z
    .end local v6    # "result":Lc8/kE;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 136
    .restart local v0    # "frequency":J
    .restart local v2    # "isFail":Z
    .restart local v5    # "on":Z
    .restart local v6    # "result":Lc8/kE;
    :cond_3
    if-eqz v5, :cond_5

    .line 137
    :try_start_5
    const-string/jumbo v7, "WVMotion"

    const-string/jumbo v8, "listeningShake: start ..."

    invoke-static {v7, v8}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v7, p0, Lc8/hF;->mShakeListener:Lc8/rE;

    if-nez v7, :cond_4

    .line 139
    new-instance v7, Lc8/rE;

    iget-object v8, p0, Lc8/hF;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lc8/rE;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lc8/hF;->mShakeListener:Lc8/rE;

    .line 141
    :cond_4
    iget-object v7, p0, Lc8/hF;->mShakeListener:Lc8/rE;

    new-instance v8, Lc8/gF;

    invoke-direct {v8, p0, p1, v0, v1}, Lc8/gF;-><init>(Lc8/hF;Landroid/taobao/windvane/jsbridge/WVCallBackContext;J)V

    invoke-virtual {v7, v8}, Lc8/rE;->setOnShakeListener(Lc8/qE;)V

    .line 142
    invoke-virtual {p1, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_1

    .line 144
    :cond_5
    const-string/jumbo v7, "WVMotion"

    const-string/jumbo v8, "listeningShake: stop."

    invoke-static {v7, v8}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 146
    .local v4, "message":Landroid/os/Message;
    const/4 v7, 0x1

    iput v7, v4, Landroid/os/Message;->what:I

    .line 147
    iput-object p1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    iget-object v7, p0, Lc8/hF;->handler:Landroid/os/Handler;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lc8/hF;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-direct {p0}, Lc8/hF;->stopShake()V

    .line 230
    invoke-direct {p0}, Lc8/hF;->stopListenGyro()V

    .line 231
    invoke-direct {p0}, Lc8/hF;->stopListenRota()V

    .line 232
    iget-object v0, p0, Lc8/hF;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lc8/hF;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 234
    iput-object v1, p0, Lc8/hF;->vibrator:Landroid/os/Vibrator;

    .line 236
    :cond_0
    iput-object v1, p0, Lc8/hF;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 237
    iget-object v0, p0, Lc8/hF;->blowSensor:Lc8/nE;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lc8/hF;->blowSensor:Lc8/nE;

    invoke-virtual {v0}, Lc8/nE;->stop()V

    .line 240
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hF;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lc8/hF;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lc8/hF;->mShakeListener:Lc8/rE;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lc8/hF;->mShakeListener:Lc8/rE;

    invoke-virtual {v0}, Lc8/rE;->pause()V

    .line 261
    :cond_1
    iget-object v0, p0, Lc8/hF;->blowSensor:Lc8/nE;

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lc8/hF;->blowSensor:Lc8/nE;

    invoke-virtual {v0}, Lc8/nE;->stop()V

    .line 264
    :cond_2
    invoke-super {p0}, Lc8/RD;->onPause()V

    .line 265
    return-void
.end method

.method public onResume()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hF;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lc8/hF;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lc8/hF;->sm:Landroid/hardware/SensorManager;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 247
    :cond_0
    iget-object v0, p0, Lc8/hF;->mShakeListener:Lc8/rE;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lc8/hF;->mShakeListener:Lc8/rE;

    invoke-virtual {v0}, Lc8/rE;->resume()V

    .line 250
    :cond_1
    iget-object v0, p0, Lc8/hF;->blowSensor:Lc8/nE;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lc8/hF;->blowSensor:Lc8/nE;

    invoke-virtual {v0}, Lc8/nE;->start()V

    .line 253
    :cond_2
    invoke-super {p0}, Lc8/RD;->onResume()V

    .line 254
    return-void
.end method

.method public declared-synchronized stopListenBlow(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const-string/jumbo v0, "WVMotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopListenBlow: stopped. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    iget-object v0, p0, Lc8/hF;->blowSensor:Lc8/nE;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lc8/hF;->blowSensor:Lc8/nE;

    invoke-virtual {v0}, Lc8/nE;->stop()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/hF;->blowSensor:Lc8/nE;

    .line 302
    :cond_1
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized vibrate(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 6
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .local v2, "result":Lc8/kE;
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 275
    .local v1, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "duration"

    const/16 v4, 0x15e

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 283
    .local v0, "duration":I
    if-gez v0, :cond_0

    const/16 v0, 0x15e

    .line 285
    :cond_0
    :try_start_2
    iget-object v3, p0, Lc8/hF;->vibrator:Landroid/os/Vibrator;

    if-nez v3, :cond_1

    .line 286
    iget-object v3, p0, Lc8/hF;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lc8/hF;->vibrator:Landroid/os/Vibrator;

    .line 288
    :cond_1
    iget-object v3, p0, Lc8/hF;->vibrator:Landroid/os/Vibrator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 289
    const-string/jumbo v3, "WVMotion"

    const-string/jumbo v4, "vibrate: start ..."

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    .end local v0    # "duration":I
    .end local v1    # "jsObj":Lorg/json/JSONObject;
    :goto_0
    monitor-exit p0

    return-void

    .line 277
    :catch_0
    move-exception v3

    :try_start_3
    const-string/jumbo v3, "WVMotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate: param parse to JSON error, param="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v3, "HY_PARAM_ERR"

    invoke-virtual {v2, v3}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 271
    .end local v2    # "result":Lc8/kE;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
