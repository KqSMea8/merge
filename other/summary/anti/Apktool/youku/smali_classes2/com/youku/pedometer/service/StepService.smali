.class public Lcom/youku/pedometer/service/StepService;
.super Landroid/app/Service;
.source "StepService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ZKj;
    }
.end annotation


# static fields
.field private static CURRENT_DATE:Ljava/lang/String;

.field private static duration:I

.field private static stepSensor:I


# instance fields
.field private currentStep:I

.field private hasRecord:Z

.field private mBatInfoReceiver:Landroid/content/BroadcastReceiver;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorStepCount:I

.field private stepData:Lc8/WKj;

.field private time:Lc8/ZKj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const v0, 0xea60

    sput v0, Lcom/youku/pedometer/service/StepService;->duration:I

    .line 33
    const-string/jumbo v0, ""

    sput-object v0, Lcom/youku/pedometer/service/StepService;->CURRENT_DATE:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    sput v0, Lcom/youku/pedometer/service/StepService;->stepSensor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/pedometer/service/StepService;->sensorStepCount:I

    .line 274
    return-void
.end method

.method public static synthetic access$000(Lcom/youku/pedometer/service/StepService;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/pedometer/service/StepService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/youku/pedometer/service/StepService;->startStepDetector()V

    return-void
.end method

.method public static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 27
    sput p0, Lcom/youku/pedometer/service/StepService;->duration:I

    return p0
.end method

.method public static synthetic access$200(Lcom/youku/pedometer/service/StepService;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/pedometer/service/StepService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/youku/pedometer/service/StepService;->save()V

    return-void
.end method

.method public static synthetic access$300(Lcom/youku/pedometer/service/StepService;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/pedometer/service/StepService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/youku/pedometer/service/StepService;->isNewDay()V

    return-void
.end method

.method public static synthetic access$400(Lcom/youku/pedometer/service/StepService;)Lc8/ZKj;
    .locals 1
    .param p0, "x0"    # Lcom/youku/pedometer/service/StepService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/youku/pedometer/service/StepService;->time:Lc8/ZKj;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/youku/pedometer/service/StepService;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/pedometer/service/StepService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/youku/pedometer/service/StepService;->startTimeCount()V

    return-void
.end method

.method private addCountStepListener()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 196
    iget-object v2, p0, Lcom/youku/pedometer/service/StepService;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 198
    .local v0, "countSensor":Landroid/hardware/Sensor;
    const/4 v1, 0x0

    .line 199
    .local v1, "detectorSensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_1

    .line 200
    const/4 v2, 0x0

    sput v2, Lcom/youku/pedometer/service/StepService;->stepSensor:I

    .line 202
    iget-object v2, p0, Lcom/youku/pedometer/service/StepService;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    if-eqz v1, :cond_0

    .line 204
    const/4 v2, 0x1

    sput v2, Lcom/youku/pedometer/service/StepService;->stepSensor:I

    .line 206
    iget-object v2, p0, Lcom/youku/pedometer/service/StepService;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method private initBroadcastReceiver()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    new-instance v1, Lc8/YKj;

    invoke-direct {v1, p0}, Lc8/YKj;-><init>(Lcom/youku/pedometer/service/StepService;)V

    iput-object v1, p0, Lcom/youku/pedometer/service/StepService;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    iget-object v1, p0, Lcom/youku/pedometer/service/StepService;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/youku/pedometer/service/StepService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    return-void
.end method

.method private initTodayData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-static {}, Lc8/TKj;->getTodayDate()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/pedometer/service/StepService;->CURRENT_DATE:Ljava/lang/String;

    .line 79
    invoke-static {p0}, Lc8/TKj;->createDb(Landroid/content/Context;)V

    .line 81
    const-string/jumbo v0, "date"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/youku/pedometer/service/StepService;->CURRENT_DATE:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lc8/TKj;->getQueryByDate(Ljava/lang/String;[Ljava/lang/String;)Lc8/WKj;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/pedometer/service/StepService;->stepData:Lc8/WKj;

    .line 82
    iget-object v0, p0, Lcom/youku/pedometer/service/StepService;->stepData:Lc8/WKj;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lc8/WKj;

    sget-object v1, Lcom/youku/pedometer/service/StepService;->CURRENT_DATE:Ljava/lang/String;

    invoke-direct {v0, v1}, Lc8/WKj;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/youku/pedometer/service/StepService;->stepData:Lc8/WKj;

    .line 85
    iput v3, p0, Lcom/youku/pedometer/service/StepService;->currentStep:I

    .line 86
    iget-boolean v0, p0, Lcom/youku/pedometer/service/StepService;->hasRecord:Z

    if-nez v0, :cond_0

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/pedometer/service/StepService;->sensorStepCount:I

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StepData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/pedometer/service/StepService;->stepData:Lc8/WKj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/youku/pedometer/service/StepService;->stepData:Lc8/WKj;

    invoke-virtual {v0}, Lc8/WKj;->getStep()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "0"

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/pedometer/service/StepService;->currentStep:I

    .line 92
    iget-boolean v0, p0, Lcom/youku/pedometer/service/StepService;->hasRecord:Z

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/youku/pedometer/service/StepService;->stepData:Lc8/WKj;

    invoke-virtual {v0}, Lc8/WKj;->getSensor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "-1"

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/pedometer/service/StepService;->sensorStepCount:I

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/youku/pedometer/service/StepService;->stepData:Lc8/WKj;

    invoke-virtual {v0}, Lc8/WKj;->getStep()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/youku/pedometer/service/StepService;->stepData:Lc8/WKj;

    invoke-virtual {v0}, Lc8/WKj;->getSensor()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private isNewDay()V
    .locals 3

    .prologue
    .line 168
    const-string/jumbo v0, "00:00"

    .line 169
    .local v0, "time":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/youku/pedometer/service/StepService;->CURRENT_DATE:Ljava/lang/String;

    invoke-static {}, Lc8/TKj;->getTodayDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/youku/pedometer/service/StepService;->initTodayData()V

    .line 173
    :cond_1
    return-void
.end method

.method private save()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/youku/pedometer/service/StepService;->stepData:Lc8/WKj;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/youku/pedometer/service/StepService;->stepData:Lc8/WKj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/youku/pedometer/service/StepService;->currentStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/WKj;->setStep(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/youku/pedometer/service/StepService;->stepData:Lc8/WKj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/youku/pedometer/service/StepService;->sensorStepCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/WKj;->setSensor(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/youku/pedometer/service/StepService;->stepData:Lc8/WKj;

    invoke-static {v0}, Lc8/TKj;->insert(Lc8/WKj;)V

    .line 256
    :cond_0
    return-void
.end method

.method private startStepDetector()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/youku/pedometer/service/StepService;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/pedometer/service/StepService;->sensorManager:Landroid/hardware/SensorManager;

    .line 188
    :cond_0
    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/youku/pedometer/service/StepService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/youku/pedometer/service/StepService;->sensorManager:Landroid/hardware/SensorManager;

    .line 189
    invoke-direct {p0}, Lcom/youku/pedometer/service/StepService;->addCountStepListener()V

    .line 190
    return-void
.end method

.method private startTimeCount()V
    .locals 6

    .prologue
    .line 259
    new-instance v0, Lc8/ZKj;

    sget v1, Lcom/youku/pedometer/service/StepService;->duration:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lc8/ZKj;-><init>(Lcom/youku/pedometer/service/StepService;JJ)V

    iput-object v0, p0, Lcom/youku/pedometer/service/StepService;->time:Lc8/ZKj;

    .line 260
    iget-object v0, p0, Lcom/youku/pedometer/service/StepService;->time:Lc8/ZKj;

    invoke-virtual {v0}, Lc8/ZKj;->start()Landroid/os/CountDownTimer;

    .line 261
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 248
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 57
    invoke-static {p0}, Lc8/aLj;->isSupportStepCountSensor(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/youku/pedometer/service/StepService;->initBroadcastReceiver()V

    .line 59
    invoke-direct {p0}, Lcom/youku/pedometer/service/StepService;->initTodayData()V

    .line 60
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/XKj;

    invoke-direct {v1, p0}, Lc8/XKj;-><init>(Lcom/youku/pedometer/service/StepService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    invoke-direct {p0}, Lcom/youku/pedometer/service/StepService;->startTimeCount()V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/youku/pedometer/service/StepService;->stopSelf()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lc8/TKj;->closeDb()V

    .line 267
    iget-object v0, p0, Lcom/youku/pedometer/service/StepService;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/youku/pedometer/service/StepService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    iget-object v0, p0, Lcom/youku/pedometer/service/StepService;->time:Lc8/ZKj;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/youku/pedometer/service/StepService;->time:Lc8/ZKj;

    invoke-virtual {v0}, Lc8/ZKj;->cancel()V

    .line 271
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 272
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    sget v1, Lcom/youku/pedometer/service/StepService;->stepSensor:I

    if-nez v1, :cond_4

    .line 220
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v0, v1

    .line 221
    .local v0, "tempStep":I
    iget-boolean v1, p0, Lcom/youku/pedometer/service/StepService;->hasRecord:Z

    if-nez v1, :cond_3

    .line 222
    iput-boolean v3, p0, Lcom/youku/pedometer/service/StepService;->hasRecord:Z

    .line 223
    const/4 v1, -0x1

    iget v2, p0, Lcom/youku/pedometer/service/StepService;->sensorStepCount:I

    if-ne v1, v2, :cond_1

    .line 224
    iput v0, p0, Lcom/youku/pedometer/service/StepService;->sensorStepCount:I

    .line 232
    :goto_0
    invoke-direct {p0}, Lcom/youku/pedometer/service/StepService;->save()V

    .line 237
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tempStep "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .end local v0    # "tempStep":I
    :cond_0
    :goto_2
    return-void

    .line 225
    .restart local v0    # "tempStep":I
    :cond_1
    iget v1, p0, Lcom/youku/pedometer/service/StepService;->sensorStepCount:I

    if-lt v0, v1, :cond_2

    .line 226
    iget v1, p0, Lcom/youku/pedometer/service/StepService;->currentStep:I

    iget v2, p0, Lcom/youku/pedometer/service/StepService;->sensorStepCount:I

    sub-int v2, v0, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/youku/pedometer/service/StepService;->currentStep:I

    .line 227
    iput v0, p0, Lcom/youku/pedometer/service/StepService;->sensorStepCount:I

    goto :goto_0

    .line 229
    :cond_2
    iget v1, p0, Lcom/youku/pedometer/service/StepService;->currentStep:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/youku/pedometer/service/StepService;->currentStep:I

    .line 230
    iput v0, p0, Lcom/youku/pedometer/service/StepService;->sensorStepCount:I

    goto :goto_0

    .line 234
    :cond_3
    iget v1, p0, Lcom/youku/pedometer/service/StepService;->currentStep:I

    iget v2, p0, Lcom/youku/pedometer/service/StepService;->sensorStepCount:I

    sub-int v2, v0, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/youku/pedometer/service/StepService;->currentStep:I

    .line 235
    iput v0, p0, Lcom/youku/pedometer/service/StepService;->sensorStepCount:I

    goto :goto_1

    .line 238
    .end local v0    # "tempStep":I
    :cond_4
    sget v1, Lcom/youku/pedometer/service/StepService;->stepSensor:I

    if-ne v1, v3, :cond_0

    .line 239
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 240
    iget v1, p0, Lcom/youku/pedometer/service/StepService;->currentStep:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/youku/pedometer/service/StepService;->currentStep:I

    goto :goto_2
.end method
