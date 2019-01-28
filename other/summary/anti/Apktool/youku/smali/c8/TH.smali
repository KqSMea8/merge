.class public Lc8/TH;
.super Ljava/lang/Object;
.source "NetWork.java"


# static fields
.field public static final CHINA_MOBILE:I = 0x1

.field public static final CHINA_TELECOM:I = 0x3

.field public static final CHINA_UNICOM:I = 0x2

.field public static final CONN_TYPE_GPRS:Ljava/lang/String; = "gprs"

.field public static final CONN_TYPE_NONE:Ljava/lang/String; = "none"

.field public static final CONN_TYPE_WIFI:Ljava/lang/String; = "wifi"

.field public static final SIM_NO:I = -0x1

.field public static final SIM_OK:I = 0x0

.field public static final SIM_UNKNOW:I = -0x2

.field private static connChangerRvr:Landroid/content/BroadcastReceiver;

.field public static proxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lc8/TH;->proxy:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHttpsProxyInfo(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    const/4 v5, 0x0

    .line 260
    .local v5, "proxy":Lorg/apache/http/HttpHost;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-ge v9, v10, :cond_1

    .line 261
    const/4 v3, 0x0

    .line 263
    .local v3, "info":Landroid/net/NetworkInfo;
    :try_start_0
    const-string/jumbo v9, "connectivity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 264
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 269
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-nez v9, :cond_0

    .line 270
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, "proxyHost":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    .line 272
    .local v4, "port":I
    if-eqz v7, :cond_0

    .line 273
    new-instance v5, Lorg/apache/http/HttpHost;

    .end local v5    # "proxy":Lorg/apache/http/HttpHost;
    invoke-direct {v5, v7, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .end local v4    # "port":I
    .end local v7    # "proxyHost":Ljava/lang/String;
    .restart local v5    # "proxy":Lorg/apache/http/HttpHost;
    :cond_0
    move-object v6, v5

    .line 288
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v5    # "proxy":Lorg/apache/http/HttpHost;
    .local v6, "proxy":Lorg/apache/http/HttpHost;
    :goto_1
    return-object v6

    .line 265
    .end local v6    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v3    # "info":Landroid/net/NetworkInfo;
    .restart local v5    # "proxy":Lorg/apache/http/HttpHost;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 279
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :cond_1
    const-string/jumbo v9, "https.proxyHost"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "httpsproxyhost":Ljava/lang/String;
    const-string/jumbo v9, "https.proxyPort"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 282
    .local v8, "proxyport":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 284
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 285
    .restart local v4    # "port":I
    new-instance v5, Lorg/apache/http/HttpHost;

    .end local v5    # "proxy":Lorg/apache/http/HttpHost;
    invoke-direct {v5, v2, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .end local v4    # "port":I
    .restart local v5    # "proxy":Lorg/apache/http/HttpHost;
    :cond_2
    move-object v6, v5

    .line 288
    .end local v5    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v6    # "proxy":Lorg/apache/http/HttpHost;
    goto :goto_1
.end method

.method public static getNSP(Landroid/content/Context;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x2

    .line 125
    invoke-static {p0}, Lc8/TH;->getSimState(Landroid/content/Context;)I

    move-result v8

    if-nez v8, :cond_c

    .line 126
    const-string/jumbo v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 127
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, " "

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "operator":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "numeric":Ljava/lang/String;
    const-string/jumbo v8, "NSP: "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "operator = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    if-eqz v2, :cond_0

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    .line 135
    move-object v2, v1

    .line 137
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    :cond_2
    move v4, v6

    .line 166
    .end local v1    # "numeric":Ljava/lang/String;
    .end local v2    # "operator":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_0
    return v4

    .line 142
    .restart local v1    # "numeric":Ljava/lang/String;
    .restart local v2    # "operator":Ljava/lang/String;
    .restart local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    const-string/jumbo v8, "\u4e2d\u56fd\u79fb\u52a8"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "CMCC"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "ChinaMobile"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "46000"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    move v4, v7

    .line 145
    goto :goto_0

    .line 146
    :cond_6
    const-string/jumbo v8, "\u4e2d\u56fd\u7535\u4fe1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v8, "ChinaTelecom"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v8, "46003"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v8, "ChinaTelcom"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v8, "460003"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    move v4, v5

    .line 149
    goto :goto_0

    .line 150
    :cond_8
    const-string/jumbo v8, "\u4e2d\u56fd\u8054\u901a"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "ChinaUnicom"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "46001"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "CU-GSM"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "CHN-CUGSM"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "CHNUnicom"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 155
    invoke-static {p0}, Lc8/UH;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "imsi":Ljava/lang/String;
    const-string/jumbo v8, "46000"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string/jumbo v8, "46002"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string/jumbo v8, "46007"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_9
    move v4, v7

    .line 157
    goto/16 :goto_0

    .line 158
    :cond_a
    const-string/jumbo v7, "46001"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 160
    const-string/jumbo v4, "46003"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    .line 161
    goto/16 :goto_0

    :cond_b
    move v4, v6

    .line 163
    goto/16 :goto_0

    .line 166
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v1    # "numeric":Ljava/lang/String;
    .end local v2    # "operator":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_c
    const/4 v4, -0x1

    goto/16 :goto_0
.end method

.method public static getNetConnType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 302
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 303
    const-string/jumbo v4, "Network"

    const-string/jumbo v5, "can not get Context.CONNECTIVITY_SERVICE"

    invoke-static {v4, v5}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string/jumbo v4, "none"

    .line 329
    :goto_0
    return-object v4

    .line 309
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 310
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 312
    .local v3, "wifiState":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v3, :cond_2

    .line 313
    const-string/jumbo v4, "wifi"

    goto :goto_0

    .line 316
    .end local v3    # "wifiState":Landroid/net/NetworkInfo$State;
    :cond_1
    const-string/jumbo v4, "Network"

    const-string/jumbo v5, "can not get ConnectivityManager.TYPE_WIFI"

    invoke-static {v4, v5}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 321
    if-eqz v1, :cond_3

    .line 322
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 323
    .local v2, "mobileState":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v2, :cond_4

    .line 324
    const-string/jumbo v4, "gprs"

    goto :goto_0

    .line 327
    .end local v2    # "mobileState":Landroid/net/NetworkInfo$State;
    :cond_3
    const-string/jumbo v4, "Network"

    const-string/jumbo v5, "can not get ConnectivityManager.TYPE_MOBILE"

    invoke-static {v4, v5}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_4
    const-string/jumbo v4, "none"

    goto :goto_0
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 86
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 87
    const/4 v2, 0x0

    .line 98
    :cond_0
    :goto_0
    return-object v2

    .line 90
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 91
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 93
    .local v3, "tem":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_2

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 94
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 67
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 69
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 73
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/16 v2, -0x9

    goto :goto_0
.end method

.method public static getProxyInfo(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/HashMap;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 215
    invoke-static {p0}, Lc8/TH;->getNetworkInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 216
    .local v9, "result":Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v8, "proxy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v9, :cond_1

    move-object v8, v10

    .line 251
    .end local v8    # "proxy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v8

    .line 219
    .restart local v8    # "proxy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v0, "getProxyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current network:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string/jumbo v0, "WIFI"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "MOBILE UMTS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const/4 v7, 0x0

    .line 226
    .local v7, "cr":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "mcc =?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v5, "460"

    aput-object v5, v4, v1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 227
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 232
    const-string/jumbo v0, "host"

    const-string/jumbo v1, "proxy"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string/jumbo v0, "port"

    const-string/jumbo v1, "port"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string/jumbo v0, "apn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, "apn":Ljava/lang/String;
    const-string/jumbo v0, "getProxyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "apn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    if-eqz v7, :cond_0

    .line 247
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 241
    .end local v6    # "apn":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 246
    :cond_4
    if-eqz v7, :cond_5

    .line 247
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    move-object v8, v10

    .line 251
    goto/16 :goto_0

    .line 246
    :catch_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 247
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 246
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 247
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static getSimState(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 108
    .local v1, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 109
    .local v0, "simState":I
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 110
    const/4 v2, 0x0

    .line 114
    :goto_0
    return v2

    .line 111
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 112
    const/4 v2, -0x1

    goto :goto_0

    .line 114
    :cond_1
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "result":Z
    invoke-static {p0}, Lc8/TH;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 55
    :cond_0
    return v0
.end method

.method public static isWiFiActive()Z
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    invoke-static {v0}, Lc8/TH;->isWiFiActive(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isWiFiActive(Landroid/content/Context;)Z
    .locals 3
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 347
    if-nez p0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 350
    :cond_1
    :try_start_0
    invoke-static {p0}, Lc8/TH;->getNetworkType(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 352
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setProxy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    .line 197
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 198
    :cond_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string/jumbo v1, "proxySet"

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/4 v0, 0x0

    sput-boolean v0, Lc8/TH;->proxy:Z

    .line 209
    :goto_0
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lc8/TH;->proxy:Z

    .line 202
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string/jumbo v1, "proxySet"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string/jumbo v1, "proxyHost"

    invoke-virtual {v0, v1, p0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 205
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string/jumbo v1, "proxyPort"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 207
    :cond_2
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string/jumbo v1, "proxyPort"

    const-string/jumbo v2, "80"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static unRegNetWorkRev(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-static {v1, v1}, Lc8/TH;->setProxy(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :try_start_0
    sget-object v1, Lc8/TH;->connChangerRvr:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 180
    sget-object v1, Lc8/TH;->connChangerRvr:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
