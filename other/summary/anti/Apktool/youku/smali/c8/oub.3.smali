.class public Lc8/oub;
.super Ljava/lang/Object;
.source "DefaultLocation.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/pub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WXLocationListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableAddress:Z

.field private mErrorCallback:Lc8/KWf;

.field private mHandler:Landroid/os/Handler;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mSucCallback:Lc8/KWf;

.field private mWatchId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/location/LocationManager;Lc8/nVf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "locationManager"    # Landroid/location/LocationManager;
    .param p2, "instance"    # Lc8/nVf;
    .param p3, "watchId"    # Ljava/lang/String;
    .param p4, "sucCallback"    # Ljava/lang/String;
    .param p5, "errorCallback"    # Ljava/lang/String;
    .param p6, "enableAddress"    # Z

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object v0, p0, Lc8/oub;->mContext:Landroid/content/Context;

    .line 211
    iput-object v0, p0, Lc8/oub;->mSucCallback:Lc8/KWf;

    .line 212
    iput-object v0, p0, Lc8/oub;->mErrorCallback:Lc8/KWf;

    .line 218
    iput-object p3, p0, Lc8/oub;->mWatchId:Ljava/lang/String;

    .line 219
    if-eqz p2, :cond_0

    .line 220
    new-instance v0, Lc8/KWf;

    invoke-virtual {p2}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lc8/KWf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/oub;->mSucCallback:Lc8/KWf;

    .line 221
    new-instance v0, Lc8/KWf;

    invoke-virtual {p2}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p5}, Lc8/KWf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/oub;->mErrorCallback:Lc8/KWf;

    .line 222
    invoke-virtual {p2}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/oub;->mContext:Landroid/content/Context;

    .line 224
    :cond_0
    iput-boolean p6, p0, Lc8/oub;->mEnableAddress:Z

    .line 225
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/oub;->mHandler:Landroid/os/Handler;

    .line 226
    iput-object p1, p0, Lc8/oub;->mLocationManager:Landroid/location/LocationManager;

    .line 227
    invoke-static {}, Lc8/wH;->getInstance()Lc8/wH;

    move-result-object v0

    new-instance v1, Lc8/nub;

    invoke-direct {v1, p0}, Lc8/nub;-><init>(Lc8/oub;)V

    invoke-virtual {v0, v1}, Lc8/wH;->execute(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method synthetic constructor <init>(Landroid/location/LocationManager;Lc8/nVf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc8/mub;)V
    .locals 0
    .param p1, "x0"    # Landroid/location/LocationManager;
    .param p2, "x1"    # Lc8/nVf;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Lc8/mub;

    .prologue
    .line 207
    invoke-direct/range {p0 .. p6}, Lc8/oub;-><init>(Landroid/location/LocationManager;Lc8/nVf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lc8/oub;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/oub;

    .prologue
    .line 207
    iget-object v0, p0, Lc8/oub;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getAddress(DD)Landroid/location/Address;
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    const/4 v8, 0x0

    .line 363
    const-string/jumbo v2, "DefaultLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "into--[getAddress] latitude:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " longitude:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :try_start_0
    iget-object v2, p0, Lc8/oub;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    move-object v2, v8

    .line 376
    :goto_0
    return-object v2

    .line 368
    :cond_0
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lc8/oub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 369
    .local v1, "gc":Landroid/location/Geocoder;
    const/4 v6, 0x1

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 370
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 371
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    .end local v1    # "gc":Landroid/location/Geocoder;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DefaultLocation"

    invoke-static {v2, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v2, v8

    .line 376
    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lc8/oub;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lc8/oub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/oub;->mContext:Landroid/content/Context;

    .line 384
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 334
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 335
    const-string/jumbo v2, "DefaultLocation"

    const-string/jumbo v3, "into--[handleMessage] Location Time Out!"

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v2, p0, Lc8/oub;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/oub;->mLocationManager:Landroid/location/LocationManager;

    if-nez v2, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v1

    .line 339
    :cond_1
    iget-object v2, p0, Lc8/oub;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/pub;->checkSelfPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    iget-object v2, p0, Lc8/oub;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 342
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 343
    .local v0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "errorCode"

    const/16 v3, 0x232c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string/jumbo v2, "errorMsg"

    const-string/jumbo v3, "LOCATION_TIME_OUT"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v2, p0, Lc8/oub;->mWatchId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 346
    const-string/jumbo v2, "watchId"

    iget-object v3, p0, Lc8/oub;->mWatchId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_3
    iget-object v2, p0, Lc8/oub;->mErrorCallback:Lc8/KWf;

    if-eqz v2, :cond_4

    .line 349
    iget-object v2, p0, Lc8/oub;->mErrorCallback:Lc8/KWf;

    invoke-virtual {v2, v0}, Lc8/KWf;->invoke(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .end local v0    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 18
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 236
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/oub;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x11

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    const-string/jumbo v15, "DefaultLocation"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "into--[onLocationChanged] location:"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1

    const-string/jumbo v14, "Location is NULL!"

    :goto_0
    invoke-static {v15, v14}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    if-eqz p1, :cond_a

    .line 240
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v12, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v4, "coords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    .line 243
    .local v10, "longitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    .line 244
    .local v8, "latitude":D
    const-string/jumbo v14, "longitude"

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo v14, "latitude"

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string/jumbo v14, "altitude"

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string/jumbo v14, "accuracy"

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string/jumbo v14, "heading"

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string/jumbo v14, "speed"

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string/jumbo v14, "coords"

    invoke-interface {v12, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lc8/oub;->mEnableAddress:Z

    if-eqz v14, :cond_4

    .line 254
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10, v11}, Lc8/oub;->getAddress(DD)Landroid/location/Address;

    move-result-object v2

    .line 255
    .local v2, "addr":Landroid/location/Address;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 256
    .local v3, "address":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_3

    .line 257
    const-string/jumbo v14, "country"

    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string/jumbo v14, "province"

    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string/jumbo v14, "city"

    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string/jumbo v14, "cityCode"

    invoke-virtual {v2}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string/jumbo v14, "area"

    invoke-virtual {v2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string/jumbo v14, "road"

    invoke-virtual {v2}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v13, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    const/4 v14, 0x2

    if-gt v5, v14, :cond_2

    .line 266
    invoke-virtual {v2, v5}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 267
    invoke-virtual {v2, v5}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 237
    .end local v2    # "addr":Landroid/location/Address;
    .end local v3    # "address":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "coords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "i":I
    .end local v8    # "latitude":D
    .end local v10    # "longitude":D
    .end local v12    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 270
    .restart local v2    # "addr":Landroid/location/Address;
    .restart local v3    # "address":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "coords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "i":I
    .restart local v8    # "latitude":D
    .restart local v10    # "longitude":D
    .restart local v12    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v13    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const-string/jumbo v14, "addressLine"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .end local v5    # "i":I
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const-string/jumbo v14, "address"

    invoke-interface {v12, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .end local v2    # "addr":Landroid/location/Address;
    .end local v3    # "address":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    const-string/jumbo v14, "errorCode"

    const v15, 0x15f90

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string/jumbo v14, "errorMsg"

    const-string/jumbo v15, "SUCCESS"

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/oub;->mWatchId:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 277
    const-string/jumbo v14, "watchId"

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/oub;->mWatchId:Ljava/lang/String;

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/oub;->mSucCallback:Lc8/KWf;

    if-eqz v14, :cond_6

    .line 281
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/oub;->mWatchId:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v6, 0x0

    .line 282
    .local v6, "isKeepAlive":Z
    :goto_2
    if-eqz v6, :cond_9

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/oub;->mSucCallback:Lc8/KWf;

    invoke-virtual {v14, v12}, Lc8/KWf;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 304
    .end local v4    # "coords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "isKeepAlive":Z
    .end local v8    # "latitude":D
    .end local v10    # "longitude":D
    .end local v12    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/oub;->mWatchId:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/oub;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_7

    .line 305
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/oub;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lc8/pub;->checkSelfPermission(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/oub;->mLocationManager:Landroid/location/LocationManager;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 314
    :cond_7
    return-void

    .line 281
    .restart local v4    # "coords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "latitude":D
    .restart local v10    # "longitude":D
    .restart local v12    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_8
    const/4 v6, 0x1

    goto :goto_2

    .line 285
    .restart local v6    # "isKeepAlive":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/oub;->mSucCallback:Lc8/KWf;

    invoke-virtual {v14, v12}, Lc8/KWf;->invoke(Ljava/lang/Object;)V

    goto :goto_3

    .line 289
    .end local v4    # "coords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "isKeepAlive":Z
    .end local v8    # "latitude":D
    .end local v10    # "longitude":D
    .end local v12    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 290
    .local v7, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v14, "errorCode"

    const/16 v15, 0x232b

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string/jumbo v14, "errorMsg"

    const-string/jumbo v15, "LOCATION_FAIL"

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/oub;->mWatchId:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 293
    const-string/jumbo v14, "watchId"

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/oub;->mWatchId:Ljava/lang/String;

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/oub;->mErrorCallback:Lc8/KWf;

    if-eqz v14, :cond_6

    .line 296
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/oub;->mWatchId:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_c

    const/4 v6, 0x0

    .line 297
    .restart local v6    # "isKeepAlive":Z
    :goto_4
    if-eqz v6, :cond_d

    .line 298
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/oub;->mErrorCallback:Lc8/KWf;

    invoke-virtual {v14, v7}, Lc8/KWf;->invokeAndKeepAlive(Ljava/lang/Object;)V

    goto :goto_3

    .line 296
    .end local v6    # "isKeepAlive":Z
    :cond_c
    const/4 v6, 0x1

    goto :goto_4

    .line 300
    .restart local v6    # "isKeepAlive":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/oub;->mErrorCallback:Lc8/KWf;

    invoke-virtual {v14, v7}, Lc8/KWf;->invoke(Ljava/lang/Object;)V

    goto/16 :goto_3
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 328
    const-string/jumbo v0, "DefaultLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "into--[onProviderDisabled] provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 323
    const-string/jumbo v0, "DefaultLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "into--[onProviderEnabled] provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 318
    const-string/jumbo v0, "DefaultLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "into--[onStatusChanged] provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method
