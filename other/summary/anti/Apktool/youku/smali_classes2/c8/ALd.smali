.class public Lc8/ALd;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lc8/ALd;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/ALd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    const-string/jumbo v1, "phone"

    .line 187
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 189
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 192
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getJsonSafeObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 65
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    .line 99
    .end local p0    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 67
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    if-nez p0, :cond_2

    .line 68
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    .line 69
    :cond_2
    instance-of v4, p0, Lorg/json/JSONObject;

    if-nez v4, :cond_0

    instance-of v4, p0, Lorg/json/JSONArray;

    if-nez v4, :cond_0

    .line 71
    instance-of v4, p0, Ljava/util/Collection;

    if-eqz v4, :cond_4

    .line 72
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 73
    .local v3, "retArray":Lorg/json/JSONArray;
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "entry":Ljava/lang/Object;
    invoke-static {v0}, Lc8/ALd;->getJsonSafeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .end local v0    # "entry":Ljava/lang/Object;
    :cond_3
    move-object p0, v3

    .line 76
    goto :goto_0

    .line 77
    .end local v3    # "retArray":Lorg/json/JSONArray;
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 78
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 79
    .restart local v3    # "retArray":Lorg/json/JSONArray;
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 80
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 81
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lc8/ALd;->getJsonSafeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move-object p0, v3

    .line 83
    goto :goto_0

    .line 84
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "retArray":Lorg/json/JSONArray;
    :cond_6
    instance-of v4, p0, Ljava/util/Map;

    if-eqz v4, :cond_7

    .line 85
    check-cast p0, Ljava/util/Map;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Lc8/ALd;->mapToJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    .line 86
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_7
    instance-of v4, p0, Ljava/lang/Boolean;

    if-nez v4, :cond_0

    instance-of v4, p0, Ljava/lang/Byte;

    if-nez v4, :cond_0

    instance-of v4, p0, Ljava/lang/Character;

    if-nez v4, :cond_0

    instance-of v4, p0, Ljava/lang/Double;

    if-nez v4, :cond_0

    instance-of v4, p0, Ljava/lang/Float;

    if-nez v4, :cond_0

    instance-of v4, p0, Ljava/lang/Integer;

    if-nez v4, :cond_0

    instance-of v4, p0, Ljava/lang/Long;

    if-nez v4, :cond_0

    instance-of v4, p0, Ljava/lang/Short;

    if-nez v4, :cond_0

    instance-of v4, p0, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getPackage(Ljava/lang/Class;)Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "java."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 99
    :cond_8
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method public static getLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 203
    const-string/jumbo v6, "location"

    .line 204
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 206
    .local v3, "locationManager":Landroid/location/LocationManager;
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 207
    .local v0, "criteria":Landroid/location/Criteria;
    invoke-virtual {v0, v10}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 208
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 210
    invoke-virtual {v3, v0, v10}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "provider":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 214
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 215
    .local v2, "location":Landroid/location/Location;
    sget-object v6, Lc8/ALd;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Location found: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v6, v7, v8}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v2    # "location":Landroid/location/Location;
    :goto_0
    return-object v2

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "ex":Ljava/lang/SecurityException;
    sget-object v6, Lc8/ALd;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed to retrieve location: %s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v5

    .line 219
    goto :goto_0

    .line 223
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :cond_0
    sget-object v6, Lc8/ALd;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Location Manager provider is null."

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v5

    .line 224
    goto :goto_0
.end method

.method public static getTimestamp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUTF8Length(Ljava/lang/String;)J
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x4

    .line 110
    const-wide/16 v2, 0x0

    .line 111
    .local v2, "len":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 112
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 113
    .local v0, "code":C
    const/16 v4, 0x7f

    if-gt v0, v4, :cond_0

    .line 114
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 111
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_0
    const/16 v4, 0x7ff

    if-gt v0, v4, :cond_1

    .line 116
    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    goto :goto_1

    .line 117
    :cond_1
    const v4, 0xd800

    if-lt v0, v4, :cond_2

    const v4, 0xdfff

    if-gt v0, v4, :cond_2

    .line 120
    add-long/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    :cond_2
    const v4, 0xffff

    if-ge v0, v4, :cond_3

    .line 122
    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    goto :goto_1

    .line 124
    :cond_3
    add-long/2addr v2, v6

    goto :goto_1

    .line 127
    .end local v0    # "code":C
    :cond_4
    return-wide v2
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 161
    sget-object v6, Lc8/ALd;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Checking tracker internet connectivity."

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lc8/yLd;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    const-string/jumbo v6, "connectivity"

    .line 164
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 167
    .local v0, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 168
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 169
    .local v1, "connected":Z
    :goto_0
    sget-object v6, Lc8/ALd;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Tracker connection online: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v1    # "connected":Z
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :goto_1
    return v1

    .restart local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_0
    move v1, v5

    .line 168
    goto :goto_0

    .line 171
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v6, Lc8/ALd;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Security exception checking connection: %s"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v6, v7, v8}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v4

    .line 173
    goto :goto_1
.end method

.method public static isTimeInRange(JJJ)Z
    .locals 2
    .param p0, "startTime"    # J
    .param p2, "checkTime"    # J
    .param p4, "range"    # J

    .prologue
    .line 244
    sub-long v0, p2, p4

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mapToJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 11
    .param p0, "map"    # Ljava/util/Map;

    .prologue
    .line 38
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_1

    .line 39
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 53
    :cond_0
    return-object v4

    .line 41
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v4, "retObject":Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 43
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 44
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 45
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lc8/ALd;->getJsonSafeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 47
    .local v5, "value":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    sget-object v7, Lc8/ALd;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Could not put key \'%s\' and value \'%s\' into new JSONObject: %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    aput-object v0, v9, v10

    invoke-static {v7, v8, v9}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
