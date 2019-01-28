.class public Lc8/Fqb;
.super Lc8/MXf;
.source "WXDeviceModule.java"


# instance fields
.field private accelerometerSensor:Landroid/hardware/Sensor;

.field accelerometerValues:[F

.field private datasMap:Ljava/util/HashMap;

.field private lastUpdateTimes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lc8/EWf;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private magneticFieldSensor:Landroid/hardware/Sensor;

.field magneticFieldValues:[F

.field private orientationSensor:Landroid/hardware/Sensor;

.field orientationValues:[F

.field final sensorEventListener:Landroid/hardware/SensorEventListener;

.field private sensorSpeed:I

.field private sm:Landroid/hardware/SensorManager;

.field private successCallbacks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lc8/EWf;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 25
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    .line 26
    iput-object v0, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    .line 27
    iput-object v0, p0, Lc8/Fqb;->accelerometerSensor:Landroid/hardware/Sensor;

    .line 28
    iput-object v0, p0, Lc8/Fqb;->magneticFieldSensor:Landroid/hardware/Sensor;

    .line 29
    iput-object v0, p0, Lc8/Fqb;->orientationSensor:Landroid/hardware/Sensor;

    .line 31
    new-array v0, v1, [F

    iput-object v0, p0, Lc8/Fqb;->accelerometerValues:[F

    .line 32
    new-array v0, v1, [F

    iput-object v0, p0, Lc8/Fqb;->magneticFieldValues:[F

    .line 33
    new-array v0, v1, [F

    iput-object v0, p0, Lc8/Fqb;->orientationValues:[F

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lc8/Fqb;->successCallbacks:Ljava/util/Hashtable;

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lc8/Fqb;->lastUpdateTimes:Ljava/util/Hashtable;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Fqb;->datasMap:Ljava/util/HashMap;

    .line 39
    iput v1, p0, Lc8/Fqb;->sensorSpeed:I

    .line 90
    new-instance v0, Lc8/Eqb;

    invoke-direct {v0, p0}, Lc8/Eqb;-><init>(Lc8/Fqb;)V

    iput-object v0, p0, Lc8/Fqb;->sensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lc8/Fqb;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lc8/Fqb;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/Fqb;->successCallbacks:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Fqb;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lc8/Fqb;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/Fqb;->lastUpdateTimes:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Fqb;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/Fqb;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/Fqb;->datasMap:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public onActivityPause()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lc8/Fqb;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 157
    :cond_0
    invoke-super {p0}, Lc8/MXf;->onActivityPause()V

    .line 158
    return-void
.end method

.method public onActivityResume()V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lc8/Fqb;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lc8/Fqb;->accelerometerSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lc8/Fqb;->sensorSpeed:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 164
    iget-object v0, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lc8/Fqb;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lc8/Fqb;->magneticFieldSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lc8/Fqb;->sensorSpeed:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 165
    iget-object v0, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lc8/Fqb;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lc8/Fqb;->orientationSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lc8/Fqb;->sensorSpeed:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 167
    :cond_0
    invoke-super {p0}, Lc8/MXf;->onActivityResume()V

    .line 168
    return-void
.end method

.method public stopOrientation(Ljava/lang/String;)V
    .locals 2
    .param p1, "options"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lc8/Fqb;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    .line 82
    :cond_0
    iget-object v0, p0, Lc8/Fqb;->successCallbacks:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lc8/Fqb;->successCallbacks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 85
    :cond_1
    iget-object v0, p0, Lc8/Fqb;->lastUpdateTimes:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lc8/Fqb;->lastUpdateTimes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 88
    :cond_2
    return-void
.end method

.method public watchOrientation(Ljava/lang/String;Lc8/EWf;Lc8/EWf;)V
    .locals 10
    .param p1, "options"    # Ljava/lang/String;
    .param p2, "sCallback"    # Lc8/EWf;
    .param p3, "fCallback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 43
    const-wide v2, 0x4054c00000000000L    # 83.0

    .line 45
    .local v2, "interval":D
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "params":Lorg/json/JSONObject;
    const-string/jumbo v4, "interval"

    const-wide v6, 0x4054c00000000000L    # 83.0

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 47
    const-wide v4, 0x4030b33333333333L    # 16.7

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    .line 48
    const-wide v2, 0x4030b33333333333L    # 16.7

    .line 54
    .end local v1    # "params":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_3

    .line 55
    const/4 v4, 0x0

    iput v4, p0, Lc8/Fqb;->sensorSpeed:I

    .line 60
    :cond_1
    :goto_1
    iget-object v4, p0, Lc8/Fqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v4}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    .line 61
    iget-object v4, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 62
    .local v0, "SSensor":Landroid/hardware/Sensor;
    iget-object v4, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lc8/Fqb;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v4, v5, v0, v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 64
    iget-object v4, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lc8/Fqb;->accelerometerSensor:Landroid/hardware/Sensor;

    .line 65
    iget-object v4, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lc8/Fqb;->magneticFieldSensor:Landroid/hardware/Sensor;

    .line 66
    iget-object v4, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lc8/Fqb;->orientationSensor:Landroid/hardware/Sensor;

    .line 68
    iget-object v4, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lc8/Fqb;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lc8/Fqb;->accelerometerSensor:Landroid/hardware/Sensor;

    iget v7, p0, Lc8/Fqb;->sensorSpeed:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 69
    iget-object v4, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lc8/Fqb;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lc8/Fqb;->magneticFieldSensor:Landroid/hardware/Sensor;

    iget v7, p0, Lc8/Fqb;->sensorSpeed:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 70
    iget-object v4, p0, Lc8/Fqb;->sm:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lc8/Fqb;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lc8/Fqb;->orientationSensor:Landroid/hardware/Sensor;

    iget v7, p0, Lc8/Fqb;->sensorSpeed:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 71
    iget-object v4, p0, Lc8/Fqb;->successCallbacks:Ljava/util/Hashtable;

    if-eqz v4, :cond_2

    .line 72
    iget-object v4, p0, Lc8/Fqb;->successCallbacks:Ljava/util/Hashtable;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_2
    return-void

    .line 56
    .end local v0    # "SSensor":Landroid/hardware/Sensor;
    :cond_3
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_1

    .line 57
    iput v8, p0, Lc8/Fqb;->sensorSpeed:I

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0
.end method
