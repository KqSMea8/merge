.class public Lc8/CDn;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/BDn;
    }
.end annotation


# static fields
.field private static locationManager:Lc8/CDn;


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private locationClient:Lc8/hUc;

.field locationInfo:Lc8/DDn;

.field locationListener:Lc8/jUc;

.field private locationOption:Lcom/amap/api/location/AMapLocationClientOption;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/CDn;->TAG:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lc8/CDn;->locationClient:Lc8/hUc;

    .line 26
    iput-object v1, p0, Lc8/CDn;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    .line 27
    new-instance v0, Lc8/DDn;

    invoke-direct {v0}, Lc8/DDn;-><init>()V

    iput-object v0, p0, Lc8/CDn;->locationInfo:Lc8/DDn;

    .line 31
    iput-object p1, p0, Lc8/CDn;->context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lc8/CDn;Lcom/amap/api/location/AMapLocation;Lc8/BDn;)V
    .locals 0
    .param p0, "x0"    # Lc8/CDn;
    .param p1, "x1"    # Lcom/amap/api/location/AMapLocation;
    .param p2, "x2"    # Lc8/BDn;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lc8/CDn;->getLocationResult(Lcom/amap/api/location/AMapLocation;Lc8/BDn;)V

    return-void
.end method

.method static synthetic access$100(Lc8/CDn;)V
    .locals 0
    .param p0, "x0"    # Lc8/CDn;

    .prologue
    .line 20
    invoke-direct {p0}, Lc8/CDn;->destroyLocation()V

    return-void
.end method

.method static synthetic access$200(Lc8/CDn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/CDn;

    .prologue
    .line 20
    iget-object v0, p0, Lc8/CDn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private destroyLocation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lc8/CDn;->locationClient:Lc8/hUc;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lc8/CDn;->locationClient:Lc8/hUc;

    invoke-virtual {v0}, Lc8/hUc;->onDestroy()V

    .line 94
    iput-object v1, p0, Lc8/CDn;->locationClient:Lc8/hUc;

    .line 95
    iput-object v1, p0, Lc8/CDn;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    .line 98
    :cond_0
    iget-object v0, p0, Lc8/CDn;->locationInfo:Lc8/DDn;

    invoke-virtual {v0}, Lc8/DDn;->clearLocationInfo()V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/CDn;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "--destroyLocation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/EDn;->d(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private getDefaultOption()Lcom/amap/api/location/AMapLocationClientOption;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lc8/CDn;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    .line 125
    iget-object v0, p0, Lc8/CDn;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 126
    iget-object v0, p0, Lc8/CDn;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 127
    iget-object v0, p0, Lc8/CDn;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setHttpTimeOut(J)V

    .line 128
    iget-object v0, p0, Lc8/CDn;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;

    .line 129
    iget-object v0, p0, Lc8/CDn;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 130
    iget-object v0, p0, Lc8/CDn;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 131
    iget-object v0, p0, Lc8/CDn;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocationLatest(Z)V

    .line 132
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTP:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-static {v0}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationProtocol(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;)V

    .line 133
    iget-object v0, p0, Lc8/CDn;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setSensorEnable(Z)V

    .line 134
    iget-object v0, p0, Lc8/CDn;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/CDn;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lc8/CDn;->locationManager:Lc8/CDn;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lc8/CDn;

    invoke-direct {v0, p0}, Lc8/CDn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/CDn;->locationManager:Lc8/CDn;

    .line 38
    :cond_0
    sget-object v0, Lc8/CDn;->locationManager:Lc8/CDn;

    return-object v0
.end method

.method private getLocationResult(Lcom/amap/api/location/AMapLocation;Lc8/BDn;)V
    .locals 4
    .param p1, "location"    # Lcom/amap/api/location/AMapLocation;
    .param p2, "locationCallback"    # Lc8/BDn;

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lc8/CDn;->locationInfo:Lc8/DDn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/DDn;->longitude:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lc8/CDn;->locationInfo:Lc8/DDn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/DDn;->latitude:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lc8/CDn;->locationInfo:Lc8/DDn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/DDn;->errorCode:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lc8/CDn;->locationInfo:Lc8/DDn;

    invoke-interface {p2, v0}, Lc8/BDn;->onCallbackSuccess(Lc8/DDn;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/CDn;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5b9a\u4f4d\u6210\u529f--\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u7ecf\u5ea6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/CDn;->locationInfo:Lc8/DDn;

    iget-object v1, v1, Lc8/DDn;->longitude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \u7eac\u5ea6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/CDn;->locationInfo:Lc8/DDn;

    iget-object v1, v1, Lc8/DDn;->latitude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/EDn;->d(Ljava/lang/String;)V

    .line 165
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lc8/CDn;->locationInfo:Lc8/DDn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/DDn;->errorCode:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lc8/CDn;->locationInfo:Lc8/DDn;

    iget-object v0, v0, Lc8/DDn;->errorCode:Ljava/lang/String;

    invoke-interface {p2, v0}, Lc8/BDn;->onCallbackFail(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/CDn;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5b9a\u4f4d\u5931\u8d25--\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u9519\u8bef\u7801\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/CDn;->locationInfo:Lc8/DDn;

    iget-object v1, v1, Lc8/DDn;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/EDn;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initLocation(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    :try_start_0
    invoke-static {p1}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "securityToken":Ljava/lang/String;
    invoke-static {p1, v1}, Lc8/sUc;->setUmidtoken(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LocationManager--securityToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/EDn;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1    # "securityToken":Ljava/lang/String;
    :goto_0
    new-instance v2, Lc8/hUc;

    invoke-direct {v2, p1}, Lc8/hUc;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lc8/CDn;->locationClient:Lc8/hUc;

    .line 52
    iget-object v2, p0, Lc8/CDn;->locationClient:Lc8/hUc;

    invoke-direct {p0}, Lc8/CDn;->getDefaultOption()Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/hUc;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 54
    iget-object v2, p0, Lc8/CDn;->locationClient:Lc8/hUc;

    iget-object v3, p0, Lc8/CDn;->locationListener:Lc8/jUc;

    invoke-virtual {v2, v3}, Lc8/hUc;->setLocationListener(Lc8/jUc;)V

    .line 55
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LocationManager-Umid-exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/EDn;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startLocation()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lc8/CDn;->locationClient:Lc8/hUc;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lc8/CDn;->locationClient:Lc8/hUc;

    invoke-virtual {v0}, Lc8/hUc;->startLocation()V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/CDn;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "--startLocation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/EDn;->d(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public getLocationInfo(Landroid/content/Context;Lc8/BDn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationCallback"    # Lc8/BDn;

    .prologue
    .line 168
    new-instance v0, Lc8/ADn;

    invoke-direct {v0, p0, p2}, Lc8/ADn;-><init>(Lc8/CDn;Lc8/BDn;)V

    iput-object v0, p0, Lc8/CDn;->locationListener:Lc8/jUc;

    .line 183
    invoke-direct {p0, p1}, Lc8/CDn;->initLocation(Landroid/content/Context;)V

    .line 184
    invoke-direct {p0}, Lc8/CDn;->startLocation()V

    .line 186
    return-void
.end method
