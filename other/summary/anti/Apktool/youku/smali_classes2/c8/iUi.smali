.class public final Lc8/iUi;
.super Ljava/lang/Object;
.source "LBSLocationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/hUi;
    }
.end annotation


# static fields
.field public static final COUNTRY_CHANGE_BROADCAST_ACTION:Ljava/lang/String; = "com.youku.lbs.countrychanged"

.field private static final DEFAULT_LOCATION_INTERVAL:J

.field public static final LOCATION_CHANGE_BROADCAST_ACTION:Ljava/lang/String; = ".com.youku.lbs.locationchanged"

.field private static final LOCATION_TIME_OUT:J

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lc8/iUi;


# instance fields
.field private continiusListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/eUi;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private getLastLocationtime:J

.field private handler:Landroid/os/Handler;

.field private lastLBSLocation:Lcom/youku/lbs/LBSLocation;

.field private lbsLocationContext:Landroid/content/Context;

.field private onceListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/eUi;",
            "Lc8/hUi;",
            ">;"
        }
    .end annotation
.end field

.field private sdkLocationFailedisFromAPP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    const-class v0, Lc8/iUi;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/iUi;->TAG:Ljava/lang/String;

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lc8/iUi;->LOCATION_TIME_OUT:J

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lc8/iUi;->DEFAULT_LOCATION_INTERVAL:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/iUi;->sdkLocationFailedisFromAPP:Z

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/iUi;->handler:Landroid/os/Handler;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/iUi;->onceListenerMap:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/iUi;->continiusListenerMap:Ljava/util/Map;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/iUi;->getLastLocationtime:J

    .line 51
    return-void
.end method

.method static synthetic access$000(Lc8/iUi;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/iUi;

    .prologue
    .line 29
    iget-object v0, p0, Lc8/iUi;->lbsLocationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lc8/iUi;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lc8/iUi;Lcom/amap/api/location/AMapLocation;)Lcom/youku/lbs/LBSLocation;
    .locals 1
    .param p0, "x0"    # Lc8/iUi;
    .param p1, "x1"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lc8/iUi;->convertLocation(Lcom/amap/api/location/AMapLocation;)Lcom/youku/lbs/LBSLocation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lc8/iUi;Lcom/youku/lbs/LBSLocation;)V
    .locals 0
    .param p0, "x0"    # Lc8/iUi;
    .param p1, "x1"    # Lcom/youku/lbs/LBSLocation;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lc8/iUi;->setLastKnownLocation(Lcom/youku/lbs/LBSLocation;)V

    return-void
.end method

.method static synthetic access$1200(Lc8/iUi;)Z
    .locals 1
    .param p0, "x0"    # Lc8/iUi;

    .prologue
    .line 29
    iget-boolean v0, p0, Lc8/iUi;->sdkLocationFailedisFromAPP:Z

    return v0
.end method

.method static synthetic access$1202(Lc8/iUi;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/iUi;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lc8/iUi;->sdkLocationFailedisFromAPP:Z

    return p1
.end method

.method static synthetic access$300(Lc8/iUi;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/iUi;

    .prologue
    .line 29
    iget-object v0, p0, Lc8/iUi;->onceListenerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lc8/iUi;)V
    .locals 0
    .param p0, "x0"    # Lc8/iUi;

    .prologue
    .line 29
    invoke-direct {p0}, Lc8/iUi;->checkLocationTimeOut()V

    return-void
.end method

.method static synthetic access$700(Lc8/iUi;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/iUi;

    .prologue
    .line 29
    iget-object v0, p0, Lc8/iUi;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lc8/iUi;)V
    .locals 0
    .param p0, "x0"    # Lc8/iUi;

    .prologue
    .line 29
    invoke-direct {p0}, Lc8/iUi;->logOnceLocationListeners()V

    return-void
.end method

.method private checkLocationTimeOut()V
    .locals 10

    .prologue
    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 441
    .local v6, "now":J
    sget-object v5, Lc8/iUi;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "checkLocationTimeOut Start"

    invoke-static {v5, v8}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v5, p0, Lc8/iUi;->onceListenerMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 443
    iget-object v5, p0, Lc8/iUi;->onceListenerMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 444
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/youku/lbs/LBSLocationListener;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 445
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/eUi;

    .line 446
    .local v3, "lbsLocationListener":Lc8/eUi;
    if-eqz v3, :cond_0

    .line 449
    iget-object v5, p0, Lc8/iUi;->onceListenerMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/hUi;

    .line 450
    .local v4, "locationListenerWrapper":Lc8/hUi;
    if-eqz v4, :cond_0

    .line 453
    invoke-static {v4}, Lc8/hUi;->access$200(Lc8/hUi;)J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 454
    .local v0, "diffTime":J
    invoke-static {v4}, Lc8/hUi;->access$800(Lc8/hUi;)J

    move-result-wide v8

    cmp-long v5, v0, v8

    if-ltz v5, :cond_0

    .line 455
    sget-object v5, Lc8/iUi;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " checkLocationTimeOut "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v4}, Lc8/hUi;->onTimeout()V

    goto :goto_0

    .line 460
    .end local v0    # "diffTime":J
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/youku/lbs/LBSLocationListener;>;"
    .end local v3    # "lbsLocationListener":Lc8/eUi;
    .end local v4    # "locationListenerWrapper":Lc8/hUi;
    :cond_1
    return-void
.end method

.method private convertLocation(Lcom/amap/api/location/AMapLocation;)Lcom/youku/lbs/LBSLocation;
    .locals 6
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    const/4 v1, 0x0

    .line 363
    :goto_0
    return-object v1

    .line 296
    :cond_0
    new-instance v1, Lcom/youku/lbs/LBSLocation;

    invoke-direct {v1, p1}, Lcom/youku/lbs/LBSLocation;-><init>(Landroid/location/Location;)V

    .line 298
    .local v1, "location":Lcom/youku/lbs/LBSLocation;
    :try_start_0
    sget-object v2, Lc8/iUi;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "convertLocation Latitude = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Longitude = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ExtrasInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/youku/lbs/LBSLocation;->setLatitude(D)V

    .line 301
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/youku/lbs/LBSLocation;->setLongitude(D)V

    .line 302
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/lbs/LBSLocation;->setCountry(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/youku/lbs/LBSLocation;->setAccuracy(F)V

    .line 304
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/lbs/LBSLocation;->setProvince(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/lbs/LBSLocation;->setCity(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/lbs/LBSLocation;->setDistrict(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/lbs/LBSLocation;->setCityCode(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/lbs/LBSLocation;->setAdCode(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/lbs/LBSLocation;->setAddress(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/lbs/LBSLocation;->setStreet(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/lbs/LBSLocation;->setLocationtime(Ljava/lang/Long;)V

    .line 312
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/lbs/LBSLocation;->setIsGetAMapAPP(Z)V

    .line 313
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getPoiName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/lbs/LBSLocation;->setAoiname(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/youku/lbs/LBSLocation;->setLocalTime(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lc8/iUi;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "convertLocation error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private doRequestLocationUpdates(Landroid/content/Context;ZLc8/eUi;JJZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gpsEnable"    # Z
    .param p3, "locationListener"    # Lc8/eUi;
    .param p4, "miniInterval"    # J
    .param p6, "overtime"    # J
    .param p8, "isNeedAddress"    # Z

    .prologue
    .line 137
    if-nez p3, :cond_0

    .line 190
    :goto_0
    return-void

    .line 141
    :cond_0
    sget-object v0, Lc8/iUi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "1.doRequestLocationUpdates( gpsEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")|(listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/iUi;->lbsLocationContext:Landroid/content/Context;

    .line 143
    const-string/jumbo v0, "requestLocationUpdates once stacktrace no error"

    invoke-direct {p0, v0}, Lc8/iUi;->logStackTrace(Ljava/lang/String;)V

    .line 144
    sget-object v0, Lc8/iUi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "1.doRequestLocationUpdates Thread Name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v8, p0, Lc8/iUi;->handler:Landroid/os/Handler;

    new-instance v0, Lc8/gUi;

    move-object v1, p0

    move-wide v2, p4

    move-object v4, p3

    move-wide/from16 v5, p6

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lc8/gUi;-><init>(Lc8/iUi;JLc8/eUi;JZ)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lc8/iUi;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lc8/iUi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/iUi;->instance:Lc8/iUi;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lc8/iUi;

    invoke-direct {v0}, Lc8/iUi;-><init>()V

    sput-object v0, Lc8/iUi;->instance:Lc8/iUi;

    .line 58
    :cond_0
    sget-object v0, Lc8/iUi;->instance:Lc8/iUi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized logLocationUpdateListeners(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lc8/eUi;",
            "+",
            "Lc8/jUc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/youku/lbs/LBSLocationListener;+Lcom/amap/api/location/AMapLocationListener;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 434
    .local v1, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/youku/lbs/LBSLocationListener;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/eUi;

    .line 435
    .local v0, "listener":Lc8/eUi;
    const-string/jumbo v3, "LBS_Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listener:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/cIo;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 433
    .end local v0    # "listener":Lc8/eUi;
    .end local v1    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/youku/lbs/LBSLocationListener;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 437
    .restart local v1    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/youku/lbs/LBSLocationListener;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized logOnceLocationListeners()V
    .locals 3

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "LBS_Monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "once listener count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/iUi;->onceListenerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/cIo;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lc8/iUi;->onceListenerMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lc8/iUi;->logLocationUpdateListeners(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized logStackTrace(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 419
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "LBS_Monitor"

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/cIo;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    monitor-exit p0

    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setLastKnownLocation(Lcom/youku/lbs/LBSLocation;)V
    .locals 10
    .param p1, "location"    # Lcom/youku/lbs/LBSLocation;

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lc8/iUi;->lbsLocationContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    .line 255
    iput-object p1, p0, Lc8/iUi;->lastLBSLocation:Lcom/youku/lbs/LBSLocation;

    .line 256
    iget-object v6, p0, Lc8/iUi;->lastLBSLocation:Lcom/youku/lbs/LBSLocation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/youku/lbs/LBSLocation;->setLocalTime(J)V

    .line 258
    iget-object v6, p0, Lc8/iUi;->lbsLocationContext:Landroid/content/Context;

    const-string/jumbo v7, "lbs_lastknownlocation"

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 259
    .local v5, "settings":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "lastKnowLocationCountry"

    const-string/jumbo v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "lastcountry":Ljava/lang/String;
    sget-object v6, Lc8/iUi;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "8.setLastKnownLocation lastcountry = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 262
    .local v4, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v6, "lastKnowLocationLatitude"

    iget-object v7, p0, Lc8/iUi;->lastLBSLocation:Lcom/youku/lbs/LBSLocation;

    invoke-virtual {v7}, Lcom/youku/lbs/LBSLocation;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 263
    const-string/jumbo v6, "lastKnowLocationLongitude"

    iget-object v7, p0, Lc8/iUi;->lastLBSLocation:Lcom/youku/lbs/LBSLocation;

    invoke-virtual {v7}, Lcom/youku/lbs/LBSLocation;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 264
    const-string/jumbo v6, "lastKnowLocationCountry"

    iget-object v7, p0, Lc8/iUi;->lastLBSLocation:Lcom/youku/lbs/LBSLocation;

    invoke-virtual {v7}, Lcom/youku/lbs/LBSLocation;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 265
    const-string/jumbo v6, "lastKnowLocationLocalTime"

    iget-object v7, p0, Lc8/iUi;->lastLBSLocation:Lcom/youku/lbs/LBSLocation;

    invoke-virtual {v7}, Lcom/youku/lbs/LBSLocation;->getLocalTime()J

    move-result-wide v8

    invoke-interface {v4, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 267
    sget-object v6, Lc8/iUi;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "9.setLastKnownLocation save to sp"

    invoke-static {v6, v7}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v2, "intent":Landroid/content/Intent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lc8/iUi;->lbsLocationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".com.youku.lbs.locationchanged"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string/jumbo v6, "lat"

    iget-object v7, p0, Lc8/iUi;->lastLBSLocation:Lcom/youku/lbs/LBSLocation;

    invoke-virtual {v7}, Lcom/youku/lbs/LBSLocation;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string/jumbo v6, "lon"

    iget-object v7, p0, Lc8/iUi;->lastLBSLocation:Lcom/youku/lbs/LBSLocation;

    invoke-virtual {v7}, Lcom/youku/lbs/LBSLocation;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string/jumbo v6, "time"

    iget-object v7, p0, Lc8/iUi;->lastLBSLocation:Lcom/youku/lbs/LBSLocation;

    invoke-virtual {v7}, Lcom/youku/lbs/LBSLocation;->getLocalTime()J

    move-result-wide v8

    invoke-virtual {v2, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 275
    iget-object v6, p0, Lc8/iUi;->lbsLocationContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 277
    const-string/jumbo v6, "0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lc8/iUi;->lastLBSLocation:Lcom/youku/lbs/LBSLocation;

    invoke-virtual {v6}, Lcom/youku/lbs/LBSLocation;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 280
    .local v0, "countryChangeIntent":Landroid/content/Intent;
    const-string/jumbo v6, "com.youku.lbs.countrychanged"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string/jumbo v6, "country"

    iget-object v7, p0, Lc8/iUi;->lastLBSLocation:Lcom/youku/lbs/LBSLocation;

    invoke-virtual {v7}, Lcom/youku/lbs/LBSLocation;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object v6, p0, Lc8/iUi;->lbsLocationContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 283
    sget-object v6, Lc8/iUi;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "10.setLastKnownLocation countryChange sendBroadcast"

    invoke-static {v6, v7}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .end local v0    # "countryChangeIntent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "lastcountry":Ljava/lang/String;
    .end local v4    # "localEditor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-object v6, Lc8/iUi;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "8.setLastKnownLocation error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method


# virtual methods
.method public declared-synchronized getLastKnownLocation(Landroid/content/Context;)Lcom/youku/lbs/LBSLocation;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    sget-object v6, Lc8/iUi;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "0.getLastKnownLocation start"

    invoke-static {v6, v7}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lc8/iUi;->lbsLocationContext:Landroid/content/Context;

    .line 216
    iget-object v6, p0, Lc8/iUi;->lastLBSLocation:Lcom/youku/lbs/LBSLocation;

    if-eqz v6, :cond_0

    .line 217
    sget-object v6, Lc8/iUi;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "0.getLastKnownLocation lastLBSLocation != null"

    invoke-static {v6, v7}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v6, p0, Lc8/iUi;->lastLBSLocation:Lcom/youku/lbs/LBSLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :goto_0
    monitor-exit p0

    return-object v6

    .line 220
    :cond_0
    :try_start_1
    iget-object v6, p0, Lc8/iUi;->lbsLocationContext:Landroid/content/Context;

    if-nez v6, :cond_1

    .line 221
    sget-object v6, Lc8/iUi;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "0.getLastKnownLocation lbsLocationContext == null"

    invoke-static {v6, v7}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    const/4 v6, 0x0

    goto :goto_0

    .line 226
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lc8/iUi;->getLastLocationtime:J

    sub-long v4, v6, v8

    .line 227
    .local v4, "timespan":J
    sget-object v6, Lc8/iUi;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "0.getLastKnownLocation timespan = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " | getLastLocationtime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lc8/iUi;->getLastLocationtime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-wide v6, p0, Lc8/iUi;->getLastLocationtime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 229
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lc8/iUi;->getLastLocationtime:J

    .line 230
    new-instance v2, Lc8/hUc;

    iget-object v6, p0, Lc8/iUi;->lbsLocationContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lc8/hUc;-><init>(Landroid/content/Context;)V

    .line 231
    .local v2, "mLocationClient":Lc8/hUc;
    invoke-virtual {v2}, Lc8/hUc;->getLastKnownLocation()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    .line 233
    .local v0, "amapLocation":Lcom/amap/api/location/AMapLocation;
    sget-object v6, Lc8/iUi;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "0123.getLastKnownLocation amapLocation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v2}, Lc8/hUc;->onDestroy()V

    .line 236
    invoke-direct {p0, v0}, Lc8/iUi;->convertLocation(Lcom/amap/api/location/AMapLocation;)Lcom/youku/lbs/LBSLocation;

    move-result-object v3

    .line 237
    .local v3, "newLocation":Lcom/youku/lbs/LBSLocation;
    iput-object v3, p0, Lc8/iUi;->lastLBSLocation:Lcom/youku/lbs/LBSLocation;

    .line 238
    iget-object v6, p0, Lc8/iUi;->lastLBSLocation:Lcom/youku/lbs/LBSLocation;

    if-eqz v6, :cond_3

    .line 239
    sget-object v6, Lc8/iUi;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "0.getLastKnownLocation lastLBSLocation = newLocation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/youku/lbs/LBSLocation;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    .end local v0    # "amapLocation":Lcom/amap/api/location/AMapLocation;
    .end local v2    # "mLocationClient":Lc8/hUc;
    .end local v3    # "newLocation":Lcom/youku/lbs/LBSLocation;
    .end local v4    # "timespan":J
    :goto_1
    :try_start_3
    iget-object v6, p0, Lc8/iUi;->lastLBSLocation:Lcom/youku/lbs/LBSLocation;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 241
    .restart local v0    # "amapLocation":Lcom/amap/api/location/AMapLocation;
    .restart local v2    # "mLocationClient":Lc8/hUc;
    .restart local v3    # "newLocation":Lcom/youku/lbs/LBSLocation;
    .restart local v4    # "timespan":J
    :cond_3
    :try_start_4
    sget-object v6, Lc8/iUi;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "0.getLastKnownLocation lastLBSLocation = newLocation = null"

    invoke-static {v6, v7}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 246
    .end local v0    # "amapLocation":Lcom/amap/api/location/AMapLocation;
    .end local v2    # "mLocationClient":Lc8/hUc;
    .end local v3    # "newLocation":Lcom/youku/lbs/LBSLocation;
    .end local v4    # "timespan":J
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v6, Lc8/iUi;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 244
    .restart local v4    # "timespan":J
    :cond_4
    :try_start_6
    sget-object v6, Lc8/iUi;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "0.getLastKnownLocation no 30S end "

    invoke-static {v6, v7}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public requestLocationUpdates(Lc8/eUi;ZLandroid/content/Context;)V
    .locals 9
    .param p1, "locationListener"    # Lc8/eUi;
    .param p2, "isNeedAddress"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v2, 0x0

    sget-wide v4, Lc8/iUi;->DEFAULT_LOCATION_INTERVAL:J

    sget-wide v6, Lc8/iUi;->LOCATION_TIME_OUT:J

    move-object v0, p0

    move-object v1, p3

    move-object v3, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lc8/iUi;->doRequestLocationUpdates(Landroid/content/Context;ZLc8/eUi;JJZ)V

    .line 70
    return-void
.end method
