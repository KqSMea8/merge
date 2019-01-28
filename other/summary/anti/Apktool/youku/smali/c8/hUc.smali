.class public Lc8/hUc;
.super Ljava/lang/Object;
.source "AMapLocationClient.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Lc8/pUc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "AMapLocationClient 1"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/hUc;->a:Landroid/content/Context;

    iget-object v0, p0, Lc8/hUc;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/hUc;->a(Landroid/content/Context;Landroid/content/Intent;)Lc8/pUc;

    move-result-object v0

    iput-object v0, p0, Lc8/hUc;->b:Lc8/pUc;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "AMapLocationClient 2"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/hUc;->a:Landroid/content/Context;

    iget-object v0, p0, Lc8/hUc;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lc8/hUc;->a(Landroid/content/Context;Landroid/content/Intent;)Lc8/pUc;

    move-result-object v0

    iput-object v0, p0, Lc8/hUc;->b:Lc8/pUc;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Lc8/pUc;
    .locals 6

    :try_start_0
    invoke-static {}, Lc8/cFd;->b()Lc8/aGd;

    move-result-object v1

    invoke-static {p0, v1}, Lc8/rFd;->a(Landroid/content/Context;Lc8/aGd;)V

    invoke-static {p0}, Lc8/rFd;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lc8/rFd;->a(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    const-string/jumbo v2, "com.amap.api.location.LocationManagerWrapper"

    const-class v3, Lc8/nFd;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v5, v0

    const/4 v0, 0x1

    aput-object p1, v5, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc8/vDd;->a(Landroid/content/Context;Lc8/aGd;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/pUc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lc8/nFd;

    invoke-direct {v0, p0, p1}, Lc8/nFd;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lc8/nFd;

    invoke-direct {v0, p0, p1}, Lc8/nFd;-><init>(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lc8/nFd;

    invoke-direct {v0, p0, p1}, Lc8/nFd;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setApiKey(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sput-object p0, Lcom/amap/api/location/AMapLocationClientOption;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "setApiKey"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addGeoFenceAlert(Ljava/lang/String;DDFJLandroid/app/PendingIntent;)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lc8/pUc;->addGeoFenceAlert(Ljava/lang/String;DDFJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "addGeoFenceAlert"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLastKnownLocation()Lcom/amap/api/location/AMapLocation;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    invoke-interface {v0}, Lc8/pUc;->getLastKnownLocation()Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "getLastKnownLocation"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "3.4.0"

    return-object v0
.end method

.method public isStarted()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    invoke-interface {v0}, Lc8/pUc;->isStarted()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "isStarted"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    invoke-interface {v0}, Lc8/pUc;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    invoke-interface {v0, p1}, Lc8/pUc;->removeGeoFenceAlert(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "removeGeoFenceAlert 2"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    invoke-interface {v0, p1, p2}, Lc8/pUc;->removeGeoFenceAlert(Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "removeGeoFenceAlert 1"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocationListener(Lc8/jUc;)V
    .locals 3

    if-nez p1, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "setLocationListener"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    invoke-interface {v0, p1}, Lc8/pUc;->setLocationListener(Lc8/jUc;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 3

    if-nez p1, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "LocationManagerOption\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "setLocationOption"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    invoke-interface {v0, p1}, Lc8/pUc;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public startAssistantLocation()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    invoke-interface {v0}, Lc8/pUc;->startAssistantLocation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "startAssistantLocation"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startLocation()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    invoke-interface {v0}, Lc8/pUc;->startLocation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "startLocation"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopAssistantLocation()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    invoke-interface {v0}, Lc8/pUc;->stopAssistantLocation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "stopAssistantLocation"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLocation()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    invoke-interface {v0}, Lc8/pUc;->stopLocation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unRegisterLocationListener(Lc8/jUc;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hUc;->b:Lc8/pUc;

    invoke-interface {v0, p1}, Lc8/pUc;->unRegisterLocationListener(Lc8/jUc;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationClient"

    const-string/jumbo v2, "unRegisterLocationListener"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
