.class public final Lc8/BFd;
.super Ljava/lang/Object;
.source "GPSLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/DFd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc8/DFd;


# direct methods
.method constructor <init>(Lc8/DFd;)V
    .locals 0

    iput-object p1, p0, Lc8/BFd;->a:Lc8/DFd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 12

    const-wide/16 v10, 0x1f40

    const/16 v8, 0xf

    const/4 v0, 0x0

    iget-object v1, p0, Lc8/BFd;->a:Lc8/DFd;

    iget-object v1, v1, Lc8/DFd;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/BFd;->a:Lc8/DFd;

    iget-object v1, v1, Lc8/DFd;->a:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v1, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "satellites"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_2
    iget-object v2, p0, Lc8/BFd;->a:Lc8/DFd;

    iget-boolean v2, v2, Lc8/DFd;->e:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lc8/BFd;->a:Lc8/DFd;

    invoke-static {v2}, Lc8/DFd;->a(Lc8/DFd;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v4

    iget-object v3, p0, Lc8/BFd;->a:Lc8/DFd;

    invoke-static {v3}, Lc8/DFd;->b(Lc8/DFd;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lc8/qFd;->a(Landroid/content/Context;J)V

    iget-object v2, p0, Lc8/BFd;->a:Lc8/DFd;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lc8/DFd;->e:Z

    :cond_3
    iget-object v2, p0, Lc8/BFd;->a:Lc8/DFd;

    iget v2, v2, Lc8/DFd;->l:I

    invoke-static {p1, v2}, Lc8/uFd;->a(Landroid/location/Location;I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setMock(Z)V

    iget-object v2, p0, Lc8/BFd;->a:Lc8/DFd;

    iget-object v2, v2, Lc8/DFd;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    const/16 v3, 0x868

    invoke-static {v2, v3}, Lc8/qFd;->a(Ljava/lang/String;I)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string/jumbo v2, "GPSLocation has been mocked!"

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    :cond_4
    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setSatellites(I)V

    iget-object v0, p0, Lc8/BFd;->a:Lc8/DFd;

    invoke-static {v0, v1}, Lc8/DFd;->a(Lc8/DFd;Lcom/amap/api/location/AMapLocation;)V

    iget-object v0, p0, Lc8/BFd;->a:Lc8/DFd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v2, v0, Lc8/DFd;->l:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_a

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lc8/BFd;->a:Lc8/DFd;

    invoke-static {v0, v1}, Lc8/DFd;->b(Lc8/DFd;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    iget-object v1, p0, Lc8/BFd;->a:Lc8/DFd;

    invoke-static {v1, v0}, Lc8/DFd;->c(Lc8/DFd;Lcom/amap/api/location/AMapLocation;)V

    iget-object v1, p0, Lc8/BFd;->a:Lc8/DFd;

    invoke-static {v0}, Lc8/uFd;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lc8/DFd;->a:Landroid/os/Handler;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lc8/DFd;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v2

    iget-object v4, v1, Lc8/DFd;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-lez v4, :cond_5

    iget-wide v4, v1, Lc8/DFd;->j:J

    sub-long/2addr v2, v4

    iget-object v4, v1, Lc8/DFd;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v4

    sub-long/2addr v4, v10

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    :cond_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "lat"

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v3, "lon"

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v2, 0x5

    iput v2, v3, Landroid/os/Message;->what:I

    iget-object v2, v1, Lc8/DFd;->n:Lcom/amap/api/location/AMapLocation;

    if-nez v2, :cond_c

    iget-object v1, v1, Lc8/DFd;->a:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    :goto_2
    iget-object v1, p0, Lc8/BFd;->a:Lc8/DFd;

    iget-object v2, p0, Lc8/BFd;->a:Lc8/DFd;

    iget-object v2, v2, Lc8/DFd;->n:Lcom/amap/api/location/AMapLocation;

    if-eqz v2, :cond_7

    iget-object v3, v1, Lc8/DFd;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v0, v2}, Lc8/uFd;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v3

    iget v1, v1, Lc8/DFd;->h:I

    int-to-float v1, v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_7

    invoke-static {v0, v2}, Lc8/cFd;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    :cond_7
    iget-object v1, p0, Lc8/BFd;->a:Lc8/DFd;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    if-ne v2, v8, :cond_8

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v3, v1, Lc8/DFd;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v2

    iget-wide v4, v1, Lc8/DFd;->j:J

    sub-long/2addr v2, v4

    iget-object v4, v1, Lc8/DFd;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v4

    const-wide/16 v6, 0xc8

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_9

    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lc8/DFd;->j:J

    iget-object v2, v1, Lc8/DFd;->a:Landroid/os/Handler;

    if-eqz v2, :cond_9

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v1, v1, Lc8/DFd;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_9
    iget-object v1, p0, Lc8/BFd;->a:Lc8/DFd;

    invoke-static {v1, v0}, Lc8/DFd;->d(Lc8/DFd;Lcom/amap/api/location/AMapLocation;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GPSLocation"

    const-string/jumbo v2, "onLocationChanged"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    :try_start_3
    iget v0, v0, Lc8/DFd;->l:I

    if-nez v0, :cond_b

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :cond_c
    :try_start_4
    iget-object v2, v1, Lc8/DFd;->n:Lcom/amap/api/location/AMapLocation;

    invoke-static {v0, v2}, Lc8/uFd;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v2

    iget v4, v1, Lc8/DFd;->i:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    iget-object v1, v1, Lc8/DFd;->a:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/BFd;->a:Lc8/DFd;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lc8/DFd;->d:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GPSLocation"

    const-string/jumbo v2, "onProviderDisabled"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4

    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lc8/BFd;->a:Lc8/DFd;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lc8/DFd;->d:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GPSLocation"

    const-string/jumbo v2, "onStatusChanged"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
