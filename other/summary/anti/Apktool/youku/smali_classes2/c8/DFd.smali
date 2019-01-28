.class public final Lc8/DFd;
.super Ljava/lang/Object;
.source "GPSLocation.java"


# instance fields
.field a:Landroid/os/Handler;

.field b:Landroid/location/LocationManager;

.field c:Lcom/amap/api/location/AMapLocationClientOption;

.field d:J

.field e:Z

.field f:Lc8/wEd;

.field g:Lc8/qFd;

.field h:I

.field i:I

.field j:J

.field k:Landroid/location/LocationListener;

.field l:I

.field m:Landroid/location/GpsStatus;

.field public n:Lcom/amap/api/location/AMapLocation;

.field private o:Landroid/content/Context;

.field private p:J

.field private q:I

.field private r:Landroid/location/GpsStatus$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lc8/DFd;->p:J

    iput-wide v4, p0, Lc8/DFd;->d:J

    iput-boolean v2, p0, Lc8/DFd;->e:Z

    iput v2, p0, Lc8/DFd;->q:I

    iput-object v1, p0, Lc8/DFd;->f:Lc8/wEd;

    iput-object v1, p0, Lc8/DFd;->g:Lc8/qFd;

    const/16 v0, 0xf0

    iput v0, p0, Lc8/DFd;->h:I

    const/16 v0, 0x50

    iput v0, p0, Lc8/DFd;->i:I

    iput-wide v4, p0, Lc8/DFd;->j:J

    new-instance v0, Lc8/BFd;

    invoke-direct {v0, p0}, Lc8/BFd;-><init>(Lc8/DFd;)V

    iput-object v0, p0, Lc8/DFd;->k:Landroid/location/LocationListener;

    iput v2, p0, Lc8/DFd;->l:I

    iput-object v1, p0, Lc8/DFd;->m:Landroid/location/GpsStatus;

    new-instance v0, Lc8/CFd;

    invoke-direct {v0, p0}, Lc8/CFd;-><init>(Lc8/DFd;)V

    iput-object v0, p0, Lc8/DFd;->r:Landroid/location/GpsStatus$Listener;

    iput-object v1, p0, Lc8/DFd;->n:Lcom/amap/api/location/AMapLocation;

    iput-object p1, p0, Lc8/DFd;->o:Landroid/content/Context;

    iput-object p2, p0, Lc8/DFd;->a:Landroid/os/Handler;

    iget-object v0, p0, Lc8/DFd;->o:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lc8/DFd;->b:Landroid/location/LocationManager;

    new-instance v0, Lc8/wEd;

    invoke-direct {v0}, Lc8/wEd;-><init>()V

    iput-object v0, p0, Lc8/DFd;->f:Lc8/wEd;

    new-instance v0, Lc8/qFd;

    invoke-direct {v0}, Lc8/qFd;-><init>()V

    iput-object v0, p0, Lc8/DFd;->g:Lc8/qFd;

    return-void
.end method

.method static synthetic a(Lc8/DFd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lc8/DFd;->o:Landroid/content/Context;

    return-object v0
.end method

.method private a(IILjava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Lc8/DFd;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/DFd;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "gps"

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    invoke-virtual {v1, p3}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lc8/DFd;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lc8/DFd;Lcom/amap/api/location/AMapLocation;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lc8/cFd;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/DFd;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/DFd;->o:Landroid/content/Context;

    new-instance v1, Lcom/amap/api/location/DPoint;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    invoke-static {v0, v1}, Lc8/dFd;->a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lc8/DFd;)J
    .locals 2

    iget-wide v0, p0, Lc8/DFd;->p:J

    return-wide v0
.end method

.method static synthetic b(Lc8/DFd;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 4

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    invoke-static {p1}, Lc8/uFd;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget v0, p0, Lc8/DFd;->q:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p1, v2}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    :cond_3
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {p1, v2}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    :cond_5
    iget-object v0, p0, Lc8/DFd;->f:Lc8/wEd;

    invoke-virtual {v0, p1}, Lc8/wEd;->a(Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    iget-object v1, p0, Lc8/DFd;->g:Lc8/qFd;

    invoke-virtual {v1, p1, v0}, Lc8/qFd;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V

    move-object p1, v0

    goto :goto_0
.end method

.method static synthetic c(Lc8/DFd;Lcom/amap/api/location/AMapLocation;)V
    .locals 2

    invoke-static {p1}, Lc8/uFd;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/DFd;->d:J

    iget v0, p0, Lc8/DFd;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/DFd;->q:I

    :cond_0
    return-void
.end method

.method static synthetic d(Lc8/DFd;Lcom/amap/api/location/AMapLocation;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lc8/cFd;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/DFd;->o:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "colde"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lc8/tFd;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lc8/cFd;->k:Z

    iget-object v0, p0, Lc8/DFd;->o:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "colde"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lc8/tFd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lc8/DFd;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lc8/DFd;->k:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/DFd;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lc8/DFd;->k:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    iget-object v0, p0, Lc8/DFd;->r:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/DFd;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lc8/DFd;->r:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    :cond_2
    iget-object v0, p0, Lc8/DFd;->a:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/DFd;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iput v4, p0, Lc8/DFd;->l:I

    iput-wide v2, p0, Lc8/DFd;->p:J

    iput-wide v2, p0, Lc8/DFd;->j:J

    iput-wide v2, p0, Lc8/DFd;->d:J

    iput v4, p0, Lc8/DFd;->q:I

    iget-object v0, p0, Lc8/DFd;->f:Lc8/wEd;

    invoke-virtual {v0}, Lc8/wEd;->a()V

    iget-object v0, p0, Lc8/DFd;->g:Lc8/qFd;

    invoke-virtual {v0}, Lc8/qFd;->a()V

    goto :goto_0
.end method

.method final b()V
    .locals 10

    const-wide/16 v8, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v0, p0, Lc8/DFd;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    :cond_0
    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/DFd;->p:J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lc8/DFd;->b:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-string/jumbo v2, "force_xtra_injection"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lc8/DFd;->b:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/DFd;->b:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x384

    const/4 v4, 0x0

    iget-object v5, p0, Lc8/DFd;->k:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v0, p0, Lc8/DFd;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lc8/DFd;->r:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    const/16 v1, 0x8

    const/16 v2, 0xe

    const-string/jumbo v3, "no enough satellites"

    iget-object v0, p0, Lc8/DFd;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lc8/DFd;->a(IILjava/lang/String;J)V

    :goto_2
    return-void

    :cond_2
    const-string/jumbo v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    const/16 v2, 0xe

    const-string/jumbo v3, "no gps provider"

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lc8/DFd;->a(IILjava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    const/16 v2, 0xc

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Lc8/DFd;->a(IILjava/lang/String;J)V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v1, "GPSLocation"

    const-string/jumbo v2, "requestLocationUpdates part2"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lc8/DFd;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
