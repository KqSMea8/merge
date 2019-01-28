.class public Lc8/bF;
.super Lc8/RD;
.source "WVLocation.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final GPS_TIMEOUT:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "WVLocation"


# instance fields
.field private MIN_DISTANCE:I

.field private MIN_TIME:I

.field private enableAddress:Z

.field private getLocationSuccess:Z

.field private locationManager:Landroid/location/LocationManager;

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/taobao/windvane/jsbridge/WVCallBackContext;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 44
    const/16 v0, 0x4e20

    iput v0, p0, Lc8/bF;->MIN_TIME:I

    .line 45
    const/16 v0, 0x1e

    iput v0, p0, Lc8/bF;->MIN_DISTANCE:I

    .line 46
    iput-object v2, p0, Lc8/bF;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/bF;->mCallbacks:Ljava/util/ArrayList;

    .line 49
    iput-boolean v1, p0, Lc8/bF;->getLocationSuccess:Z

    .line 50
    iput-boolean v1, p0, Lc8/bF;->enableAddress:Z

    .line 51
    iput-object v2, p0, Lc8/bF;->locationManager:Landroid/location/LocationManager;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/bF;->mHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lc8/bF;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/bF;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/bF;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lc8/bF;)Z
    .locals 1
    .param p0, "x0"    # Lc8/bF;

    .prologue
    .line 41
    iget-boolean v0, p0, Lc8/bF;->enableAddress:Z

    return v0
.end method

.method static synthetic access$200(Lc8/bF;DD)Landroid/location/Address;
    .locals 1
    .param p0, "x0"    # Lc8/bF;
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/bF;->getAddress(DD)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lc8/bF;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lc8/bF;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/bF;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getAddress(DD)Landroid/location/Address;
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 144
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lc8/bF;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 146
    .local v1, "gc":Landroid/location/Geocoder;
    const/4 v6, 0x1

    move-wide v2, p1

    move-wide v4, p3

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 147
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 148
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :goto_0
    return-object v2

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WVLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAddress: getFromLocation error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private registerLocation(Z)V
    .locals 7
    .param p1, "enableHighAcuracy"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lc8/bF;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lc8/bF;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lc8/bF;->locationManager:Landroid/location/LocationManager;

    .line 129
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lc8/bF;->getLocationSuccess:Z

    .line 130
    iget-object v0, p0, Lc8/bF;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    iget v2, p0, Lc8/bF;->MIN_TIME:I

    int-to-long v2, v2

    iget v4, p0, Lc8/bF;->MIN_DISTANCE:I

    int-to-float v4, v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 131
    iget-object v0, p0, Lc8/bF;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    iget v2, p0, Lc8/bF;->MIN_TIME:I

    int-to-long v2, v2

    iget v4, p0, Lc8/bF;->MIN_DISTANCE:I

    int-to-float v4, v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 132
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const-string/jumbo v0, "WVLocation"

    const-string/jumbo v1, " registerLocation start provider GPS and NETWORK"

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v6

    .line 136
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "WVLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerLocation error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private wrapResult(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 190
    iget-object v2, p0, Lc8/bF;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/bF;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    :cond_0
    const-string/jumbo v2, "WVLocation"

    const-string/jumbo v3, "GetLocation wrapResult callbackContext is null"

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_0
    return-void

    .line 194
    :cond_1
    if-nez p1, :cond_3

    .line 195
    const-string/jumbo v2, "WVLocation"

    const-string/jumbo v3, "getLocation: location is null"

    invoke-static {v2, v3}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lc8/bF;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 197
    .local v0, "callBackContext":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    invoke-virtual {v0, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_1

    .line 199
    .end local v0    # "callBackContext":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    :cond_2
    iget-object v2, p0, Lc8/bF;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 203
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v2, Lc8/aF;

    invoke-direct {v2, p0, p1}, Lc8/aF;-><init>(Lc8/bF;Landroid/location/Location;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 60
    const-string/jumbo v0, "getLocation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, p3, p2}, Lc8/bF;->getLocation(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getLocation(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 4
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/bF;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/jH;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Lc8/iH;

    move-result-object v0

    new-instance v1, Lc8/YE;

    invoke-direct {v1, p0, p1, p2}, Lc8/YE;-><init>(Lc8/bF;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/iH;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v0

    new-instance v1, Lc8/XE;

    invoke-direct {v1, p0, p1}, Lc8/XE;-><init>(Lc8/bF;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-virtual {v0, v1}, Lc8/iH;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v0

    invoke-virtual {v0}, Lc8/iH;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_0
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 291
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 317
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 293
    :pswitch_0
    iget-object v3, p0, Lc8/bF;->locationManager:Landroid/location/LocationManager;

    if-eqz v3, :cond_3

    .line 295
    :try_start_0
    iget-object v3, p0, Lc8/bF;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 296
    iget-object v3, p0, Lc8/bF;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/bF;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    :cond_0
    const-string/jumbo v3, "WVLocation"

    const-string/jumbo v4, "GetLocation wrapResult callbackContext is null"

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WVLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GetLocation timeout"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v3, p0, Lc8/bF;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 309
    .local v0, "callBackContext":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_2

    .line 300
    .end local v0    # "callBackContext":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lc8/bF;->getLocationSuccess:Z

    if-nez v3, :cond_3

    .line 301
    iget-object v3, p0, Lc8/bF;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 302
    .restart local v0    # "callBackContext":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_3

    .line 304
    .end local v0    # "callBackContext":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    :cond_2
    iget-object v3, p0, Lc8/bF;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 311
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v3, p0, Lc8/bF;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lc8/bF;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 276
    iget-boolean v0, p0, Lc8/bF;->getLocationSuccess:Z

    if-nez v0, :cond_0

    .line 278
    :try_start_0
    iget-object v0, p0, Lc8/bF;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/bF;->locationManager:Landroid/location/LocationManager;

    .line 284
    :cond_1
    iget-object v0, p0, Lc8/bF;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lc8/bF;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 287
    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 158
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string/jumbo v0, "WVLocation"

    const-string/jumbo v1, " onLocationChanged. "

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lc8/bF;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-direct {p0, p1}, Lc8/bF;->wrapResult(Landroid/location/Location;)V

    .line 164
    iget-object v0, p0, Lc8/bF;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/bF;->getLocationSuccess:Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-string/jumbo v0, "WVLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onProviderDisabled. provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string/jumbo v0, "WVLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onProviderEnabled. provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string/jumbo v0, "WVLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onStatusChanged. provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method

.method public requestLocation(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 6
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "enableHighAcuracy":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "enableHighAcuracy"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 94
    const-string/jumbo v3, "address"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lc8/bF;->enableAddress:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "jsObj":Lorg/json/JSONObject;
    :cond_0
    iget-object v3, p0, Lc8/bF;->mCallbacks:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lc8/bF;->mCallbacks:Ljava/util/ArrayList;

    .line 108
    :cond_1
    iget-object v3, p0, Lc8/bF;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-direct {p0, v0}, Lc8/bF;->registerLocation(Z)V

    .line 111
    invoke-static {}, Lc8/wH;->getInstance()Lc8/wH;

    move-result-object v3

    new-instance v4, Lc8/ZE;

    invoke-direct {v4, p0}, Lc8/ZE;-><init>(Lc8/bF;)V

    invoke-virtual {v3, v4}, Lc8/wH;->execute(Ljava/lang/Runnable;)V

    .line 116
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v3

    const-string/jumbo v3, "WVLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLocation: param parse to JSON error, param="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 98
    .local v2, "result":Lc8/kE;
    const-string/jumbo v3, "HY_PARAM_ERR"

    invoke-virtual {v2, v3}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method
