.class public Lc8/gR;
.super Ljava/lang/Object;
.source "SdkConfigUpdateUtil.java"


# static fields
.field private static sdk:Lc8/TQ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lc8/gR;->sdk:Lc8/TQ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static JudgeUpdateAccordingDate(Landroid/content/Context;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 68
    .local v0, "currentTime":J
    const-string/jumbo v7, "cn.com.mma.mobile.tracking.other"

    .line 69
    const-string/jumbo v8, "updateTime"

    .line 67
    invoke-static {p0, v7, v8}, Lc8/hR;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 70
    .local v4, "lastUpdateTime":J
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "mma_config lastUpdateTimeStamp:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/dR;->d(Ljava/lang/String;)V

    .line 72
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "mma_config wifi:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lc8/YQ;->isWifiConnected(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 73
    const-string/jumbo v8, " | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 74
    sub-long v10, v0, v4

    const-wide/32 v12, 0x5265c00

    cmp-long v7, v10, v12

    if-ltz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 72
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/dR;->d(Ljava/lang/String;)V

    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "mma_config mobile:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lc8/YQ;->isMobileConnected(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 76
    const-string/jumbo v8, " | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 77
    sub-long v10, v0, v4

    const-wide/32 v12, 0xf731400

    cmp-long v7, v10, v12

    if-ltz v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 75
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/dR;->d(Ljava/lang/String;)V

    .line 78
    cmp-long v7, v0, v4

    if-gez v7, :cond_2

    .line 80
    const-string/jumbo v7, "cn.com.mma.mobile.tracking.other"

    .line 81
    const-string/jumbo v8, "updateTime"

    .line 79
    invoke-static {p0, v7, v8, v0, v1}, Lc8/hR;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 83
    const/4 v6, 0x0

    .line 96
    :goto_2
    return v6

    .line 74
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 77
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 85
    :cond_2
    invoke-static {p0}, Lc8/YQ;->isWifiConnected(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 86
    sub-long v8, v0, v4

    const-wide/32 v10, 0x5265c00

    .line 85
    cmp-long v7, v8, v10

    if-ltz v7, :cond_4

    const/4 v3, 0x1

    .line 88
    .local v3, "isWifiUpdate":Z
    :goto_3
    invoke-static {p0}, Lc8/YQ;->isMobileConnected(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 89
    sub-long v8, v0, v4

    const-wide/32 v10, 0xf731400

    .line 88
    cmp-long v7, v8, v10

    if-ltz v7, :cond_5

    const/4 v2, 0x1

    .line 90
    .local v2, "isMobileUpdate":Z
    :goto_4
    if-nez v3, :cond_3

    if-eqz v2, :cond_6

    .line 91
    :cond_3
    const/4 v6, 0x1

    .line 95
    .local v6, "result":Z
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "mma_config File need Update\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/dR;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 85
    .end local v2    # "isMobileUpdate":Z
    .end local v3    # "isWifiUpdate":Z
    .end local v6    # "result":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 88
    .restart local v3    # "isWifiUpdate":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 93
    .restart local v2    # "isMobileUpdate":Z
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "result":Z
    goto :goto_5
.end method

.method static synthetic access$0(Landroid/content/Context;Ljava/lang/String;)Lc8/TQ;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0, p1}, Lc8/gR;->getNewestSDK(Landroid/content/Context;Ljava/lang/String;)Lc8/TQ;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lc8/TQ;)V
    .locals 0

    .prologue
    .line 21
    sput-object p0, Lc8/gR;->sdk:Lc8/TQ;

    return-void
.end method

.method static synthetic access$2()Lc8/TQ;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lc8/gR;->sdk:Lc8/TQ;

    return-object v0
.end method

.method static synthetic access$3(Lc8/TQ;)V
    .locals 0

    .prologue
    .line 194
    invoke-static {p0}, Lc8/gR;->setSdk(Lc8/TQ;)V

    return-void
.end method

.method public static dealUpdateConfig(Landroid/content/Context;Ljava/lang/String;)Lc8/TQ;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configUrl"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p0}, Lc8/aR;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 106
    const/4 v2, 0x0

    .line 132
    :cond_0
    :goto_0
    return-object v2

    .line 108
    :cond_1
    const/4 v2, 0x0

    .line 109
    .local v2, "sdk":Lc8/TQ;
    invoke-static {}, Lc8/ZQ;->getInstance()Lc8/ZQ;

    move-result-object v3

    .line 110
    .local v3, "util":Lc8/ZQ;
    invoke-virtual {v3, p1}, Lc8/ZQ;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "response":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 114
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 115
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 114
    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4}, Lc8/iR;->doParser(Ljava/io/InputStream;)Lc8/TQ;

    move-result-object v2

    .line 116
    if-eqz v2, :cond_0

    iget-object v4, v2, Lc8/TQ;->companies:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 117
    iget-object v4, v2, Lc8/TQ;->companies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 119
    const-string/jumbo v4, "cn.com.mma.mobile.tracking.sdkconfig"

    .line 120
    const-string/jumbo v5, "trackingConfig"

    .line 118
    invoke-static {p0, v4, v5, v1}, Lc8/hR;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v4, "cn.com.mma.mobile.tracking.other"

    .line 123
    const-string/jumbo v5, "updateTime"

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 121
    invoke-static {p0, v4, v5, v6, v7}, Lc8/hR;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 125
    const-string/jumbo v4, "mma_\u7f51\u7edc\u66f4\u65b0sdkconfig.xml\u6210\u529f"

    invoke-static {v4}, Lc8/dR;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getNewestSDK(Landroid/content/Context;Ljava/lang/String;)Lc8/TQ;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configUrl"    # Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 58
    :cond_1
    :goto_0
    return-object v0

    .line 47
    :cond_2
    invoke-static {p0}, Lc8/gR;->JudgeUpdateAccordingDate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    invoke-static {p0, p1}, Lc8/gR;->dealUpdateConfig(Landroid/content/Context;Ljava/lang/String;)Lc8/TQ;

    move-result-object v0

    .line 49
    .local v0, "sdkNewest":Lc8/TQ;
    if-nez v0, :cond_1

    .line 50
    invoke-static {p0}, Lc8/gR;->getSDKFromPreferences(Landroid/content/Context;)Lc8/TQ;

    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    .end local v0    # "sdkNewest":Lc8/TQ;
    :cond_3
    invoke-static {p0}, Lc8/gR;->getSDKFromPreferences(Landroid/content/Context;)Lc8/TQ;

    move-result-object v0

    .line 54
    .restart local v0    # "sdkNewest":Lc8/TQ;
    if-nez v0, :cond_1

    .line 55
    invoke-static {p0, p1}, Lc8/gR;->dealUpdateConfig(Landroid/content/Context;Ljava/lang/String;)Lc8/TQ;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSDKFromPreferences(Landroid/content/Context;)Lc8/TQ;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 140
    .line 141
    :try_start_0
    const-string/jumbo v4, "cn.com.mma.mobile.tracking.sdkconfig"

    .line 142
    const-string/jumbo v5, "trackingConfig"

    .line 140
    invoke-static {p0, v4, v5}, Lc8/hR;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 145
    .local v2, "valueString":Ljava/lang/String;
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 146
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    .local v1, "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    invoke-static {v1}, Lc8/iR;->doParser(Ljava/io/InputStream;)Lc8/TQ;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 156
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "valueString":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v3

    .line 148
    .restart local v2    # "valueString":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "sdkconfig.xml"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 151
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    const/4 v1, 0x0

    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 154
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "valueString":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSdk(Landroid/content/Context;)Lc8/TQ;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    sget-object v0, Lc8/gR;->sdk:Lc8/TQ;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/gR;->sdk:Lc8/TQ;

    iget-object v0, v0, Lc8/TQ;->companies:Ljava/util/List;

    if-nez v0, :cond_1

    .line 222
    :cond_0
    invoke-static {p0}, Lc8/gR;->getSDKFromPreferences(Landroid/content/Context;)Lc8/TQ;

    move-result-object v0

    .line 223
    sput-object v0, Lc8/gR;->sdk:Lc8/TQ;

    invoke-static {v0}, Lc8/gR;->setSdk(Lc8/TQ;)V

    .line 225
    :cond_1
    sget-object v0, Lc8/gR;->sdk:Lc8/TQ;

    return-object v0
.end method

.method public static initSdkConfigResult(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configUrl"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/fR;

    invoke-direct {v1, p0, p1}, Lc8/fR;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    return-void
.end method

.method private static setSdk(Lc8/TQ;)V
    .locals 3
    .param p0, "sdk"    # Lc8/TQ;

    .prologue
    .line 195
    const-string/jumbo v1, "mma_setSdk"

    invoke-static {v1}, Lc8/dR;->d(Ljava/lang/String;)V

    .line 196
    if-eqz p0, :cond_2

    .line 198
    :try_start_0
    iget-object v1, p0, Lc8/TQ;->offlineCache:Lc8/SQ;

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lc8/TQ;->offlineCache:Lc8/SQ;

    iget-object v1, v1, Lc8/SQ;->length:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 200
    const-string/jumbo v1, ""

    iget-object v2, p0, Lc8/TQ;->offlineCache:Lc8/SQ;

    iget-object v2, v2, Lc8/SQ;->length:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    iget-object v1, p0, Lc8/TQ;->offlineCache:Lc8/SQ;

    iget-object v1, v1, Lc8/SQ;->length:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 201
    sput v1, Lc8/EQ;->OFFLINECACHE_LENGTH:I

    .line 203
    :cond_0
    iget-object v1, p0, Lc8/TQ;->offlineCache:Lc8/SQ;

    iget-object v1, v1, Lc8/SQ;->queueExpirationSecs:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 204
    const-string/jumbo v1, ""

    iget-object v2, p0, Lc8/TQ;->offlineCache:Lc8/SQ;

    iget-object v2, v2, Lc8/SQ;->queueExpirationSecs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    iget-object v1, p0, Lc8/TQ;->offlineCache:Lc8/SQ;

    iget-object v1, v1, Lc8/SQ;->queueExpirationSecs:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 205
    sput v1, Lc8/EQ;->OFFLINECACHE_QUEUEEXPIRATIONSECS:I

    .line 207
    :cond_1
    iget-object v1, p0, Lc8/TQ;->offlineCache:Lc8/SQ;

    iget-object v1, v1, Lc8/SQ;->timeout:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 208
    const-string/jumbo v1, ""

    iget-object v2, p0, Lc8/TQ;->offlineCache:Lc8/SQ;

    iget-object v2, v2, Lc8/SQ;->timeout:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 210
    iget-object v1, p0, Lc8/TQ;->offlineCache:Lc8/SQ;

    iget-object v1, v1, Lc8/SQ;->timeout:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 209
    sput v1, Lc8/EQ;->OFFLINECACHE_TIMEOUT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_2
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
