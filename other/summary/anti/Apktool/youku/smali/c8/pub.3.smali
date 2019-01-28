.class public Lc8/pub;
.super Ljava/lang/Object;
.source "DefaultLocation.java"

# interfaces
.implements Lc8/sub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/oub;
    }
.end annotation


# static fields
.field private static final GPS_TIMEOUT:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "DefaultLocation"

.field private static final TIME_OUT_WHAT:I = 0x11


# instance fields
.field private MIN_DISTANCE:I

.field private MIN_TIME:I

.field private mLocationManager:Landroid/location/LocationManager;

.field private mRegisterSucCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/oub;",
            ">;"
        }
    .end annotation
.end field

.field private mWXLocationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/oub;",
            ">;"
        }
    .end annotation
.end field

.field private mWXSDKInstance:Lc8/nVf;


# direct methods
.method public constructor <init>(Lc8/nVf;)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/pub;->mRegisterSucCallbacks:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/pub;->mWXLocationListeners:Ljava/util/List;

    .line 44
    const/16 v0, 0x4e20

    iput v0, p0, Lc8/pub;->MIN_TIME:I

    .line 45
    const/4 v0, 0x5

    iput v0, p0, Lc8/pub;->MIN_DISTANCE:I

    .line 48
    iput-object p1, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    .line 49
    return-void
.end method

.method public static checkSelfPermission(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 389
    if-eqz p0, :cond_0

    .line 390
    :try_start_0
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 396
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private findLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lc8/oub;
    .locals 13
    .param p1, "watchId"    # Ljava/lang/String;
    .param p2, "sucCallback"    # Ljava/lang/String;
    .param p3, "errorCallback"    # Ljava/lang/String;
    .param p4, "enableHighAccuracy"    # Z
    .param p5, "enableAddress"    # Z

    .prologue
    .line 82
    const-string/jumbo v3, "DefaultLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "into--[findLocation] mWatchId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\nsuccessCallback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\nerrorCallback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\nenableHighAccuracy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\nmEnableAddress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lc8/pub;->mLocationManager:Landroid/location/LocationManager;

    if-nez v3, :cond_3

    .line 86
    iget-object v3, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v3}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_2

    .line 87
    :cond_0
    const/4 v2, 0x0

    .line 127
    :cond_1
    :goto_0
    return-object v2

    .line 91
    :cond_2
    iget-object v3, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v3}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, Lc8/pub;->mLocationManager:Landroid/location/LocationManager;

    .line 93
    :cond_3
    new-instance v10, Landroid/location/Criteria;

    invoke-direct {v10}, Landroid/location/Criteria;-><init>()V

    .line 94
    .local v10, "criteria":Landroid/location/Criteria;
    if-eqz p4, :cond_4

    .line 95
    const/4 v3, 0x2

    invoke-virtual {v10, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 99
    :cond_4
    iget-object v3, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v3}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lc8/pub;->checkSelfPermission(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 100
    new-instance v2, Lc8/oub;

    iget-object v3, p0, Lc8/pub;->mLocationManager:Landroid/location/LocationManager;

    iget-object v4, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    const/4 v9, 0x0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lc8/oub;-><init>(Landroid/location/LocationManager;Lc8/nVf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc8/mub;)V

    .line 102
    .local v2, "WXLocationListener":Lc8/oub;
    :try_start_0
    iget-object v3, p0, Lc8/pub;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lc8/pub;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v3

    const-string/jumbo v4, "gps"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 103
    iget-object v4, p0, Lc8/pub;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v5, "gps"

    iget v3, p0, Lc8/pub;->MIN_TIME:I

    int-to-long v6, v3

    iget v3, p0, Lc8/pub;->MIN_DISTANCE:I

    int-to-float v8, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 105
    :cond_5
    iget-object v3, p0, Lc8/pub;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lc8/pub;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v3

    const-string/jumbo v4, "network"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    iget-object v4, p0, Lc8/pub;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v5, "network"

    iget v3, p0, Lc8/pub;->MIN_TIME:I

    int-to-long v6, v3

    iget v3, p0, Lc8/pub;->MIN_DISTANCE:I

    int-to-float v8, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 108
    :catch_0
    move-exception v11

    .line 109
    .local v11, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v12, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "errorCode"

    const/16 v4, 0x232b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v3, "errorMsg"

    const-string/jumbo v4, "LOCATION_FAIL"

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v3, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    if-eqz v3, :cond_6

    .line 113
    new-instance v3, Lc8/KWf;

    iget-object v4, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v4}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-direct {v3, v4, v0}, Lc8/KWf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Lc8/KWf;->invoke(Ljava/lang/Object;)V

    .line 115
    :cond_6
    const/4 v2, 0x0

    .line 116
    const-string/jumbo v3, "DefaultLocation"

    invoke-static {v11}, Lc8/xgg;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    .end local v2    # "WXLocationListener":Lc8/oub;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 121
    .restart local v12    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "errorCode"

    const v4, 0x15f91

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v3, "errorMsg"

    const-string/jumbo v4, "NO PERMISSION"

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v3, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    if-eqz v3, :cond_8

    .line 124
    new-instance v3, Lc8/KWf;

    iget-object v4, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v4}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-direct {v3, v4, v0}, Lc8/KWf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Lc8/KWf;->invoke(Ljava/lang/Object;)V

    .line 127
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public clearWatch(Ljava/lang/String;)V
    .locals 3
    .param p1, "watchId"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "into--[clearWatch] mWatchId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->isDestroy()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/pub;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/pub;->checkSelfPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lc8/pub;->mRegisterSucCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/oub;

    .line 166
    .local v0, "listener":Lc8/oub;
    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {v0}, Lc8/oub;->destroy()V

    .line 168
    iget-object v1, p0, Lc8/pub;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 170
    :cond_2
    iget-object v1, p0, Lc8/pub;->mRegisterSucCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 176
    const-string/jumbo v2, "into--[destroy]"

    invoke-static {v2}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->isDestroy()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lc8/pub;->mLocationManager:Landroid/location/LocationManager;

    if-nez v2, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v2, p0, Lc8/pub;->mWXLocationListeners:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lc8/pub;->mWXLocationListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 183
    iget-object v2, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/pub;->checkSelfPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    iget-object v2, p0, Lc8/pub;->mWXLocationListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/oub;

    .line 185
    .local v0, "listener":Lc8/oub;
    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {v0}, Lc8/oub;->destroy()V

    .line 187
    iget-object v3, p0, Lc8/pub;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_1

    .line 190
    .end local v0    # "listener":Lc8/oub;
    :cond_3
    iget-object v2, p0, Lc8/pub;->mWXLocationListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 194
    :cond_4
    iget-object v2, p0, Lc8/pub;->mRegisterSucCallbacks:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/pub;->mRegisterSucCallbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 195
    iget-object v2, p0, Lc8/pub;->mRegisterSucCallbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 197
    .local v1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/aliweex/adapter/module/location/DefaultLocation$WXLocationListener;>;"
    iget-object v2, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/pub;->checkSelfPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/oub;

    .line 199
    .restart local v0    # "listener":Lc8/oub;
    invoke-virtual {v0}, Lc8/oub;->destroy()V

    .line 200
    iget-object v3, p0, Lc8/pub;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_2

    .line 202
    .end local v0    # "listener":Lc8/oub;
    :cond_5
    iget-object v2, p0, Lc8/pub;->mRegisterSucCallbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public getCurrentPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "successCallback"    # Ljava/lang/String;
    .param p2, "errorCallback"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string/jumbo v0, "DefaultLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "into--[getCurrentPosition] successCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \nerrorCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \nparams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    .local v7, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v0, "enableHighAccuracy"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 63
    .local v4, "enableHighAccuracy":Z
    const-string/jumbo v0, "address"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 64
    .local v5, "enableAddress":Z
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lc8/pub;->findLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lc8/oub;

    move-result-object v8

    .line 65
    .local v8, "listener":Lc8/oub;
    if-eqz v8, :cond_0

    .line 66
    iget-object v0, p0, Lc8/pub;->mWXLocationListeners:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v4    # "enableHighAccuracy":Z
    .end local v5    # "enableAddress":Z
    .end local v7    # "jsObj":Lorg/json/JSONObject;
    .end local v8    # "listener":Lc8/oub;
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v6

    .line 70
    .local v6, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "DefaultLocation"

    invoke-static {v0, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v9, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "errorCode"

    const v1, 0x15f92

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v0, "errorMsg"

    const-string/jumbo v1, "PARAMS_ERROR"

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lc8/KWf;

    iget-object v1, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lc8/KWf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lc8/KWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setWXSDKInstance(Lc8/nVf;)V
    .locals 0
    .param p1, "WXSDKInstance"    # Lc8/nVf;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    .line 54
    return-void
.end method

.method public watchPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "successCallback"    # Ljava/lang/String;
    .param p2, "errorCallback"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "into--[watchPosition] successCallback:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " errorCallback:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\nparams:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 133
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    .local v7, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v0, "enableHighAccuracy"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 137
    .local v4, "enableHighAccuracy":Z
    const-string/jumbo v0, "address"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 139
    .local v5, "enableAddress":Z
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "id":Ljava/lang/String;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 140
    invoke-direct/range {v0 .. v5}, Lc8/pub;->findLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lc8/oub;

    move-result-object v8

    .line 141
    .local v8, "listener":Lc8/oub;
    if-eqz v8, :cond_0

    .line 142
    iget-object v0, p0, Lc8/pub;->mRegisterSucCallbacks:Ljava/util/Map;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v1    # "id":Ljava/lang/String;
    .end local v4    # "enableHighAccuracy":Z
    .end local v5    # "enableAddress":Z
    .end local v7    # "jsObj":Lorg/json/JSONObject;
    .end local v8    # "listener":Lc8/oub;
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v6

    .line 146
    .local v6, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "DefaultLocation"

    invoke-static {v0, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v9, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "errorCode"

    const v2, 0x15f92

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v0, "errorMsg"

    const-string/jumbo v2, "PARAMS_ERROR"

    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Lc8/KWf;

    iget-object v2, p0, Lc8/pub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Lc8/KWf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lc8/KWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method
