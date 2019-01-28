.class public Lc8/IK;
.super Ljava/lang/Object;
.source "NetworkStatusMonitor.java"


# static fields
.field static volatile apn:Ljava/lang/String;

.field static volatile bssid:Ljava/lang/String;

.field static volatile carrier:Ljava/lang/String;

.field static context:Landroid/content/Context;

.field private static getSubInfoMethod:Ljava/lang/reflect/Method;

.field private static volatile isRegistered:Z

.field static volatile isRoaming:Z

.field private static mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field static volatile proxy:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static receiver:Landroid/content/BroadcastReceiver;

.field static volatile simOp:Ljava/lang/String;

.field static volatile ssid:Ljava/lang/String;

.field static volatile status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field static volatile subType:Ljava/lang/String;

.field private static subscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    sput-object v1, Lc8/IK;->context:Landroid/content/Context;

    .line 34
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sput-object v0, Lc8/IK;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 35
    const-string/jumbo v0, "unknown"

    sput-object v0, Lc8/IK;->subType:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    sput-object v0, Lc8/IK;->apn:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, ""

    sput-object v0, Lc8/IK;->ssid:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    sput-object v0, Lc8/IK;->bssid:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "unknown"

    sput-object v0, Lc8/IK;->carrier:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    sput-object v0, Lc8/IK;->simOp:Ljava/lang/String;

    .line 41
    sput-object v1, Lc8/IK;->proxy:Landroid/util/Pair;

    .line 42
    sput-boolean v2, Lc8/IK;->isRoaming:Z

    .line 44
    sput-boolean v2, Lc8/IK;->isRegistered:Z

    .line 45
    sput-object v1, Lc8/IK;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 46
    sput-object v1, Lc8/IK;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 47
    sput-object v1, Lc8/IK;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 48
    sput-object v1, Lc8/IK;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 73
    new-instance v0, Lc8/HK;

    invoke-direct {v0}, Lc8/HK;-><init>()V

    sput-object v0, Lc8/IK;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {p0}, Lc8/IK;->checkNetworkStatus(Landroid/content/Context;)V

    return-void
.end method

.method private static checkNetworkStatus(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const-string/jumbo v7, "awcn.NetworkStatusMonitor"

    const-string/jumbo v8, "[checkNetworkStatus]"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    sget-object v4, Lc8/IK;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 91
    .local v4, "lastStatus":Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    sget-object v2, Lc8/IK;->apn:Ljava/lang/String;

    .line 92
    .local v2, "lastApn":Ljava/lang/String;
    sget-object v3, Lc8/IK;->ssid:Ljava/lang/String;

    .line 94
    .local v3, "lastSsid":Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 95
    :try_start_0
    invoke-static {}, Lc8/IK;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 96
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-nez v7, :cond_4

    .line 97
    :cond_0
    sget-object v7, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v8, "no network"

    invoke-static {v7, v8}, Lc8/IK;->resetStatus(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v7, "awcn.NetworkStatusMonitor"

    const-string/jumbo v8, "checkNetworkStatus"

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "NO NETWORK"

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9, v10}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :goto_0
    sget-object v7, Lc8/IK;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v7, v4, :cond_1

    sget-object v7, Lc8/IK;->apn:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lc8/IK;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 123
    :cond_1
    const/4 v7, 0x2

    invoke-static {v7}, Lc8/KL;->isPrintLog(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 124
    invoke-static {}, Lc8/FK;->printNetworkDetail()V

    .line 127
    :cond_2
    sget-object v7, Lc8/IK;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {v7}, Lc8/FK;->notifyStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V

    .line 133
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_3
    :goto_1
    return-void

    .line 100
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_4
    const-string/jumbo v7, "awcn.NetworkStatusMonitor"

    const-string/jumbo v8, "checkNetworkStatus"

    const/4 v9, 0x0

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "info.isConnected"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "info.isAvailable"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9, v10}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-nez v7, :cond_6

    .line 102
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "subTypeName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, " "

    const-string/jumbo v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 104
    :goto_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    invoke-static {v7, v5}, Lc8/IK;->parseNetworkStatus(ILjava/lang/String;)Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v7

    invoke-static {v7, v5}, Lc8/IK;->resetStatus(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/IK;->parseExtraInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lc8/IK;->apn:Ljava/lang/String;

    .line 106
    invoke-static {}, Lc8/IK;->parseCarrierInfo()V

    .line 119
    .end local v5    # "subTypeName":Ljava/lang/String;
    :goto_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v7

    sput-boolean v7, Lc8/IK;->isRoaming:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 130
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "awcn.NetworkStatusMonitor"

    const-string/jumbo v8, "checkNetworkStatus"

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v0, v10}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v5    # "subTypeName":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string/jumbo v5, ""

    goto :goto_2

    .line 107
    .end local v5    # "subTypeName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 108
    sget-object v7, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v8, "wifi"

    invoke-static {v7, v8}, Lc8/IK;->resetStatus(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lc8/IK;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 110
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_7

    .line 111
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lc8/IK;->bssid:Ljava/lang/String;

    .line 112
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lc8/IK;->ssid:Ljava/lang/String;

    .line 114
    :cond_7
    const-string/jumbo v7, "wifi"

    sput-object v7, Lc8/IK;->carrier:Ljava/lang/String;

    sput-object v7, Lc8/IK;->simOp:Ljava/lang/String;

    .line 115
    invoke-static {}, Lc8/IK;->parseWifiProxy()Landroid/util/Pair;

    move-result-object v7

    sput-object v7, Lc8/IK;->proxy:Landroid/util/Pair;

    goto :goto_3

    .line 117
    .end local v6    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_8
    sget-object v7, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v8, "unknown"

    invoke-static {v7, v8}, Lc8/IK;->resetStatus(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method static getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 6

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 213
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    :try_start_0
    sget-object v2, Lc8/IK;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    .line 214
    sget-object v2, Lc8/IK;->context:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    sput-object v2, Lc8/IK;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 216
    :cond_0
    sget-object v2, Lc8/IK;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "awcn.NetworkStatusMonitor"

    const-string/jumbo v3, "getNetworkInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v1, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 6

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 226
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    :try_start_0
    sget-object v2, Lc8/IK;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    .line 227
    sget-object v2, Lc8/IK;->context:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    sput-object v2, Lc8/IK;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 229
    :cond_0
    sget-object v2, Lc8/IK;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 233
    :goto_0
    return-object v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "awcn.NetworkStatusMonitor"

    const-string/jumbo v3, "getWifiInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static parseCarrierInfo()V
    .locals 4

    .prologue
    .line 191
    :try_start_0
    sget-object v1, Lc8/IK;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 192
    sget-object v1, Lc8/IK;->context:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sput-object v1, Lc8/IK;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 194
    :cond_0
    sget-object v1, Lc8/IK;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/IK;->simOp:Ljava/lang/String;

    .line 196
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_2

    .line 197
    sget-object v1, Lc8/IK;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v1, :cond_1

    .line 198
    sget-object v1, Lc8/IK;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 199
    sput-object v1, Lc8/IK;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "getDefaultDataSubscriptionInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lc8/IK;->getSubInfoMethod:Ljava/lang/reflect/Method;

    .line 201
    :cond_1
    sget-object v1, Lc8/IK;->getSubInfoMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    .line 202
    sget-object v1, Lc8/IK;->getSubInfoMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lc8/IK;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/IK;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 203
    .local v0, "dataSubInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/IK;->carrier:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static parseExtraInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 164
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 165
    const-string/jumbo v0, "cmwap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string/jumbo v0, "cmwap"

    .line 185
    :goto_0
    return-object v0

    .line 167
    :cond_0
    const-string/jumbo v0, "uniwap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    const-string/jumbo v0, "uniwap"

    goto :goto_0

    .line 169
    :cond_1
    const-string/jumbo v0, "3gwap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    const-string/jumbo v0, "3gwap"

    goto :goto_0

    .line 171
    :cond_2
    const-string/jumbo v0, "ctwap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    const-string/jumbo v0, "ctwap"

    goto :goto_0

    .line 173
    :cond_3
    const-string/jumbo v0, "cmnet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    const-string/jumbo v0, "cmnet"

    goto :goto_0

    .line 175
    :cond_4
    const-string/jumbo v0, "uninet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    const-string/jumbo v0, "uninet"

    goto :goto_0

    .line 177
    :cond_5
    const-string/jumbo v0, "3gnet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 178
    const-string/jumbo v0, "3gnet"

    goto :goto_0

    .line 179
    :cond_6
    const-string/jumbo v0, "ctnet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 180
    const-string/jumbo v0, "ctnet"

    goto :goto_0

    .line 182
    :cond_7
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 185
    :cond_8
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method private static parseNetworkStatus(ILjava/lang/String;)Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    .locals 1
    .param p0, "type"    # I
    .param p1, "subType"    # Ljava/lang/String;

    .prologue
    .line 147
    packed-switch p0, :pswitch_data_0

    .line 155
    const-string/jumbo v0, "TD-SCDMA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "WCDMA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CDMA2000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 158
    :goto_0
    return-object v0

    .line 149
    :pswitch_0
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    goto :goto_0

    .line 151
    :pswitch_1
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    goto :goto_0

    .line 153
    :pswitch_2
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G4:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    goto :goto_0

    .line 158
    :cond_1
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static parseWifiProxy()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    :try_start_0
    const-string/jumbo v2, "http.proxyHost"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    const-string/jumbo v2, "http.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, "port":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 245
    .end local v1    # "port":I
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static registerNetworkReceiver()V
    .locals 6

    .prologue
    .line 53
    sget-boolean v1, Lc8/IK;->isRegistered:Z

    if-nez v1, :cond_0

    sget-object v1, Lc8/IK;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 54
    sget-object v2, Lc8/IK;->context:Landroid/content/Context;

    monitor-enter v2

    .line 55
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    sget-object v1, Lc8/IK;->context:Landroid/content/Context;

    sget-object v3, Lc8/IK;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    sget-object v1, Lc8/IK;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/IK;->checkNetworkStatus(Landroid/content/Context;)V

    .line 65
    :cond_0
    return-void

    .line 60
    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v1, "awcn.NetworkStatusMonitor"

    const-string/jumbo v3, "registerReceiver failed"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private static resetStatus(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V
    .locals 1
    .param p0, "status"    # Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    .param p1, "subType"    # Ljava/lang/String;

    .prologue
    .line 136
    sput-object p0, Lc8/IK;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 137
    sput-object p1, Lc8/IK;->subType:Ljava/lang/String;

    .line 138
    const-string/jumbo v0, ""

    sput-object v0, Lc8/IK;->apn:Ljava/lang/String;

    .line 139
    const-string/jumbo v0, ""

    sput-object v0, Lc8/IK;->ssid:Ljava/lang/String;

    .line 140
    const-string/jumbo v0, ""

    sput-object v0, Lc8/IK;->bssid:Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    sput-object v0, Lc8/IK;->proxy:Landroid/util/Pair;

    .line 142
    const-string/jumbo v0, ""

    sput-object v0, Lc8/IK;->carrier:Ljava/lang/String;

    .line 143
    const-string/jumbo v0, ""

    sput-object v0, Lc8/IK;->simOp:Ljava/lang/String;

    .line 144
    return-void
.end method
