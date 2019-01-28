.class public Lc8/owk;
.super Ljava/lang/Object;
.source "UTFreeFlowMgr.java"


# static fields
.field public static SDKSTART:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "-1"

    sput-object v0, Lc8/owk;->SDKSTART:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeVideoUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 6
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "quality"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "starTime"    # J

    .prologue
    .line 94
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "videoid"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v2, "quality"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v2, "error_url"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v2, "error_code"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v2, "request_duration"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v2, "request_method"

    const-string/jumbo v3, "4"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {v0}, Lc8/owk;->push(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0    # "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getCarrierID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    invoke-static {}, Lc8/Iin;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lc8/Iin;->isWifi()Z

    move-result v1

    if-nez v1, :cond_3

    .line 199
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Dvk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lc8/pwk;->getOperatorType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string/jumbo v1, "-1"

    .line 211
    :goto_0
    return-object v1

    .line 203
    :cond_0
    const-string/jumbo v1, "mobile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    const-string/jumbo v1, "1"

    goto :goto_0

    .line 205
    :cond_1
    const-string/jumbo v1, "unicom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    const-string/jumbo v1, "2"

    goto :goto_0

    .line 207
    :cond_2
    const-string/jumbo v1, "telecom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    const-string/jumbo v1, "3"

    goto :goto_0

    .line 211
    :cond_3
    const-string/jumbo v1, "-1"

    goto :goto_0
.end method

.method private static getNetworkID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lc8/Iin;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/Iin;->isWifi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const-string/jumbo v0, "2"

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "1"

    goto :goto_0
.end method

.method private static getSDKVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 151
    :try_start_0
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Dvk;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 152
    .local v2, "manager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Dvk;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 153
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method private static getUTRestData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    const-string/jumbo v1, "-1"

    .line 177
    .local v1, "restStr":Ljava/lang/String;
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Dvk;->queryFreeFlowResultCompletionhandler()Lc8/Avk;

    move-result-object v2

    iget-object v0, v2, Lc8/Avk;->restData:Ljava/lang/String;

    .line 178
    .local v0, "restData":Ljava/lang/String;
    const-string/jumbo v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    const-string/jumbo v1, "4"

    .line 189
    :cond_0
    :goto_0
    return-object v1

    .line 180
    :cond_1
    const-string/jumbo v2, "10"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    const-string/jumbo v1, "3"

    goto :goto_0

    .line 182
    :cond_2
    const-string/jumbo v2, "20"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    const-string/jumbo v1, "2"

    goto :goto_0

    .line 184
    :cond_3
    const-string/jumbo v2, "50"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 185
    const-string/jumbo v1, "1"

    goto :goto_0

    .line 186
    :cond_4
    const-string/jumbo v2, "100"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method private static isFreeFlow()Z
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Dvk;->isFreeFlow()Z

    move-result v0

    return v0
.end method

.method public static mobileUpdate(Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "starTime"    # J
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "sdkstart"

    sget-object v3, Lc8/owk;->SDKSTART:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v2, "request_step"

    sget-object v3, Lc8/owk;->SDKSTART:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Dvk;->isMobileRelateShip()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    const-string/jumbo v2, "rest_data"

    invoke-static {}, Lc8/owk;->getUTRestData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    const-string/jumbo v2, "error_code"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v2, "request_duration"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v2, "request_method"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {v0}, Lc8/owk;->push(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static push(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v0, "pid"

    sget-object v1, Lc8/NHg;->pid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v0, "app_version"

    sget-object v1, Lc8/NHg;->appver:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string/jumbo v0, "sdk_version"

    invoke-static {}, Lc8/owk;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v0, "platform"

    const-string/jumbo v1, "2"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v0, "carrier_type"

    invoke-static {}, Lc8/owk;->getCarrierID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v0, "userid"

    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Dvk;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string/jumbo v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string/jumbo v0, "network"

    invoke-static {}, Lc8/owk;->getNetworkID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v1, "product_id"

    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Dvk;->queryFreeFlowResultCompletionhandler()Lc8/Avk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Dvk;->queryFreeFlowResultCompletionhandler()Lc8/Avk;

    move-result-object v0

    iget-object v0, v0, Lc8/Avk;->productId:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v1, "is_freeflow"

    invoke-static {}, Lc8/owk;->isFreeFlow()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    :goto_1
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v1, "subscription_status"

    invoke-static {}, Lc8/owk;->isFreeFlow()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "1"

    :goto_2
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v0, "freeflowsdk"

    const/16 v1, 0x4e1f

    const-string/jumbo v2, "freeflowsdk"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "subscription_status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v0, "subscription_status"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/pwk;->errorLog(Ljava/lang/String;)V

    .line 142
    :goto_3
    return-void

    .line 133
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 135
    :cond_1
    const-string/jumbo v0, "2"

    goto :goto_1

    .line 136
    :cond_2
    const-string/jumbo v0, "2"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 139
    :catch_0
    move-exception v6

    .line 140
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static telecomUpdate(Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "sdkstart"

    sget-object v3, Lc8/owk;->SDKSTART:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v2, "request_step"

    sget-object v3, Lc8/owk;->SDKSTART:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v2, "error_code"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v2, "request_duration"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v2, "request_method"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {v0}, Lc8/owk;->push(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static unicomUpdate(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "errResp"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "method"    # Ljava/lang/String;

    .prologue
    .line 34
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "sdkstart"

    sget-object v3, Lc8/owk;->SDKSTART:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v2, "request_step"

    sget-object v3, Lc8/owk;->SDKSTART:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string/jumbo v2, "error_code"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string/jumbo v2, "request_duration"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v2, "request_method"

    invoke-virtual {v0, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v2, "error_resp"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {v0}, Lc8/owk;->push(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0    # "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
